<h2><?php echo $title; ?></h2>
<div class="container">

<?php foreach ($todo as $news_item): ?>
<div class="row">
    <div class="col-sm">

        <h3><?php echo $news_item['title']; ?></h3>
       
     
        <a href="<?php echo site_url('todo/'.$news_item['id']); ?>">View article</a>
        </div>
  </div>
<?php endforeach; ?>
</div>