<template>
  <div id="media-explorer" class="row">
    <div class="columns small-12">
      <div class="callout row">
        <div v-if="media == null" id="media-explorer-empty" class="columns small-12">
				  <h3>Your Media Is Empty</h3>
        </div>
        <div class="columns small-12 medium-3 media-item" v-for="item in media">
				  <a v-on:click="selectMedia(item.url)"><img v-bind:src="item.url"></a>
        </div>
      </div>
    </div>
    <div class="columns small-12">
      <div class="button-group">
        <a v-on:click="openUploaderModal()" class="button">Upload Media</a>
        <a v-on:click="closeModal()" class="button">Cancel</a>
      </div>
    </div>
  </div>
</template>

<script>
const axios = require('axios');
import Modal from 'components/modal_media_uploader.vue';

export default {
  props: ['media'],

  mounted() {
  },

  methods: {
	  selectMedia: function(mediaUrl) {
		  this.$vuedals.close(mediaUrl);
		},

	  openUploaderModal: function() {
			this.$vuedals.open({
			  title: "Upload Image",
				component: Modal,
				props: {},
			});
		},

		closeModal: function() {
		  this.$vuedals.close();
		}
  },
  
  data() {
    return {
    }
  }
}
</script>
