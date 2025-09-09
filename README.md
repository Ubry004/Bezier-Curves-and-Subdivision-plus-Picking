Press 1 to draw the subdivided curve. Keep pressing 1 for a total of 5 levels of subdivision.
Press 2 to draw the Bezier curve between the points.

Pick points by mousing over them and clicking mouse 1. You can also drag them.

![](https://github.com/Bezier-Curves-and-Subdivision-plus-Picking/2025-09-0919-34-54-ezgif.com-video-to-gif-converter.gif)

------------------------------------------------------------------------------------

When the control points lie exactly on a circle both methods produce curves that
very closely approximate a circle, but I'm pretty sure neither yields an exact
circle.

Subdivision:
Even though a quadratic B-spline fitted to points on a circle will look very
circular, a quadratic B-spline is a polynomial curve and cannot exactly represent a
conic section (like a circle). Polynomial curves of fixed degree can't exactly
represent conic sections like circles because a circle isn't a completely smooth
curve when represented as a polynomial. Its like that shore paradox. We keep
cutting off the corners but that means we never reach an actual circle just better
and better approximations of one (which I guess is fine for computer purposes)

Bernstein–Bézier Curves:
The method that creates C1 continuous quadratic Bézier segments by setting:
  ci,0=Pi−1+Pi2,ci,1=Pi,ci,2=Pi+Pi+12
  ci,0=2Pi−1+Pi,ci,1=Pi,ci,2=2Pi+Pi+1
produces quadratic polynomial segments. A quadratic Bézier curve cannot exactly
represent a circle unless you use a rational formulation.

In both cases the resulting curves are super close approximations of a circle
but are not mathematically identical to a "circle" technically.
