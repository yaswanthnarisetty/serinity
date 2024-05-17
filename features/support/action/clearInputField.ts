import type { Selector } from 'webdriverio';
 
/**
 * Clear a given input field (placeholder for WDIO's clearElement)
 * @param  {String}   selector Element selector
 */
export default async (selector: Selector) => {
    await $(selector).click();
    await browser.keys(['Control', 'a']);
    await browser.keys('Delete');
};