<div class="frmSec">
    <!--<input type="hidden" name="city_id[]" value="<?php echo $_POST['u_id'] ?>" />-->
    <input type="hidden" name="super_city_id[]" value="<?php echo $_POST['u_id'] ?>" />
<!--<input type="hidden" name="post_code[]" value="<?php echo $_POST['post_code'] ?>" />-->
<div class="col-md-2">
    <div class="form-group">
        <label class="control-label">Minimum Box</label>
        <input type="text" required=""  name="min_qty[]" id="min_qty" class="form-control" placeholder="">
    </div>
</div>
<div class="col-md-2">
    <div class="form-group">
        <label class="control-label">Huurprijs / Box ( € )</label>
        <input type="text" required="" name="box_prc[]" id="box_prc" class="form-control" placeholder="">
    </div>
</div>
<div class="col-md-3">
    <div class="form-group"> <label class="control-label">Prizjs per verloren cup ( € )</label> 
        <input type="text" required="" name="loss_prc[]" id="loss_prc" class="form-control" placeholder=""> 
    </div>
</div>
<div class="col-md-3">
    <div class="form-group"> <label class="control-label">Wasprijs / Box ( € )</label> 
        <input type="text" required="" name="wash_prc[]" id="wash_prc" class="form-control" placeholder=""> 
    </div>
</div >
 <div class="col-md-2" ><button type="button" class="btn red remove"> <i class="fa fa-close"></i></button> </div>
</div>
<div class="clearfix"></div>