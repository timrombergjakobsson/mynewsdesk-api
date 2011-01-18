$(document).ready(function(){
   console.log("hello")
   $('#content nav ul').infinitescroll({
      navSelector:   "nav#pagination",
      nextSelector:  "nav#pagination #next",
      itemSelector:  "#content li",
      debug:         true,
      loadingText:   "Loading more news",
      loadingImg:    "/images/loading.gif",
      animate:       true,
      bufferPx:      10
   });
})