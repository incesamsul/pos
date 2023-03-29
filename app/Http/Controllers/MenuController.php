<?php

namespace App\Http\Controllers;

use App\Models\Kategori;
use App\Models\Menu;
use Illuminate\Http\Request;

class MenuController extends Controller
{



    public function menu($idMenu = null)
    {
        if ($idMenu) {
            $data['edit'] = Menu::where('id_menu', $idMenu)->first();
        } else {
            $data['edit'] = null;
        }
        $data['menu'] = Menu::all();
        $data['kategori'] = Kategori::all();
        return view('pages.menu.index', $data);
    }









    // CRUD MENU
    public function tambahMenu(Request $request)
    {

        $image = $request->file('gambar');
        $imageName = uniqid() . '.' . '.jpg';
        $image->move(public_path('data/gambar_menu/'), $imageName);

        Menu::create([
            'nama_menu' => $request->nama_menu,
            'deskripsi' => $request->deskripsi,
            'harga' => $request->harga,
            'id_kategori' => $request->id_kategori,
            'gambar' => $imageName,
        ]);
        return redirect()->back()->with('message', 'menu Berhasil di tambahkan');
    }

    public function ubahMenu(Request $request)
    {

        $image = $request->file('gambar');

        if ($image) {
            $imageName = uniqid() . '.' . '.jpg';
            $image->move(public_path('data/gambar_menu/'), $imageName);
            Menu::where('id_menu', $request->id_menu)->update([
                'nama_menu' => $request->nama_menu,
                'deskripsi' => $request->deskripsi,
                'harga' => $request->harga,
                'id_kategori' => $request->id_kategori,
                'gambar' => $imageName,
            ]);
        } else {
            Menu::where('id_menu', $request->id_menu)->update([
                'nama_menu' => $request->nama_menu,
                'deskripsi' => $request->deskripsi,
                'harga' => $request->harga,
                'id_kategori' => $request->id_kategori,
            ]);
        }

        return redirect()->back()->with('message', 'menu Berhasil di tambahkan');
    }

    public function hapusMenu($idMenu)
    {
        Menu::where([
            ['id_menu', '=', $idMenu]
        ])->delete();

        return redirect()->back()->with('message', 'menu Berhasil di hapus');
    }
}
