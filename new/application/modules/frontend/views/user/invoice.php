<!DOCTYPE html>
<html>
    <head>
        <?php $this->load->view('common/header'); ?>  
    </head>
    <body>
        <?php $this->load->view('common/header_nav'); ?>  

        <!--+++++++++++++ Header End +++++++++++++++++++-->
        <section class="voor">
            <div class="container">
                <h1>Factuur</h1>
                <div class="row">
                    <div class="col-md-8">
                        <div class="card">
                            <div class="card-header">
                                <img src="<?php echo base_url(); ?>assets/front/images/logo.png" alt="logo">

                            </div>
                            <div class="card-body">
                                <div class="row mb-4">
                                    <div class="col-sm-6">
                                        <h6 class="mb-3">Factuur</h6> 
                                        <table class="invoicen">
                                            <tr>
                                                <td class="text-right">Nr : </td>
                                                <td><strong>20200079</strong></td>
                                            </tr>
                                            <tr>
                                                <td class="text-right">Factuurdatum : </td>
                                                <td>31/03/2020</td>
                                            </tr>
                                            <tr>
                                                <td class="text-right">Vervaldatum : </td>
                                                <td>31/03/2020</td>
                                            </tr>
                                            <tr>
                                                <td class="text-right">O/Ref : </td>
                                                <td>Dossier 5612</td>
                                            </tr>
                                        </table>
                                    </div>

                                    <!--<div class="col-sm-6">
                                    <h6 class="mb-3">To:</h6>
                                    <div>
                                    <strong>Bob Mart</strong>
                                    </div>
                                    <div>Attn: Daniel Marek</div>
                                    <div>43-190 Mikolow, Poland</div>
                                    <div>Email: marek@daniel.com</div>
                                    <div>Phone: +48 123 456 789</div>
                                    </div>-->

                                </div>

                                <div class="table-responsive-sm invoice">
                                    <table class="table table-striped">
                                        <thead>
                                            <tr>
                                                <th>Artikel</th>
                                                <th>Omschrijving</th>
                                                <th class="text-right">Aantal</th>
                                                <th class="text-right">Eenheidsprijs</th>
                                                <th class="text-right">Bedrag</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>RENT1</td>
                                                <td>PP BIER 30cl</td>
                                                <td class="text-right">720</td>
                                                <td class="text-right">0,010 &#8364;</td>
                                                <td class="text-right">7,20 &#8364;</td>
                                            </tr>
                                            <tr>
                                                <td>RENT1</td>
                                                <td>PP BIER 30cl</td>
                                                <td class="text-right">720</td>
                                                <td class="text-right">0,010 &#8364;</td>
                                                <td class="text-right">7,20 &#8364;</td>
                                            </tr>
                                            <tr>
                                                <td>RENT1</td>
                                                <td>PP BIER 30cl</td>
                                                <td class="text-right">720</td>
                                                <td class="text-right">0,010 &#8364;</td>
                                                <td class="text-right">7,20 &#8364;</td>
                                            </tr>
                                            <tr>
                                                <td>RENT1</td>
                                                <td>PP BIER 30cl</td>
                                                <td class="text-right">720</td>
                                                <td class="text-right">0,010 &#8364;</td>
                                                <td class="text-right">7,20 &#8364;</td>
                                            </tr>
                                            <tr>
                                                <td>RENT1</td>
                                                <td>PP BIER 30cl</td>
                                                <td class="text-right">720</td>
                                                <td class="text-right">0,010 &#8364;</td>
                                                <td class="text-right">7,20 &#8364;</td>
                                            </tr>
                                            <tr>
                                                <td>RENT1</td>
                                                <td>PP BIER 30cl</td>
                                                <td class="text-right">720</td>
                                                <td class="text-right">0,010 &#8364;</td>
                                                <td class="text-right">7,20 &#8364;</td>
                                            </tr>



                                        </tbody>
                                    </table>
                                </div>
                                <div class="row">
                                    <div class="col-lg-12 col-sm-12 ml-auto invoice2">
                                        <table class="table table-clear">
                                            <tbody>
                                                <tr>
                                                    <td class="left">
                                                        <strong>Subtotaal</strong>
                                                    </td>
                                                    <td class="text-right">238,55</td>
                                                </tr>
                                                <tr>
                                                    <td class="left">
                                                        <strong>BTW 21%</strong>
                                                    </td>
                                                    <td class="text-right">50,10</td>
                                                </tr>
                                                <tr>
                                                    <td class="left">
                                                        <strong>TOTAAL</strong>
                                                    </td>
                                                    <td class="text-right">
                                                        <strong>288,65</strong>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="left">
                                                        Voorschot
                                                    </td>
                                                    <td class="text-right">
                                                        85,85
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="left">
                                                        <strong>Te betalen</strong>
                                                    </td>
                                                    <td class="text-right">
                                                        <strong>202,80</strong>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>

                                    </div>

                                </div>

                            </div>
                        </div>

                        <table class="invoicelast">
                            <tr>
                                <td><strong>Durafest BV</strong></td>
                            </tr>
                            <tr>
                                <td>Wingepark 4A</td>
                                <td> </td>
                                <td>BTW BE 0479.870.579</td>
                                <td>RPR leuven</td>
                            </tr>
                            <tr>
                                <td width="25%">3110ROTSELAAR</td>
                                <td width="25%">Tel : 016/24 14 81 </td>
                                <td width="25%">BIC : KREDBEBB</td>
                                <td width="25%">IBAN : BE26 7350 0618 3029</td>
                            </tr>
                        </table>

                        <button type="submit" class="btn btn-primary submt mt-4">Download</button>
                    </div>
                </div>

            </div>

        </section>




        <!--+++++++++++++ footer Start +++++++++++++++++++-->

        <?php $this->load->view('common/footer'); ?>  


    </body>
    <?php $this->load->view('common/footer_js'); ?>  
</html>
