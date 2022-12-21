module Winit

using libwinit_jll
export libwinit_jll

using libboxer_jll
export libboxer_jll

using CEnum

mutable struct Option_BoxerArrayF32 end

mutable struct Option_BoxerArrayInt end

mutable struct Option_BoxerArrayPointF32 end

mutable struct Option_BoxerArrayU16 end

mutable struct Option_BoxerArrayU8 end

mutable struct Option_BoxerArrayUInt end

mutable struct Option_BoxerPoint3F32 end

mutable struct Option_BoxerPointF32 end

mutable struct Option_BoxerPointF64 end

mutable struct Option_BoxerPointI32 end

mutable struct Option_BoxerPointU64 end

mutable struct Option_BoxerSizeF32 end

mutable struct Option_BoxerSizeF64 end

mutable struct Option_BoxerSizeI32 end

mutable struct Option_BoxerSizeU32 end

mutable struct Option_BoxerSizeU64 end

mutable struct Option_Range_usize end

mutable struct Option_StringBox end

mutable struct Option_U128Box end

mutable struct Option_c_void end

const ValueBox_BoxerArrayF32 = Option_BoxerArrayF32

const ValueBox_BoxerArrayInt = Option_BoxerArrayInt

const ValueBox_BoxerArrayPointF32 = Option_BoxerArrayPointF32

const PointBoxF32 = Option_BoxerPointF32

struct PointF32
    x::Cfloat
    y::Cfloat
end

const ValueBox_BoxerArrayU16 = Option_BoxerArrayU16

const ValueBox_BoxerArrayU8 = Option_BoxerArrayU8

const ValueBox_BoxerArrayUInt = Option_BoxerArrayUInt

const ValueBox_c_void = Option_c_void

const U128Box = Option_U128Box

const ValueBox_BoxerPoint3F32 = Option_BoxerPoint3F32

const ValueBox_BoxerPointF64 = Option_BoxerPointF64

const ValueBox_BoxerPointI32 = Option_BoxerPointI32

const ValueBox_BoxerPointU64 = Option_BoxerPointU64

const ValueBox_Range_usize = Option_Range_usize

const SizeBoxF32 = Option_BoxerSizeF32

const SizeBoxF64 = Option_BoxerSizeF64

const SizeBoxI32 = Option_BoxerSizeI32

const SizeBoxU32 = Option_BoxerSizeU32

const SizeBoxU64 = Option_BoxerSizeU64

const StringBox = Option_StringBox

struct U128
    high::UInt64
    low::UInt64
end

struct SizeU32
    width::UInt32
    height::UInt32
end

struct SizeI32
    width::Int32
    height::Int32
end

struct SizeF32
    width::Cfloat
    height::Cfloat
end

struct SizeU64
    width::UInt64
    height::UInt64
end

struct SizeF64
    width::Cdouble
    height::Cdouble
end

function boxer_test()
    ccall((:boxer_test, :libBoxer), Bool, ())
end

function boxer_array_f32_create()
    ccall((:boxer_array_f32_create, :libBoxer), Ptr{ValueBox_BoxerArrayF32}, ())
end

function boxer_array_f32_create_with(element, amount)
    ccall((:boxer_array_f32_create_with, :libBoxer), Ptr{ValueBox_BoxerArrayF32}, (Cfloat, Csize_t), element, amount)
end

function boxer_array_f32_create_from_data(_data, amount)
    ccall((:boxer_array_f32_create_from_data, :libBoxer), Ptr{ValueBox_BoxerArrayF32}, (Ptr{Cfloat}, Csize_t), _data, amount)
end

function boxer_array_f32_get_length(_ptr)
    ccall((:boxer_array_f32_get_length, :libBoxer), Csize_t, (Ptr{ValueBox_BoxerArrayF32},), _ptr)
end

function boxer_array_f32_get_capacity(_ptr)
    ccall((:boxer_array_f32_get_capacity, :libBoxer), Csize_t, (Ptr{ValueBox_BoxerArrayF32},), _ptr)
end

function boxer_array_f32_get_data(_ptr)
    ccall((:boxer_array_f32_get_data, :libBoxer), Ptr{Cfloat}, (Ptr{ValueBox_BoxerArrayF32},), _ptr)
end

function boxer_array_f32_at_put(_ptr, index, item)
    ccall((:boxer_array_f32_at_put, :libBoxer), Cvoid, (Ptr{ValueBox_BoxerArrayF32}, Csize_t, Cfloat), _ptr, index, item)
end

function boxer_array_f32_drop(ptr)
    ccall((:boxer_array_f32_drop, :libBoxer), Cvoid, (Ptr{ValueBox_BoxerArrayF32},), ptr)
end

function boxer_array_int_create()
    ccall((:boxer_array_int_create, :libBoxer), Ptr{ValueBox_BoxerArrayInt}, ())
end

function boxer_array_int_create_with(element, amount)
    ccall((:boxer_array_int_create_with, :libBoxer), Ptr{ValueBox_BoxerArrayInt}, (Cint, Csize_t), element, amount)
end

function boxer_array_int_create_from_data(_data, amount)
    ccall((:boxer_array_int_create_from_data, :libBoxer), Ptr{ValueBox_BoxerArrayInt}, (Ptr{Cint}, Csize_t), _data, amount)
end

function boxer_array_int_get_length(_ptr)
    ccall((:boxer_array_int_get_length, :libBoxer), Csize_t, (Ptr{ValueBox_BoxerArrayInt},), _ptr)
end

function boxer_array_int_get_capacity(_ptr)
    ccall((:boxer_array_int_get_capacity, :libBoxer), Csize_t, (Ptr{ValueBox_BoxerArrayInt},), _ptr)
end

function boxer_array_int_get_data(_ptr)
    ccall((:boxer_array_int_get_data, :libBoxer), Ptr{Cint}, (Ptr{ValueBox_BoxerArrayInt},), _ptr)
end

function boxer_array_int_at_put(_ptr, index, item)
    ccall((:boxer_array_int_at_put, :libBoxer), Cvoid, (Ptr{ValueBox_BoxerArrayInt}, Csize_t, Cint), _ptr, index, item)
end

function boxer_array_int_at(_ptr, index)
    ccall((:boxer_array_int_at, :libBoxer), Cint, (Ptr{ValueBox_BoxerArrayInt}, Csize_t), _ptr, index)
end

function boxer_array_int_drop(ptr)
    ccall((:boxer_array_int_drop, :libBoxer), Cvoid, (Ptr{ValueBox_BoxerArrayInt},), ptr)
end

function boxer_array_point_f32_create()
    ccall((:boxer_array_point_f32_create, :libBoxer), Ptr{ValueBox_BoxerArrayPointF32}, ())
end

function boxer_array_point_f32_create_with(element_ptr, amount)
    ccall((:boxer_array_point_f32_create_with, :libBoxer), Ptr{ValueBox_BoxerArrayPointF32}, (Ptr{PointBoxF32}, Csize_t), element_ptr, amount)
end

function boxer_array_point_f32_create_from_data(_data, amount)
    ccall((:boxer_array_point_f32_create_from_data, :libBoxer), Ptr{ValueBox_BoxerArrayPointF32}, (Ptr{PointF32}, Csize_t), _data, amount)
end

function boxer_array_point_f32_drop(ptr)
    ccall((:boxer_array_point_f32_drop, :libBoxer), Cvoid, (Ptr{ValueBox_BoxerArrayPointF32},), ptr)
end

function boxer_array_point_f32_get_length(ptr)
    ccall((:boxer_array_point_f32_get_length, :libBoxer), Csize_t, (Ptr{ValueBox_BoxerArrayPointF32},), ptr)
end

function boxer_array_point_f32_get_capacity(ptr)
    ccall((:boxer_array_point_f32_get_capacity, :libBoxer), Csize_t, (Ptr{ValueBox_BoxerArrayPointF32},), ptr)
end

function boxer_array_point_f32_get_data(ptr)
    ccall((:boxer_array_point_f32_get_data, :libBoxer), Ptr{PointF32}, (Ptr{ValueBox_BoxerArrayPointF32},), ptr)
end

function boxer_array_u16_byte_size(count)
    ccall((:boxer_array_u16_byte_size, :libBoxer), Csize_t, (Csize_t,), count)
end

function boxer_array_u16_create()
    ccall((:boxer_array_u16_create, :libBoxer), Ptr{ValueBox_BoxerArrayU16}, ())
end

function boxer_array_u16_create_with(element, amount)
    ccall((:boxer_array_u16_create_with, :libBoxer), Ptr{ValueBox_BoxerArrayU16}, (UInt16, Csize_t), element, amount)
end

function boxer_array_u16_create_from_data(_data, amount)
    ccall((:boxer_array_u16_create_from_data, :libBoxer), Ptr{ValueBox_BoxerArrayU16}, (Ptr{UInt16}, Csize_t), _data, amount)
end

function boxer_array_u16_copy_into(_ptr_src, _ptr_dst)
    ccall((:boxer_array_u16_copy_into, :libBoxer), Cvoid, (Ptr{ValueBox_BoxerArrayU16}, Ptr{ValueBox_BoxerArrayU16}), _ptr_src, _ptr_dst)
end

function boxer_array_u16_copy_into_data(_ptr_src, _data, amount)
    ccall((:boxer_array_u16_copy_into_data, :libBoxer), Cvoid, (Ptr{ValueBox_BoxerArrayU16}, Ptr{UInt16}, Csize_t), _ptr_src, _data, amount)
end

function boxer_array_u16_get_length(_ptr)
    ccall((:boxer_array_u16_get_length, :libBoxer), Csize_t, (Ptr{ValueBox_BoxerArrayU16},), _ptr)
end

function boxer_array_u16_get_capacity(_ptr)
    ccall((:boxer_array_u16_get_capacity, :libBoxer), Csize_t, (Ptr{ValueBox_BoxerArrayU16},), _ptr)
end

function boxer_array_u16_get_data(_ptr)
    ccall((:boxer_array_u16_get_data, :libBoxer), Ptr{UInt16}, (Ptr{ValueBox_BoxerArrayU16},), _ptr)
end

function boxer_array_u16_at_put(_ptr, index, item)
    ccall((:boxer_array_u16_at_put, :libBoxer), Cvoid, (Ptr{ValueBox_BoxerArrayU16}, Csize_t, UInt16), _ptr, index, item)
end

function boxer_array_u16_at(_ptr, index)
    ccall((:boxer_array_u16_at, :libBoxer), UInt16, (Ptr{ValueBox_BoxerArrayU16}, Csize_t), _ptr, index)
end

function boxer_array_u16_drop(ptr)
    ccall((:boxer_array_u16_drop, :libBoxer), Cvoid, (Ptr{ValueBox_BoxerArrayU16},), ptr)
end

function boxer_array_u8_byte_size(count)
    ccall((:boxer_array_u8_byte_size, :libBoxer), Csize_t, (Csize_t,), count)
end

function boxer_array_u8_create()
    ccall((:boxer_array_u8_create, :libBoxer), Ptr{ValueBox_BoxerArrayU8}, ())
end

function boxer_array_u8_create_with(element, amount)
    ccall((:boxer_array_u8_create_with, :libBoxer), Ptr{ValueBox_BoxerArrayU8}, (UInt8, Csize_t), element, amount)
end

function boxer_array_u8_create_from_data(_data, amount)
    ccall((:boxer_array_u8_create_from_data, :libBoxer), Ptr{ValueBox_BoxerArrayU8}, (Ptr{UInt8}, Csize_t), _data, amount)
end

function boxer_array_u8_copy_into(_ptr_src, _ptr_dst)
    ccall((:boxer_array_u8_copy_into, :libBoxer), Cvoid, (Ptr{ValueBox_BoxerArrayU8}, Ptr{ValueBox_BoxerArrayU8}), _ptr_src, _ptr_dst)
end

function boxer_array_u8_copy_into_data(_ptr_src, _data, amount)
    ccall((:boxer_array_u8_copy_into_data, :libBoxer), Cvoid, (Ptr{ValueBox_BoxerArrayU8}, Ptr{UInt8}, Csize_t), _ptr_src, _data, amount)
end

function boxer_array_u8_get_length(ptr)
    ccall((:boxer_array_u8_get_length, :libBoxer), Csize_t, (Ptr{ValueBox_BoxerArrayU8},), ptr)
end

function boxer_array_u8_get_capacity(ptr)
    ccall((:boxer_array_u8_get_capacity, :libBoxer), Csize_t, (Ptr{ValueBox_BoxerArrayU8},), ptr)
end

function boxer_array_u8_get_data(ptr)
    ccall((:boxer_array_u8_get_data, :libBoxer), Ptr{UInt8}, (Ptr{ValueBox_BoxerArrayU8},), ptr)
end

function boxer_array_u8_at_put(ptr, index, item)
    ccall((:boxer_array_u8_at_put, :libBoxer), Cvoid, (Ptr{ValueBox_BoxerArrayU8}, Csize_t, UInt8), ptr, index, item)
end

function boxer_array_u8_at(ptr, index)
    ccall((:boxer_array_u8_at, :libBoxer), UInt8, (Ptr{ValueBox_BoxerArrayU8}, Csize_t), ptr, index)
end

function boxer_array_u8_argb_to_rgba(ptr)
    ccall((:boxer_array_u8_argb_to_rgba, :libBoxer), Cvoid, (Ptr{ValueBox_BoxerArrayU8},), ptr)
end

function boxer_array_u8_bgra_to_argb(ptr)
    ccall((:boxer_array_u8_bgra_to_argb, :libBoxer), Cvoid, (Ptr{ValueBox_BoxerArrayU8},), ptr)
end

function boxer_array_u8_rgba_to_argb(ptr)
    ccall((:boxer_array_u8_rgba_to_argb, :libBoxer), Cvoid, (Ptr{ValueBox_BoxerArrayU8},), ptr)
end

function boxer_array_u8_drop(ptr)
    ccall((:boxer_array_u8_drop, :libBoxer), Cvoid, (Ptr{ValueBox_BoxerArrayU8},), ptr)
end

function boxer_array_uint_create()
    ccall((:boxer_array_uint_create, :libBoxer), Ptr{ValueBox_BoxerArrayUInt}, ())
end

function boxer_array_uint_create_with(element, amount)
    ccall((:boxer_array_uint_create_with, :libBoxer), Ptr{ValueBox_BoxerArrayUInt}, (Cuint, Csize_t), element, amount)
end

function boxer_array_uint_create_from_data(_data, amount)
    ccall((:boxer_array_uint_create_from_data, :libBoxer), Ptr{ValueBox_BoxerArrayUInt}, (Ptr{Cuint}, Csize_t), _data, amount)
end

function boxer_array_uint_get_length(ptr)
    ccall((:boxer_array_uint_get_length, :libBoxer), Csize_t, (Ptr{ValueBox_BoxerArrayUInt},), ptr)
end

function boxer_array_uint_get_capacity(ptr)
    ccall((:boxer_array_uint_get_capacity, :libBoxer), Csize_t, (Ptr{ValueBox_BoxerArrayUInt},), ptr)
end

function boxer_array_uint_get_data(ptr)
    ccall((:boxer_array_uint_get_data, :libBoxer), Ptr{Cuint}, (Ptr{ValueBox_BoxerArrayUInt},), ptr)
end

function boxer_array_uint_at_put(ptr, index, item)
    ccall((:boxer_array_uint_at_put, :libBoxer), Cvoid, (Ptr{ValueBox_BoxerArrayUInt}, Csize_t, Cuint), ptr, index, item)
end

function boxer_array_uint_at(ptr, index)
    ccall((:boxer_array_uint_at, :libBoxer), Cuint, (Ptr{ValueBox_BoxerArrayUInt}, Csize_t), ptr, index)
end

function boxer_array_uint_drop(ptr)
    ccall((:boxer_array_uint_drop, :libBoxer), Cvoid, (Ptr{ValueBox_BoxerArrayUInt},), ptr)
end

function boxer_value_box_get_pointer(ptr)
    ccall((:boxer_value_box_get_pointer, :libBoxer), Ptr{Cvoid}, (Ptr{ValueBox_c_void},), ptr)
end

function boxer_value_box_is_valid(ptr)
    ccall((:boxer_value_box_is_valid, :libBoxer), Bool, (Ptr{ValueBox_c_void},), ptr)
end

function boxer_number_uint128_create()
    ccall((:boxer_number_uint128_create, :libBoxer), Ptr{U128Box}, ())
end

function boxer_number_uint128_drop(ptr)
    ccall((:boxer_number_uint128_drop, :libBoxer), Cvoid, (Ptr{U128Box},), ptr)
end

function boxer_number_uint128_get_low(_number_ptr)
    ccall((:boxer_number_uint128_get_low, :libBoxer), UInt64, (Ptr{U128Box},), _number_ptr)
end

function boxer_number_uint128_set_low(_number_ptr, low)
    ccall((:boxer_number_uint128_set_low, :libBoxer), Cvoid, (Ptr{U128Box}, UInt64), _number_ptr, low)
end

function boxer_number_uint128_get_high(_number_ptr)
    ccall((:boxer_number_uint128_get_high, :libBoxer), UInt64, (Ptr{U128Box},), _number_ptr)
end

function boxer_number_uint128_set_high(_number_ptr, high)
    ccall((:boxer_number_uint128_set_high, :libBoxer), Cvoid, (Ptr{U128Box}, UInt64), _number_ptr, high)
end

function boxer_number_uint128_set_max(_number_ptr)
    ccall((:boxer_number_uint128_set_max, :libBoxer), Cvoid, (Ptr{U128Box},), _number_ptr)
end

function boxer_number_uint128_set_min(_number_ptr)
    ccall((:boxer_number_uint128_set_min, :libBoxer), Cvoid, (Ptr{U128Box},), _number_ptr)
end

function boxer_point3_f32_default()
    ccall((:boxer_point3_f32_default, :libBoxer), Ptr{ValueBox_BoxerPoint3F32}, ())
end

function boxer_point3_f32_create(x, y, z)
    ccall((:boxer_point3_f32_create, :libBoxer), Ptr{ValueBox_BoxerPoint3F32}, (Cfloat, Cfloat, Cfloat), x, y, z)
end

function boxer_point3_f32_drop(ptr)
    ccall((:boxer_point3_f32_drop, :libBoxer), Cvoid, (Ptr{ValueBox_BoxerPoint3F32},), ptr)
end

function boxer_point3_f32_get_x(_point_ptr)
    ccall((:boxer_point3_f32_get_x, :libBoxer), Cfloat, (Ptr{ValueBox_BoxerPoint3F32},), _point_ptr)
end

function boxer_point3_f32_set_x(_point_ptr, x)
    ccall((:boxer_point3_f32_set_x, :libBoxer), Cvoid, (Ptr{ValueBox_BoxerPoint3F32}, Cfloat), _point_ptr, x)
end

function boxer_point3_f32_get_y(_point_ptr)
    ccall((:boxer_point3_f32_get_y, :libBoxer), Cfloat, (Ptr{ValueBox_BoxerPoint3F32},), _point_ptr)
end

function boxer_point3_f32_set_y(_point_ptr, y)
    ccall((:boxer_point3_f32_set_y, :libBoxer), Cvoid, (Ptr{ValueBox_BoxerPoint3F32}, Cfloat), _point_ptr, y)
end

function boxer_point3_f32_get_z(_point_ptr)
    ccall((:boxer_point3_f32_get_z, :libBoxer), Cfloat, (Ptr{ValueBox_BoxerPoint3F32},), _point_ptr)
end

function boxer_point3_f32_set_z(_point_ptr, z)
    ccall((:boxer_point3_f32_set_z, :libBoxer), Cvoid, (Ptr{ValueBox_BoxerPoint3F32}, Cfloat), _point_ptr, z)
end

function boxer_point_f32_default()
    ccall((:boxer_point_f32_default, :libBoxer), Ptr{PointBoxF32}, ())
end

function boxer_point_f32_create(x, y)
    ccall((:boxer_point_f32_create, :libBoxer), Ptr{PointBoxF32}, (Cfloat, Cfloat), x, y)
end

function boxer_point_f32_drop(ptr)
    ccall((:boxer_point_f32_drop, :libBoxer), Cvoid, (Ptr{PointBoxF32},), ptr)
end

function boxer_point_f32_get_x(_point_ptr)
    ccall((:boxer_point_f32_get_x, :libBoxer), Cfloat, (Ptr{PointBoxF32},), _point_ptr)
end

function boxer_point_f32_set_x(_point_ptr, x)
    ccall((:boxer_point_f32_set_x, :libBoxer), Cvoid, (Ptr{PointBoxF32}, Cfloat), _point_ptr, x)
end

function boxer_point_f32_get_y(_point_ptr)
    ccall((:boxer_point_f32_get_y, :libBoxer), Cfloat, (Ptr{PointBoxF32},), _point_ptr)
end

function boxer_point_f32_set_y(_point_ptr, y)
    ccall((:boxer_point_f32_set_y, :libBoxer), Cvoid, (Ptr{PointBoxF32}, Cfloat), _point_ptr, y)
end

function boxer_point_f64_default()
    ccall((:boxer_point_f64_default, :libBoxer), Ptr{ValueBox_BoxerPointF64}, ())
end

function boxer_point_f64_create(x, y)
    ccall((:boxer_point_f64_create, :libBoxer), Ptr{ValueBox_BoxerPointF64}, (Cdouble, Cdouble), x, y)
end

function boxer_point_f64_drop(ptr)
    ccall((:boxer_point_f64_drop, :libBoxer), Cvoid, (Ptr{ValueBox_BoxerPointF64},), ptr)
end

function boxer_point_f64_get_x(_point_ptr)
    ccall((:boxer_point_f64_get_x, :libBoxer), Cdouble, (Ptr{ValueBox_BoxerPointF64},), _point_ptr)
end

function boxer_point_f64_set_x(_point_ptr, x)
    ccall((:boxer_point_f64_set_x, :libBoxer), Cvoid, (Ptr{ValueBox_BoxerPointF64}, Cdouble), _point_ptr, x)
end

function boxer_point_f64_get_y(_point_ptr)
    ccall((:boxer_point_f64_get_y, :libBoxer), Cdouble, (Ptr{ValueBox_BoxerPointF64},), _point_ptr)
end

function boxer_point_f64_set_y(_point_ptr, y)
    ccall((:boxer_point_f64_set_y, :libBoxer), Cvoid, (Ptr{ValueBox_BoxerPointF64}, Cdouble), _point_ptr, y)
end

function boxer_point_i32_default()
    ccall((:boxer_point_i32_default, :libBoxer), Ptr{ValueBox_BoxerPointI32}, ())
end

function boxer_point_i32_create(x, y)
    ccall((:boxer_point_i32_create, :libBoxer), Ptr{ValueBox_BoxerPointI32}, (Int32, Int32), x, y)
end

function boxer_point_i32_drop(ptr)
    ccall((:boxer_point_i32_drop, :libBoxer), Cvoid, (Ptr{ValueBox_BoxerPointI32},), ptr)
end

function boxer_point_i32_get_x(point_ptr)
    ccall((:boxer_point_i32_get_x, :libBoxer), Int32, (Ptr{ValueBox_BoxerPointI32},), point_ptr)
end

function boxer_point_i32_set_x(point_ptr, x)
    ccall((:boxer_point_i32_set_x, :libBoxer), Cvoid, (Ptr{ValueBox_BoxerPointI32}, Int32), point_ptr, x)
end

function boxer_point_i32_get_y(point_ptr)
    ccall((:boxer_point_i32_get_y, :libBoxer), Int32, (Ptr{ValueBox_BoxerPointI32},), point_ptr)
end

function boxer_point_i32_set_y(_point_ptr, y)
    ccall((:boxer_point_i32_set_y, :libBoxer), Cvoid, (Ptr{ValueBox_BoxerPointI32}, Int32), _point_ptr, y)
end

function boxer_point_u64_default()
    ccall((:boxer_point_u64_default, :libBoxer), Ptr{ValueBox_BoxerPointU64}, ())
end

function boxer_point_u64_create(x, y)
    ccall((:boxer_point_u64_create, :libBoxer), Ptr{ValueBox_BoxerPointU64}, (UInt64, UInt64), x, y)
end

function boxer_point_u64_drop(ptr)
    ccall((:boxer_point_u64_drop, :libBoxer), Cvoid, (Ptr{ValueBox_BoxerPointU64},), ptr)
end

function boxer_point_u64_get_x(_point_ptr)
    ccall((:boxer_point_u64_get_x, :libBoxer), UInt64, (Ptr{ValueBox_BoxerPointU64},), _point_ptr)
end

function boxer_point_u64_set_x(_point_ptr, x)
    ccall((:boxer_point_u64_set_x, :libBoxer), Cvoid, (Ptr{ValueBox_BoxerPointU64}, UInt64), _point_ptr, x)
end

function boxer_point_u64_get_y(_point_ptr)
    ccall((:boxer_point_u64_get_y, :libBoxer), UInt64, (Ptr{ValueBox_BoxerPointU64},), _point_ptr)
end

function boxer_point_u64_set_y(_point_ptr, y)
    ccall((:boxer_point_u64_set_y, :libBoxer), Cvoid, (Ptr{ValueBox_BoxerPointU64}, UInt64), _point_ptr, y)
end

function boxer_range_usize_create()
    ccall((:boxer_range_usize_create, :libBoxer), Ptr{ValueBox_Range_usize}, ())
end

function boxer_range_usize_drop(ptr)
    ccall((:boxer_range_usize_drop, :libBoxer), Cvoid, (Ptr{ValueBox_Range_usize},), ptr)
end

function boxer_range_usize_get_start(ptr)
    ccall((:boxer_range_usize_get_start, :libBoxer), Csize_t, (Ptr{ValueBox_Range_usize},), ptr)
end

function boxer_range_usize_set_start(ptr, start)
    ccall((:boxer_range_usize_set_start, :libBoxer), Cvoid, (Ptr{ValueBox_Range_usize}, Csize_t), ptr, start)
end

function boxer_range_usize_get_end(ptr)
    ccall((:boxer_range_usize_get_end, :libBoxer), Csize_t, (Ptr{ValueBox_Range_usize},), ptr)
end

function boxer_range_usize_set_end(ptr, _end)
    ccall((:boxer_range_usize_set_end, :libBoxer), Cvoid, (Ptr{ValueBox_Range_usize}, Csize_t), ptr, _end)
end

function boxer_size_f32_create()
    ccall((:boxer_size_f32_create, :libBoxer), Ptr{SizeBoxF32}, ())
end

function boxer_size_f32_drop(ptr)
    ccall((:boxer_size_f32_drop, :libBoxer), Cvoid, (Ptr{SizeBoxF32},), ptr)
end

function boxer_size_f32_get_width(ptr)
    ccall((:boxer_size_f32_get_width, :libBoxer), Cfloat, (Ptr{SizeBoxF32},), ptr)
end

function boxer_size_f32_set_width(ptr, width)
    ccall((:boxer_size_f32_set_width, :libBoxer), Cvoid, (Ptr{SizeBoxF32}, Cfloat), ptr, width)
end

function boxer_size_f32_get_height(ptr)
    ccall((:boxer_size_f32_get_height, :libBoxer), Cfloat, (Ptr{SizeBoxF32},), ptr)
end

function boxer_size_f32_set_height(ptr, height)
    ccall((:boxer_size_f32_set_height, :libBoxer), Cvoid, (Ptr{SizeBoxF32}, Cfloat), ptr, height)
end

function boxer_size_f64_create()
    ccall((:boxer_size_f64_create, :libBoxer), Ptr{SizeBoxF64}, ())
end

function boxer_size_f64_drop(ptr)
    ccall((:boxer_size_f64_drop, :libBoxer), Cvoid, (Ptr{SizeBoxF64},), ptr)
end

function boxer_size_f64_get_width(ptr)
    ccall((:boxer_size_f64_get_width, :libBoxer), Cdouble, (Ptr{SizeBoxF64},), ptr)
end

function boxer_size_f64_set_width(ptr, width)
    ccall((:boxer_size_f64_set_width, :libBoxer), Cvoid, (Ptr{SizeBoxF64}, Cdouble), ptr, width)
end

function boxer_size_f64_get_height(ptr)
    ccall((:boxer_size_f64_get_height, :libBoxer), Cdouble, (Ptr{SizeBoxF64},), ptr)
end

function boxer_size_f64_set_height(ptr, height)
    ccall((:boxer_size_f64_set_height, :libBoxer), Cvoid, (Ptr{SizeBoxF64}, Cdouble), ptr, height)
end

function boxer_size_i32_create()
    ccall((:boxer_size_i32_create, :libBoxer), Ptr{SizeBoxI32}, ())
end

function boxer_size_i32_drop(ptr)
    ccall((:boxer_size_i32_drop, :libBoxer), Cvoid, (Ptr{SizeBoxI32},), ptr)
end

function boxer_size_i32_get_width(ptr)
    ccall((:boxer_size_i32_get_width, :libBoxer), Int32, (Ptr{SizeBoxI32},), ptr)
end

function boxer_size_i32_set_width(ptr, width)
    ccall((:boxer_size_i32_set_width, :libBoxer), Cvoid, (Ptr{SizeBoxI32}, Int32), ptr, width)
end

function boxer_size_i32_get_height(ptr)
    ccall((:boxer_size_i32_get_height, :libBoxer), Int32, (Ptr{SizeBoxI32},), ptr)
end

function boxer_size_i32_set_height(ptr, height)
    ccall((:boxer_size_i32_set_height, :libBoxer), Cvoid, (Ptr{SizeBoxI32}, Int32), ptr, height)
end

function boxer_size_u32_create()
    ccall((:boxer_size_u32_create, :libBoxer), Ptr{SizeBoxU32}, ())
end

function boxer_size_u32_drop(ptr)
    ccall((:boxer_size_u32_drop, :libBoxer), Cvoid, (Ptr{SizeBoxU32},), ptr)
end

function boxer_size_u32_get_width(ptr)
    ccall((:boxer_size_u32_get_width, :libBoxer), UInt32, (Ptr{SizeBoxU32},), ptr)
end

function boxer_size_u32_set_width(ptr, width)
    ccall((:boxer_size_u32_set_width, :libBoxer), Cvoid, (Ptr{SizeBoxU32}, UInt32), ptr, width)
end

function boxer_size_u32_get_height(ptr)
    ccall((:boxer_size_u32_get_height, :libBoxer), UInt32, (Ptr{SizeBoxU32},), ptr)
end

function boxer_size_u32_set_height(ptr, height)
    ccall((:boxer_size_u32_set_height, :libBoxer), Cvoid, (Ptr{SizeBoxU32}, UInt32), ptr, height)
end

function boxer_size_u64_create()
    ccall((:boxer_size_u64_create, :libBoxer), Ptr{SizeBoxU64}, ())
end

function boxer_size_u64_drop(ptr)
    ccall((:boxer_size_u64_drop, :libBoxer), Cvoid, (Ptr{SizeBoxU64},), ptr)
end

function boxer_size_u64_get_width(ptr)
    ccall((:boxer_size_u64_get_width, :libBoxer), UInt64, (Ptr{SizeBoxU64},), ptr)
end

function boxer_size_u64_set_width(ptr, width)
    ccall((:boxer_size_u64_set_width, :libBoxer), Cvoid, (Ptr{SizeBoxU64}, UInt64), ptr, width)
end

function boxer_size_u64_get_height(ptr)
    ccall((:boxer_size_u64_get_height, :libBoxer), UInt64, (Ptr{SizeBoxU64},), ptr)
end

function boxer_size_u64_set_height(ptr, height)
    ccall((:boxer_size_u64_set_height, :libBoxer), Cvoid, (Ptr{SizeBoxU64}, UInt64), ptr, height)
end

function boxer_string_create()
    ccall((:boxer_string_create, :libBoxer), Ptr{StringBox}, ())
end

function boxer_string_from_byte_string(data, length)
    ccall((:boxer_string_from_byte_string, :libBoxer), Ptr{StringBox}, (Ptr{UInt8}, Csize_t), data, length)
end

function boxer_string_from_wide_string(data, length)
    ccall((:boxer_string_from_wide_string, :libBoxer), Ptr{StringBox}, (Ptr{UInt32}, Csize_t), data, length)
end

function boxer_string_from_utf8_string(data, length)
    ccall((:boxer_string_from_utf8_string, :libBoxer), Ptr{StringBox}, (Ptr{UInt8}, Csize_t), data, length)
end

function boxer_string_drop(ptr)
    ccall((:boxer_string_drop, :libBoxer), Cvoid, (Ptr{StringBox},), ptr)
end

function boxer_string_get_len(ptr)
    ccall((:boxer_string_get_len, :libBoxer), Csize_t, (Ptr{StringBox},), ptr)
end

function boxer_string_get_char_count(ptr)
    ccall((:boxer_string_get_char_count, :libBoxer), Csize_t, (Ptr{StringBox},), ptr)
end

function boxer_string_get_ptr(ptr)
    ccall((:boxer_string_get_ptr, :libBoxer), Ptr{UInt8}, (Ptr{StringBox},), ptr)
end

function boxer_string_char_index_to_byte_range(string_ptr, index, range_ptr)
    ccall((:boxer_string_char_index_to_byte_range, :libBoxer), Cvoid, (Ptr{StringBox}, Csize_t, Ptr{ValueBox_Range_usize}), string_ptr, index, range_ptr)
end

function boxer_string_char_index_to_utf16_range(string_ptr, index, range_ptr)
    ccall((:boxer_string_char_index_to_utf16_range, :libBoxer), Cvoid, (Ptr{StringBox}, Csize_t, Ptr{ValueBox_Range_usize}), string_ptr, index, range_ptr)
end

function boxer_string_utf16_position_to_char_index(string_ptr, index)
    ccall((:boxer_string_utf16_position_to_char_index, :libBoxer), Csize_t, (Ptr{StringBox}, Csize_t), string_ptr, index)
end

@cenum VirtualKeyCode::UInt32 begin
    VirtualKeyCode_Key1 = 0
    VirtualKeyCode_Key2 = 1
    VirtualKeyCode_Key3 = 2
    VirtualKeyCode_Key4 = 3
    VirtualKeyCode_Key5 = 4
    VirtualKeyCode_Key6 = 5
    VirtualKeyCode_Key7 = 6
    VirtualKeyCode_Key8 = 7
    VirtualKeyCode_Key9 = 8
    VirtualKeyCode_Key0 = 9
    VirtualKeyCode_A = 10
    VirtualKeyCode_B = 11
    VirtualKeyCode_C = 12
    VirtualKeyCode_D = 13
    VirtualKeyCode_E = 14
    VirtualKeyCode_F = 15
    VirtualKeyCode_G = 16
    VirtualKeyCode_H = 17
    VirtualKeyCode_I = 18
    VirtualKeyCode_J = 19
    VirtualKeyCode_K = 20
    VirtualKeyCode_L = 21
    VirtualKeyCode_M = 22
    VirtualKeyCode_N = 23
    VirtualKeyCode_O = 24
    VirtualKeyCode_P = 25
    VirtualKeyCode_Q = 26
    VirtualKeyCode_R = 27
    VirtualKeyCode_S = 28
    VirtualKeyCode_T = 29
    VirtualKeyCode_U = 30
    VirtualKeyCode_V = 31
    VirtualKeyCode_W = 32
    VirtualKeyCode_X = 33
    VirtualKeyCode_Y = 34
    VirtualKeyCode_Z = 35
    VirtualKeyCode_Escape = 36
    VirtualKeyCode_F1 = 37
    VirtualKeyCode_F2 = 38
    VirtualKeyCode_F3 = 39
    VirtualKeyCode_F4 = 40
    VirtualKeyCode_F5 = 41
    VirtualKeyCode_F6 = 42
    VirtualKeyCode_F7 = 43
    VirtualKeyCode_F8 = 44
    VirtualKeyCode_F9 = 45
    VirtualKeyCode_F10 = 46
    VirtualKeyCode_F11 = 47
    VirtualKeyCode_F12 = 48
    VirtualKeyCode_F13 = 49
    VirtualKeyCode_F14 = 50
    VirtualKeyCode_F15 = 51
    VirtualKeyCode_F16 = 52
    VirtualKeyCode_F17 = 53
    VirtualKeyCode_F18 = 54
    VirtualKeyCode_F19 = 55
    VirtualKeyCode_F20 = 56
    VirtualKeyCode_F21 = 57
    VirtualKeyCode_F22 = 58
    VirtualKeyCode_F23 = 59
    VirtualKeyCode_F24 = 60
    VirtualKeyCode_Snapshot = 61
    VirtualKeyCode_Scroll = 62
    VirtualKeyCode_Pause = 63
    VirtualKeyCode_Insert = 64
    VirtualKeyCode_Home = 65
    VirtualKeyCode_Delete = 66
    VirtualKeyCode_End = 67
    VirtualKeyCode_PageDown = 68
    VirtualKeyCode_PageUp = 69
    VirtualKeyCode_Left = 70
    VirtualKeyCode_Up = 71
    VirtualKeyCode_Right = 72
    VirtualKeyCode_Down = 73
    VirtualKeyCode_Back = 74
    VirtualKeyCode_Return = 75
    VirtualKeyCode_Space = 76
    VirtualKeyCode_Compose = 77
    VirtualKeyCode_Caret = 78
    VirtualKeyCode_Numlock = 79
    VirtualKeyCode_Numpad0 = 80
    VirtualKeyCode_Numpad1 = 81
    VirtualKeyCode_Numpad2 = 82
    VirtualKeyCode_Numpad3 = 83
    VirtualKeyCode_Numpad4 = 84
    VirtualKeyCode_Numpad5 = 85
    VirtualKeyCode_Numpad6 = 86
    VirtualKeyCode_Numpad7 = 87
    VirtualKeyCode_Numpad8 = 88
    VirtualKeyCode_Numpad9 = 89
    VirtualKeyCode_NumpadAdd = 90
    VirtualKeyCode_NumpadDivide = 91
    VirtualKeyCode_NumpadDecimal = 92
    VirtualKeyCode_NumpadComma = 93
    VirtualKeyCode_NumpadEnter = 94
    VirtualKeyCode_NumpadEquals = 95
    VirtualKeyCode_NumpadMultiply = 96
    VirtualKeyCode_NumpadSubtract = 97
    VirtualKeyCode_AbntC1 = 98
    VirtualKeyCode_AbntC2 = 99
    VirtualKeyCode_Apostrophe = 100
    VirtualKeyCode_Apps = 101
    VirtualKeyCode_Asterisk = 102
    VirtualKeyCode_At = 103
    VirtualKeyCode_Ax = 104
    VirtualKeyCode_Backslash = 105
    VirtualKeyCode_Calculator = 106
    VirtualKeyCode_Capital = 107
    VirtualKeyCode_Colon = 108
    VirtualKeyCode_Comma = 109
    VirtualKeyCode_Convert = 110
    VirtualKeyCode_Equals = 111
    VirtualKeyCode_Grave = 112
    VirtualKeyCode_Kana = 113
    VirtualKeyCode_Kanji = 114
    VirtualKeyCode_LAlt = 115
    VirtualKeyCode_LBracket = 116
    VirtualKeyCode_LControl = 117
    VirtualKeyCode_LShift = 118
    VirtualKeyCode_LWin = 119
    VirtualKeyCode_Mail = 120
    VirtualKeyCode_MediaSelect = 121
    VirtualKeyCode_MediaStop = 122
    VirtualKeyCode_Minus = 123
    VirtualKeyCode_Mute = 124
    VirtualKeyCode_MyComputer = 125
    VirtualKeyCode_NavigateForward = 126
    VirtualKeyCode_NavigateBackward = 127
    VirtualKeyCode_NextTrack = 128
    VirtualKeyCode_NoConvert = 129
    VirtualKeyCode_OEM102 = 130
    VirtualKeyCode_Period = 131
    VirtualKeyCode_PlayPause = 132
    VirtualKeyCode_Plus = 133
    VirtualKeyCode_Power = 134
    VirtualKeyCode_PrevTrack = 135
    VirtualKeyCode_RAlt = 136
    VirtualKeyCode_RBracket = 137
    VirtualKeyCode_RControl = 138
    VirtualKeyCode_RShift = 139
    VirtualKeyCode_RWin = 140
    VirtualKeyCode_Semicolon = 141
    VirtualKeyCode_Slash = 142
    VirtualKeyCode_Sleep = 143
    VirtualKeyCode_Stop = 144
    VirtualKeyCode_Sysrq = 145
    VirtualKeyCode_Tab = 146
    VirtualKeyCode_Underline = 147
    VirtualKeyCode_Unlabeled = 148
    VirtualKeyCode_VolumeDown = 149
    VirtualKeyCode_VolumeUp = 150
    VirtualKeyCode_Wake = 151
    VirtualKeyCode_WebBack = 152
    VirtualKeyCode_WebFavorites = 153
    VirtualKeyCode_WebForward = 154
    VirtualKeyCode_WebHome = 155
    VirtualKeyCode_WebRefresh = 156
    VirtualKeyCode_WebSearch = 157
    VirtualKeyCode_WebStop = 158
    VirtualKeyCode_Yen = 159
    VirtualKeyCode_Copy = 160
    VirtualKeyCode_Paste = 161
    VirtualKeyCode_Cut = 162
end

@cenum WinitControlFlow::UInt32 begin
    WinitControlFlow_Poll = 0
    WinitControlFlow_Wait = 1
    WinitControlFlow_Exit = 2
end

@cenum WinitCursorIcon::UInt32 begin
    WinitCursorIcon_Default = 0
    WinitCursorIcon_Crosshair = 1
    WinitCursorIcon_Hand = 2
    WinitCursorIcon_Arrow = 3
    WinitCursorIcon_Move = 4
    WinitCursorIcon_Text = 5
    WinitCursorIcon_Wait = 6
    WinitCursorIcon_Help = 7
    WinitCursorIcon_Progress = 8
    WinitCursorIcon_NotAllowed = 9
    WinitCursorIcon_ContextMenu = 10
    WinitCursorIcon_Cell = 11
    WinitCursorIcon_VerticalText = 12
    WinitCursorIcon_Alias = 13
    WinitCursorIcon_Copy = 14
    WinitCursorIcon_NoDrop = 15
    WinitCursorIcon_Grab = 16
    WinitCursorIcon_Grabbing = 17
    WinitCursorIcon_AllScroll = 18
    WinitCursorIcon_ZoomIn = 19
    WinitCursorIcon_ZoomOut = 20
    WinitCursorIcon_EResize = 21
    WinitCursorIcon_NResize = 22
    WinitCursorIcon_NeResize = 23
    WinitCursorIcon_NwResize = 24
    WinitCursorIcon_SResize = 25
    WinitCursorIcon_SeResize = 26
    WinitCursorIcon_SwResize = 27
    WinitCursorIcon_WResize = 28
    WinitCursorIcon_EwResize = 29
    WinitCursorIcon_NsResize = 30
    WinitCursorIcon_NeswResize = 31
    WinitCursorIcon_NwseResize = 32
    WinitCursorIcon_ColResize = 33
    WinitCursorIcon_RowResize = 34
end

@cenum WinitEventInputElementState::UInt32 begin
    WinitEventInputElementState_Unknown = 0
    WinitEventInputElementState_Pressed = 1
    WinitEventInputElementState_Released = 2
end

@cenum WinitEventLoopType::UInt32 begin
    WinitEventLoopType_Windows = 0
    WinitEventLoopType_MacOS = 1
    WinitEventLoopType_X11 = 2
    WinitEventLoopType_Wayland = 3
    WinitEventLoopType_Unknown = 4
end

@cenum WinitEventMouseButtonType::UInt32 begin
    WinitEventMouseButtonType_Unknown = 0
    WinitEventMouseButtonType_Left = 1
    WinitEventMouseButtonType_Right = 2
    WinitEventMouseButtonType_Middle = 3
    WinitEventMouseButtonType_Other = 4
end

@cenum WinitEventMouseScrollDeltaType::UInt32 begin
    WinitEventMouseScrollDeltaType_Unknown = 0
    WinitEventMouseScrollDeltaType_LineDelta = 1
    WinitEventMouseScrollDeltaType_PixelDelta = 2
end

@cenum WinitEventTouchPhase::UInt32 begin
    WinitEventTouchPhase_Unknown = 0
    WinitEventTouchPhase_Started = 1
    WinitEventTouchPhase_Moved = 2
    WinitEventTouchPhase_Ended = 3
    WinitEventTouchPhase_Cancelled = 4
end

@cenum WinitEventType::UInt32 begin
    WinitEventType_Unknown = 0
    WinitEventType_WindowEventResized = 1
    WinitEventType_WindowEventMoved = 2
    WinitEventType_WindowEventCloseRequested = 3
    WinitEventType_WindowEventDestroyed = 4
    WinitEventType_WindowEventDroppedFile = 5
    WinitEventType_WindowEventHoveredFile = 6
    WinitEventType_WindowEventHoveredFileCancelled = 7
    WinitEventType_WindowEventReceivedCharacter = 8
    WinitEventType_WindowEventFocused = 9
    WinitEventType_WindowEventKeyboardInput = 10
    WinitEventType_WindowEventCursorMoved = 11
    WinitEventType_WindowEventCursorEntered = 12
    WinitEventType_WindowEventCursorLeft = 13
    WinitEventType_WindowEventMouseWheel = 14
    WinitEventType_WindowEventMouseInput = 15
    WinitEventType_WindowEventTouchpadPressure = 16
    WinitEventType_WindowEventAxisMotion = 17
    WinitEventType_WindowEventTouch = 18
    WinitEventType_WindowEventScaleFactorChanged = 19
    WinitEventType_NewEvents = 20
    WinitEventType_MainEventsCleared = 21
    WinitEventType_LoopDestroyed = 22
    WinitEventType_Suspended = 23
    WinitEventType_Resumed = 24
    WinitEventType_RedrawRequested = 25
    WinitEventType_RedrawEventsCleared = 26
    WinitEventType_ModifiersChanged = 27
    WinitEventType_UserEvent = 28
end

@cenum WinitUserEvent::UInt32 begin
    WinitUserEvent_WakeUp = 0
end

mutable struct Option_MonitorHandle end

mutable struct Option_PointBox_i32 end

mutable struct Option_PollingEventLoop end

mutable struct Option_RawWindowHandle end

mutable struct Option_SizeBox_u32 end

mutable struct Option_Window end

mutable struct Option_WindowBuilder end

mutable struct Option_WindowId end

mutable struct Option_WindowRef end

mutable struct Option_WinitEvent end

mutable struct Option_WinitEventLoop end

mutable struct Option_WinitEventLoopProxy end

mutable struct Option_WinitEventLoopWaker end

const EventLoop = Option_WinitEventLoop

struct WinitTouchEvent
    device_id::Int64
    phase::WinitEventTouchPhase
    x::Cdouble
    y::Cdouble
    id::UInt64
end

struct WinitMouseScrollDelta
    delta_type::WinitEventMouseScrollDeltaType
    x::Cdouble
    y::Cdouble
end

struct WinitMouseWheelEvent
    device_id::Int64
    phase::WinitEventTouchPhase
    delta::WinitMouseScrollDelta
end

struct WinitEventMouseButton
    button_type::WinitEventMouseButtonType
    button_code::UInt16
end

struct WinitMouseInputEvent
    device_id::Int64
    state::WinitEventInputElementState
    button::WinitEventMouseButton
end

struct WinitCursorMovedEvent
    device_id::Int64
    x::Cdouble
    y::Cdouble
end

struct WinitEventKeyboardInput
    device_id::Int64
    scan_code::UInt32
    state::WinitEventInputElementState
    has_virtual_keycode::Bool
    virtual_keycode::VirtualKeyCode
    is_synthetic::Bool
end

struct WinitEventReceivedCharacter
    length::Csize_t
    byte_1::UInt8
    byte_2::UInt8
    byte_3::UInt8
    byte_4::UInt8
end

struct WinitWindowResizedEvent
    width::UInt32
    height::UInt32
end

struct WinitWindowScaleFactorChangedEvent
    scale_factor::Cdouble
    width::UInt32
    height::UInt32
end

struct WinitWindowMovedEvent
    x::Int32
    y::Int32
end

struct WinitWindowFocusedEvent
    is_focused::Bool
end

struct WinitEventModifiersState
    shift::Bool
    ctrl::Bool
    alt::Bool
    logo::Bool
end

struct WinitEventUserEvent
    event::WinitUserEvent
end

struct WinitEvent
    window_id::U128
    event_type::WinitEventType
    touch::WinitTouchEvent
    mouse_wheel::WinitMouseWheelEvent
    mouse_input::WinitMouseInputEvent
    cursor_moved::WinitCursorMovedEvent
    keyboard_input::WinitEventKeyboardInput
    received_character::WinitEventReceivedCharacter
    window_resized::WinitWindowResizedEvent
    scale_factor::WinitWindowScaleFactorChangedEvent
    window_moved::WinitWindowMovedEvent
    window_focused::WinitWindowFocusedEvent
    modifiers::WinitEventModifiersState
    user_event::WinitEventUserEvent
end

const ValueBox_WinitEventLoopProxy = Option_WinitEventLoopProxy

const ValueBox_MonitorHandle = Option_MonitorHandle

const ValueBox_WinitEvent = Option_WinitEvent

const Window = Option_Window

const WindowBuilder = Option_WindowBuilder

const ValueBox_RawWindowHandle = Option_RawWindowHandle

const ValueBox_SizeBox_u32 = Option_SizeBox_u32

const ValueBox_PointBox_i32 = Option_PointBox_i32

const ValueBox_WinitEventLoopWaker = Option_WinitEventLoopWaker

const ValueBox_PollingEventLoop = Option_PollingEventLoop

const ValueBox_WindowRef = Option_WindowRef

const ValueBox_WindowId = Option_WindowId

function winit_test()
    ccall((:winit_test, :libWinit), Bool, ())
end

function winit_init_logger()
    ccall((:winit_init_logger, :libWinit), Cvoid, ())
end

function winit_println(_ptr_message)
    ccall((:winit_println, :libWinit), Cvoid, (Ptr{StringBox},), _ptr_message)
end

function winit_print(_ptr_message)
    ccall((:winit_print, :libWinit), Cvoid, (Ptr{StringBox},), _ptr_message)
end

function winit_event_loop_new()
    ccall((:winit_event_loop_new, :libWinit), Ptr{EventLoop}, ())
end

function winit_event_loop_drop(_ptr)
    ccall((:winit_event_loop_drop, :libWinit), Cvoid, (Ptr{EventLoop},), _ptr)
end

function winit_event_loop_run_return(event_loop_ptr, callback)
    ccall((:winit_event_loop_run_return, :libWinit), Cvoid, (Ptr{EventLoop}, Ptr{Cvoid}), event_loop_ptr, callback)
end

function winit_event_loop_run_return_data(event_loop, data, callback)
    ccall((:winit_event_loop_run_return_data, :libWinit), Cvoid, (Ptr{EventLoop}, Ptr{Cvoid}, Ptr{Cvoid}), event_loop, data, callback)
end

function winit_event_loop_run_data(event_loop, data, callback)
    ccall((:winit_event_loop_run_data, :libWinit), Cvoid, (Ptr{EventLoop}, Ptr{Cvoid}, Ptr{Cvoid}), event_loop, data, callback)
end

function winit_event_loop_get_type(_ptr_event_loop)
    ccall((:winit_event_loop_get_type, :libWinit), WinitEventLoopType, (Ptr{EventLoop},), _ptr_event_loop)
end

function winit_event_loop_create_proxy(_ptr_event_loop)
    ccall((:winit_event_loop_create_proxy, :libWinit), Ptr{ValueBox_WinitEventLoopProxy}, (Ptr{EventLoop},), _ptr_event_loop)
end

function winit_event_loop_drop_proxy(event_loop_proxy)
    ccall((:winit_event_loop_drop_proxy, :libWinit), Cvoid, (Ptr{ValueBox_WinitEventLoopProxy},), event_loop_proxy)
end

function winit_event_loop_get_primary_monitor(_ptr_event_loop)
    ccall((:winit_event_loop_get_primary_monitor, :libWinit), Ptr{ValueBox_MonitorHandle}, (Ptr{EventLoop},), _ptr_event_loop)
end

function winit_primary_monitor_get_hidpi_factor(monitor_id_ptr)
    ccall((:winit_primary_monitor_get_hidpi_factor, :libWinit), Cdouble, (Ptr{ValueBox_MonitorHandle},), monitor_id_ptr)
end

function winit_primary_monitor_drop(ptr)
    ccall((:winit_primary_monitor_drop, :libWinit), Cvoid, (Ptr{ValueBox_MonitorHandle},), ptr)
end

function winit_event_drop(ptr)
    ccall((:winit_event_drop, :libWinit), Cvoid, (Ptr{ValueBox_WinitEvent},), ptr)
end

function winit_create_window(event_loop_ptr, window_builder_ptr)
    ccall((:winit_create_window, :libWinit), Ptr{Window}, (Ptr{EventLoop}, Ptr{WindowBuilder}), event_loop_ptr, window_builder_ptr)
end

function winit_windowed_context_raw_window_handle(window)
    ccall((:winit_windowed_context_raw_window_handle, :libWinit), Ptr{ValueBox_RawWindowHandle}, (Ptr{Window},), window)
end

function winit_window_request_redraw(window)
    ccall((:winit_window_request_redraw, :libWinit), Cvoid, (Ptr{Window},), window)
end

function winit_window_get_scale_factor(window)
    ccall((:winit_window_get_scale_factor, :libWinit), Cdouble, (Ptr{Window},), window)
end

function winit_window_get_inner_size(window_ptr, size_ptr)
    ccall((:winit_window_get_inner_size, :libWinit), Cvoid, (Ptr{Window}, Ptr{ValueBox_SizeBox_u32}), window_ptr, size_ptr)
end

function winit_window_set_inner_size(window, width, height)
    ccall((:winit_window_set_inner_size, :libWinit), Cvoid, (Ptr{Window}, UInt32, UInt32), window, width, height)
end

function winit_window_get_position(window_ptr, position_ptr)
    ccall((:winit_window_get_position, :libWinit), Cvoid, (Ptr{Window}, Ptr{ValueBox_PointBox_i32}), window_ptr, position_ptr)
end

function winit_window_set_position(window, x, y)
    ccall((:winit_window_set_position, :libWinit), Cvoid, (Ptr{Window}, Int32, Int32), window, x, y)
end

function winit_window_get_id(window_ptr, id_ptr)
    ccall((:winit_window_get_id, :libWinit), Cvoid, (Ptr{Window}, Ptr{U128Box}), window_ptr, id_ptr)
end

function winit_window_set_title(window_ptr, title_ptr)
    ccall((:winit_window_set_title, :libWinit), Cvoid, (Ptr{Window}, Ptr{StringBox}), window_ptr, title_ptr)
end

function winit_window_set_cursor_icon(window_ptr, cursor_icon)
    ccall((:winit_window_set_cursor_icon, :libWinit), Cvoid, (Ptr{Window}, WinitCursorIcon), window_ptr, cursor_icon)
end

function winit_window_set_maximized(window_ptr, maximized)
    ccall((:winit_window_set_maximized, :libWinit), Cvoid, (Ptr{Window}, Bool), window_ptr, maximized)
end

function winit_window_get_hwnd(window_ptr)
    ccall((:winit_window_get_hwnd, :libWinit), Ptr{Cvoid}, (Ptr{Window},), window_ptr)
end

function winit_window_builder_with_full_size(_ptr_window_builder, _with_full_size)
    ccall((:winit_window_builder_with_full_size, :libWinit), Cvoid, (Ptr{WindowBuilder}, Bool), _ptr_window_builder, _with_full_size)
end

function winit_window_drop(ptr)
    ccall((:winit_window_drop, :libWinit), Cvoid, (Ptr{Window},), ptr)
end

function winit_window_builder_new()
    ccall((:winit_window_builder_new, :libWinit), Ptr{WindowBuilder}, ())
end

function winit_window_builder_drop(window_builder)
    ccall((:winit_window_builder_drop, :libWinit), Cvoid, (Ptr{WindowBuilder},), window_builder)
end

function winit_window_builder_with_title(window_builder_ptr, _ptr_boxer_string)
    ccall((:winit_window_builder_with_title, :libWinit), Cvoid, (Ptr{WindowBuilder}, Ptr{StringBox}), window_builder_ptr, _ptr_boxer_string)
end

function winit_window_builder_with_decorations(_ptr_window_builder, with_decorations)
    ccall((:winit_window_builder_with_decorations, :libWinit), Cvoid, (Ptr{WindowBuilder}, Bool), _ptr_window_builder, with_decorations)
end

function winit_window_builder_with_transparency(_ptr_window_builder, with_transparency)
    ccall((:winit_window_builder_with_transparency, :libWinit), Cvoid, (Ptr{WindowBuilder}, Bool), _ptr_window_builder, with_transparency)
end

function winit_window_builder_with_resizable(_ptr_window_builder, with_resizable)
    ccall((:winit_window_builder_with_resizable, :libWinit), Cvoid, (Ptr{WindowBuilder}, Bool), _ptr_window_builder, with_resizable)
end

function winit_window_builder_with_dimensions(_ptr_window_builder, width, height)
    ccall((:winit_window_builder_with_dimensions, :libWinit), Cvoid, (Ptr{WindowBuilder}, Cdouble, Cdouble), _ptr_window_builder, width, height)
end

function winit_window_builder_with_maximized(_ptr_window_builder, with_maximized)
    ccall((:winit_window_builder_with_maximized, :libWinit), Cvoid, (Ptr{WindowBuilder}, Bool), _ptr_window_builder, with_maximized)
end

function winit_window_builder_with_visibility(_ptr_window_builder, with_visibility)
    ccall((:winit_window_builder_with_visibility, :libWinit), Cvoid, (Ptr{WindowBuilder}, Bool), _ptr_window_builder, with_visibility)
end

function winit_window_builder_with_always_on_top(_ptr_window_builder, with_always_on_top)
    ccall((:winit_window_builder_with_always_on_top, :libWinit), Cvoid, (Ptr{WindowBuilder}, Bool), _ptr_window_builder, with_always_on_top)
end

function winit_waker_wake(waker, event)
    ccall((:winit_waker_wake, :libWinit), Bool, (Ptr{Cvoid}, WinitUserEvent), waker, event)
end

function winit_event_loop_waker_create(event_loop)
    ccall((:winit_event_loop_waker_create, :libWinit), Ptr{ValueBox_WinitEventLoopWaker}, (Ptr{ValueBox_PollingEventLoop},), event_loop)
end

function winit_event_loop_waker_function()
    ccall((:winit_event_loop_waker_function, :libWinit), Ptr{Cvoid}, ())
end

function winit_event_loop_waker_drop(event_loop_waker)
    ccall((:winit_event_loop_waker_drop, :libWinit), Cvoid, (Ptr{ValueBox_WinitEventLoopWaker},), event_loop_waker)
end

function winit_polling_event_loop_new()
    ccall((:winit_polling_event_loop_new, :libWinit), Ptr{ValueBox_PollingEventLoop}, ())
end

function winit_polling_event_loop_wake(events_loop, event)
    ccall((:winit_polling_event_loop_wake, :libWinit), Bool, (Ptr{ValueBox_PollingEventLoop}, WinitUserEvent), events_loop, event)
end

function winit_polling_event_loop_create_window(event_loop, window_builder)
    ccall((:winit_polling_event_loop_create_window, :libWinit), Ptr{ValueBox_WindowRef}, (Ptr{ValueBox_PollingEventLoop}, Ptr{WindowBuilder}), event_loop, window_builder)
end

function winit_polling_event_loop_new_with_semaphore_and_main_events_signaller(semaphore_callback, semaphore_index, semaphore_thunk, main_events_callback, main_events_thunk)
    ccall((:winit_polling_event_loop_new_with_semaphore_and_main_events_signaller, :libWinit), Ptr{ValueBox_PollingEventLoop}, (Ptr{Cvoid}, Csize_t, Ptr{Cvoid}, Ptr{Cvoid}, Ptr{Cvoid}), semaphore_callback, semaphore_index, semaphore_thunk, main_events_callback, main_events_thunk)
end

function winit_polling_event_loop_add_resize_listener(event_loop, window_id, callback, thunk)
    ccall((:winit_polling_event_loop_add_resize_listener, :libWinit), Cvoid, (Ptr{ValueBox_PollingEventLoop}, Ptr{ValueBox_WindowId}, Ptr{Cvoid}, Ptr{Cvoid}), event_loop, window_id, callback, thunk)
end

function winit_polling_event_loop_count_resize_listeners(event_loop)
    ccall((:winit_polling_event_loop_count_resize_listeners, :libWinit), Csize_t, (Ptr{ValueBox_PollingEventLoop},), event_loop)
end

function winit_polling_event_loop_add_redraw_listener(event_loop, window_id, callback, thunk)
    ccall((:winit_polling_event_loop_add_redraw_listener, :libWinit), Cvoid, (Ptr{ValueBox_PollingEventLoop}, Ptr{ValueBox_WindowId}, Ptr{Cvoid}, Ptr{Cvoid}), event_loop, window_id, callback, thunk)
end

function winit_polling_event_loop_count_redraw_listeners(event_loop)
    ccall((:winit_polling_event_loop_count_redraw_listeners, :libWinit), Csize_t, (Ptr{ValueBox_PollingEventLoop},), event_loop)
end

function winit_polling_event_loop_poll(_ptr)
    ccall((:winit_polling_event_loop_poll, :libWinit), Ptr{ValueBox_WinitEvent}, (Ptr{ValueBox_PollingEventLoop},), _ptr)
end

function winit_polling_event_loop_run(_ptr_event_loop)
    ccall((:winit_polling_event_loop_run, :libWinit), Cvoid, (Ptr{ValueBox_PollingEventLoop},), _ptr_event_loop)
end

function winit_polling_event_loop_get_type(event_loop)
    ccall((:winit_polling_event_loop_get_type, :libWinit), WinitEventLoopType, (Ptr{ValueBox_PollingEventLoop},), event_loop)
end

function winit_polling_event_loop_drop(event_loop)
    ccall((:winit_polling_event_loop_drop, :libWinit), Cvoid, (Ptr{ValueBox_PollingEventLoop},), event_loop)
end

function winit_window_ref_raw_window_handle(event_loop, window_ref)
    ccall((:winit_window_ref_raw_window_handle, :libWinit), Ptr{ValueBox_RawWindowHandle}, (Ptr{ValueBox_PollingEventLoop}, Ptr{ValueBox_WindowRef}), event_loop, window_ref)
end

function winit_window_ref_request_redraw(event_loop, window_ref)
    ccall((:winit_window_ref_request_redraw, :libWinit), Cvoid, (Ptr{ValueBox_PollingEventLoop}, Ptr{ValueBox_WindowRef}), event_loop, window_ref)
end

function winit_window_ref_get_scale_factor(window_ref)
    ccall((:winit_window_ref_get_scale_factor, :libWinit), Cdouble, (Ptr{ValueBox_WindowRef},), window_ref)
end

function winit_window_ref_get_inner_size(window_ref, inner_size)
    ccall((:winit_window_ref_get_inner_size, :libWinit), Cvoid, (Ptr{ValueBox_WindowRef}, Ptr{ValueBox_SizeBox_u32}), window_ref, inner_size)
end

function winit_window_ref_set_inner_size(event_loop, window_ref, width, height)
    ccall((:winit_window_ref_set_inner_size, :libWinit), Cvoid, (Ptr{ValueBox_PollingEventLoop}, Ptr{ValueBox_WindowRef}, UInt32, UInt32), event_loop, window_ref, width, height)
end

function winit_window_ref_get_position(window_ref, position)
    ccall((:winit_window_ref_get_position, :libWinit), Cvoid, (Ptr{ValueBox_WindowRef}, Ptr{ValueBox_PointBox_i32}), window_ref, position)
end

function winit_window_ref_set_position(event_loop, window_ref, x, y)
    ccall((:winit_window_ref_set_position, :libWinit), Cvoid, (Ptr{ValueBox_PollingEventLoop}, Ptr{ValueBox_WindowRef}, Int32, Int32), event_loop, window_ref, x, y)
end

function winit_window_ref_get_id(window_ref, id)
    ccall((:winit_window_ref_get_id, :libWinit), Cvoid, (Ptr{ValueBox_WindowRef}, Ptr{U128Box}), window_ref, id)
end

function winit_window_ref_get_raw_id(window_ref)
    ccall((:winit_window_ref_get_raw_id, :libWinit), Ptr{ValueBox_WindowId}, (Ptr{ValueBox_WindowRef},), window_ref)
end

function winit_window_ref_set_title(event_loop, window_ref, title)
    ccall((:winit_window_ref_set_title, :libWinit), Cvoid, (Ptr{ValueBox_PollingEventLoop}, Ptr{ValueBox_WindowRef}, Ptr{StringBox}), event_loop, window_ref, title)
end

function winit_window_ref_set_cursor_icon(event_loop, window_ref, cursor_icon)
    ccall((:winit_window_ref_set_cursor_icon, :libWinit), Cvoid, (Ptr{ValueBox_PollingEventLoop}, Ptr{ValueBox_WindowRef}, WinitCursorIcon), event_loop, window_ref, cursor_icon)
end

function winit_window_ref_set_maximized(event_loop, window_ref, maximized)
    ccall((:winit_window_ref_set_maximized, :libWinit), Cvoid, (Ptr{ValueBox_PollingEventLoop}, Ptr{ValueBox_WindowRef}, Bool), event_loop, window_ref, maximized)
end

function winit_window_ref_get_hwnd(event_loop, window_ref)
    ccall((:winit_window_ref_get_hwnd, :libWinit), Ptr{Cvoid}, (Ptr{ValueBox_PollingEventLoop}, Ptr{ValueBox_WindowRef}), event_loop, window_ref)
end

function winit_window_ref_destroy(event_loop, window_ref)
    ccall((:winit_window_ref_destroy, :libWinit), Cvoid, (Ptr{ValueBox_PollingEventLoop}, Ptr{ValueBox_WindowRef}), event_loop, window_ref)
end

end # module
