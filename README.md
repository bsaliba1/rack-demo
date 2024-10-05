# RackDemo

A basic web app running a Puma server with the Rack server interface.
All the important code is in `config.ru`.

## Usage

1. Run the web server with `bundle exec puma`
2. Go to http://localhost:9292

## Notes

- You can swap out the web server being used with `bundle remove puma` and then `bundle add <desired-server>` (for example `bundle add rackup` and then `rackup` to start the server)

## References

- https://tommaso.pavese.me/2016/06/05/a-rack-application-from-scratch-part-1-introducting-rack/
