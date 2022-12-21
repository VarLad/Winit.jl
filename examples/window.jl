using Winit

mutable struct UserData
    window::Ptr{Winit.Window}
end

function process_event(data::Ptr{Cvoid}, event::Ptr{Winit.WinitEvent})::Winit.WinitControlFlow
    println(unsafe_load(event).event_type)

    if (unsafe_load(event).event_type == Winit.WinitEventType_WindowEventCloseRequested)
        return Winit.WinitControlFlow_Exit
    elseif (unsafe_load(event) == Winit.WinitEventType_MainEventsCleared)
        return Winit.winit_window_request_redraw(unsafe_pointer_to_objref(data).window)
    end

    return Winit.WinitControlFlow_Wait
end

function with_title(window_builder::Ptr{Winit.WindowBuilder}, title::String) 
    title_string = Winit.boxer_string_from_byte_string(title, length(title))
    Winit.winit_window_builder_with_title(window_builder, title_string)
    Winit.boxer_string_drop(title_string)
end

function main()
    event_loop::Ptr{Winit.EventLoop} = Winit.winit_event_loop_new();
    window_builder::Ptr{Winit.WindowBuilder} = Winit.winit_window_builder_new();
    with_title(window_builder, "Hello World")
    Winit.winit_window_builder_with_dimensions(window_builder, 600.0, 400.0)
    window::Ptr{Winit.Window} = Winit.winit_create_window(event_loop, window_builder);
    Winit.winit_window_builder_drop(window_builder)
    global udata = UserData(window)
    event_loop_callbacker = @cfunction(process_event, Winit.WinitControlFlow, (Ptr{Cvoid}, Ptr{Winit.WinitEvent},));
    Winit.winit_event_loop_run_return_data(event_loop, pointer_from_objref(udata), event_loop_callbacker)
    udata = Nothing
end

main()
