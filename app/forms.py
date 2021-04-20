from flask_wtf import FlaskForm
from wtforms import StringField,TextField,SubmitField,IntegerField
from wtforms.validators import DataRequired,Length,Email

class RegistrationForm(FlaskForm):
	name = StringField('name', validators=[DataRequired(), Length(min=2, max=20)])
	email = StringField('email',validators=[DataRequired(), Email()])
	
	password = StringField('password', validators=[DataRequired()])
	submit=SubmitField('Add')





