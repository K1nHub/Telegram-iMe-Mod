.class public final Lcom/otaliastudios/opengl/core/EglCore;
.super Ljava/lang/Object;
.source "EglCore.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/opengl/core/EglCore$Companion;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private eglConfig:Landroid/opengl/EGLConfig;

.field private eglContext:Landroid/opengl/EGLContext;

.field private eglDisplay:Landroid/opengl/EGLDisplay;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/otaliastudios/opengl/core/EglCore$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/otaliastudios/opengl/core/EglCore$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 213
    const-class v0, Lcom/otaliastudios/opengl/core/EglCore;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/otaliastudios/opengl/core/EglCore;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, v0, v1, v2, v0}, Lcom/otaliastudios/opengl/core/EglCore;-><init>(Landroid/opengl/EGLContext;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/opengl/EGLContext;I)V
    .locals 7

    const-string v0, "sharedContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/otaliastudios/opengl/core/EglCore;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 21
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/otaliastudios/opengl/core/EglCore;->eglContext:Landroid/opengl/EGLContext;

    const/4 v0, 0x0

    .line 26
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    iput-object v1, p0, Lcom/otaliastudios/opengl/core/EglCore;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 27
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v1, v2, :cond_9

    const/4 v2, 0x2

    new-array v3, v2, [I

    const/4 v4, 0x1

    .line 32
    invoke-static {v1, v3, v0, v3, v4}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v1

    if-eqz v1, :cond_8

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/2addr p2, v2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    const/4 v3, 0x3

    if-eqz p2, :cond_3

    .line 41
    iget-object p2, p0, Lcom/otaliastudios/opengl/core/EglCore;->eglDisplay:Landroid/opengl/EGLDisplay;

    if-nez p2, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-static {p2, v3, v1}, Lcom/otaliastudios/opengl/core/EglConfigChooser;->getConfig(Landroid/opengl/EGLDisplay;IZ)Landroid/opengl/EGLConfig;

    move-result-object p2

    if-eqz p2, :cond_3

    new-array v5, v3, [I

    .line 43
    fill-array-data v5, :array_0

    .line 44
    iget-object v6, p0, Lcom/otaliastudios/opengl/core/EglCore;->eglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v6, p2, p1, v5, v0}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v5

    :try_start_0
    const-string v6, "eglCreateContext (3)"

    .line 46
    invoke-static {v6}, Lcom/otaliastudios/opengl/core/Egloo;->checkEglError(Ljava/lang/String;)V

    .line 47
    iput-object p2, p0, Lcom/otaliastudios/opengl/core/EglCore;->eglConfig:Landroid/opengl/EGLConfig;

    .line 48
    iput-object v5, p0, Lcom/otaliastudios/opengl/core/EglCore;->eglContext:Landroid/opengl/EGLContext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    .line 57
    :cond_3
    :goto_2
    iget-object p2, p0, Lcom/otaliastudios/opengl/core/EglCore;->eglContext:Landroid/opengl/EGLContext;

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-ne p2, v5, :cond_4

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_7

    .line 59
    iget-object p2, p0, Lcom/otaliastudios/opengl/core/EglCore;->eglDisplay:Landroid/opengl/EGLDisplay;

    if-nez p2, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    invoke-static {p2, v2, v1}, Lcom/otaliastudios/opengl/core/EglConfigChooser;->getConfig(Landroid/opengl/EGLDisplay;IZ)Landroid/opengl/EGLConfig;

    move-result-object p2

    if-eqz p2, :cond_6

    new-array v1, v3, [I

    .line 61
    fill-array-data v1, :array_1

    .line 62
    iget-object v2, p0, Lcom/otaliastudios/opengl/core/EglCore;->eglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v2, p2, p1, v1, v0}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object p1

    const-string v0, "eglCreateContext (2)"

    .line 63
    invoke-static {v0}, Lcom/otaliastudios/opengl/core/Egloo;->checkEglError(Ljava/lang/String;)V

    .line 64
    iput-object p2, p0, Lcom/otaliastudios/opengl/core/EglCore;->eglConfig:Landroid/opengl/EGLConfig;

    .line 65
    iput-object p1, p0, Lcom/otaliastudios/opengl/core/EglCore;->eglContext:Landroid/opengl/EGLContext;

    goto :goto_4

    .line 68
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unable to find a suitable EGLConfig"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_4
    return-void

    :cond_8
    const/4 p1, 0x0

    .line 33
    iput-object p1, p0, Lcom/otaliastudios/opengl/core/EglCore;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 34
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unable to initialize EGL14"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_9
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unable to get EGL14 display"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :array_0
    .array-data 4
        0x3098
        0x3
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method public synthetic constructor <init>(Landroid/opengl/EGLContext;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 18
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    const-string p4, "EGL14.EGL_NO_CONTEXT"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/otaliastudios/opengl/core/EglCore;-><init>(Landroid/opengl/EGLContext;I)V

    return-void
.end method


# virtual methods
.method public final createWindowSurface$egloo_release(Ljava/lang/Object;)Landroid/opengl/EGLSurface;
    .locals 4

    const-string v0, "surface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    instance-of v0, p1, Landroid/view/Surface;

    if-nez v0, :cond_1

    instance-of v0, p1, Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid surface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0x3038

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 126
    iget-object v1, p0, Lcom/otaliastudios/opengl/core/EglCore;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/otaliastudios/opengl/core/EglCore;->eglConfig:Landroid/opengl/EGLConfig;

    invoke-static {v1, v3, p1, v0, v2}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object p1

    const-string v0, "eglCreateWindowSurface"

    .line 127
    invoke-static {v0}, Lcom/otaliastudios/opengl/core/Egloo;->checkEglError(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    return-object p1

    .line 128
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "surface was null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final finalize()V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/otaliastudios/opengl/core/EglCore;->eglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_0

    .line 103
    sget-object v0, Lcom/otaliastudios/opengl/core/EglCore;->TAG:Ljava/lang/String;

    const-string v1, "WARNING: EglCore was not explicitly released - state may be leaked"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {p0}, Lcom/otaliastudios/opengl/core/EglCore;->release()V

    :cond_0
    return-void
.end method

.method public final makeSurfaceCurrent$egloo_release(Landroid/opengl/EGLSurface;)V
    .locals 2

    const-string v0, "eglSurface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/otaliastudios/opengl/core/EglCore;->eglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/otaliastudios/opengl/core/EglCore;->TAG:Ljava/lang/String;

    const-string v1, "NOTE: makeSurfaceCurrent w/o display"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/otaliastudios/opengl/core/EglCore;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/otaliastudios/opengl/core/EglCore;->eglContext:Landroid/opengl/EGLContext;

    invoke-static {v0, p1, p1, v1}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 149
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "eglMakeCurrent failed"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final release()V
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/otaliastudios/opengl/core/EglCore;->eglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_0

    .line 84
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 85
    iget-object v0, p0, Lcom/otaliastudios/opengl/core/EglCore;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/otaliastudios/opengl/core/EglCore;->eglContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 86
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 87
    iget-object v0, p0, Lcom/otaliastudios/opengl/core/EglCore;->eglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 90
    :cond_0
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/otaliastudios/opengl/core/EglCore;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 91
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/otaliastudios/opengl/core/EglCore;->eglContext:Landroid/opengl/EGLContext;

    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcom/otaliastudios/opengl/core/EglCore;->eglConfig:Landroid/opengl/EGLConfig;

    return-void
.end method

.method public final releaseSurface$egloo_release(Landroid/opengl/EGLSurface;)V
    .locals 1

    const-string v0, "eglSurface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/otaliastudios/opengl/core/EglCore;->eglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0, p1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    return-void
.end method

.method public final setSurfacePresentationTime$egloo_release(Landroid/opengl/EGLSurface;J)V
    .locals 1

    const-string v0, "eglSurface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/otaliastudios/opengl/core/EglCore;->eglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0, p1, p2, p3}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    return-void
.end method

.method public final swapSurfaceBuffers$egloo_release(Landroid/opengl/EGLSurface;)Z
    .locals 1

    const-string v0, "eglSurface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/otaliastudios/opengl/core/EglCore;->eglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0, p1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result p1

    return p1
.end method
