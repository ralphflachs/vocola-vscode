import os
import win32clipboard;

# Vocola function: Code.removerhs
def removerhs():
	# get clipboard data
	win32clipboard.OpenClipboard()
	value = win32clipboard.GetClipboardData()
	win32clipboard.CloseClipboard()	
	index = value.find('\=')
	fullLength = len(value)
	if (index > 0) :
		return value[:index-fullLength]
	else :
		return value

# Vocola function: Transform.lowercase
def lowercase(value):
    return value.lower()

# Vocola function: Transform.uppercase
def uppercase(value):
	output = value.upper()
	return output

# Vocola function: Transform.camel
def camel(value):	
	output = value.title().replace(' ', '')
	output = output[0].lower() + output[1:]
	return output
	
# Vocola function: Transform.camelLower
def camelLower(value):	
	return value.lower().replace(' ', '')	
	
# Vocola function: Transform.pascalNaming
def pascalNaming(value):	
	return value.title().replace(' ', '')		

# Vocola function: Transform.kebabNaming	
def kebabNaming(value):
	return value.lower().replace(' ', '-')

# Vocola function: Transform.underscoreNaming
def underscoreNaming(value):
	return value.lower().replace(' ', '_')