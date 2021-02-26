<div class="row">
    <div class="container col-lg-12">
	   <?php foreach ($todo as $news_item): ?>
           <div class="card float-left w-40 text-white bg-warning mb-3 ml-3 col-md-3 col-lg-3">
               <!--
			   <img class="card-img-top" src="..." alt="Card image cap">
			   -->
               <div class="card-body">
                   <h5 class="card-title text-primary"><?php echo $news_item['id']; ?><?php echo $news_item['title']; ?></h5>
                   <h6 class="card-subtitle mb-2 text-muted">Card subtitle</h6>
                   <p class="card-text text-info"><?php echo substr($news_item['desc'], 0, 95); ?> ... </p>
                   <a class="btn btn-primary" href="<?php echo site_url('todo/' . $news_item['id']); ?>">View article</a>
               </div>
           </div>
	   <?php endforeach; ?>
    </div>
</div>

<div class="row justify-content-end">
    <div class="container">
        <nav aria-label="Page navigation example">
            <ul class="pagination">
                <li class="page-item"><a class="page-link" href="?page=<?php echo $pagination["first"] ?>">First</a></li>
                <li class="page-item"><a class="page-link" href="?page=<?php echo $pagination["prev"] ?>">Prev</a></li>
                <li class="page-item"><a class="page-link" href="#"><?php echo $pagination["current"] ?></a></li>
                <li class="page-item"><a class="page-link" href="?page=<?php echo $pagination["next"] ?>">Next</a></li>
                <li class="page-item"><a class="page-link" href="?page=<?php echo $pagination["last"] ?>">Last</a></li>
            </ul>
        </nav>
    </div>
</div>