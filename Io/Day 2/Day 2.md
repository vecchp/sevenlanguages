What is the difference between self and call?

call and self slots

When a locals object is created, its self slot is set (to the target of the message, in the case of a method, or to the creation context, in the case of a block) and its call slot is set to a Call object that can be used to access information about the block activation:
slot	returns
call sender	locals object of caller
call message	message used to call this method/block
call activated	the activated method/block
call slotContext	context in which slot was found
call target	current object