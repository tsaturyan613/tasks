<?php
defined('BASEPATH') OR exit('No direct script access allowed');
 
/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
| 
|	http://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/

$route['default_controller'] = 'frontend/home';
$route['login'] = 'frontend/home/login';
$route['logout'] = 'frontend/logout/index';
$route['forgot_password'] = 'frontend/home/forgot_password';
$route['forgot_password_submit'] = 'frontend/home/forgot_password_submit';

$route['user/sucess'] = 'frontend/user/sucess';
$route['user/sucess_intermediate'] = 'frontend/user/sucess_intermediate';
$route['user/bekers'] = 'frontend/user/bekers';
$route['user/mijidashboard'] = 'frontend/user/mijidashboard';
$route['user/inbox'] = 'frontend/user/inbox';
$route['user/aanbeve'] = 'frontend/user/aanbeve';
$route['user/city_inbox'] = 'frontend/user/cityInbox';
//$route['user/invoice'] = 'frontend/user/invoice';
$route['user/vereniging'] = 'frontend/user/vereniging';

$route['user/register_gemeenteen'] = 'frontend/user/registerGemeenteen';
$route['user/register_verenigingen'] = 'frontend/user/registerVerenigingen';
$route['user/add_vereniging'] = 'frontend/user/addVereniging';
$route['user/mijievenementen'] = 'frontend/user/myEvents';
$route['user/cityevenementen'] = 'frontend/user/myCityEvents';


$route['user/cityprofile'] = 'frontend/user/cityprofile';
$route['user/associationprofile'] = 'frontend/user/associationprofile';

$route['get_vereniging'] = 'frontend/home/getVerenigingByPostcode';
 
$route['user/bhuren'] = 'frontend/home/bhuren';
$route['gemeenten'] = 'frontend/home/gemeenten';
$route['profiwashvoorverenigingen'] = 'frontend/home/profiwashvoorverenigingen';
$route['aanbeve'] = 'frontend/home/aanbeve';
$route['mijn'] = 'frontend/home/mijn';
$route['serviceplatform'] = 'frontend/home/serviceplatform';
$route['contact'] = 'frontend/home/contact';


$route['user/products'] = 'frontend/product/allProduct';
$route['user/checkout'] = 'frontend/product/submitCart';

$route['citynewinvoice_download/:num'] = 'frontend/product/newinvoice_download';
$route['cityinvoice_download/:num'] = 'frontend/product/invoice_download';
$route['citywashinvoice_download/:num'] = 'frontend/product/citywashinvoice_download';
 

$route['user/invoice/:num'] = 'frontend/product/invoice';
$route['invoice_download/:num'] = 'frontend/product/invoice_download';

$route['user/newinvoice/:num'] = 'frontend/product/newinvoice';
$route['newinvoice_download/:num'] = 'frontend/product/newinvoice_download';

$route['user/cityinvoice/:num'] = 'frontend/product/cityinvoice'; 
$route['user/citynewinvoice/:num'] = 'frontend/product/citynewinvoice';


$route['user/cityproducts'] = 'frontend/cityproduct/F';
$route['user/citycheckout'] = 'frontend/cityproduct/submitCart';
$route['user/cityinvoice/:num'] = 'frontend/cityproduct/invoice';
$route['user/citywashinvoice/:num'] = 'frontend/cityproduct/washinvoice';
$route['user/citygraph'] = 'frontend/cityproduct/mijidashboard';



$route['user/invoice_pdf/:num'] = 'frontend/product/invoice_pdf';





$route['404_override'] = 'frontend/error';
$route['translate_uri_dashes'] = FALSE;


$route['aanbod'] = 'frontend/home/aanbod';
$route['bio'] = 'frontend/home/bio';
$route['referenties'] = 'frontend/home/referenties';
$route['missie'] = 'frontend/home/missie';
$route['tarieven'] = 'frontend/home/allProductsGuest';