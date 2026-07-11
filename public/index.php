<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Ukrainian Heritage Routes</title>
    <link rel="stylesheet" href="/assets/css/main.css">
</head>
<body>

    <header class="app-header">
        <div class="app-header__content">
            <h1>Ukrainian Heritage Routes</h1>
            <p>Build your own route through Ukrainian historical places.</p>
        </div>
    </header>

    <main class="app-layout">
        <section class="route-panel">
            <h2>Plan your route</h2>

            <label for="city">City</label>
            <select id="city">
                <option value="kyiv">Kyiv</option>
                <option value="lviv">Lviv</option>
                <option value="odesa">Odesa</option>
            </select>

            <label for="category">Category</label>
            <select id="category">
                <option value="all">All places</option>
                <option value="architecture">Architecture</option>
                <option value="museum">Museum</option>
                <option value="monument">Monument</option>
            </select>

            <button id="generate-route">Generate route</button>
        </section>

        <section class="content-panel">
            <div class="section-heading">
                <h2>Historical places</h2>
                <p>Select filters and discover places for your route.</p>
            </div>

            <div id="places-list" class="places-list"></div>
        </section>

        <section class="content-panel">
            <div class="section-heading">
                <h2>Your route</h2>
                <p>The generated route will appear here.</p>
            </div>

            <ol id="route-list" class="route-list"></ol>
        </section>
    </main>

    <script src="/assets/js/App.js"></script>
</body>
</html>

