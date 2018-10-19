project(silvie)

add_executable(silvie
    asset.c
    chr.c
    dernc.c
    eng.c
    error.c
    gif.c
    pak.c
    raw.c
    silvie.c
    spr.c
    stream.c
    utils.c
)

target_link_libraries(silvie
    3ds
    gif
    GL
    GLU
)