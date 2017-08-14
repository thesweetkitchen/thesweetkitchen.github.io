/*
 * Ideal Image Slider: Captions Extension v1.0.1
 *
 * By Gilbert Pellegrom
 * http://gilbert.pellegrom.me
 *
 * Copyright (C) 2014 Dev7studios
 * https://raw.githubusercontent.com/gilbitron/Ideal-Image-Slider/master/LICENSE
 */

var i = 0;

(function(IIS) {
	"use strict";

	IIS.Slider.prototype.addCaptions = function() {
		IIS._addClass(this._attributes.container, 'iis-has-captions');

		Array.prototype.forEach.call(this._attributes.slides, function(slide, i) {
			var caption = document.createElement('div');
			IIS._addClass(caption, 'iis-caption');

			var captionContent = '';
			if (slide.getAttribute('title')) {
				captionContent += '<div class="iis-caption-title"><span>' + slide.getAttribute('title') + '</span></div>';
			}
			if (slide.getAttribute('data-caption')) {
				var dataCaption = slide.getAttribute('data-caption');
				if (dataCaption.substring(0, 1) == '#' || dataCaption.substring(0, 1) == '.') {
					var external = document.querySelector(dataCaption);
					if (external) {
						captionContent += '<div class="iis-caption-content"><span>' + external.innerHTML + '</span></div>';
					}
				} else {
					captionContent += '<div class="iis-caption-content"><span>' + slide.getAttribute('data-caption') + '</span></div>';
				}
			} else {
				if (slide.innerHTML) {

					captionContent += '<div class="iis-caption-content"><span>' + slide.innerHTML + '</span><br /><span class="slide-cta"><a href="' + imagelink[i] +'">Learn more  ›</a></span></div>';
					i++; //Yin: saving link of image separately
				}
			}


			slide.innerHTML = '';
			if (captionContent) {
				caption.innerHTML = captionContent;
				slide.appendChild(caption);
			}
		}.bind(this));
	};

	return IIS;

})(IdealImageSlider);
