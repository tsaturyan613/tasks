<!DOCTYPE html>
<html>
    <head>
        <?php $this->load->view('common/header'); ?>  
         <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['bar']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Year', 'Sales', 'Expenses', 'Profit'],
          ['2014', 1000, 400, 200],
          ['2015', 1170, 460, 250],
          ['2016', 660, 1120, 300],
          ['2017', 1030, 540, 350]
        ]);

        var options = {
          chart: {
            title: 'Company Performance',
            subtitle: 'Sales, Expenses, and Profit: 2014-2017',
          },
          bars: 'horizontal' // Required for Material Bar Charts.
        };

        var chart = new google.charts.Bar(document.getElementById('barchart_material'));

        chart.draw(data, google.charts.Bar.convertOptions(options));
      }
    </script>
    </head>
    <body>
        <?php $this->load->view('common/header_nav'); ?>  

        <!--+++++++++++++ Header End +++++++++++++++++++-->
        <section class="voor">
            <div class="container">
                <h1>Aanbevelingen</h1>
                <div class="row">
                    <div class="col-md-12">
                        <table id="mijn_table" class="display border text-center" style="width:100%">
                            <thead>
                                <tr>
                                    <th>Status</th>
                                    <th>Datum</th>
                                    <th>Naam evenement</th>
                                    <th># Verwachte bezoekers</th>
                                    <th>#Bekers per bezoekers</th>
                                    <th>Gebruikte bekers</th>
                                    <th># Verloren/ onbruikbare bekers</th>
                                    <th># Afgewassen bekers</th>
                                    <th>Kost</th>
                                    <th>Ga naar factuur</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Wachten op goedkeuring</td>
                                    <td>03/05/2020</td>
                                    <td>Buurtfeest</td>
                                    <td>400</td>
                                    <td>4</td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td><i class="fas fa-chevron-right"></i></td>
                                </tr>
                                <tr>
                                    <td>Eerste aanmaning</td>
                                    <td>27/03/2020</td>
                                    <td>Barbeque</td>
                                    <td>600</td>
                                    <td>4</td>
                                    <td>2400</td>
                                    <td>82</td>
                                    <td>2381</td>
                                    <td>&#8364; 312,5</td>
                                    <td><i class="fas fa-chevron-right"></i></td>
                                </tr>
                                <tr>
                                    <td>Afgerond</td>
                                    <td>12/02/2020</td>
                                    <td>Wedstrijd</td>
                                    <td>200</td>
                                    <td>3</td>
                                    <td>600</td>
                                    <td>12</td>
                                    <td>588</td>
                                    <td>&#8364; 157,5</td>
                                    <td><i class="fas fa-chevron-right"></i></td>
                                </tr>


                            </tbody>

                        </table>


<div id="barchart_material" style="width: 900px; height: 500px;"></div>
                    </div>
                </div>

            </div>
        </section>

        <!--+++++++++++++ footer Start +++++++++++++++++++-->

        <?php $this->load->view('common/footer'); ?>  


    </body>
    <?php $this->load->view('common/footer_js'); ?>  
</html>
