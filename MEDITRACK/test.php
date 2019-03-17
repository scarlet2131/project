<?php
echo '<table id="pred" class="table table-striped">
      <tr>
        <th>SNO</th>
        <th>SHOP NAME</th>
        <th>LOCALITY</th>
        <th>DISEASE</th>
      </tr>';
      for($i=0;$i<$n;$i++)
      {
        echo '<tr>';
        echo '<td>'.($i+1).'</td>';
        echo '<td>'.$a[$i].'</td>';
        echo '<td>'.$local[$i].'</td>';
        echo '<td>'.$disease[$i].'</td>';
        echo '</tr>';
      }
      echo '</table>';
      ?>