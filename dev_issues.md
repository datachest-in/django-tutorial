# Issues during development
## Issue #1:
During the execution of below code, you might see similar kind of errors. You can fix it by using below modifications:
<code>py manage.py makemigrations polls</code>

**Error:**
<blockquote>ERROR: No installed app with label 'polls'.</blockquote>

## Fix:
In the file <code>'mysite/mysite/settings.py'</code>, go to the section <code>"INSTALLED_APPS = [...]"</code>
and include the below code.

<code>INSTALLED_APPS = [
    'polls',
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
]</code>

<blockquote>**Instead of <code>"polls.apps.PollsConfig"</code> just add <code>'polls'<code></blockquote>