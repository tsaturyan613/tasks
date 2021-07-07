<!--<pre><?php print_R($val); ?>
</pre>-->
<?php
$tot = floatval(0);
$sub_tot = floatval(0);
$tax = floatval(0);
?>

<?php
foreach ($_POST['products'] as $key => $value) {
    if ($value != '') {
        $tot += floatval($value * $_POST['wash_prc'][$key]);
    }
}
$sub_tot = floatval($tot + $_POST['collection_by_profiwash_at_the_event'] + $_POST['return_to_address'] + $_POST['collection_by_profiwash_at_collection_point'] + $_POST['return_via_collection_point'] + $_POST['delivery_to_profiwash'] + $_POST['pick_up_at_profiwash'])
?>

<div class="col-md-8">
    <table class="totaal">
        <tr>
            <td>Subtotaal</td>
            <td>&#8364; <?php echo number_format((float) $sub_tot, 2, ',', ''); ?></td>
        </tr>
        <tr>
            <td>BTW 21%</td>
            <td>&#8364; <?php echo number_format(floatval((21 / 100) * $sub_tot), 2, ',', ''); ?></td>
        </tr>
        <tr>
            <td width="80%">Totaal :</td>
            <td>&#128;<?php echo number_format((float) floatval(((21 / 100) * $sub_tot)+$sub_tot), 2, ',', ''); ?></td>
        </tr>
    </table>



    <form action="<?php echo base_url(); ?>frontend/cityproduct/washcheckout" id="submitCartFrm" method="post">

        <input type="hidden" name="postcode" value="<?php echo $_POST['postcode']; ?>"/>
        <input type="hidden" name="street" value="<?php echo $_POST['street']; ?>"/>
        <input type="hidden" name="number" value="<?php echo $_POST['number']; ?>"/> 
        <input type="hidden" name="event_date" value="<?php echo $_POST['event_date']; ?>"/>
        <?php
        foreach ($_POST['products'] as $key => $value) {
            if ($value != '') {
                ?>
                <input type="hidden" name="products[<?php echo $key; ?>]" value="<?php echo $value; ?>"/>
            <?php
            }
        }
        ?>
        <input type="hidden" name="collection_by_profiwash_at_the_event" value="<?php echo $_POST['collection_by_profiwash_at_the_event'] ? $_POST['collection_by_profiwash_at_the_event'] : ''; ?>"/>
        <input type="hidden" name="return_to_address" value="<?php echo $_POST['return_to_address'] ? $_POST['return_to_address'] : ''; ?>"/>
        <input type="hidden" name="collection_by_profiwash_at_collection_point" value="<?php echo $_POST['collection_by_profiwash_at_collection_point'] ? $_POST['collection_by_profiwash_at_collection_point'] : ''; ?>"/>
        <input type="hidden" name="return_via_collection_point" value="<?php echo $_POST['return_via_collection_point'] ? $_POST['return_via_collection_point'] : ''; ?>"/>
        <input type="hidden" name="delivery_to_profiwash" value="<?php echo $_POST['delivery_to_profiwash'] ? $_POST['delivery_to_profiwash'] : ''; ?>"/>
        <input type="hidden" name="pick_up_at_profiwash" value="<?php echo $_POST['pick_up_at_profiwash'] ? $_POST['pick_up_at_profiwash'] : ''; ?>"/>

        <input type="hidden" name="sub_total" value=" <?php echo $sub_tot ?>"/>

        <br>
        <button type="submit" id="submitCart" class="btn btn-primary float-right submt">Bestelling Plaatsen</button>
    </form>

</div>




