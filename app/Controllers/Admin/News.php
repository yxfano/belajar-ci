<?php
    namespace App\Controllers\Admin;
    use App\Controllers\BaseController;
    use App\Models\NewsModel;

    class News extends BaseController {
        public function index() {
            //echo "Ini hamanan index pada controller users";
            //buat object dari class UserModel
            $model = new Newsmodel();
            
            //load seluruh data
            $data['master_berita'] = $model->orderBy('idberita', 'DESC')->findAll();

            return view('index', $data);
        }
        public function brt() {
            //echo "Ini hamanan index pada controller users";
            //buat object dari class UserModel
            $model = new Newsmodel();
            
            //load seluruh data
            $data['master_berita'] = $model->orderBy('idberita', 'DESC')->findAll();

            return view('news_view_all', $data);
        }
        public function create() {
            return view('news_create_news');
        }
        public function store() {
            $model=new Newsmodel();

            $data=[
                'judulberita'=>$this->request->getVar('judulberita'),
                'author'=>$this->request->getVar('author'),
                'foto' =>$this->request->getVar('foto'),
                'isiberita' =>$this->request->getVar('isiberita'),
            ];
            $save=$model->insert($data);

            return redirect()->to(base_url('admin/news/brt'));
        }
        public function edit($id = null){
            $model = new Newsmodel();
            $data['brt'] = $model->where('idberita',$id)->first();

            return view('users_edit_user',$data);
        }
        public function update(){
            $model=new Newsmodel();
            $id=$this->request->getVar('idberita');
            $data=[
                'judulberita'=>$this->request->getVar('judulberita'),
                'author'=>$this->request->getVar('author'),
                'foto' =>$this->request->getVar('foto'),
                'isiberita' =>$this->request->getVar('isiberita'),
            ];
            $save=$model->update($id,$data);

            return redirect()->to(base_url('admin/news/edit'));          
        }
        public function delete($id = null){
            $model = new Newsmodel();
            $data['brt'] = $model->where('idberita',$id)->delete();

            return redirect()->to(base_url('admin/news/delete'));
        }
    }
?>