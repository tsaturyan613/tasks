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
        </section>






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
                                                <th>City</th>
                                                <th># cups gebruikt</th>
                                                <th>Verloren cups</th>
                                                <th>% verlies</th>
                                            </tr>
                                        </thead>

                                        <tbody>

                                            <?php
//                                            echo "<pre>";
//                                            print_R($all_order);
//                                            exit();
                                            foreach ($all_order as $key => $row) {
                                                $getOrderDetailsByOrderId = getOrderDetailsByOrderId($row->order_id);
                                                $total_percent_loss = floatval(($getOrderDetailsByOrderId['tot_lost_cup'] / $getOrderDetailsByOrderId['tot_used_cup']) * 100);
                                               
                                                
                                                $city_ids[$row->city_name][]=round($total_percent_loss, 2);
                                                
                                                $cityData[$row->city_name]['tot_used_cup'] +=$getOrderDetailsByOrderId['tot_used_cup'];
                                                 $cityData[$row->city_name]['tot_lost_cup'] +=$getOrderDetailsByOrderId['tot_lost_cup'];
                                                $cityData[$row->city_name]['tot_used_cup'] +=$getOrderDetailsByOrderId['tot_used_cup'];
                                                 $cityData[$row->city_name]['total_percent_loss'][]=round($total_percent_loss, 2);
                                                
                                                
                                                
                                            }
                                            
                                            
                                            foreach ($cityData as $key=>$row){
                                                ?>
                                                
                                                <tr>

                                                    <td><?php echo $key ?></td>
                                                    <td><?php echo $row[tot_used_cup] ?></td>
                                                    <td><?php echo $row[tot_lost_cup] ?></td>
                                                    <!--<td><?php echo round(floatval(( $row[tot_lost_cup] /  $row[tot_used_cup]) * 100),2); ?></td>-->
                                                    <td><?php 
//                                                    print_R($row[total_percent_loss]); 
                                                    $d= floatval(0);
                                                for($i=0;$i<count($row[total_percent_loss]);$i++){
                                                    $d += floatval($row[total_percent_loss][$i]);
                                                }
                                                   echo round(floatval($d/count($row[total_percent_loss])),2).'%'; ?></td>
                                                </tr>
                                                <?php
                                                
                                            }
                                            
                                            
                                            
                                            
//                                            $city_ids= array_unique($city_ids);
//                                            echo "<pre>";
//                                            print_R($cityData);
                                            
                                            foreach ($city_ids as $k=>$rw){
//                                                echo $k;
//                                                print_R($rw);
//                                                array_sum($rw);
                                                $d= floatval(0);
                                                for($i=0;$i<count($rw);$i++){
                                                    $d += floatval($rw[$i]);
                                                }
//                                                echo floatval($d/count($rw)).'-';
                                                $cityName[]='"'.$k.'"';
                                                $avg_lost_cup_data[]=floatval($d/count($rw));
                                                
                                            }
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
                    labels: [<?php echo implode($cityName, ','); ?>],
                    datasets: [{
                            data: [<?php echo implode($avg_lost_cup_data, ','); ?>],

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
                "order": [[1, "asc"]],
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
