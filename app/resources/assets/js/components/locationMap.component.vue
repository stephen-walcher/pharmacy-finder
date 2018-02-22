<template>
    <GmapMap style="width: 100%; height: 500px;" :zoom="8" :center="{lat: 38.9822, lng: -94.6708}" ref="map">
      <gmap-info-window :options="infoOptions" :position="infoWindowPos" :opened="infoWinOpen" @closeclick="infoWinOpen=false">
        {{infoContent}}
      </gmap-info-window>

      <GmapMarker v-for="(location, index) in locations"
        :key="index"
        :position="location.latLng"
        :clickable="true"
        :animation="location.animation"
        @click="toggleInfoWindow(location, index)"
        />
    </GmapMap>
</template>

<script>
    export default {
        props: ['locations'],
        data: function() {
            return {
                infoContent: '',
                infoWindowPos: {
                    lat: 0,
                    lng: 0
                },
                infoWinOpen: false,
                currentMidx: null,
                infoOptions: {
                    pixelOffset: {
                        width: 0,
                        height: -35
                    }
                }
            }
        },
        watch: {
            locations(locations) {
                // Adjust the bounding box in the Google map to include all markers in the list
                if (locations.length > 2) {
                    const bounds = new google.maps.LatLngBounds();

                    for (let l of locations) {
                        bounds.extend(l.latLng);
                    }

                    this.$refs.map.$mapObject.setCenter(bounds.getCenter());
                }
            }
        },
        methods: {
            toggleInfoWindow: function(marker, idx) {
                // Open/close the infowindow on each marker
                this.infoWindowPos = marker.latLng;
                this.infoContent = marker.name;

                if (this.currentMidx == idx) {
                    this.infoWinOpen = !this.infoWinOpen;

                } else {
                    this.infoWinOpen = true;
                    this.currentMidx = idx;

                    this.$root.selectLocation(marker);
                }
            }
        }
    }
</script>
