<?php
    namespace App\Models;
    use CodeIgniter\Database\ConnectionInterface;
    use CodeIgniter\Model;

    class NewsModel extends Model {
        protected $table = 'master_berita';

        protected $allowedFields = ['judulberita', 'author','foto','isiberita'];
    }
?>