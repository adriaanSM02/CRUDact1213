<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{ $superpower->name }}</title>
</head>
<body>
    <h1>{{ $superpower->name }}</h1>

    <p>{{ $superpower->description }}</p>

    <a href="{{ route('superpowers.edit', $superpower->id) }}">Edit</a>
    <br><br>
    <form action="{{ route('superpowers.destroy', $superpower->id) }}" method="post">
        @method('delete')
        @csrf
        <button type="submit" onclick="return confirm('Are you sure that you want to delete this record?')">Delete</button>
    </form>
</body>
</html>