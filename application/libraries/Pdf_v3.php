<?php defined('BASEPATH') OR exit('No direct script access allowed');
// Dompdf namespace
use Dompdf\Dompdf;

class Pdf_v3
{
    public function __construct(){   
        // require_once autoloader 
        require_once dirname(__FILE__).'/dompdf/autoload.inc.php';
        $pdf = new DOMPDF();
        $CI =& get_instance();
        $CI->dompdf = $pdf;

    }
}
?>