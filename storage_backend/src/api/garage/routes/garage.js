'use strict';

/**
 * garage router
 */

const { createCoreRouter } = require('@strapi/strapi').factories;

module.exports = createCoreRouter('api::garage.garage');
