/*
 * Copyright (c) 2005, The haXe Project Contributors
 * All rights reserved.
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 *   - Redistributions of source code must retain the above copyright
 *     notice, this list of conditions and the following disclaimer.
 *   - Redistributions in binary form must reproduce the above copyright
 *     notice, this list of conditions and the following disclaimer in the
 *     documentation and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE HAXE PROJECT CONTRIBUTORS "AS IS" AND ANY
 * EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE HAXE PROJECT CONTRIBUTORS BE LIABLE FOR
 * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH
 * DAMAGE.
 */

// standard haXe types

/**
	The standard Void type. Only [null] values can be of the type [Void].
**/
extern enum Void { }

/**
	The standard Float type, this is a double-precision IEEE 64bit float.
**/
extern class Float { }

/**
	The standard Int type. Its precision depends on the platform.
**/
extern class Int extends Float { }

#if (flash9 || flash9doc)
/**
	The unsigned Int type is only defined for Flash9. It's currently
	handled the same as a normal Int.
**/
typedef UInt = Int
#end

/**
	The standard Boolean type is represented as an enum with two choices.
**/
extern enum Bool {
	true;
	false;
}

/**
	Dynamic is an internal compiler type which has special behavior.
	See the haXe language reference for more informations.
**/
extern enum Dynamic<T> {
}

/**
	An Iterator is a structure that permits to list a given container
	values. It can be used by your own data structures. See the haXe
	documentation for more informations.
**/
typedef Iterator<T> = {
	function hasNext() : Bool;
	function next() : T;
}

/**
	ArrayAccess is used to indicate a class that can be accessed using brackets.
	The type parameter represent the type of the elements stored.
**/
extern interface ArrayAccess<T> { }

/**
   Protected represent the type parameter that cannot be used when using variance annotations.
**/
extern enum Protected {
}
