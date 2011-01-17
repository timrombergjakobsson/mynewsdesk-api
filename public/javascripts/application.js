$(document).ready(function(){
   console.log("hello")
   $('#content nav ul').infinitescroll({
      navSelector:   "nav#pagination",
      nextSelector:  "nav#pagination #next",
      itemSelector:  "#content li",
      debug:         true,
      loadingText:   "Laddar in fler pressreleaser",
      loadingImg:    "/images/loading.gif",
      animate:       true,
      bufferPx:      10
   });
})