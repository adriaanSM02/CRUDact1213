<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>SUPERPOWERS</h1>

    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Description</th>
            </tr>
        </thead>

        <tbody>
            @forelse($superpowers as $superpower)
                <tr>
                    <td>{{ $superpower->id }}</td>
                    <td>{{ $superpower->name }}</td>
                    <td>{{ $superpower->description }}</td>
                </tr>
            @empty
                <tr>
                    <p>There's no superpowers.</p>
                </tr>
            @endforelse
        </tbody>
    </table>
</body>
</html>