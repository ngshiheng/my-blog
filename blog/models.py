from django.db import models
from django.utils import timezone
from django.contrib.auth.models import User
from django.urls import reverse


class Post(models.Model):
    title = models.CharField(max_length=100)
    content = models.TextField()
    date_posted = models.DateTimeField(default=timezone.now, editable=True)
    last_modified = models.DateTimeField(
        auto_now=True, editable=False, null=False, blank=False
    )
    author = models.ForeignKey(User, on_delete=models.CASCADE)

    def __str__(self):
        # set how this object defines it self, in this case by the 'title' name
        return self.title

    # return user to the blog post after blog is created
    def get_absolute_url(self):
        return reverse("post-detail", kwargs={"pk": self.pk})
