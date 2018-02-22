<template>
    <dl class="locations-list">
        <dd class="text-center" v-if="locations.length === 0">Locating your position to load the nearest pharmacies.<br />If you do not allow browser location sharing, please enter your latitude and longitude to find the pharmacy nearest to you.</dd>
        <dd v-for="location in locations" :key="location.id" :class="{ selected: location.isSelected }">
            <div class="row">
                <div class="col-xs-9"><a @click.prevent="locationClick(location)">{{ location.name }}</a></div>
                <div class="col-xs-3 text-right">{{ formatMiles(location.distance) }}m</div>
            </div>
            <div class="row">
                <div class="col-xs-12">{{ location.address }}<br />{{ location.city }}, {{ location.state }} {{ location.zip }}</div>
            </div>
        </dd>
    </dl>
</template>

<script>
    export default {
        props: ['locations'],
        methods: {
            locationClick(location) {
                this.$root.selectLocation(location)
            },
            formatMiles(value) {
                // Format the distance value down to 1 decimal
                return value.toFixed(1);
            }
        }
    }
</script>
