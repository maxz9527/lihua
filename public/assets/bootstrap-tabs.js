/* ========================================================
 * bootstrap-tabs.js v1.4.0
 * http://twitter.github.com/bootstrap/javascript.html#tabs
 * ========================================================
 * Copyright 2011 Twitter, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * ======================================================== */
!function(a){function b(a,b){b.find("> .active").removeClass("active").find("> .dropdown-menu > .active").removeClass("active"),a.addClass("active"),a.parent(".dropdown-menu")&&a.closest("li.dropdown").addClass("active")}function c(c){var d=a(this),e=d.closest("ul:not(.dropdown-menu)"),f=d.attr("href"),g,h;if(/^#\w+/.test(f)){c.preventDefault();if(d.parent("li").hasClass("active"))return;g=e.find(".active a").last()[0],h=a(f),b(d.parent("li"),e),b(h,h.parent()),d.trigger({type:"change",relatedTarget:g})}}"use strict",a.fn.tabs=a.fn.pills=function(b){return this.each(function(){a(this).delegate(b||".tabs li > a, .pills > li > a","click",c)})},a(document).ready(function(){a("body").tabs("ul[data-tabs] li > a, ul[data-pills] > li > a")})}(window.jQuery||window.ender)