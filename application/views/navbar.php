<nav class="top-bar">
        <ul class="title-area">
          <!-- Title Area -->
          <li class="name">
            <h1><a href=<?php echo base_url(); ?> > Time Trial</a></h1>
          </li>
        </ul>
 
        <ul class="right">
          <li class="divider hide-for-small"></li>           
            <li class="name">
            <?php if ($this->session->userdata('username')):?>
              <h1><a href=<?php echo site_url('logout'); ?> >Log out</a></h1>
            <?php else: ?>
              <h1><a href=<?php echo site_url('login'); ?> >Log in</a></h1>              
            <?php endif ?>
          </li>
         </ul>
      </nav>

                    
