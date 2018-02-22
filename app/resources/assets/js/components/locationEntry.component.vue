<template>
    <form class="location-finder" @submit.prevent="setLatLon">
        <div class="row">
            <div class="col-xs-12 col-md-6 form-group">
                <label for="latitude">Latitude</label>
                <input type="number" step="any" id="latitude" v-model="latitude" class="form-control" min="-90" max="90" placeholder="Latitude" />
            </div>
            <div class="col-xs-12 col-md-6 form-group">
                <label for="latitude">Longitude</label>
                <input type="number" step="any" id="longitude" v-model="longitude" class="form-control" min="-180" max="180" placeholder="Longitude" />
            </div>
        </div>
        <div class="row">
            <div class="col-xs-12 text-right">
                <button type="submit" class="btn btn-primary">Search</button>
            </div>
        </div>
     </form>
</template>

<script>
    export default {
        props: ['latitude', 'longitude'],
        methods: {
            setLatLon() {
                this.$root.latitude = this.latitude;
                this.$root.longitude = this.longitude;

                this.$root.getLocations();
            }
        }
    }
</script>
