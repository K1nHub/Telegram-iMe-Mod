.class public final Lcom/otaliastudios/opengl/internal/EglKt;
.super Ljava/lang/Object;
.source "egl.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\negl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 egl.kt\ncom/otaliastudios/opengl/internal/EglKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,68:1\n1849#2:69\n1850#2:71\n1#3:70\n*S KotlinDebug\n*F\n+ 1 egl.kt\ncom/otaliastudios/opengl/internal/EglKt\n*L\n39#1:69\n39#1:71\n*E\n"
.end annotation


# static fields
.field private static final EGL_ALPHA_SIZE:I

.field private static final EGL_BLUE_SIZE:I

.field private static final EGL_CONTEXT_CLIENT_VERSION:I

.field private static final EGL_GREEN_SIZE:I

.field private static final EGL_NONE:I

.field private static final EGL_NO_CONTEXT:Lcom/otaliastudios/opengl/internal/EglContext;

.field private static final EGL_NO_DISPLAY:Lcom/otaliastudios/opengl/internal/EglDisplay;

.field private static final EGL_NO_SURFACE:Lcom/otaliastudios/opengl/internal/EglSurface;

.field private static final EGL_OPENGL_ES2_BIT:I

.field private static final EGL_OPENGL_ES3_BIT_KHR:I

.field private static final EGL_PBUFFER_BIT:I

.field private static final EGL_RED_SIZE:I

.field private static final EGL_RENDERABLE_TYPE:I

.field private static final EGL_SUCCESS:I

.field private static final EGL_SURFACE_TYPE:I

.field private static final EGL_WINDOW_BIT:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Lcom/otaliastudios/opengl/internal/EglContext;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-direct {v0, v1}, Lcom/otaliastudios/opengl/internal/EglContext;-><init>(Landroid/opengl/EGLContext;)V

    sput-object v0, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_NO_CONTEXT:Lcom/otaliastudios/opengl/internal/EglContext;

    .line 16
    new-instance v0, Lcom/otaliastudios/opengl/internal/EglDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    invoke-direct {v0, v1}, Lcom/otaliastudios/opengl/internal/EglDisplay;-><init>(Landroid/opengl/EGLDisplay;)V

    sput-object v0, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_NO_DISPLAY:Lcom/otaliastudios/opengl/internal/EglDisplay;

    .line 17
    new-instance v0, Lcom/otaliastudios/opengl/internal/EglSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    invoke-direct {v0, v1}, Lcom/otaliastudios/opengl/internal/EglSurface;-><init>(Landroid/opengl/EGLSurface;)V

    sput-object v0, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_NO_SURFACE:Lcom/otaliastudios/opengl/internal/EglSurface;

    const/16 v0, 0x3000

    .line 18
    sput v0, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_SUCCESS:I

    const/16 v0, 0x3038

    .line 19
    sput v0, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_NONE:I

    const/16 v0, 0x3098

    .line 24
    sput v0, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_CONTEXT_CLIENT_VERSION:I

    const/4 v0, 0x4

    .line 25
    sput v0, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_OPENGL_ES2_BIT:I

    const/16 v1, 0x40

    .line 26
    sput v1, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_OPENGL_ES3_BIT_KHR:I

    const/16 v1, 0x3024

    .line 27
    sput v1, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_RED_SIZE:I

    const/16 v1, 0x3023

    .line 28
    sput v1, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_GREEN_SIZE:I

    const/16 v1, 0x3022

    .line 29
    sput v1, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_BLUE_SIZE:I

    const/16 v1, 0x3021

    .line 30
    sput v1, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_ALPHA_SIZE:I

    const/16 v1, 0x3033

    .line 31
    sput v1, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_SURFACE_TYPE:I

    .line 32
    sput v0, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_WINDOW_BIT:I

    const/4 v0, 0x1

    .line 33
    sput v0, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_PBUFFER_BIT:I

    const/16 v0, 0x3040

    .line 34
    sput v0, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_RENDERABLE_TYPE:I

    return-void
.end method

.method public static final getEGL_ALPHA_SIZE()I
    .locals 1

    .line 30
    sget v0, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_ALPHA_SIZE:I

    return v0
.end method

.method public static final getEGL_BLUE_SIZE()I
    .locals 1

    .line 29
    sget v0, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_BLUE_SIZE:I

    return v0
.end method

.method public static final getEGL_CONTEXT_CLIENT_VERSION()I
    .locals 1

    .line 24
    sget v0, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_CONTEXT_CLIENT_VERSION:I

    return v0
.end method

.method public static final getEGL_GREEN_SIZE()I
    .locals 1

    .line 28
    sget v0, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_GREEN_SIZE:I

    return v0
.end method

.method public static final getEGL_NONE()I
    .locals 1

    .line 19
    sget v0, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_NONE:I

    return v0
.end method

.method public static final getEGL_NO_CONTEXT()Lcom/otaliastudios/opengl/internal/EglContext;
    .locals 1

    .line 15
    sget-object v0, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_NO_CONTEXT:Lcom/otaliastudios/opengl/internal/EglContext;

    return-object v0
.end method

.method public static final getEGL_NO_DISPLAY()Lcom/otaliastudios/opengl/internal/EglDisplay;
    .locals 1

    .line 16
    sget-object v0, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_NO_DISPLAY:Lcom/otaliastudios/opengl/internal/EglDisplay;

    return-object v0
.end method

.method public static final getEGL_NO_SURFACE()Lcom/otaliastudios/opengl/internal/EglSurface;
    .locals 1

    .line 17
    sget-object v0, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_NO_SURFACE:Lcom/otaliastudios/opengl/internal/EglSurface;

    return-object v0
.end method

.method public static final getEGL_OPENGL_ES2_BIT()I
    .locals 1

    .line 25
    sget v0, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_OPENGL_ES2_BIT:I

    return v0
.end method

.method public static final getEGL_OPENGL_ES3_BIT_KHR()I
    .locals 1

    .line 26
    sget v0, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_OPENGL_ES3_BIT_KHR:I

    return v0
.end method

.method public static final getEGL_PBUFFER_BIT()I
    .locals 1

    .line 33
    sget v0, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_PBUFFER_BIT:I

    return v0
.end method

.method public static final getEGL_RED_SIZE()I
    .locals 1

    .line 27
    sget v0, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_RED_SIZE:I

    return v0
.end method

.method public static final getEGL_RENDERABLE_TYPE()I
    .locals 1

    .line 34
    sget v0, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_RENDERABLE_TYPE:I

    return v0
.end method

.method public static final getEGL_SUCCESS()I
    .locals 1

    .line 18
    sget v0, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_SUCCESS:I

    return v0
.end method

.method public static final getEGL_SURFACE_TYPE()I
    .locals 1

    .line 31
    sget v0, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_SURFACE_TYPE:I

    return v0
.end method

.method public static final getEGL_WINDOW_BIT()I
    .locals 1

    .line 32
    sget v0, Lcom/otaliastudios/opengl/internal/EglKt;->EGL_WINDOW_BIT:I

    return v0
.end method
