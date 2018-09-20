from django.db import models


class State(models.Model):
    state = models.CharField(max_length=10)
    pub_date = models.DateTimeField('date published')

    def __str__(self):
        return self.state
