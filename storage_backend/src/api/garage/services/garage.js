'use strict';

/**
 * garage service
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::garage.garage');
