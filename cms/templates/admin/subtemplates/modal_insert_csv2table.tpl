<div class="modal-header">
<!-- Datei modal_insert_amp_csv2table.tpl, wird von cms\includes\modal.inc.php aufgerufen -->
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
    <h4 class="modal-title"><?php echo "CSV2Table"; ?></h4>
</div>
<div class="modal-body">

    <?php if (isset($images)): ?>
        <div class="form-group">
            <select id="csvfileselect" class="form-control" size="20">
                <?php foreach ($images as $image): ?>
                    <option value="<?php echo $image; ?>"><?php echo $image; ?></option>
                <?php endforeach; ?>
            </select>
        </div>
        <div class="form-group">
            <label for="csv2table_parameter"><?php echo "Parameter einfügen:"; ?></label>
            <input id="csv2table_parameter" class="form-control" type="text" name="csv2table_parameter"
                   value="<?php echo "Parameterliste"; ?>">
        </div>
    <?php else: ?>
        <div class="alert alert-warning">
            <p><?php echo $lang['no_images']; ?></p>
        </div>
    <?php endif; ?>

</div>
<div class="modal-footer">
    <button type="button" class="btn btn-default" data-dismiss="modal"><?php echo $lang['cancel']; ?></button>
    <?php if (isset($images)): ?>
        <button id="insert-csvfile" type="button"
                class="btn btn-primary"><?php echo "Insert file"; ?></button>
    <?php endif; ?>
</div>
<script>
    $(function () {
        $("#csvfileselect option").dblclick(function (e) {
            $("#insert-csvfile").click();
        });
        $("#insert-csvfile").click(function (e) {
            if (csvfile = $("#csvfileselect option:selected").val()) {
                if (csv2table_parameter = $("#csv2table_parameter").val()) csv2tableCode = "[csv2table:" + csvfile + "|" + csv2table_parameter + "]";
                else csv2tableCode = "[csv2table:" + csvfile + "]";
                $($insertField).insertAtCaret(csv2tableCode);
            }
            $('#modal_image').modal('hide');
        });
    });
</script>