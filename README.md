add_minutes

- Meridian check was not implemented in time. If I had the time, I'd convert the given time to 24 hour military time and at the very of the method check AM or PM that way. Thats why theres one failing spec.

- More edge cases need to be tested like adding 1440 minutes (24 hours)

So in the mean time, don't give up on ActiveSupport just yet.


