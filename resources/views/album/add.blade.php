@extends('layouts.app')

@section('content')

<div class="container">

<h3 align="center">Tambah Data Album</h3>
<center>
<a href="{{ url('album') }}">Data Album</a></center>
<form action="{{ url('/album') }}" method="POST">
@csrf
<table width="300px" border="2" cellpadding="30" cellspacing="10" bgcolor="ff69b4" align="center"> 
	<tr>
		<td>ARTIST</td>
		<td><input type="text" name="artist_id"></td>
	</tr>
	<tr>
		<td>NAMA</td>
		<td><input type="text" name="album_name"></td>
	</tr>
	<tr>
		<td></td>
		<td><input type="submit" value="SIMPAN"></td>
	</tr>
</table>
</form>
</div>

@endsection