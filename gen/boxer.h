#ifndef boxer_h
#define boxer_h

#include <stdarg.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdlib.h>


typedef struct Option_BoxerArrayF32 Option_BoxerArrayF32;

typedef struct Option_BoxerArrayInt Option_BoxerArrayInt;

typedef struct Option_BoxerArrayPointF32 Option_BoxerArrayPointF32;

typedef struct Option_BoxerArrayU16 Option_BoxerArrayU16;

typedef struct Option_BoxerArrayU8 Option_BoxerArrayU8;

typedef struct Option_BoxerArrayUInt Option_BoxerArrayUInt;

typedef struct Option_BoxerPoint3F32 Option_BoxerPoint3F32;

typedef struct Option_BoxerPointF32 Option_BoxerPointF32;

typedef struct Option_BoxerPointF64 Option_BoxerPointF64;

typedef struct Option_BoxerPointI32 Option_BoxerPointI32;

typedef struct Option_BoxerPointU64 Option_BoxerPointU64;

typedef struct Option_BoxerSizeF32 Option_BoxerSizeF32;

typedef struct Option_BoxerSizeF64 Option_BoxerSizeF64;

typedef struct Option_BoxerSizeI32 Option_BoxerSizeI32;

typedef struct Option_BoxerSizeU32 Option_BoxerSizeU32;

typedef struct Option_BoxerSizeU64 Option_BoxerSizeU64;

typedef struct Option_Range_usize Option_Range_usize;

typedef struct Option_StringBox Option_StringBox;

typedef struct Option_U128Box Option_U128Box;

typedef struct Option_c_void Option_c_void;

typedef struct Option_BoxerArrayF32 ValueBox_BoxerArrayF32;

typedef struct Option_BoxerArrayInt ValueBox_BoxerArrayInt;

typedef struct Option_BoxerArrayPointF32 ValueBox_BoxerArrayPointF32;

typedef struct Option_BoxerPointF32 PointBoxF32;

typedef struct PointF32 {
  float x;
  float y;
} PointF32;

typedef struct PointF32 PointF32;

typedef struct Option_BoxerArrayU16 ValueBox_BoxerArrayU16;

typedef struct Option_BoxerArrayU8 ValueBox_BoxerArrayU8;

typedef struct Option_BoxerArrayUInt ValueBox_BoxerArrayUInt;

typedef struct Option_c_void ValueBox_c_void;

typedef struct Option_U128Box U128Box;

typedef struct Option_BoxerPoint3F32 ValueBox_BoxerPoint3F32;

typedef struct Option_BoxerPointF64 ValueBox_BoxerPointF64;

typedef struct Option_BoxerPointI32 ValueBox_BoxerPointI32;

typedef struct Option_BoxerPointU64 ValueBox_BoxerPointU64;

typedef struct Option_Range_usize ValueBox_Range_usize;

typedef struct Option_BoxerSizeF32 SizeBoxF32;

typedef struct Option_BoxerSizeF64 SizeBoxF64;

typedef struct Option_BoxerSizeI32 SizeBoxI32;

typedef struct Option_BoxerSizeU32 SizeBoxU32;

typedef struct Option_BoxerSizeU64 SizeBoxU64;

typedef struct Option_StringBox StringBox;

typedef struct U128 {
  uint64_t high;
  uint64_t low;
} U128;

typedef struct SizeU32 {
  uint32_t width;
  uint32_t height;
} SizeU32;

typedef struct SizeI32 {
  int32_t width;
  int32_t height;
} SizeI32;

typedef struct SizeF32 {
  float width;
  float height;
} SizeF32;

typedef struct SizeU64 {
  uint64_t width;
  uint64_t height;
} SizeU64;

typedef struct SizeF64 {
  double width;
  double height;
} SizeF64;

bool boxer_test(void);

ValueBox_BoxerArrayF32 *boxer_array_f32_create(void);

ValueBox_BoxerArrayF32 *boxer_array_f32_create_with(float element, size_t amount);

ValueBox_BoxerArrayF32 *boxer_array_f32_create_from_data(float *_data, size_t amount);

size_t boxer_array_f32_get_length(ValueBox_BoxerArrayF32 *_ptr);

size_t boxer_array_f32_get_capacity(ValueBox_BoxerArrayF32 *_ptr);

float *boxer_array_f32_get_data(ValueBox_BoxerArrayF32 *_ptr);

void boxer_array_f32_at_put(ValueBox_BoxerArrayF32 *_ptr, size_t index, float item);

void boxer_array_f32_drop(ValueBox_BoxerArrayF32 *ptr);

ValueBox_BoxerArrayInt *boxer_array_int_create(void);

ValueBox_BoxerArrayInt *boxer_array_int_create_with(int element, size_t amount);

ValueBox_BoxerArrayInt *boxer_array_int_create_from_data(int *_data, size_t amount);

size_t boxer_array_int_get_length(ValueBox_BoxerArrayInt *_ptr);

size_t boxer_array_int_get_capacity(ValueBox_BoxerArrayInt *_ptr);

int *boxer_array_int_get_data(ValueBox_BoxerArrayInt *_ptr);

void boxer_array_int_at_put(ValueBox_BoxerArrayInt *_ptr, size_t index, int item);

int boxer_array_int_at(ValueBox_BoxerArrayInt *_ptr, size_t index);

void boxer_array_int_drop(ValueBox_BoxerArrayInt *ptr);

ValueBox_BoxerArrayPointF32 *boxer_array_point_f32_create(void);

ValueBox_BoxerArrayPointF32 *boxer_array_point_f32_create_with(PointBoxF32 *element_ptr,
                                                               size_t amount);

ValueBox_BoxerArrayPointF32 *boxer_array_point_f32_create_from_data(PointF32 *_data, size_t amount);

void boxer_array_point_f32_drop(ValueBox_BoxerArrayPointF32 *ptr);

size_t boxer_array_point_f32_get_length(ValueBox_BoxerArrayPointF32 *ptr);

size_t boxer_array_point_f32_get_capacity(ValueBox_BoxerArrayPointF32 *ptr);

PointF32 *boxer_array_point_f32_get_data(ValueBox_BoxerArrayPointF32 *ptr);

size_t boxer_array_u16_byte_size(size_t count);

ValueBox_BoxerArrayU16 *boxer_array_u16_create(void);

ValueBox_BoxerArrayU16 *boxer_array_u16_create_with(uint16_t element, size_t amount);

ValueBox_BoxerArrayU16 *boxer_array_u16_create_from_data(uint16_t *_data, size_t amount);

void boxer_array_u16_copy_into(ValueBox_BoxerArrayU16 *_ptr_src, ValueBox_BoxerArrayU16 *_ptr_dst);

void boxer_array_u16_copy_into_data(ValueBox_BoxerArrayU16 *_ptr_src,
                                    uint16_t *_data,
                                    size_t amount);

size_t boxer_array_u16_get_length(ValueBox_BoxerArrayU16 *_ptr);

size_t boxer_array_u16_get_capacity(ValueBox_BoxerArrayU16 *_ptr);

uint16_t *boxer_array_u16_get_data(ValueBox_BoxerArrayU16 *_ptr);

void boxer_array_u16_at_put(ValueBox_BoxerArrayU16 *_ptr, size_t index, uint16_t item);

uint16_t boxer_array_u16_at(ValueBox_BoxerArrayU16 *_ptr, size_t index);

void boxer_array_u16_drop(ValueBox_BoxerArrayU16 *ptr);

size_t boxer_array_u8_byte_size(size_t count);

ValueBox_BoxerArrayU8 *boxer_array_u8_create(void);

ValueBox_BoxerArrayU8 *boxer_array_u8_create_with(uint8_t element, size_t amount);

ValueBox_BoxerArrayU8 *boxer_array_u8_create_from_data(uint8_t *_data, size_t amount);

void boxer_array_u8_copy_into(ValueBox_BoxerArrayU8 *_ptr_src, ValueBox_BoxerArrayU8 *_ptr_dst);

void boxer_array_u8_copy_into_data(ValueBox_BoxerArrayU8 *_ptr_src, uint8_t *_data, size_t amount);

size_t boxer_array_u8_get_length(ValueBox_BoxerArrayU8 *ptr);

size_t boxer_array_u8_get_capacity(ValueBox_BoxerArrayU8 *ptr);

uint8_t *boxer_array_u8_get_data(ValueBox_BoxerArrayU8 *ptr);

void boxer_array_u8_at_put(ValueBox_BoxerArrayU8 *ptr, size_t index, uint8_t item);

uint8_t boxer_array_u8_at(ValueBox_BoxerArrayU8 *ptr, size_t index);

/**
 * In-place convert argb to rgba
 */
void boxer_array_u8_argb_to_rgba(ValueBox_BoxerArrayU8 *ptr);

/**
 * In-place convert bgra to argb
 */
void boxer_array_u8_bgra_to_argb(ValueBox_BoxerArrayU8 *ptr);

/**
 * In-place convert rgba to argb
 */
void boxer_array_u8_rgba_to_argb(ValueBox_BoxerArrayU8 *ptr);

void boxer_array_u8_drop(ValueBox_BoxerArrayU8 *ptr);

ValueBox_BoxerArrayUInt *boxer_array_uint_create(void);

ValueBox_BoxerArrayUInt *boxer_array_uint_create_with(unsigned int element, size_t amount);

ValueBox_BoxerArrayUInt *boxer_array_uint_create_from_data(unsigned int *_data, size_t amount);

size_t boxer_array_uint_get_length(ValueBox_BoxerArrayUInt *ptr);

size_t boxer_array_uint_get_capacity(ValueBox_BoxerArrayUInt *ptr);

unsigned int *boxer_array_uint_get_data(ValueBox_BoxerArrayUInt *ptr);

void boxer_array_uint_at_put(ValueBox_BoxerArrayUInt *ptr, size_t index, unsigned int item);

unsigned int boxer_array_uint_at(ValueBox_BoxerArrayUInt *ptr, size_t index);

void boxer_array_uint_drop(ValueBox_BoxerArrayUInt *ptr);

const void *boxer_value_box_get_pointer(ValueBox_c_void *ptr);

bool boxer_value_box_is_valid(ValueBox_c_void *ptr);

U128Box *boxer_number_uint128_create(void);

void boxer_number_uint128_drop(U128Box *ptr);

uint64_t boxer_number_uint128_get_low(U128Box *_number_ptr);

void boxer_number_uint128_set_low(U128Box *_number_ptr, uint64_t low);

uint64_t boxer_number_uint128_get_high(U128Box *_number_ptr);

void boxer_number_uint128_set_high(U128Box *_number_ptr, uint64_t high);

void boxer_number_uint128_set_max(U128Box *_number_ptr);

void boxer_number_uint128_set_min(U128Box *_number_ptr);

ValueBox_BoxerPoint3F32 *boxer_point3_f32_default(void);

ValueBox_BoxerPoint3F32 *boxer_point3_f32_create(float x, float y, float z);

void boxer_point3_f32_drop(ValueBox_BoxerPoint3F32 *ptr);

float boxer_point3_f32_get_x(ValueBox_BoxerPoint3F32 *_point_ptr);

void boxer_point3_f32_set_x(ValueBox_BoxerPoint3F32 *_point_ptr, float x);

float boxer_point3_f32_get_y(ValueBox_BoxerPoint3F32 *_point_ptr);

void boxer_point3_f32_set_y(ValueBox_BoxerPoint3F32 *_point_ptr, float y);

float boxer_point3_f32_get_z(ValueBox_BoxerPoint3F32 *_point_ptr);

void boxer_point3_f32_set_z(ValueBox_BoxerPoint3F32 *_point_ptr, float z);

PointBoxF32 *boxer_point_f32_default(void);

PointBoxF32 *boxer_point_f32_create(float x, float y);

void boxer_point_f32_drop(PointBoxF32 *ptr);

float boxer_point_f32_get_x(PointBoxF32 *_point_ptr);

void boxer_point_f32_set_x(PointBoxF32 *_point_ptr, float x);

float boxer_point_f32_get_y(PointBoxF32 *_point_ptr);

void boxer_point_f32_set_y(PointBoxF32 *_point_ptr, float y);

ValueBox_BoxerPointF64 *boxer_point_f64_default(void);

ValueBox_BoxerPointF64 *boxer_point_f64_create(double x, double y);

void boxer_point_f64_drop(ValueBox_BoxerPointF64 *ptr);

double boxer_point_f64_get_x(ValueBox_BoxerPointF64 *_point_ptr);

void boxer_point_f64_set_x(ValueBox_BoxerPointF64 *_point_ptr, double x);

double boxer_point_f64_get_y(ValueBox_BoxerPointF64 *_point_ptr);

void boxer_point_f64_set_y(ValueBox_BoxerPointF64 *_point_ptr, double y);

ValueBox_BoxerPointI32 *boxer_point_i32_default(void);

ValueBox_BoxerPointI32 *boxer_point_i32_create(int32_t x, int32_t y);

void boxer_point_i32_drop(ValueBox_BoxerPointI32 *ptr);

int32_t boxer_point_i32_get_x(ValueBox_BoxerPointI32 *point_ptr);

void boxer_point_i32_set_x(ValueBox_BoxerPointI32 *point_ptr, int32_t x);

int32_t boxer_point_i32_get_y(ValueBox_BoxerPointI32 *point_ptr);

void boxer_point_i32_set_y(ValueBox_BoxerPointI32 *_point_ptr, int32_t y);

ValueBox_BoxerPointU64 *boxer_point_u64_default(void);

ValueBox_BoxerPointU64 *boxer_point_u64_create(uint64_t x, uint64_t y);

void boxer_point_u64_drop(ValueBox_BoxerPointU64 *ptr);

uint64_t boxer_point_u64_get_x(ValueBox_BoxerPointU64 *_point_ptr);

void boxer_point_u64_set_x(ValueBox_BoxerPointU64 *_point_ptr, uint64_t x);

uint64_t boxer_point_u64_get_y(ValueBox_BoxerPointU64 *_point_ptr);

void boxer_point_u64_set_y(ValueBox_BoxerPointU64 *_point_ptr, uint64_t y);

ValueBox_Range_usize *boxer_range_usize_create(void);

void boxer_range_usize_drop(ValueBox_Range_usize *ptr);

size_t boxer_range_usize_get_start(ValueBox_Range_usize *ptr);

void boxer_range_usize_set_start(ValueBox_Range_usize *ptr, size_t start);

size_t boxer_range_usize_get_end(ValueBox_Range_usize *ptr);

void boxer_range_usize_set_end(ValueBox_Range_usize *ptr, size_t end);

SizeBoxF32 *boxer_size_f32_create(void);

void boxer_size_f32_drop(SizeBoxF32 *ptr);

float boxer_size_f32_get_width(SizeBoxF32 *ptr);

void boxer_size_f32_set_width(SizeBoxF32 *ptr, float width);

float boxer_size_f32_get_height(SizeBoxF32 *ptr);

void boxer_size_f32_set_height(SizeBoxF32 *ptr, float height);

SizeBoxF64 *boxer_size_f64_create(void);

void boxer_size_f64_drop(SizeBoxF64 *ptr);

double boxer_size_f64_get_width(SizeBoxF64 *ptr);

void boxer_size_f64_set_width(SizeBoxF64 *ptr, double width);

double boxer_size_f64_get_height(SizeBoxF64 *ptr);

void boxer_size_f64_set_height(SizeBoxF64 *ptr, double height);

SizeBoxI32 *boxer_size_i32_create(void);

void boxer_size_i32_drop(SizeBoxI32 *ptr);

int32_t boxer_size_i32_get_width(SizeBoxI32 *ptr);

void boxer_size_i32_set_width(SizeBoxI32 *ptr, int32_t width);

int32_t boxer_size_i32_get_height(SizeBoxI32 *ptr);

void boxer_size_i32_set_height(SizeBoxI32 *ptr, int32_t height);

SizeBoxU32 *boxer_size_u32_create(void);

void boxer_size_u32_drop(SizeBoxU32 *ptr);

uint32_t boxer_size_u32_get_width(SizeBoxU32 *ptr);

void boxer_size_u32_set_width(SizeBoxU32 *ptr, uint32_t width);

uint32_t boxer_size_u32_get_height(SizeBoxU32 *ptr);

void boxer_size_u32_set_height(SizeBoxU32 *ptr, uint32_t height);

SizeBoxU64 *boxer_size_u64_create(void);

void boxer_size_u64_drop(SizeBoxU64 *ptr);

uint64_t boxer_size_u64_get_width(SizeBoxU64 *ptr);

void boxer_size_u64_set_width(SizeBoxU64 *ptr, uint64_t width);

uint64_t boxer_size_u64_get_height(SizeBoxU64 *ptr);

void boxer_size_u64_set_height(SizeBoxU64 *ptr, uint64_t height);

StringBox *boxer_string_create(void);

/**
 * I copy the data (must *not* contain zero-byte).
 * length must not include the zero-byte
 */
StringBox *boxer_string_from_byte_string(const uint8_t *data, size_t length);

/**
 * I copy the data (must *not* contain zero-byte).
 * length must not include the zero-byte
 */
StringBox *boxer_string_from_wide_string(const uint32_t *data, size_t length);

/**
 * I copy the data (must contain zero-byte).
 * length must not include the zero-byte
 */
StringBox *boxer_string_from_utf8_string(const uint8_t *data, size_t length);

void boxer_string_drop(StringBox *ptr);

size_t boxer_string_get_len(StringBox *ptr);

size_t boxer_string_get_char_count(StringBox *ptr);

const uint8_t *boxer_string_get_ptr(StringBox *ptr);

void boxer_string_char_index_to_byte_range(StringBox *string_ptr,
                                           size_t index,
                                           ValueBox_Range_usize *range_ptr);

void boxer_string_char_index_to_utf16_range(StringBox *string_ptr,
                                            size_t index,
                                            ValueBox_Range_usize *range_ptr);

size_t boxer_string_utf16_position_to_char_index(StringBox *string_ptr, size_t index);

#endif /* boxer_h */
