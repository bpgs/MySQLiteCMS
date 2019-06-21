<div class="row">
    <div class="col-md-10">
        <h1><?php echo $lang['backup']; ?></h1>
    </div>
    <div class="col-md-2">
        <a class="btn btn-success btn-top pull-right" href="index.php?mode=backup&amp;action=new"><span
                class="glyphicon glyphicon-plus"></span> <?php echo $lang['create_backup']; ?></a>
    </div>
</div>

<?php if(isset($files)): ?>
    <div class="table-responsive">
        <table class="table table-striped table-hover">
            <thead>
            <tr>
                  <th><?php echo $lang['file']; ?></th>
                  <th><?php echo $lang['file_size']; ?></th>
                   <th><?php echo $lang['file_date']; ?></th>
                <th colspan="3">&nbsp;</th>
            </tr>
            </thead>
            <tbody>
            <?php $i = 0;
            foreach ($files as $file): ?>
                <tr>
                    <td><?php echo $file['filename']; ?></td>
                    <td><?php echo $file['size']; ?></td>
                    <td><?php echo $file['last_modified']; ?></td>
                    <td class="nobreak options">
                        <a class="btn btn-danger btn-xs"
                           href="index.php?mode=backup&amp;delete=<?php echo $file['filename']; ?>"
                           title="<?php echo $lang['delete']; ?>"
                           data-delete-confirm="<?php echo rawurlencode($lang['delete_this_backup_section']); ?>">
                           <span class="glyphicon glyphicon-remove"></span></a></td>
                </tr>
                <?php $i++; endforeach; ?>
            <tbody>
        </table>
    </div>

<?php else: ?>

    <div class="alert alert-warning">
        <?php echo $lang['no_backup_sections']; ?></em></p>
    </div>

<?php endif; ?>
