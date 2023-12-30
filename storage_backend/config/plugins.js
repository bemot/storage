module.exports = ({ env }) => ({
  // ... other plugin configurations

  upload: {
    config: {
      breakpoints: {
        large: 1000,
        medium: 750,
        small: 500,
      },
      formatOptions: {
        jpeg: {
          chromaSubsampling: "4:4:4",
        },
      },
    },
  },

  // ... other plugin configurations
});
