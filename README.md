# Boris Bikes

```
As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

As a person,
So that I can use a good bike,
I'd like to see if a bike is working

As a person,
So I can get a replacement bike,
I'l like to be able to report a broken bike

As a person,
So I can return my bike,
I'd like the docking station to accept my bike

As a person,
So that I know how many bikes are available,
I's like the docking stations to show the amount of available bikes

```

| Objects | Messages |
| ------- | -------- |
| Docking station | release bike |
| Bike | status |
| Dock station | change status |
| Docking station | accept bike |
| Docking station | status |

```
Bike
- status

Docking station
- release
- receive
- status
- report
```
```
        * status
              *report
          * receive
      * release

```

```
Initially 'Docking station' class knows the status of the bikes.

When user calls 'release', 'release' should work as desired as long as status is ok

When user calls 'receive', 'receive' should add to 'status'

When user calls 'status', 'docking station' returns 'status'

when user calls 'report', 'docking station' changes 'status'
```
