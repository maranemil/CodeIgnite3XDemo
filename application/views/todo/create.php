<div class="row card">  

    <h2><?php echo $title; ?></h2>

    <?php echo validation_errors(); ?>

    <?php echo form_open('todo/create'); ?>

        <label for="title">Title</label>
        <input type="input" name="title" /><br />

        <label for="desc">Text</label>
        <textarea name="desc"></textarea><br />

        <input type="submit" name="submit" value="Create news item" />

    </form>

</div>