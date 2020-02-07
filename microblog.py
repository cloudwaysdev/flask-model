from application import create_app, db
from application.models import User, Post
from werkzeug.security import generate_password_hash, check_password_hash

app = create_app()


@app.shell_context_processor
def make_shell_context():
    return {
            'db': db,
            'User': User,
            'Post': Post,
            'generate_password_hash': generate_password_hash,
            'check_password_hash': check_password_hash
            }
