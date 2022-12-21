#ifndef winit_h
#define winit_h

#include <stdarg.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdlib.h>
#include "boxer.h"


/**
 * Symbolic name for a keyboard key.
 */
typedef enum {
  /**
   * The '1' key over the letters.
   */
  VirtualKeyCode_Key1,
  /**
   * The '2' key over the letters.
   */
  VirtualKeyCode_Key2,
  /**
   * The '3' key over the letters.
   */
  VirtualKeyCode_Key3,
  /**
   * The '4' key over the letters.
   */
  VirtualKeyCode_Key4,
  /**
   * The '5' key over the letters.
   */
  VirtualKeyCode_Key5,
  /**
   * The '6' key over the letters.
   */
  VirtualKeyCode_Key6,
  /**
   * The '7' key over the letters.
   */
  VirtualKeyCode_Key7,
  /**
   * The '8' key over the letters.
   */
  VirtualKeyCode_Key8,
  /**
   * The '9' key over the letters.
   */
  VirtualKeyCode_Key9,
  /**
   * The '0' key over the 'O' and 'P' keys.
   */
  VirtualKeyCode_Key0,
  VirtualKeyCode_A,
  VirtualKeyCode_B,
  VirtualKeyCode_C,
  VirtualKeyCode_D,
  VirtualKeyCode_E,
  VirtualKeyCode_F,
  VirtualKeyCode_G,
  VirtualKeyCode_H,
  VirtualKeyCode_I,
  VirtualKeyCode_J,
  VirtualKeyCode_K,
  VirtualKeyCode_L,
  VirtualKeyCode_M,
  VirtualKeyCode_N,
  VirtualKeyCode_O,
  VirtualKeyCode_P,
  VirtualKeyCode_Q,
  VirtualKeyCode_R,
  VirtualKeyCode_S,
  VirtualKeyCode_T,
  VirtualKeyCode_U,
  VirtualKeyCode_V,
  VirtualKeyCode_W,
  VirtualKeyCode_X,
  VirtualKeyCode_Y,
  VirtualKeyCode_Z,
  /**
   * The Escape key, next to F1.
   */
  VirtualKeyCode_Escape,
  VirtualKeyCode_F1,
  VirtualKeyCode_F2,
  VirtualKeyCode_F3,
  VirtualKeyCode_F4,
  VirtualKeyCode_F5,
  VirtualKeyCode_F6,
  VirtualKeyCode_F7,
  VirtualKeyCode_F8,
  VirtualKeyCode_F9,
  VirtualKeyCode_F10,
  VirtualKeyCode_F11,
  VirtualKeyCode_F12,
  VirtualKeyCode_F13,
  VirtualKeyCode_F14,
  VirtualKeyCode_F15,
  VirtualKeyCode_F16,
  VirtualKeyCode_F17,
  VirtualKeyCode_F18,
  VirtualKeyCode_F19,
  VirtualKeyCode_F20,
  VirtualKeyCode_F21,
  VirtualKeyCode_F22,
  VirtualKeyCode_F23,
  VirtualKeyCode_F24,
  /**
   * Print Screen/SysRq.
   */
  VirtualKeyCode_Snapshot,
  /**
   * Scroll Lock.
   */
  VirtualKeyCode_Scroll,
  /**
   * Pause/Break key, next to Scroll lock.
   */
  VirtualKeyCode_Pause,
  /**
   * `Insert`, next to Backspace.
   */
  VirtualKeyCode_Insert,
  VirtualKeyCode_Home,
  VirtualKeyCode_Delete,
  VirtualKeyCode_End,
  VirtualKeyCode_PageDown,
  VirtualKeyCode_PageUp,
  VirtualKeyCode_Left,
  VirtualKeyCode_Up,
  VirtualKeyCode_Right,
  VirtualKeyCode_Down,
  /**
   * The Backspace key, right over Enter.
   */
  VirtualKeyCode_Back,
  /**
   * The Enter key.
   */
  VirtualKeyCode_Return,
  /**
   * The space bar.
   */
  VirtualKeyCode_Space,
  /**
   * The "Compose" key on Linux.
   */
  VirtualKeyCode_Compose,
  VirtualKeyCode_Caret,
  VirtualKeyCode_Numlock,
  VirtualKeyCode_Numpad0,
  VirtualKeyCode_Numpad1,
  VirtualKeyCode_Numpad2,
  VirtualKeyCode_Numpad3,
  VirtualKeyCode_Numpad4,
  VirtualKeyCode_Numpad5,
  VirtualKeyCode_Numpad6,
  VirtualKeyCode_Numpad7,
  VirtualKeyCode_Numpad8,
  VirtualKeyCode_Numpad9,
  VirtualKeyCode_NumpadAdd,
  VirtualKeyCode_NumpadDivide,
  VirtualKeyCode_NumpadDecimal,
  VirtualKeyCode_NumpadComma,
  VirtualKeyCode_NumpadEnter,
  VirtualKeyCode_NumpadEquals,
  VirtualKeyCode_NumpadMultiply,
  VirtualKeyCode_NumpadSubtract,
  VirtualKeyCode_AbntC1,
  VirtualKeyCode_AbntC2,
  VirtualKeyCode_Apostrophe,
  VirtualKeyCode_Apps,
  VirtualKeyCode_Asterisk,
  VirtualKeyCode_At,
  VirtualKeyCode_Ax,
  VirtualKeyCode_Backslash,
  VirtualKeyCode_Calculator,
  VirtualKeyCode_Capital,
  VirtualKeyCode_Colon,
  VirtualKeyCode_Comma,
  VirtualKeyCode_Convert,
  VirtualKeyCode_Equals,
  VirtualKeyCode_Grave,
  VirtualKeyCode_Kana,
  VirtualKeyCode_Kanji,
  VirtualKeyCode_LAlt,
  VirtualKeyCode_LBracket,
  VirtualKeyCode_LControl,
  VirtualKeyCode_LShift,
  VirtualKeyCode_LWin,
  VirtualKeyCode_Mail,
  VirtualKeyCode_MediaSelect,
  VirtualKeyCode_MediaStop,
  VirtualKeyCode_Minus,
  VirtualKeyCode_Mute,
  VirtualKeyCode_MyComputer,
  VirtualKeyCode_NavigateForward,
  VirtualKeyCode_NavigateBackward,
  VirtualKeyCode_NextTrack,
  VirtualKeyCode_NoConvert,
  VirtualKeyCode_OEM102,
  VirtualKeyCode_Period,
  VirtualKeyCode_PlayPause,
  VirtualKeyCode_Plus,
  VirtualKeyCode_Power,
  VirtualKeyCode_PrevTrack,
  VirtualKeyCode_RAlt,
  VirtualKeyCode_RBracket,
  VirtualKeyCode_RControl,
  VirtualKeyCode_RShift,
  VirtualKeyCode_RWin,
  VirtualKeyCode_Semicolon,
  VirtualKeyCode_Slash,
  VirtualKeyCode_Sleep,
  VirtualKeyCode_Stop,
  VirtualKeyCode_Sysrq,
  VirtualKeyCode_Tab,
  VirtualKeyCode_Underline,
  VirtualKeyCode_Unlabeled,
  VirtualKeyCode_VolumeDown,
  VirtualKeyCode_VolumeUp,
  VirtualKeyCode_Wake,
  VirtualKeyCode_WebBack,
  VirtualKeyCode_WebFavorites,
  VirtualKeyCode_WebForward,
  VirtualKeyCode_WebHome,
  VirtualKeyCode_WebRefresh,
  VirtualKeyCode_WebSearch,
  VirtualKeyCode_WebStop,
  VirtualKeyCode_Yen,
  VirtualKeyCode_Copy,
  VirtualKeyCode_Paste,
  VirtualKeyCode_Cut,
} VirtualKeyCode;

typedef enum {
  /**
   * When the current loop iteration finishes, immediately begin a new iteration regardless of
   * whether or not new events are available to process.
   */
  WinitControlFlow_Poll,
  /**
   * When the current loop iteration finishes, suspend the thread until another event arrives.
   */
  WinitControlFlow_Wait,
  /**
   * Send a `LoopDestroyed` event and stop the event loop. This variant is *sticky* - once set,
   * `control_flow` cannot be changed from `Exit`, and any future attempts to do so will result
   * in the `control_flow` parameter being reset to `Exit`.
   */
  WinitControlFlow_Exit,
} WinitControlFlow;

typedef enum {
  /**
   * The platform-dependent default cursor.
   */
  WinitCursorIcon_Default,
  /**
   * A simple crosshair.
   */
  WinitCursorIcon_Crosshair,
  /**
   * A hand (often used to indicate links in web browsers).
   */
  WinitCursorIcon_Hand,
  /**
   * Self explanatory.
   */
  WinitCursorIcon_Arrow,
  /**
   * Indicates something is to be moved.
   */
  WinitCursorIcon_Move,
  /**
   * Indicates text that may be selected or edited.
   */
  WinitCursorIcon_Text,
  /**
   * Program busy indicator.
   */
  WinitCursorIcon_Wait,
  /**
   * Help indicator (often rendered as a "?")
   */
  WinitCursorIcon_Help,
  /**
   * Progress indicator. Shows that processing is being done. But in contrast
   * with "Wait" the user may still interact with the program. Often rendered
   * as a spinning beach ball, or an arrow with a watch or hourglass.
   */
  WinitCursorIcon_Progress,
  /**
   * Cursor showing that something cannot be done.
   */
  WinitCursorIcon_NotAllowed,
  WinitCursorIcon_ContextMenu,
  WinitCursorIcon_Cell,
  WinitCursorIcon_VerticalText,
  WinitCursorIcon_Alias,
  WinitCursorIcon_Copy,
  WinitCursorIcon_NoDrop,
  WinitCursorIcon_Grab,
  WinitCursorIcon_Grabbing,
  WinitCursorIcon_AllScroll,
  WinitCursorIcon_ZoomIn,
  WinitCursorIcon_ZoomOut,
  /**
   * Indicate that some edge is to be moved. For example, the 'SeResize' cursor
   * is used when the movement starts from the south-east corner of the box.
   */
  WinitCursorIcon_EResize,
  WinitCursorIcon_NResize,
  WinitCursorIcon_NeResize,
  WinitCursorIcon_NwResize,
  WinitCursorIcon_SResize,
  WinitCursorIcon_SeResize,
  WinitCursorIcon_SwResize,
  WinitCursorIcon_WResize,
  WinitCursorIcon_EwResize,
  WinitCursorIcon_NsResize,
  WinitCursorIcon_NeswResize,
  WinitCursorIcon_NwseResize,
  WinitCursorIcon_ColResize,
  WinitCursorIcon_RowResize,
} WinitCursorIcon;

typedef enum {
  WinitEventInputElementState_Unknown,
  WinitEventInputElementState_Pressed,
  WinitEventInputElementState_Released,
} WinitEventInputElementState;
// typedef uint32_t WinitEventInputElementState;

typedef enum {
  WinitEventLoopType_Windows,
  WinitEventLoopType_MacOS,
  WinitEventLoopType_X11,
  WinitEventLoopType_Wayland,
  WinitEventLoopType_Unknown,
} WinitEventLoopType;
// typedef uint8_t WinitEventLoopType;

typedef enum {
  WinitEventMouseButtonType_Unknown,
  WinitEventMouseButtonType_Left,
  WinitEventMouseButtonType_Right,
  WinitEventMouseButtonType_Middle,
  WinitEventMouseButtonType_Other,
} WinitEventMouseButtonType;
// typedef uint32_t WinitEventMouseButtonType;

typedef enum {
  WinitEventMouseScrollDeltaType_Unknown,
  WinitEventMouseScrollDeltaType_LineDelta,
  WinitEventMouseScrollDeltaType_PixelDelta,
} WinitEventMouseScrollDeltaType;
// typedef uint32_t WinitEventMouseScrollDeltaType;

typedef enum {
  WinitEventTouchPhase_Unknown,
  WinitEventTouchPhase_Started,
  WinitEventTouchPhase_Moved,
  WinitEventTouchPhase_Ended,
  WinitEventTouchPhase_Cancelled,
} WinitEventTouchPhase;
// typedef uint32_t WinitEventTouchPhase;

typedef enum {
  WinitEventType_Unknown,
  WinitEventType_WindowEventResized,
  WinitEventType_WindowEventMoved,
  WinitEventType_WindowEventCloseRequested,
  WinitEventType_WindowEventDestroyed,
  WinitEventType_WindowEventDroppedFile,
  WinitEventType_WindowEventHoveredFile,
  WinitEventType_WindowEventHoveredFileCancelled,
  WinitEventType_WindowEventReceivedCharacter,
  WinitEventType_WindowEventFocused,
  WinitEventType_WindowEventKeyboardInput,
  WinitEventType_WindowEventCursorMoved,
  WinitEventType_WindowEventCursorEntered,
  WinitEventType_WindowEventCursorLeft,
  WinitEventType_WindowEventMouseWheel,
  WinitEventType_WindowEventMouseInput,
  WinitEventType_WindowEventTouchpadPressure,
  WinitEventType_WindowEventAxisMotion,
  WinitEventType_WindowEventTouch,
  WinitEventType_WindowEventScaleFactorChanged,
  WinitEventType_NewEvents,
  WinitEventType_MainEventsCleared,
  WinitEventType_LoopDestroyed,
  WinitEventType_Suspended,
  WinitEventType_Resumed,
  WinitEventType_RedrawRequested,
  WinitEventType_RedrawEventsCleared,
  WinitEventType_ModifiersChanged,
  WinitEventType_UserEvent,
} WinitEventType;
// typedef uint32_t WinitEventType;

typedef enum {
  /**
   * The virtual machine sends
   */
  WinitUserEvent_WakeUp,
} WinitUserEvent;
// typedef uint32_t WinitUserEvent;

typedef struct Option_MonitorHandle Option_MonitorHandle;

typedef struct Option_PointBox_i32 Option_PointBox_i32;

typedef struct Option_PollingEventLoop Option_PollingEventLoop;

typedef struct Option_RawWindowHandle Option_RawWindowHandle;

typedef struct Option_SizeBox_u32 Option_SizeBox_u32;

typedef struct Option_StringBox Option_StringBox;

typedef struct Option_U128Box Option_U128Box;

typedef struct Option_Window Option_Window;

typedef struct Option_WindowBuilder Option_WindowBuilder;

typedef struct Option_WindowId Option_WindowId;

typedef struct Option_WindowRef Option_WindowRef;

typedef struct Option_WinitEvent Option_WinitEvent;

typedef struct Option_WinitEventLoop Option_WinitEventLoop;

typedef struct Option_WinitEventLoopProxy Option_WinitEventLoopProxy;

typedef struct Option_WinitEventLoopWaker Option_WinitEventLoopWaker;

typedef struct Option_StringBox StringBox;

typedef struct Option_WinitEventLoop EventLoop;

typedef struct WinitTouchEvent {
  int64_t device_id;
  WinitEventTouchPhase phase;
  double x;
  double y;
  /**
   * unique identifier of a finger.
   */
  uint64_t id;
} WinitTouchEvent;

typedef struct WinitMouseScrollDelta {
  WinitEventMouseScrollDeltaType delta_type;
  double x;
  double y;
} WinitMouseScrollDelta;

typedef struct WinitMouseWheelEvent {
  int64_t device_id;
  WinitEventTouchPhase phase;
  struct WinitMouseScrollDelta delta;
} WinitMouseWheelEvent;

typedef struct WinitEventMouseButton {
  WinitEventMouseButtonType button_type;
  uint16_t button_code;
} WinitEventMouseButton;

typedef struct WinitMouseInputEvent {
  int64_t device_id;
  WinitEventInputElementState state;
  struct WinitEventMouseButton button;
} WinitMouseInputEvent;

typedef struct WinitCursorMovedEvent {
  int64_t device_id;
  double x;
  double y;
} WinitCursorMovedEvent;

typedef struct WinitEventKeyboardInput {
  int64_t device_id;
  uint32_t scan_code;
  WinitEventInputElementState state;
  bool has_virtual_keycode;
  VirtualKeyCode virtual_keycode;
  bool is_synthetic;
} WinitEventKeyboardInput;

typedef struct WinitEventReceivedCharacter {
  size_t length;
  uint8_t byte_1;
  uint8_t byte_2;
  uint8_t byte_3;
  uint8_t byte_4;
} WinitEventReceivedCharacter;

typedef struct WinitWindowResizedEvent {
  uint32_t width;
  uint32_t height;
} WinitWindowResizedEvent;

typedef struct WinitWindowScaleFactorChangedEvent {
  double scale_factor;
  uint32_t width;
  uint32_t height;
} WinitWindowScaleFactorChangedEvent;

typedef struct WinitWindowMovedEvent {
  int32_t x;
  int32_t y;
} WinitWindowMovedEvent;

typedef struct WinitWindowFocusedEvent {
  bool is_focused;
} WinitWindowFocusedEvent;

typedef struct WinitEventModifiersState {
  /**
   * The "shift" key
   */
  bool shift;
  /**
   * The "control" key
   */
  bool ctrl;
  /**
   * The "alt" key
   */
  bool alt;
  /**
   * The "logo" key
   *
   * This is the "windows" key on PC and "command" key on Mac.
   */
  bool logo;
} WinitEventModifiersState;

typedef struct WinitEventUserEvent {
  WinitUserEvent event;
} WinitEventUserEvent;

typedef struct WinitEvent {
  U128 window_id;
  WinitEventType event_type;
  struct WinitTouchEvent touch;
  struct WinitMouseWheelEvent mouse_wheel;
  struct WinitMouseInputEvent mouse_input;
  struct WinitCursorMovedEvent cursor_moved;
  struct WinitEventKeyboardInput keyboard_input;
  struct WinitEventReceivedCharacter received_character;
  struct WinitWindowResizedEvent window_resized;
  struct WinitWindowScaleFactorChangedEvent scale_factor;
  struct WinitWindowMovedEvent window_moved;
  struct WinitWindowFocusedEvent window_focused;
  struct WinitEventModifiersState modifiers;
  struct WinitEventUserEvent user_event;
} WinitEvent;

typedef struct Option_WinitEventLoopProxy ValueBox_WinitEventLoopProxy;

typedef struct Option_MonitorHandle ValueBox_MonitorHandle;

typedef struct Option_WinitEvent ValueBox_WinitEvent;

typedef struct Option_Window Window;

typedef struct Option_WindowBuilder WindowBuilder;

typedef struct Option_RawWindowHandle ValueBox_RawWindowHandle;

typedef struct Option_SizeBox_u32 ValueBox_SizeBox_u32;

typedef struct Option_PointBox_i32 ValueBox_PointBox_i32;

typedef struct Option_U128Box U128Box;

typedef struct Option_WinitEventLoopWaker ValueBox_WinitEventLoopWaker;

typedef struct Option_PollingEventLoop ValueBox_PollingEventLoop;

typedef struct Option_WindowRef ValueBox_WindowRef;

typedef struct Option_WindowId ValueBox_WindowId;

bool winit_test(void);

void winit_init_logger(void);

void winit_println(StringBox *_ptr_message);

void winit_print(StringBox *_ptr_message);

EventLoop *winit_event_loop_new(void);

void winit_event_loop_drop(EventLoop *_ptr);

void winit_event_loop_run_return(EventLoop *event_loop_ptr,
                                 WinitControlFlow (*callback)(struct WinitEvent*));

/**
 * Initializes the winit event loop.
 * Unlike EventLoop::run, this function accepts non-'static (i.e. non-move) closures
 * and returns control flow to the caller when control_flow is set to ControlFlow::Exit.
 */
void winit_event_loop_run_return_data(EventLoop *event_loop,
                                      void *data,
                                      WinitControlFlow (*callback)(void*, struct WinitEvent*));

/**
 * Hijacks the calling thread and initializes the winit event loop with the provided closure.
 * Since the closure is 'static, it must be a move closure if it needs to access any data from the calling context.
 * See the ControlFlow docs for information on how changes to &mut ControlFlow impact the event loop's behavior.
 * Any values not passed to this function will not be dropped.
 */
void winit_event_loop_run_data(EventLoop *event_loop,
                               void *data,
                               WinitControlFlow (*callback)(void*, struct WinitEvent*));

WinitEventLoopType winit_event_loop_get_type(EventLoop *_ptr_event_loop);

ValueBox_WinitEventLoopProxy *winit_event_loop_create_proxy(EventLoop *_ptr_event_loop);

void winit_event_loop_drop_proxy(ValueBox_WinitEventLoopProxy *event_loop_proxy);

ValueBox_MonitorHandle *winit_event_loop_get_primary_monitor(EventLoop *_ptr_event_loop);

double winit_primary_monitor_get_hidpi_factor(ValueBox_MonitorHandle *monitor_id_ptr);

void winit_primary_monitor_drop(ValueBox_MonitorHandle *ptr);

void winit_event_drop(ValueBox_WinitEvent *ptr);

Window *winit_create_window(EventLoop *event_loop_ptr, WindowBuilder *window_builder_ptr);

ValueBox_RawWindowHandle *winit_windowed_context_raw_window_handle(Window *window);

void winit_window_request_redraw(Window *window);

double winit_window_get_scale_factor(Window *window);

void winit_window_get_inner_size(Window *window_ptr, ValueBox_SizeBox_u32 *size_ptr);

void winit_window_set_inner_size(Window *window, uint32_t width, uint32_t height);

void winit_window_get_position(Window *window_ptr, ValueBox_PointBox_i32 *position_ptr);

void winit_window_set_position(Window *window, int32_t x, int32_t y);

void winit_window_get_id(Window *window_ptr, U128Box *id_ptr);

void winit_window_set_title(Window *window_ptr, StringBox *title_ptr);

void winit_window_set_cursor_icon(Window *window_ptr, WinitCursorIcon cursor_icon);

void winit_window_set_maximized(Window *window_ptr, bool maximized);

void *winit_window_get_hwnd(Window *window_ptr);

void winit_window_builder_with_full_size(WindowBuilder *_ptr_window_builder, bool _with_full_size);

void winit_window_builder_with_full_size(WindowBuilder *window_builder_ptr, bool with_full_size);

void winit_window_drop(Window *ptr);

WindowBuilder *winit_window_builder_new(void);

void winit_window_builder_drop(WindowBuilder *window_builder);

void winit_window_builder_with_title(WindowBuilder *window_builder_ptr,
                                     StringBox *_ptr_boxer_string);

void winit_window_builder_with_decorations(WindowBuilder *_ptr_window_builder,
                                           bool with_decorations);

void winit_window_builder_with_transparency(WindowBuilder *_ptr_window_builder,
                                            bool with_transparency);

void winit_window_builder_with_resizable(WindowBuilder *_ptr_window_builder, bool with_resizable);

void winit_window_builder_with_dimensions(WindowBuilder *_ptr_window_builder,
                                          double width,
                                          double height);

void winit_window_builder_with_maximized(WindowBuilder *_ptr_window_builder, bool with_maximized);

void winit_window_builder_with_visibility(WindowBuilder *_ptr_window_builder, bool with_visibility);

void winit_window_builder_with_always_on_top(WindowBuilder *_ptr_window_builder,
                                             bool with_always_on_top);

bool winit_waker_wake(const void *waker, WinitUserEvent event);

ValueBox_WinitEventLoopWaker *winit_event_loop_waker_create(ValueBox_PollingEventLoop *event_loop);

bool (*winit_event_loop_waker_function(void))(const void*, WinitUserEvent);

void winit_event_loop_waker_drop(ValueBox_WinitEventLoopWaker *event_loop_waker);

ValueBox_PollingEventLoop *winit_polling_event_loop_new(void);

bool winit_polling_event_loop_wake(ValueBox_PollingEventLoop *events_loop, WinitUserEvent event);

ValueBox_WindowRef *winit_polling_event_loop_create_window(ValueBox_PollingEventLoop *event_loop,
                                                           WindowBuilder *window_builder);

ValueBox_PollingEventLoop *winit_polling_event_loop_new_with_semaphore_and_main_events_signaller(void (*semaphore_callback)(size_t, const void*),
                                                                                                 size_t semaphore_index,
                                                                                                 const void *semaphore_thunk,
                                                                                                 void (*main_events_callback)(const void*),
                                                                                                 const void *main_events_thunk);

void winit_polling_event_loop_add_resize_listener(ValueBox_PollingEventLoop *event_loop,
                                                  ValueBox_WindowId *window_id,
                                                  void (*callback)(const void*, uint32_t, uint32_t),
                                                  const void *thunk);

size_t winit_polling_event_loop_count_resize_listeners(ValueBox_PollingEventLoop *event_loop);

void winit_polling_event_loop_add_redraw_listener(ValueBox_PollingEventLoop *event_loop,
                                                  ValueBox_WindowId *window_id,
                                                  void (*callback)(const void*),
                                                  const void *thunk);

size_t winit_polling_event_loop_count_redraw_listeners(ValueBox_PollingEventLoop *event_loop);

ValueBox_WinitEvent *winit_polling_event_loop_poll(ValueBox_PollingEventLoop *_ptr);

void winit_polling_event_loop_run(ValueBox_PollingEventLoop *_ptr_event_loop);

/**
 * Must be called from the inside of the `run` method of the [`PollingEventLoop`].
 */
WinitEventLoopType winit_polling_event_loop_get_type(ValueBox_PollingEventLoop *event_loop);

void winit_polling_event_loop_drop(ValueBox_PollingEventLoop *event_loop);

/**
 * Return the raw window handle that can be used to create a native rendering context.
 * Must only be called from the main thread
 */
ValueBox_RawWindowHandle *winit_window_ref_raw_window_handle(ValueBox_PollingEventLoop *event_loop,
                                                             ValueBox_WindowRef *window_ref);

/**
 * Request the window to redraw. Can be called from any thread.
 */
void winit_window_ref_request_redraw(ValueBox_PollingEventLoop *event_loop,
                                     ValueBox_WindowRef *window_ref);

/**
 * Get the scaled factor of the window. Can be called from the any thread.
 */
double winit_window_ref_get_scale_factor(ValueBox_WindowRef *window_ref);

/**
 * Get the inner size of the window. Can be called from the any thread.
 */
void winit_window_ref_get_inner_size(ValueBox_WindowRef *window_ref,
                                     ValueBox_SizeBox_u32 *inner_size);

/**
 * Set the inner size of the window.
 * Must be called from the main thread
 */
void winit_window_ref_set_inner_size(ValueBox_PollingEventLoop *event_loop,
                                     ValueBox_WindowRef *window_ref,
                                     uint32_t width,
                                     uint32_t height);

/**
 * Get the outer position of the window. Can be called from the any thread.
 */
void winit_window_ref_get_position(ValueBox_WindowRef *window_ref, ValueBox_PointBox_i32 *position);

/**
 * Set the outer position of the window.
 * Must be called from the main thread
 */
void winit_window_ref_set_position(ValueBox_PollingEventLoop *event_loop,
                                   ValueBox_WindowRef *window_ref,
                                   int32_t x,
                                   int32_t y);

void winit_window_ref_get_id(ValueBox_WindowRef *window_ref, U128Box *id);

ValueBox_WindowId *winit_window_ref_get_raw_id(ValueBox_WindowRef *window_ref);

void winit_window_ref_set_title(ValueBox_PollingEventLoop *event_loop,
                                ValueBox_WindowRef *window_ref,
                                StringBox *title);

void winit_window_ref_set_cursor_icon(ValueBox_PollingEventLoop *event_loop,
                                      ValueBox_WindowRef *window_ref,
                                      WinitCursorIcon cursor_icon);

void winit_window_ref_set_maximized(ValueBox_PollingEventLoop *event_loop,
                                    ValueBox_WindowRef *window_ref,
                                    bool maximized);

void *winit_window_ref_get_hwnd(ValueBox_PollingEventLoop *event_loop,
                                ValueBox_WindowRef *window_ref);

void winit_window_ref_destroy(ValueBox_PollingEventLoop *event_loop,
                              ValueBox_WindowRef *window_ref);

#endif /* winit_h */
