(function() {
  jQuery(function() {
    if ($('#infinite-scrolling').size() > 0) {
      $(window).on('scroll', function() {
        var more_places_url;
        more_places_url = $('.pagination .next_page a').attr('href');
        if (more_places_url && $(window).scrollTop() > $(document).height() - $(window).height() - 60) {
          $('.pagination').html('<img src="/ajax-loader.gif" alt="Loading..." title="Loading..." />');
          $.getScript(more_places_url);
        }
      });
    }
  });

}).call(this);
