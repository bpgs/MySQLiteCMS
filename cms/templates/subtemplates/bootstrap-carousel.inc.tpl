<?php if (isset($photos)): ?>
<style scoped>
.item img{
width:100%;
}
.carousel-caption, .carousel-caption h3{
color:black;
text-shadow: 2px 2px 1px rgba(255, 255, 255, 1);
}
.carousel-indicators li{
box-shadow: 3px 3px 0px 0px rgba(0, 0, 0, 1);
}
</style>
<!-- <h3> Galerie: <?php echo $photos[0]['gallery']; ?></h3> -->
<div id="<?php echo $photos[0]['gallery']; ?>" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
  <?php for ($i = 0; $i < $number_of_photos; $i = $i + 1): ?>
	<?php if ($i==0): ?>
      <li data-target="#<?php echo $photos[0]['gallery']; ?>" data-slide-to="<?php echo $i; ?>" class="active"></li>
	<?php else: ?>
      <li data-target="#<?php echo $photos[0]['gallery']; ?>" data-slide-to="<?php echo $i; ?>"></li>
	<?php endif; ?>
  <?php endfor; ?>	
  </ol>
  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <?php for ($i = 0; $i < $number_of_photos; $i = $i + 1): ?>
			<div class="item <?php if ($i==0): ?> <?php echo 'active' ?><?php endif; ?>">
			<img src="<?php echo BASE_URL . MEDIA_DIR . $photos[$i]['photo_normal']; ?>" alt="<?php echo $photos[$i]['title']; ?>">
				<div class="carousel-caption">
				<h3><?php echo $photos[$i]['title']; ?></h3>
				<?php echo $photos[$i]['subtitle']; ?>
				</div>
			</div>			
    <?php endfor; ?>
  </div><!-- Ende carousel-inner -->
  <!-- Controls -->
  <a class="left carousel-control" href="#<?php echo $photos[0]['gallery']; ?>" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#<?php echo $photos[0]['gallery']; ?>" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div><!-- Ende carousel-example-generic -->
<?php else: ?>
<p><em>No photo in this gallery</em><p>
<?php endif; ?>
