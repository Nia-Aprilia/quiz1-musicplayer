@extends('layouts.app')

@section('content')

<div class="container">
<center>
<h3>Tambah Data Track</h3>
<a href="{{ url('track') }}">Data Track</a></center>
<form action="{{ url('/track') }}" method="POST">
@csrf
	<table width="300px" border="2" cellpadding="30" cellspacing="10" bgcolor="ff69b4" align="center"> 
	<tr>
		<td>NAMA TRACK</td>
		<td><input type="text" name="track_name"></td>
	</tr>
	<tr>
		<td>ID ARTIST</td>
		<td><input type="text" name="artist_id"></td>
	</tr>
	<tr>
		<td>ID ALBUM</td>
		<td><input type="text" name="album_id"></td>
	</tr>
	<tr>
		<td>TIME</td>
		<td><input type="text" name="time"></td>
	</tr>
	<tr>
		<td></td>
		<td><input type="submit" value="SIMPAN"></td>
	</tr>
</table>
</form>
</div>

@endsection