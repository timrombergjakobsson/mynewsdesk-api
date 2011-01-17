// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults 

$(document).ready(function(){
   console.log("hello")
   $('#content nav ul').infinitescroll({
      navSelector:   "nav#pagination",
      nextSelector:  "nav#pagination #next",
      itemSelector:  "#content li",
      debug:         true,
      loadingText:   "loading more news",
      loadingImg:    "/images/loading.gif",
      animate:       true,
      bufferPx:      10
   });
})
