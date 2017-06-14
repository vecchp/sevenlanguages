# Interesting Links
[passing-block-from-one-method-to-another](https://stackoverflow.com/questions/36740994/passing-block-from-one-method-to-another)

Short answer: Always use yield, unless you have a good reason to explicitly reference &block.

See: [Why blocks make ruby methods 439% slower](https://bugs.ruby-lang.org/issues/10983)

With &block, you get a reified Proc on which you can do all kinds of stuff and which you can move around. However, with a yield and an implicit block, you are limited to only calling the block.

TL;DR: Creating and passing a block via yield is a highly optimized common case in MRI, which is handled by dedicated C function in interpreter, while passing &block is implemented differently and has a big overhead of creating new environment and creating Proc itself on every call.

Summing up, use &block only if you need passing it further (for example, to a next function), or manipulate it somehow in other way. Otherwise, use yield, since it's way faster.

[Reddit Topic](https://www.reddit.com/r/programming/comments/2x9f7s/why_blocks_make_ruby_methods_439_slower/)
By using yield, the interpreter can bypass all the Proc reification as it knows the developer won't be able to use it; hence it can keep just a C-level structure instead of having to set up a Ruby-level object.

It's more complicated than that. The &block syntax ends up allocating a Proc at call time because Ruby arguments are dynamically bound. That's the big hit.
If you pass a block and then call it or yield to it, the Proc conversion will still occur in the interpreter -- blocks are always just Procs -- but the allocation doesn't occur at call time. Also, if you just yield to an implicit block, it's barely slower than no block at all.
In other words, it's not the block -- it's the way you specify it in the argument list!