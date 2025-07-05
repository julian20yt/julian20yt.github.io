<?php

// The Twitch URL for the user you want to scrape
$username = 'jimmyhere';
$url = "https://www.twitch.tv/$username";

// Initialize cURL session
$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_USERAGENT, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36");

// Execute the request
$html = curl_exec($ch);

// Check for cURL errors
if ($html === false) {
    die('Error fetching the Twitch page: ' . curl_error($ch));
}

// Close cURL session
curl_close($ch);

// Use regular expressions to extract relevant stream data (live status, title, game)
$liveStatus = '';
$title = '';
$game = '';

// Check if the user is live
if (preg_match('/"live":true,/', $html)) {
    $liveStatus = 'Live';
    
    // Extract stream title
    if (preg_match('/"title":"(.*?)"/', $html, $matches)) {
        $title = $matches[1];
    }

    // Extract game being played
    if (preg_match('/"game_name":"(.*?)"/', $html, $matches)) {
        $game = $matches[1];
    }
} else {
    $liveStatus = 'Offline';
}

// Output the result
if ($liveStatus == 'Live') {
    echo "Stream Status: $liveStatus<br>";
    echo "Title: $title<br>";
    echo "Game: $game<br>";
} else {
    echo "Stream Status: Offline<br>";
    echo "Title: $title<br>";
    echo "Game: $game<br>";
}

?>
