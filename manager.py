import click

@click.group()
def cli():
    """Simple program that starts a basic flask server"""
    pass

@cli.command()
def start():
    from app import app

    app.run(host="0.0.0.0", port="8000")

if __name__ == '__main__':
    cli()