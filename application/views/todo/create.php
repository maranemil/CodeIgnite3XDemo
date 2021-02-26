<div class="row card">
    <h2><?php echo $title; ?></h2>
   <?php echo validation_errors(); ?>
   <?php echo form_open('todo/create'); ?>
    <label for="title">Title</label>
    <label>
        <input type="input" name="title"/>
    </label><br/>
    <label for="desc">Text</label>
    <label>
        <textarea name="desc"></textarea>
    </label><br/>
    <input type="submit" name="submit" value="Create news item"/>
   <?php echo form_close(); ?>
</div>