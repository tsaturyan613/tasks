<!DOCTYPE html>
<html>
    <head>
        <?php $this->load->view('common/header_v2'); ?>  
    </head>
    <body>
        <?php $this->load->view('common/header_nav_v5'); ?>  

        <!--+++++++++++++ Header End +++++++++++++++++++-->

        <section id="innerbanner" style="background: url(<?php echo base_url(); ?>uploads/cms/<?php echo $query['banner_image']; ?>) no-repeat center top;">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="text_inner">
                            <h1><?php echo $query['banner_heading']; ?></h1>
                            <p><?php echo $query['banner_text']; ?></p>
                        </div>
                    </div>
                </div>

            </div>
        </section>
        <section id="services">
            <div class="container">


                <div class="row">
                    <div class="col-sm-12 mb-sm-5 col-lg-6">
                        <div class="im_inner">
                            <img src="<?php echo base_url(); ?>uploads/cms/<?php echo $query['section_1_big_image']; ?>" />
                        </div>
                    </div>
                    <div class="col-sm-12 col-lg-6">
                        <div class="con_one">
                            <h3><?php echo $query['section_1_heading']; ?></h3>


                            <p><?php echo $query['section_1_content']; ?></p>



                        </div>
                    </div>
                </div>
                <div class="height"></div>
                <div class="row">
                    <div class="col-sm-12 mb-sm-5 col-lg-5">
                        <div class="con_one">
                            <h3><?php echo $query['section_2_heading']; ?></h3>
<?php echo $query['section_2_content']; ?>



                        </div>
                    </div>
                    <div class="col-sm-12 col-lg-7">
                        <div class="im_inner">
                            <img src="<?php echo base_url(); ?>uploads/cms/<?php echo $query['section_2_image']; ?>" />
                        </div>
                    </div>

                </div>
                <div class="height"></div>



                <div class="form">
                    <h1>Meer info? Vul onderstaand formulier in.</h1>
                    <form method="post" enctype="multipart/form-data" >
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="search_holder">
                                <img src="<?php echo base_url(); ?>assets/front_v2/images/img_5.png" alt="" />
                                <input type="text" name="name" placeholder=" Uw naam*" />
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="search_holder">
                                <img src="<?php echo base_url(); ?>assets/front_v2/images/msg.png" alt="" />
                                <input type="text" name="email" placeholder=" E-mail*" />
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="search_holder">
                                <img src="<?php echo base_url(); ?>assets/front_v2/images/ph.png" alt="" />
                                <input type="text" name="phone" placeholder="GSM*" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="text_area">
                                <img src="<?php echo base_url(); ?>assets/front_v2/images/com.png" alt="" />
                                <textarea name="msg" placeholder="Bericht*"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">

                        <div class="col-sm-12">
                            <div class="search_holder1">
                                <input type="submit" value="Verzenden"  />
                            </div>
                        </div>
                    </div>
                    </form>
                    
                </div>

            </div>
        </section>






        <!--+++++++++++++ footer Start +++++++++++++++++++-->

        <?php $this->load->view('common/footer_v2'); ?>  


    </body>
    <?php $this->load->view('common/footer_js_v2'); ?>  
    <script>
$(document).ready(function() {

    var select = $('select[multiple]');
    var options = select.find('option');

    var div = $('<div />').addClass('selectMultiple');
    var active = $('<div />');
    var list = $('<ul />');
    var placeholder = select.data('placeholder');

    var span = $('<span />').text(placeholder).appendTo(active);

    options.each(function() {
        var text = $(this).text();
        if($(this).is(':selected')) {
            active.append($('<a />').html('<em>' + text + '</em><i></i>'));
            span.addClass('hide');
        } else {
            list.append($('<li />').html(text));
        }
    });

    active.append($('<div />').addClass('arrow'));
    div.append(active).append(list);

    select.wrap(div);

    $(document).on('click', '.selectMultiple ul li', function(e) {
        var select = $(this).parent().parent();
        var li = $(this);
        if(!select.hasClass('clicked')) {
            select.addClass('clicked');
            li.prev().addClass('beforeRemove');
            li.next().addClass('afterRemove');
            li.addClass('remove');
            var a = $('<a />').addClass('notShown').html('<em>' + li.text() + '</em><i></i>').hide().appendTo(select.children('div'));
            a.slideDown(400, function() {
                setTimeout(function() {
                    a.addClass('shown');
                    select.children('div').children('span').addClass('hide');
                    select.find('option:contains(' + li.text() + ')').prop('selected', true);
                }, 500);
            });
            setTimeout(function() {
                if(li.prev().is(':last-child')) {
                    li.prev().removeClass('beforeRemove');
                }
                if(li.next().is(':first-child')) {
                    li.next().removeClass('afterRemove');
                }
                setTimeout(function() {
                    li.prev().removeClass('beforeRemove');
                    li.next().removeClass('afterRemove');
                }, 200);

                li.slideUp(400, function() {
                    li.remove();
                    select.removeClass('clicked');
                });
            }, 600);
        }
    });

    $(document).on('click', '.selectMultiple > div a', function(e) {
        var select = $(this).parent().parent();
        var self = $(this);
        self.removeClass().addClass('remove');
        select.addClass('open');
        setTimeout(function() {
            self.addClass('disappear');
            setTimeout(function() {
                self.animate({
                    width: 0,
                    height: 0,
                    padding: 0,
                    margin: 0
                }, 300, function() {
                    var li = $('<li />').text(self.children('em').text()).addClass('notShown').appendTo(select.find('ul'));
                    li.slideDown(400, function() {
                        li.addClass('show');
                        setTimeout(function() {
                            select.find('option:contains(' + self.children('em').text() + ')').prop('selected', false);
                            if(!select.find('option:selected').length) {
                                select.children('div').children('span').removeClass('hide');
                            }
                            li.removeClass();
                        }, 400);
                    });
                    self.remove();
                })
            }, 300);
        }, 400);
    });

    $(document).on('click', '.selectMultiple > div .arrow, .selectMultiple > div span', function(e) {
        $(this).parent().parent().toggleClass('open');
    });

}); 
 
 </script>
 
</html>
