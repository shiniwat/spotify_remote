# spotify_remote : Spotify Flutter SDK demo app.

This flutter app is currently designed for Android Spotify SDK only (other platform will be taken into account later).

## Getting Started

Before run, you have to setup Spotify app at Spotify Developer Dashboard at https://developer.spotify.com/dashboard

At Spotify Developer Dashboard, you have to:
1. create an app (e.g. "SpotifyRemote")
2. Make sure copy ClientID value at the dashboard, and paste it into .env (CLIENT_ID).
3. Edit settings on the dashboard
4. Specify Android Package: (e.g. "com.xevo.spotifyremote"), and SHA1 for your signature.
5. Specify Redirect URI: "com.xevo.spotifyremote://callback" and specify the same at .env (REDIRECT_URI)
