set_project("imgui-node-editor")
set_version("0.9.3-aether")
set_languages("cxx14")

add_rules("mode.debug", "mode.release")

add_requires("imgui")

target("imgui-node-editor")
    set_kind("$(kind)")
    set_languages("cxx14")

    add_files(
        "crude_json.cpp",
        "imgui_canvas.cpp",
        "imgui_node_editor_api.cpp",
        "imgui_node_editor.cpp"
    )

    add_headerfiles(
        "crude_json.h",
        "imgui_canvas.h",
        "imgui_bezier_math.h",
        "imgui_bezier_math.inl",
        "imgui_extra_math.h",
        "imgui_extra_math.inl",
        "imgui_node_editor.h",
        "imgui_node_editor_internal.h",
        "imgui_node_editor_internal.inl"
    )

    add_packages("imgui")

    if is_plat("windows") and is_kind("shared") then
        add_rules("utils.symbols.export_all", {export_classes = true})
    end
