# godot-experiments

This repo contains individual Godot projects that are made up of one or more experiments with the [Godot engine](https://godotengine.org/).

## Why?

The intention of this repository is to further my learning of Godot by focusing on specific things, or problems to solve rather than trying to make small games.

The benefits of creating small experiments are:

- Less expectation to fail or succeed (it's in the name: _experiments_!);
- Faster development cycles since a specific thing is being focused on;
- The outcomes of experiments can be potentially reused future projects I create; and
- Not getting caught up repeating the same things to otherwise make a small game that won't necessarily further learning.

## Experiments

### character-movement-types

Movement _feels_ different between games. I talking about how you move along the `x` (and `z`, if it's a 3D game!) axis (jumping will be looked at a in the near future - watch this space!).

This experiment is an attempt to express movement types I have encountered, or heard about. These are:

- Impulse (changing momentum on a dime. e.g. Doom, Unreal Tournament, Overwatch)
- Acceleration (ramping up to max movement in a direction. Direction change takes into account your previous direction e.g. Counter-Strike, Mass Effect)

Not expressed (yet):

- Root motion (where the animation based off of the root bone of your character determines the direction i.e. animation makes the character move a direction)
As I find more, and the inclination is there, I will add more. So keep an eye out.

TODO:
Sus out these resources:

- <https://gamedev.stackexchange.com/questions/34069/what-is-the-difference-between-an-impulse-and-a-force-related-to-a-physics-engin>

#### Resources

- [Reddit Gamedev - opinions_on_different_movement_systems](https://www.reddit.com/r/gamedev/comments/k3iruu/opinions_on_different_movement_systems/)
- [Reddit Godot - Acceleration/Deceleration Movement implementation snippet](https://www.reddit.com/r/godot/comments/wtl17d/comment/il68c4f/?utm_source=share&utm_medium=web3x&utm_name=web3xcss&utm_term=1&utm_content=share_button)
- [Root Motion - Unreal 4.27 Documentation](https://docs.unrealengine.com/4.27/en-US/AnimatingObjects/SkeletalMeshAnimation/RootMotion/)
- [The Satifying Motion of Super Mario Bros | Game Feel Deep Dive](https://www.youtube.com/watch?v=EwONt4r2rMM)

## Future experiments to consider looking at

- Gravity (falling down faster based on time, slower, e.t.c.)
- Using areas in a player area to change the behaviour of things (e.g. low gravity field, movement booster)
- Infinite scrolling side-scroller (not preserving the previous area)
- Motion Tracker
- Deeper dive into collisions
- Destructible objects
