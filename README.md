# 100 days of Flutter
When starting this project, I've already had experiences with Flutter, so the challenge difficulties will bypass some basic knowledge and the knowledge that I knew it already. 🧑‍💻

## [Day 001](https://github.com/TaiTrien/100-days-of-flutter/tree/main/day001): Scrolling with [DraggableScrollableSheet](https://api.flutter.dev/flutter/widgets/DraggableScrollableSheet-class.html) & [ListWheelScrollView](https://api.flutter.dev/flutter/widgets/ListWheelScrollView-class.html)

1. **DraggableScrollableSheet**
  - Use another sizing widget beside scrolling widget to make sheet affect. Please check demo.
  - ***minChildSize***: is for smallest size that sheet can shrink and then opposite is ***maxChildSize*** from 0 to 1.
  - ***snap:true***: to turn on custom snap, ***snapSizes: List(double)*** to define points to snap when users release their finger.
    

https://github.com/TaiTrien/100-days-of-flutter/assets/32502320/0302aaff-280b-4e25-80d3-38adf91f0bec


2. **ListWheelScrollView**
  - Use for fancy scrolling
  - ***useMagnifier & magnification***: for zoomed-in rate of the magnifier


https://github.com/TaiTrien/100-days-of-flutter/assets/32502320/27f37cdf-b12f-4786-b6b0-899196beea44



## [Day 002](https://github.com/TaiTrien/100-days-of-flutter/tree/main/day002): Fancy scrolling with [Slivers](https://api.flutter.dev/flutter/widgets/CustomScrollView-class.html) & scrolling performance
- ***SingleChildScrollView*** is 1 widget, so wrapping another widget with it will cause redundant rebuilds a whole widget tree when scrolling. However, if you have a relatively simple layout and performance isn't a major concern, SingleChildScrollView maybe be more suitable. 
- ***ListView*** => render a whole list, it doesn't implement lazy loading for UIs.
- ***ListView.builder*** => optimize performance better, because of lazy loading UIs (build & render only can-see items). But there is an issue with ListView.builder, it's just able to use for item with the same type.
### How about case that we need ListView in ListView ? 
- Set ***shrinkWrap: true*** & ***physics: const NeverScrollableScrollPhysics()*** for children list view ? => it will back to ListView mechanism => not good for performance
- Solution: Use Slivers with CustomScrollView.


https://github.com/TaiTrien/100-days-of-flutter/assets/32502320/665f6a4b-85c5-4e32-8cc9-5eb8e28a00e4

## Day 003: Animation basic concepts
There are 2 variants: implicit & explicit.
- ***Implicit*** rely on simple setting a new value through Widget property, then Flutter takes care the rest.
- ***Explicit*** require an animation controller => mean that you need to handle animation manually.
Before deciding what type of animation that you need, answering some question first:
- [Question list](https://docs.flutter.dev/assets/images/docs/ui/animations/animation-decision-tree.png)

## [Day 004](https://github.com/TaiTrien/100-days-of-flutter/tree/main/day004): Implicit animation and TweenAnimationController
- The process between old and the new value is called **interpolation**.
- There are 2 props need to be highlighted.
  1. Duration -> Duration that animation will execute.
  2. Curve -> How transaction works beginning and end values.
### TweenAnimationBuilder
- Use case: when can not find any "AnimatedFoo" widget.
- Optimization:
  1. use child parameter is rather than call directly on builder. Because widget will reconstructed every time builder methods get called.
  2. set tween as static final when appropriate.


https://github.com/TaiTrien/100-days-of-flutter/assets/32502320/0d3dbf50-32aa-4870-b3fe-ce35074aa762



https://github.com/TaiTrien/100-days-of-flutter/assets/32502320/5037fa78-033e-4bfa-b6f1-d4776e253936

