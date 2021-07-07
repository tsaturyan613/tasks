<!DOCTYPE html>
<html>
    <head>
        <?php $this->load->view('common/header'); ?>  
        
	<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/front/css/pignose.calendar.css">
    </head>
    <body>
        <?php $this->load->view('common/header_nav'); ?>  

        <!--+++++++++++++ Header End +++++++++++++++++++-->
        <section class="voor">
            <div class="container">
                <h1>Durafest voor verenigingen</h1>
                <div class="row">
                    <div class="col-sm-4">
                        <div class="stad">
                            <h2>Algemeen</h2>
                            <form action="/action_page.php">
                                <div class="form-group">
                                    <input type="text" class="form-control" name="username" placeholder="Stad">
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" name="username" placeholder="Postcode">
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" name="username" placeholder="Straat">
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" name="username" placeholder="Nummer">
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="stad mx-auto">
                            <h2>Locatie</h2>
                            <form action="/action_page.php">
                                <div class="form-group">
                                    <input type="text" class="form-control" name="username" placeholder="Postcode">
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" name="username" placeholder="Straat">
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" name="username" placeholder="Nummer">
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="col-sm-4"><div class="stad ml-auto">
                            <h2>Datum</h2>
                            <div class="calendar"></div>
		<div class="box" style="display: block;    margin-top: 20px;"></div>
                        </div></div> 
                </div>

                <div class="row pt-5">
                    <div class="col-md-4">
                        <div class="prdt">
                            <h2>Beker 30cl : Bier & Frisdrank</h2>
                            <h3>Materiaal: Polypropyleen</h3>
                            <img src="<?php echo base_url(); ?>assets/front/images/pic.png" alt="" class="img-fluid">
                            <div class="dropdown stdr">
                                <button id="dLabel" class="dropdown-select" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Make a selection
                                    <span class="caret"><i class="fas fa-chevron-down"></i></span>
                                </button>
                                <ul class="dropdown-menu" aria-labelledby="dLabel">
                                    <li>Option 1</li>
                                    <li>Option 2</li>
                                    <li>Option 3</li>
                                    <li>Option 4</li>
                                    <li>Option 5</li>
                                    <li>Option 6</li>
                                </ul>
                            </div>
                            <p>(400st/kist = &#128;4; Verlies = &#128;0.5/st)</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="prdt">
                            <h2>Beker 30cl : Bier & Frisdrank</h2>
                            <h3>Materiaal: Polypropyleen</h3>
                            <img src="<?php echo base_url(); ?>assets/front/images/pic2.png" alt="" class="img-fluid">
                            <div class="dropdown stdr">
                                <button id="dLabel" class="dropdown-select" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Make a selection
                                    <span class="caret"><i class="fas fa-chevron-down"></i></span>
                                </button>
                                <ul class="dropdown-menu" aria-labelledby="dLabel">
                                    <li>Option 1</li>
                                    <li>Option 2</li>
                                    <li>Option 3</li>
                                    <li>Option 4</li>
                                    <li>Option 5</li>
                                    <li>Option 6</li>
                                </ul>
                            </div>
                            <p>(400st/kist = &#128;4; Verlies = &#128;0.5/st)</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="prdt">
                            <h2>Beker 30cl : Bier & Frisdrank</h2>
                            <h3>Materiaal: Polypropyleen</h3>
                            <img src="<?php echo base_url(); ?>assets/front/images/pic3.png" alt="" class="img-fluid">
                            <div class="dropdown stdr">
                                <button id="dLabel" class="dropdown-select" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Make a selection
                                    <span class="caret"><i class="fas fa-chevron-down"></i></span>
                                </button>
                                <ul class="dropdown-menu" aria-labelledby="dLabel">
                                    <li>Option 1</li>
                                    <li>Option 2</li>
                                    <li>Option 3</li>
                                    <li>Option 4</li>
                                    <li>Option 5</li>
                                    <li>Option 6</li>
                                </ul>
                            </div>
                            <p>(400st/kist = &#128;4; Verlies = &#128;0.5/st)</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="prdt">
                            <h2>Beker 30cl : Bier & Frisdrank</h2>
                            <h3>Materiaal: Polypropyleen</h3>
                            <img src="<?php echo base_url(); ?>assets/front/images/pic.png" alt="" class="img-fluid">
                            <div class="dropdown stdr">
                                <button id="dLabel" class="dropdown-select" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Make a selection
                                    <span class="caret"><i class="fas fa-chevron-down"></i></span>
                                </button>
                                <ul class="dropdown-menu" aria-labelledby="dLabel">
                                    <li>Option 1</li>
                                    <li>Option 2</li>
                                    <li>Option 3</li>
                                    <li>Option 4</li>
                                    <li>Option 5</li>
                                    <li>Option 6</li>
                                </ul>
                            </div>
                            <p>(400st/kist = &#128;4; Verlies = &#128;0.5/st)</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="prdt">
                            <h2>Beker 30cl : Bier & Frisdrank</h2>
                            <h3>Materiaal: Polypropyleen</h3>
                            <img src="<?php echo base_url(); ?>assets/front/images/pic2.png" alt="" class="img-fluid">
                            <div class="dropdown stdr">
                                <button id="dLabel" class="dropdown-select" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Make a selection
                                    <span class="caret"><i class="fas fa-chevron-down"></i></span>
                                </button>
                                <ul class="dropdown-menu" aria-labelledby="dLabel">
                                    <li>Option 1</li>
                                    <li>Option 2</li>
                                    <li>Option 3</li>
                                    <li>Option 4</li>
                                    <li>Option 5</li>
                                    <li>Option 6</li>
                                </ul>
                            </div>
                            <p>(400st/kist = &#128;4; Verlies = &#128;0.5/st)</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="prdt">
                            <h2>Beker 30cl : Bier & Frisdrank</h2>
                            <h3>Materiaal: Polypropyleen</h3>
                            <img src="<?php echo base_url(); ?>assets/front/images/pic3.png" alt="" class="img-fluid">
                            <div class="dropdown stdr">
                                <button id="dLabel" class="dropdown-select" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Make a selection
                                    <span class="caret"><i class="fas fa-chevron-down"></i></span>
                                </button>
                                <ul class="dropdown-menu" aria-labelledby="dLabel">
                                    <li>Option 1</li>
                                    <li>Option 2</li>
                                    <li>Option 3</li>
                                    <li>Option 4</li>
                                    <li>Option 5</li>
                                    <li>Option 6</li>
                                </ul>
                            </div>
                            <p>(400st/kist = &#128;4; Verlies = &#128;0.5/st)</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="prdt">
                            <h2>Beker 30cl : Bier & Frisdrank</h2>
                            <h3>Materiaal: Polypropyleen</h3>
                            <img src="<?php echo base_url(); ?>assets/front/images/pic.png" alt="" class="img-fluid">
                            <div class="dropdown stdr">
                                <button id="dLabel" class="dropdown-select" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Make a selection
                                    <span class="caret"><i class="fas fa-chevron-down"></i></span>
                                </button>
                                <ul class="dropdown-menu" aria-labelledby="dLabel">
                                    <li>Option 1</li>
                                    <li>Option 2</li>
                                    <li>Option 3</li>
                                    <li>Option 4</li>
                                    <li>Option 5</li>
                                    <li>Option 6</li>
                                </ul>
                            </div>
                            <p>(400st/kist = &#128;4; Verlies = &#128;0.5/st)</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="prdt">
                            <h2>Beker 30cl : Bier & Frisdrank</h2>
                            <h3>Materiaal: Polypropyleen</h3>
                            <img src="<?php echo base_url(); ?>assets/front/images/pic2.png" alt="" class="img-fluid">
                            <div class="dropdown stdr">
                                <button id="dLabel" class="dropdown-select" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Make a selection
                                    <span class="caret"><i class="fas fa-chevron-down"></i></span>
                                </button>
                                <ul class="dropdown-menu" aria-labelledby="dLabel">
                                    <li>Option 1</li>
                                    <li>Option 2</li>
                                    <li>Option 3</li>
                                    <li>Option 4</li>
                                    <li>Option 5</li>
                                    <li>Option 6</li>
                                </ul>
                            </div>
                            <p>(400st/kist = &#128;4; Verlies = &#128;0.5/st)</p>
                        </div>
                    </div>
                </div>

                <div class="row pt-4 pb-4">
                    <div class="col-md-6">
                        <form action="/action_page.php">
                            <div class="round">
                                <input type="checkbox" id="checkbox" />
                                <label for="checkbox"></label>
                                Ophaling door Durafest op evenement (&#128;65)
                            </div>
                            <div class="round">
                                <input type="checkbox" id="checkbox2" />
                                <label for="checkbox2"></label>
                                Ophaling door Durafest in afhaalpunt (&#128;20)
                            </div>
                            <div class="round">
                                <input type="checkbox" id="checkbox3" />
                                <label for="checkbox3"></label>
                                Afleveren bij Durafest (Gratis)
                            </div>


                        </form>
                    </div>
                    <div class="col-md-6">
                        <div class="round">
                            <input type="checkbox" id="checkbox4" />
                            <label for="checkbox4"></label>
                            Terugbrengen op adres (&#128;65)
                        </div>
                        <div class="round">
                            <input type="checkbox" id="checkbox5" />
                            <label for="checkbox5"></label>
                            Terugbrengen via afhaalpunt (&#128;20)
                        </div>
                        <div class="round">
                            <input type="checkbox" id="checkbox6" />
                            <label for="checkbox6"></label>
                            Afhalen bij Durafest (Gratis)
                        </div>

                    </div>
                </div>
                <div class="row pb-4">
                    <div class="col-md-8">
                        <div class="brntext">
                            <p>Elk type beker kan worden gehuurd Per kist.</p>
                            <p>Bij levering zijn de kisten verzeld. Elke geopende kist wordt volledig aangerekend : zowel de huur als de reiniging.</p>
                            <p>Bij levering zijn de kisten verzeld. Elke geopende kist wordt volledig aangerekend : zowel de huur als de reiniging.</p>
                        </div>
                    </div>
                </div>
                <div class="row pt-4 pb-4">
                    <div class="col-md-12">
                        <div id="no-more-tables">
                            <table class="tabrx table table-striped table-condensed cf text-center">
                                <thead class="cf thead-light">
                                    <tr>
                                        <th>Hoeveelheid</th>
                                        <th>Model</th>
                                        <th class="numeric">Huurprijs/kist</th>
                                        <th class="numeric">Reinigen & drogen bekers/kist</th>
                                        <th class="numeric">Maximale Kost<span>(Excl:verloren en onbruikbare bekers)</span></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td data-title="Hoeveelheid">0</td>
                                        <td data-title="Model">Kist 400st 30 cl: Bier & Frisdrank pp</td>
                                        <td data-title="Huurprijs/kist" class="numeric">&#128; 4,00</td>
                                        <td data-title="Reinigen & drogen bekers/kist" class="numeric">&#128;16,0</td>
                                        <td data-title="Maximale Kost(Excl:verloren en onbruikbare bekers)" class="numeric">&#128; 0</td>

                                    </tr>
                                    <tr>
                                        <td data-title="Hoeveelheid">0</td>
                                        <td data-title="Model">Kist 300st 15 cl: Wijn PC</td>
                                        <td data-title="Huurprijs/kist" class="numeric">&#128; 4,00</td>
                                        <td data-title="Reinigen & drogen bekers/kist" class="numeric">&#128;16,0</td>
                                        <td data-title="Maximale Kost(Excl:verloren en onbruikbare bekers)" class="numeric">&#128; 0</td>

                                    </tr>
                                    <tr>
                                        <td data-title="Hoeveelheid">0</td>
                                        <td data-title="Model">Kist 200st 45 cl: Cocktail PC</td>
                                        <td data-title="Huurprijs/kist" class="numeric">&#128; 4,00</td>
                                        <td data-title="Reinigen & drogen bekers/kist" class="numeric">&#128;16,0</td>
                                        <td data-title="Maximale Kost(Excl:verloren en onbruikbare bekers)" class="numeric">&#128; 0</td>

                                    </tr>
                                    <tr>
                                        <td data-title="Hoeveelheid">0</td>
                                        <td data-title="Model">Kist 200st 40 cl: Sterke bieren PC</td>
                                        <td data-title="Huurprijs/kist" class="numeric">&#128; 4,00</td>
                                        <td data-title="Reinigen & drogen bekers/kist" class="numeric">&#128;16,0</td>
                                        <td data-title="Maximale Kost(Excl:verloren en onbruikbare bekers)" class="numeric">&#128; 0</td>

                                    </tr>



                                </tbody>
                            </table>
                        </div>
                        <table class="totals">
                            <tr>
                                <td class="mwdt">Totale hoeveelheid bekers:</td>
                                <td>0</td>
                            </tr>
                        </table>
                        <table class="vattotal">
                            <tr>
                                <td class="pt-3 mwdt">Subtotaal excl: verloren & onbruikbare bekers</td>
                                <td>&#128; 0,00</td>
                            </tr>
                            <tr>
                                <td>+21% BTW</td>
                                <td>&#128; 0,00</td>
                            </tr>
                            <tr>
                                <td class="pb-3">Totale Kosten excl: verloren & onbruikbare bekers </td>
                                <td>&#128; 0,00</td>
                            </tr>
                        </table>
                    </div>
                </div>
                <button type="submit" class="btn btn-primary submt">Account aanmaken</button>
            </div>
        </section>


        <!--+++++++++++++ footer Start +++++++++++++++++++-->

        <?php $this->load->view('common/footer'); ?>  


    </body>
    <?php $this->load->view('common/footer_js'); ?>  
    
<script type="text/javascript" src="<?php echo base_url(); ?>assets/front/js/pignose.calendar.full.min.js"></script>	
    <script>
        function onSelectHandler(date, context) {
            /**
             * @date is an array which be included dates(clicked date at first index)
             * @context is an object which stored calendar interal data.
             * @context.calendar is a root element reference.
             * @context.calendar is a calendar element reference.
             * @context.storage.activeDates is all toggled data, If you use toggle type calendar.
             * @context.storage.events is all events associated to this date
             */

            var $element = context.element;
            var $calendar = context.calendar;
            var $box = $element.siblings('.box').show();
            var text = 'You selected date ';

            if (date[0] !== null) {
                text += date[0].format('YYYY-MM-DD');
            }

            if (date[0] !== null && date[1] !== null) {
                text += ' ~ ';
            } else if (date[0] === null && date[1] == null) {
                text += 'nothing';
            }

            if (date[1] !== null) {
                text += date[1].format('YYYY-MM-DD');
            }

            $box.text(text);
        }

        $(function () {
            $('.calendar').pignoseCalendar({
                select: onSelectHandler
            });
        });
    </script>
</html>
