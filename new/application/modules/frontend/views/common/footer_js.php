


<script type="text/javascript" src="<?php echo base_url(); ?>assets/front/js/popper.min.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/front/js/owl.carousel.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/front/js/wow.min.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/front/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/front/js/dataTables.rowReorder.min.js"></script>

<script type="text/javascript" src="<?php echo base_url(); ?>assets/front/js/calender.js"></script>
<script type="text/javascript">
    $(".logo-slider").owlCarousel({
        loop: false,
        margin: 10,
        nav: false,
        dots: false,
        responsive: {
            0: {
                items: 1
            },
            600: {
                items: 3
            },
            1000: {
                items: 6
            }
        }
    });


</script>

<script type="text/javascript">
    jQuery(function ($) {
        new WOW().init();
    });


    $('.dropdown-menu li').on('click', function () {
        var getValue = $(this).text();
        $('.dropdown-select').text(getValue);
    });
</script>
<script type="text/javascript">

$(document).ready(function() {
    var table = $('#mijn_table').DataTable( {
        rowReorder: {
            selector: 'tr'
        },
        responsive: true,
		"paging":   false,
        "info":     false,
		"searching": false
    } );
} );
$(document).ready(function() {
    var table = $('.example').DataTable( {
        rowReorder: {
            selector: 'tr'
        },
        responsive: true,
		"paging":   false,
        "info":     false,
		"searching": false
    } );
} );
</script>


