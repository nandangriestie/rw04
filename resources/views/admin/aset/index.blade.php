@extends('layouts.admin.dashboard')
@section('content')
    @include('sweetalert::alert')
    <div class="container p-5">
        <h1>Halaman Aset</h1>
        <p><small>Halaman ini digunakan jika akan melakukan perubahan terhadap data Aset RW 04</small></p>
        @if ($message = Session::get('success'))
            <div class="alert alert-success">
                <p>{{ $message }}</p>
            </div>
        @endif
        <div class="ml-auto text-right">
            <a href="{{ route('aset.create') }}" class="btn btn-outline-primary mb-3">Masukan Data Aset</a>
        </div>
        @if (count($data) < 1)
            <p>Tidak ada data, silahkan <a href="{{ route('aset.create') }}">entri data baru</a></p>
        @else
            <div class="card p-4">
                <table class="table table-bordered mt-4">
                    <thead>
                        <tr>
                            <th scope="col">Foto Aset </th>
                            <th scope="col">Nama Aset </th>
                            <th scope="col">Jumlah </th>
                            <th scope="col">Informasi </th>
                            <th scope="col">Aksi</th>
                        </tr>
                    </thead>
                    @foreach ($data as $item)
                        <tbody>
                            <tr>
                                <td>
                                    <div class="d-flex">
                                        <span class="d-inline-block ">
                                            {{$item->nama_aset}}
                                        </span>
                                    </div>
                                </td>
                                <td>
                                    <div class="d-flex">
                                        <span class="d-inline-block ">
                                            {{$item->jumlah}}
                                        </span>
                                    </div>
                                </td>
                                <td>
                                    <div class="d-flex">
                                        <span class="d-inline-block text-truncate" style="max-width: 300px;">
                                            {!! $item->informasi !!}
                                        </span>
                                        ...
                                    </div>
                                </td>
                                <td>
                                    <div class="d-grid gap-2 d-md-flex">
                                        <a href="{{ route('aset.show', [$item->id]) }}"class="btn btn-outline-primary me-md-2 mr-2"
                                            type="button">Lihat detail aset</a>
                                        <form method="POST" action="{{ route('aset.destroy', $item->id) }}">
                                            @csrf
                                            <input name="_method" type="hidden" value="DELETE">
                                            <button type="submit" class="btn btn-outline-danger show_confirm"
                                                data-toggle="tooltip" title='Delete'>Hapus data aset</button>
                                        </form>
                                    </div>
                                </td>
                        </tbody>
                    @endforeach
                </table>
            </div>
        @endIf
    </div>
@endsection

@section('script-sweetalert')
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.0/sweetalert.min.js"></script>
    <script type="text/javascript" lang="javascript">
        $('.show_confirm').click(function(event) {
            let form = $(this).closest("form");
            let name = $(this).data("name");
            event.preventDefault();
            swal({
                    title: `Apakah anda akan menghapus data aset ini?`,
                    text: "Jika anda menghapusnya, maka data akan hilang selamanya.",
                    icon: "warning",
                    buttons: true,
                    dangerMode: true,
                })
                .then((willDelete) => {
                    if (willDelete) {
                        form.submit();
                    }
                });
        });
    </script>
@endsection
