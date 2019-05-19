const path = require('path');

module.exports = {
  css: {
    loaderOptions: {
      sass: {
        data: `
          @import "@/assets/scss/_settings.scss";
        `,
      },
    },
  },
};
