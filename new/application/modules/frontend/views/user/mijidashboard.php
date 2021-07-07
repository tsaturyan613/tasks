<!DOCTYPE html>
<html>
    <head>
        <?php $this->load->view('common/header_v2'); ?>  

        <link rel="stylesheet" href="<?php echo base_url(); ?>assets/front/css/simple-chart.css">
         <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/front_v2/css/dataTables.bootstrap4.min.css">
    </head> 
    <body>
        <?php $this->load->view('common/header_nav_v2'); ?>  



        <!--+++++++++++++ Header End +++++++++++++++++++-->


        <section style="background:url(<?php echo base_url(); ?>uploads/cms/<?php echo $cms['banner_image']; ?>) no-repeat center top; background-size: cover ;padding: 112px 0 25px;">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="text_inner">
                            <h1><?php echo $cms['banner_text_1']; ?></h1>
                            <p><?php echo $cms['banner_text_2']; ?></p>
                        </div>
                    </div>
                </div>

            </div> 






        <div class="cart-sec">

            <div class="container">

                <div class="row">

                    <div class="col-md-12">

                        <h2 class="comman-title text-center">
                            Mijn Dashboard
                        </h2>



                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                <table id="order_table" class="table table-inbox table-striped table-bordered">
                                    <thead>
                                        <tr>
                                            <th>Datum</th>
                                    <th>Vereniging</th>
                                    <th>Evenement</th>
                                    <th>Bestelling</th>
                                    <th>Kost verlies</th>
                                    <th>% verlies</th>
                                        </tr>
                                    </thead>

                                    <tbody>
                                        
                                        <?php
                                $labels = '';
                                $associationName = '';
                                $val = '';
                                $tot_event = '';
                                $color = '';
                                $total_lost_cup_chart_data=[];
                                for ($i = 0; $i < count($all_order); $i++) {
                                    foreach ($all_order[$i]->result() as $row) {


                                        if ($labels != '') {
                                            $labels .= ',"';
                                            $associationName .= ',"';
                                            $color .= ',"';
                                            $val .= ',';
                                            $tot_event .= ',';
                                        } else {
                                            $labels .= '"';
                                            $associationName .= '"';
                                            $color .= '"';
                                            $val .= '';
                                            $tot_event .= '';
                                        }
                                        
                                        /*
                                        $getFinalTotalOrderAmount=getFinalTotalOrderAmount($row->id);
                                        $getTotalCupLostAmount=getTotalCupLostAmount($row->id);
                                        
                                        $total=number_format($getFinalTotalOrderAmount, 2, ',', '');
                                        $total_lost_cup=number_format($getTotalCupLostAmount, 2, ',', '');
                                        $total_percent_loss= floatval(($total_lost_cup / $total) * 100);
                                        */
                                        $getFinalTotalOrderCount=getFinalTotalOrderCount($row->user_id);
                                        $getFinalTotalUsedCups=getFinalTotalUsedCups($row->id);
                                        
                                        $total=floatval($getFinalTotalOrderCount);
                                        $total_lost_cup=floatval($row->lost_cup);
                                        $total_percent_loss= floatval(($total_lost_cup / $getFinalTotalUsedCups) * 100);
                                        ?>
                                    <!--<pre><?php print_r($row); ?></pre>-->
                                   
                                    <tr>
                                            
                                            <td><?php echo date(('d-m-Y'), strtotime($row->event_start_date))." ".$row->event_start_time;?> - <?php echo date(('d-m-Y'), strtotime($row->event_end_date))." ".$row->event_end_time;?>  </td>
                                            <td><?php echo $row->association_name ?></td>
                                            <td><?php echo $row->event_name ?></td>
                                            <td>  <?php echo $total ?></td>
                                            <td>  <?php echo $total_lost_cup ?></td>
                                            <td><?php echo number_format($total_percent_loss, 2, ',', ''); ?> %</td>
                                        </tr>
                                    
<!--                                        <tr>
                                            <td><?php if ((int) $row->tot_order_count > 1) { ?> Afgerond <?php } else { ?> Eerste aanmaning <?php } ?></td>
                                            <td><?php echo $row->association_name ?></td>
                                            <td><?php echo $row->tot_order_count ?></td>
                                            <td>&#8364; <?php echo  number_format((float)$row->lost_cup, 2, ',', ''); ?></td>
                                            <td>&#8364; <?php echo number_format((float)$row->used_cups, 2, ',', '');  ?></td>
                                            <td>&#8364; <?php echo number_format((float)$row->final_cost, 2, ',', ''); ?></td>
                                        </tr>-->
                                        <?php
                                        $rand = array('0', $row->tot_order_coun, '2', $row->used_cups, '4', $row->used_cups, '6', $row->used_cups, '8', $row->used_cups, 'a', 'b', 'c', 'd', 'e', 'f');
                                        $cc = '#' . $rand[rand(0, 15)] . $rand[rand(0, 15)] . $rand[rand(0, 15)] . $rand[rand(0, 15)] . $rand[rand(0, 15)] . $rand[rand(0, 15)];



                                        $labels .= $row->association_name . '"';
                                        $tot_event .= floatval($row->tot_order_count)>0?$row->tot_order_count:0;
                                        $val .= floatval($row->lost_cup)>0?$row->lost_cup:0;
                                        $color .= $cc . '"';
                                        
                                        $associationName.= $row->association_name . ' (%)"';
//                                        $total_lost_cup_chart_data[] = number_format($total_percent_loss, 2, ',', '');
                                        $total_lost_cup_chart_data[] = round($total_percent_loss, 2);
                                    }
                                }
//                                print_R($total_lost_cup_chart_data);
                                
                                ?>
                                        
                                        

                                    </tbody>
                                </table>
                              </div>
                            </div>
                        </div>


                        <div class="row">
         <div class="col-md-12">
           <div class="chart-sec text-center">
              <h2>Verlies Bekers</h2>
              <span>Vereniging verlies cups</span>
           </div>
         </div>

         <div class="col-md-8 offset-md-2">
           <canvas id="chartjs-1" style="height:200px"></canvas>
         </div>
       </div>

<!--                        <div class="row">
                            <div class="col-md-12">
                                <div class="chart-sec text-center">
                                    <h2>Verlies Bekers</h2>
                                    <span>Vereniging verlies cups</span>
                                </div>
                            </div>

                            <div class="col-md-8 offset-md-2">
                                <div class="chartjs-wrapper">
                                <section class="sc-section">
                                    <div class="bar-chart"></div>
                                </section> 
                            </div>


                            </div>
                        </div>-->
                        
                         




                    </div> 

                </div>

            </div>

        </div>



        <!--+++++++++++++ footer Start +++++++++++++++++++-->

        <?php $this->load->view('common/footer_v2'); ?>  


        <?php $this->load->view('common/footer_js_v2'); ?>  
        <script src="<?php echo base_url(); ?>assets/front/js/Chart.bundle.js"></script>
        <script src="<?php echo base_url(); ?>assets/front/js/chartjs-plugin-deferred.js"></script>   
        <script src="<?php echo base_url(); ?>assets/front/js/simple-chart.js"></script>  
        <script type="text/javascript" src="<?php echo base_url(); ?>assets/front_v2/js/jquery.dataTables.min.js"></script>
 <script type="text/javascript" src="<?php echo base_url(); ?>assets/front_v2/js/dataTables.bootstrap4.min.js"></script>
 
    <script type="text/javascript" src="https://www.chartjs.org/dist/2.9.3/Chart.min.js"></script>
    <script type="text/javascript" src="https://www.chartjs.org/samples/latest/utils.js"></script>
 <script>
            var ctx = document.getElementById('chartjs-1').getContext('2d');
            var color = Chart.helpers.color;

            var myChart = new Chart(ctx, {
                type: 'bar',
                data: {
                    labels: [<?php echo $associationName; ?>],
                    datasets: [{
                            data: [<?php echo implode($total_lost_cup_chart_data, ','); ?>],

                            backgroundColor: color(window.chartColors.blue).alpha(0.5).rgbString(),
                            borderColor: window.chartColors.blue,
                            borderWidth: 1
                        }]
                },
                options: {
                    scales: {
                        yAxes: [{
                                ticks: {
                                    beginAtZero: true
                                }
                            }]
                    },
                    legend: {
                        display: false,
                    },
                }
            });
        </script>
     <script>
//            new Chart(document.getElementById("chartjs-1"), {
//                "type": "bar",
//                "data": {
//                    "labels": [<?php echo $labels; ?>],
//                    "datasets": [{"label": " ", "data": [<?php echo $val; ?>], "fill": false,
//                            "backgroundColor": [<?php echo $color; ?>, ""], "borderColor": ["rgb(56, 213, 82)", "rgb(56, 213, 82)", "rgb(56, 213, 82)", "rgb(219, 231, 72)", "rgb(244, 165, 1)", "rgb(225,67,71)", ""], "borderWidth": 1}]
//                }, "options": {"scales": {"yAxes": [{"ticks": {"beginAtZero": true}}]}}});
//                
//                
                
                
                
                
                
//                
//                
//                
//                
//                  new Chart(document.getElementById("chartjs-1"), {
//                "type": "bar",
//                "data": {
//                    "labels": [<?php echo $labels; ?>],
//                    "datasets": [{
//                    label: "Total Event",
//                    data: [<?php echo $tot_event; ?>],
//                    backgroundColor: 'rgba(133, 193, 208, 1)'
//                }, {
//                        label: "Cup Lost",
//                        data: [<?php echo $val; ?>],
//                        backgroundColor: 'rgba(47, 120, 139, 1)'
//                    }]
//                }, "options": {"scales": {"yAxes": [{"ticks": {"beginAtZero": true}}]}}});
//                
//        
//                
//                
//                
                
                
                
                
                
                
            </script> 
        <script>
            $('#order_table').DataTable({
                "order": [[ 1, "asc" ]],
                searching: false, paging: false, info: false
            });
 
            function abbreviateNumber(arr) {
                var newArr = [];
                $.each(arr, function (index, value) {
                    var newValue = value;
                    if (value >= 1000) {
                        var suffixes = [" ", " K", " mil", " bil", " t"];
                        var suffixNum = Math.floor(("" + value).length / 3);
                        var shortValue = '';
                        for (var precision = 2; precision >= 1; precision--) {
                            shortValue = parseFloat((suffixNum !== 0 ? (value / Math.pow(1000, suffixNum)) : value).toPrecision(precision));
                            var dotLessShortValue = (shortValue + '').replace(/[^a-zA-Z 0-9]+/g, '');
                            if (dotLessShortValue.length <= 2) {
                                break;
                            }
                        }
                        if (shortValue % 1 !== 0)
                            shortNum = shortValue.toFixed(1);
                        newValue = shortValue + suffixes[suffixNum];
                    }
                    newArr[index] = newValue;
                });
                return newArr;
            }


            var labels = [<?php echo $labels; ?>];
            var values = [<?php echo $val; ?>];
            var outputValues = abbreviateNumber(values);

            $('.bar-chart').simpleChart({
                title: {
                    text: 'Vereniging verlies cups',
                    align: 'center'
                },
                type: 'bar',
                layout: {
                    width: '100%'
                },
                item: {
                    label: labels,
                    value: values,
                    outputValue: outputValues,
                    color: ['#00aeef'],
                    prefix: '',
                    suffix: '',
                    render: {
                        margin: 0,
                        size: 'relative'
                    }
                }
            });
            $('.column-chart').simpleChart({
                title: {
                    text: 'Vereniging verlies cups',
                    align: 'center'
                },
                type: 'column',
                layout: {
                    width: '100%',
                    height: '250px'
                },
                item: {
                    label: labels,
                    value: values,
                    outputValue: outputValues,
                    color: ['#00aeef'],
                    prefix: '',
                    suffix: '',
                    render: {
                        margin: 0.2,
                        size: 'relative'
                    }
                }
            });

        </script>

    </body>
</html>
