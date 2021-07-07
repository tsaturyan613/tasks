<html>
<head>
<title><?=@$subject?></title> 
</head>
<body>
<p>Beste <?=@$dear_name?>,</p>
<p>Uw factuur voor bestelling <?=@$ordernumber?> is beschikbaar in uw account. U kan inloggen via onderstaande link.<br/><a href="<?=@$url?>">
        
         <?=@$url?> </a><br>
</p><br>

    <a href="<?=@$pdf?>">Factuur</a>


<p>Met vriendelijke groet <br/>Durafest</p>
</body>
</html>