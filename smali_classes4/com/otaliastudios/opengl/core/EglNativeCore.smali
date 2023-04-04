.class public Lcom/otaliastudios/opengl/core/EglNativeCore;
.super Ljava/lang/Object;
.source "EglNativeCore.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/opengl/core/EglNativeCore$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEglNativeCore.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EglNativeCore.kt\ncom/otaliastudios/opengl/core/EglNativeCore\n+ 2 egl.kt\ncom/otaliastudios/opengl/internal/EglKt\n+ 3 misc.kt\ncom/otaliastudios/opengl/internal/MiscKt\n*L\n1#1,214:1\n46#2:215\n43#2:216\n45#2:217\n45#2:218\n57#2:219\n63#2:220\n66#2:221\n67#2:222\n57#2:223\n65#2:224\n53#2:225\n55#2:226\n57#2:228\n57#2:230\n59#2:231\n61#2:232\n47#2:233\n49#2:234\n51#2:235\n10#3:227\n10#3:229\n*S KotlinDebug\n*F\n+ 1 EglNativeCore.kt\ncom/otaliastudios/opengl/core/EglNativeCore\n*L\n42#1:215\n47#1:216\n59#1:217\n77#1:218\n97#1:219\n98#1:220\n99#1:221\n100#1:222\n111#1:223\n121#1:224\n131#1:225\n142#1:226\n153#1:228\n163#1:230\n173#1:231\n180#1:232\n187#1:233\n188#1:234\n196#1:235\n152#1:227\n162#1:229\n*E\n"
.end annotation


# instance fields
.field private eglConfig:Lcom/otaliastudios/opengl/internal/EglConfig;

.field private eglContext:Lcom/otaliastudios/opengl/internal/EglContext;

.field private eglDisplay:Lcom/otaliastudios/opengl/internal/EglDisplay;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/otaliastudios/opengl/core/EglNativeCore$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/otaliastudios/opengl/core/EglNativeCore$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/otaliastudios/opengl/internal/EglContext;I)V
    .locals 11

    const-string v0, "sharedContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Lcom/otaliastudios/opengl/internal/EglKt;->getEGL_NO_DISPLAY()Lcom/otaliastudios/opengl/internal/EglDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/otaliastudios/opengl/core/EglNativeCore;->eglDisplay:Lcom/otaliastudios/opengl/internal/EglDisplay;

    .line 37
    invoke-static {}, Lcom/otaliastudios/opengl/internal/EglKt;->getEGL_NO_CONTEXT()Lcom/otaliastudios/opengl/internal/EglContext;

    move-result-object v0

    iput-object v0, p0, Lcom/otaliastudios/opengl/core/EglNativeCore;->eglContext:Lcom/otaliastudios/opengl/internal/EglContext;

    .line 46
    new-instance v0, Lcom/otaliastudios/opengl/internal/EglDisplay;

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/otaliastudios/opengl/internal/EglDisplay;-><init>(Landroid/opengl/EGLDisplay;)V

    .line 42
    iput-object v0, p0, Lcom/otaliastudios/opengl/core/EglNativeCore;->eglDisplay:Lcom/otaliastudios/opengl/internal/EglDisplay;

    .line 43
    invoke-static {}, Lcom/otaliastudios/opengl/internal/EglKt;->getEGL_NO_DISPLAY()Lcom/otaliastudios/opengl/internal/EglDisplay;

    move-result-object v2

    if-eq v0, v2, :cond_7

    .line 47
    iget-object v0, p0, Lcom/otaliastudios/opengl/core/EglNativeCore;->eglDisplay:Lcom/otaliastudios/opengl/internal/EglDisplay;

    const/4 v2, 0x1

    new-array v3, v2, [I

    new-array v4, v2, [I

    .line 43
    invoke-virtual {v0}, Lcom/otaliastudios/opengl/internal/EglDisplay;->getNative()Landroid/opengl/EGLDisplay;

    move-result-object v0

    invoke-static {v0, v3, v1, v4, v1}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 52
    new-instance v0, Lcom/otaliastudios/opengl/core/EglNativeConfigChooser;

    invoke-direct {v0}, Lcom/otaliastudios/opengl/core/EglNativeConfigChooser;-><init>()V

    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    const/4 v4, 0x2

    and-int/2addr p2, v4

    if-eqz p2, :cond_1

    move p2, v2

    goto :goto_1

    :cond_1
    move p2, v1

    :goto_1
    const/4 v5, 0x3

    if-eqz p2, :cond_2

    .line 56
    iget-object p2, p0, Lcom/otaliastudios/opengl/core/EglNativeCore;->eglDisplay:Lcom/otaliastudios/opengl/internal/EglDisplay;

    invoke-virtual {v0, p2, v5, v3}, Lcom/otaliastudios/opengl/core/EglNativeConfigChooser;->getConfig$library_release(Lcom/otaliastudios/opengl/internal/EglDisplay;IZ)Lcom/otaliastudios/opengl/internal/EglConfig;

    move-result-object p2

    if-eqz p2, :cond_2

    new-array v6, v5, [I

    .line 58
    invoke-static {}, Lcom/otaliastudios/opengl/internal/EglKt;->getEGL_CONTEXT_CLIENT_VERSION()I

    move-result v7

    aput v7, v6, v1

    aput v5, v6, v2

    invoke-static {}, Lcom/otaliastudios/opengl/internal/EglKt;->getEGL_NONE()I

    move-result v7

    aput v7, v6, v4

    .line 59
    iget-object v7, p0, Lcom/otaliastudios/opengl/core/EglNativeCore;->eglDisplay:Lcom/otaliastudios/opengl/internal/EglDisplay;

    .line 45
    new-instance v8, Lcom/otaliastudios/opengl/internal/EglContext;

    invoke-virtual {v7}, Lcom/otaliastudios/opengl/internal/EglDisplay;->getNative()Landroid/opengl/EGLDisplay;

    move-result-object v7

    invoke-virtual {p2}, Lcom/otaliastudios/opengl/internal/EglConfig;->getNative()Landroid/opengl/EGLConfig;

    move-result-object v9

    invoke-virtual {p1}, Lcom/otaliastudios/opengl/internal/EglContext;->getNative()Landroid/opengl/EGLContext;

    move-result-object v10

    invoke-static {v7, v9, v10, v6, v1}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v6

    invoke-direct {v8, v6}, Lcom/otaliastudios/opengl/internal/EglContext;-><init>(Landroid/opengl/EGLContext;)V

    :try_start_0
    const-string v6, "eglCreateContext (3)"

    .line 61
    invoke-static {v6}, Lcom/otaliastudios/opengl/core/Egloo;->checkEglError(Ljava/lang/String;)V

    .line 62
    iput-object p2, p0, Lcom/otaliastudios/opengl/core/EglNativeCore;->eglConfig:Lcom/otaliastudios/opengl/internal/EglConfig;

    .line 63
    iput-object v8, p0, Lcom/otaliastudios/opengl/core/EglNativeCore;->eglContext:Lcom/otaliastudios/opengl/internal/EglContext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :catch_0
    :cond_2
    iget-object p2, p0, Lcom/otaliastudios/opengl/core/EglNativeCore;->eglContext:Lcom/otaliastudios/opengl/internal/EglContext;

    invoke-static {}, Lcom/otaliastudios/opengl/internal/EglKt;->getEGL_NO_CONTEXT()Lcom/otaliastudios/opengl/internal/EglContext;

    move-result-object v6

    if-ne p2, v6, :cond_3

    move p2, v2

    goto :goto_2

    :cond_3
    move p2, v1

    :goto_2
    if-eqz p2, :cond_5

    .line 74
    iget-object p2, p0, Lcom/otaliastudios/opengl/core/EglNativeCore;->eglDisplay:Lcom/otaliastudios/opengl/internal/EglDisplay;

    invoke-virtual {v0, p2, v4, v3}, Lcom/otaliastudios/opengl/core/EglNativeConfigChooser;->getConfig$library_release(Lcom/otaliastudios/opengl/internal/EglDisplay;IZ)Lcom/otaliastudios/opengl/internal/EglConfig;

    move-result-object p2

    if-eqz p2, :cond_4

    new-array v0, v5, [I

    .line 76
    invoke-static {}, Lcom/otaliastudios/opengl/internal/EglKt;->getEGL_CONTEXT_CLIENT_VERSION()I

    move-result v3

    aput v3, v0, v1

    aput v4, v0, v2

    invoke-static {}, Lcom/otaliastudios/opengl/internal/EglKt;->getEGL_NONE()I

    move-result v2

    aput v2, v0, v4

    .line 77
    iget-object v2, p0, Lcom/otaliastudios/opengl/core/EglNativeCore;->eglDisplay:Lcom/otaliastudios/opengl/internal/EglDisplay;

    .line 45
    new-instance v3, Lcom/otaliastudios/opengl/internal/EglContext;

    invoke-virtual {v2}, Lcom/otaliastudios/opengl/internal/EglDisplay;->getNative()Landroid/opengl/EGLDisplay;

    move-result-object v2

    invoke-virtual {p2}, Lcom/otaliastudios/opengl/internal/EglConfig;->getNative()Landroid/opengl/EGLConfig;

    move-result-object v4

    invoke-virtual {p1}, Lcom/otaliastudios/opengl/internal/EglContext;->getNative()Landroid/opengl/EGLContext;

    move-result-object p1

    invoke-static {v2, v4, p1, v0, v1}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object p1

    invoke-direct {v3, p1}, Lcom/otaliastudios/opengl/internal/EglContext;-><init>(Landroid/opengl/EGLContext;)V

    const-string p1, "eglCreateContext (2)"

    .line 78
    invoke-static {p1}, Lcom/otaliastudios/opengl/core/Egloo;->checkEglError(Ljava/lang/String;)V

    .line 79
    iput-object p2, p0, Lcom/otaliastudios/opengl/core/EglNativeCore;->eglConfig:Lcom/otaliastudios/opengl/internal/EglConfig;

    .line 80
    iput-object v3, p0, Lcom/otaliastudios/opengl/core/EglNativeCore;->eglContext:Lcom/otaliastudios/opengl/internal/EglContext;

    goto :goto_3

    .line 83
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unable to find a suitable EGLConfig"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_3
    return-void

    .line 48
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo p2, "unable to initialize EGL14"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    const-string/jumbo p2, "unable to get EGL14 display"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final createWindowSurface$library_release(Ljava/lang/Object;)Lcom/otaliastudios/opengl/internal/EglSurface;
    .locals 5

    const-string v0, "surface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 130
    invoke-static {}, Lcom/otaliastudios/opengl/internal/EglKt;->getEGL_NONE()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 131
    iget-object v1, p0, Lcom/otaliastudios/opengl/core/EglNativeCore;->eglDisplay:Lcom/otaliastudios/opengl/internal/EglDisplay;

    iget-object v3, p0, Lcom/otaliastudios/opengl/core/EglNativeCore;->eglConfig:Lcom/otaliastudios/opengl/internal/EglConfig;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 53
    new-instance v4, Lcom/otaliastudios/opengl/internal/EglSurface;

    invoke-virtual {v1}, Lcom/otaliastudios/opengl/internal/EglDisplay;->getNative()Landroid/opengl/EGLDisplay;

    move-result-object v1

    invoke-virtual {v3}, Lcom/otaliastudios/opengl/internal/EglConfig;->getNative()Landroid/opengl/EGLConfig;

    move-result-object v3

    invoke-static {v1, v3, p1, v0, v2}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object p1

    invoke-direct {v4, p1}, Lcom/otaliastudios/opengl/internal/EglSurface;-><init>(Landroid/opengl/EGLSurface;)V

    const-string p1, "eglCreateWindowSurface"

    .line 132
    invoke-static {p1}, Lcom/otaliastudios/opengl/core/Egloo;->checkEglError(Ljava/lang/String;)V

    .line 133
    invoke-static {}, Lcom/otaliastudios/opengl/internal/EglKt;->getEGL_NO_SURFACE()Lcom/otaliastudios/opengl/internal/EglSurface;

    move-result-object p1

    if-eq v4, p1, :cond_0

    return-object v4

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "surface was null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final makeSurfaceCurrent$library_release(Lcom/otaliastudios/opengl/internal/EglSurface;)V
    .locals 3

    const-string v0, "eglSurface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/otaliastudios/opengl/core/EglNativeCore;->eglDisplay:Lcom/otaliastudios/opengl/internal/EglDisplay;

    invoke-static {}, Lcom/otaliastudios/opengl/internal/EglKt;->getEGL_NO_DISPLAY()Lcom/otaliastudios/opengl/internal/EglDisplay;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const-string v0, "EglCore"

    const-string v1, "NOTE: makeSurfaceCurrent w/o display"

    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/otaliastudios/opengl/core/EglNativeCore;->eglDisplay:Lcom/otaliastudios/opengl/internal/EglDisplay;

    iget-object v1, p0, Lcom/otaliastudios/opengl/core/EglNativeCore;->eglContext:Lcom/otaliastudios/opengl/internal/EglContext;

    .line 57
    invoke-virtual {v0}, Lcom/otaliastudios/opengl/internal/EglDisplay;->getNative()Landroid/opengl/EGLDisplay;

    move-result-object v0

    invoke-virtual {p1}, Lcom/otaliastudios/opengl/internal/EglSurface;->getNative()Landroid/opengl/EGLSurface;

    move-result-object v2

    invoke-virtual {p1}, Lcom/otaliastudios/opengl/internal/EglSurface;->getNative()Landroid/opengl/EGLSurface;

    move-result-object p1

    invoke-virtual {v1}, Lcom/otaliastudios/opengl/internal/EglContext;->getNative()Landroid/opengl/EGLContext;

    move-result-object v1

    invoke-static {v0, v2, p1, v1}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 154
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "eglMakeCurrent failed"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public release$library_release()V
    .locals 4

    .line 94
    iget-object v0, p0, Lcom/otaliastudios/opengl/core/EglNativeCore;->eglDisplay:Lcom/otaliastudios/opengl/internal/EglDisplay;

    invoke-static {}, Lcom/otaliastudios/opengl/internal/EglKt;->getEGL_NO_DISPLAY()Lcom/otaliastudios/opengl/internal/EglDisplay;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 97
    iget-object v0, p0, Lcom/otaliastudios/opengl/core/EglNativeCore;->eglDisplay:Lcom/otaliastudios/opengl/internal/EglDisplay;

    invoke-static {}, Lcom/otaliastudios/opengl/internal/EglKt;->getEGL_NO_SURFACE()Lcom/otaliastudios/opengl/internal/EglSurface;

    move-result-object v1

    invoke-static {}, Lcom/otaliastudios/opengl/internal/EglKt;->getEGL_NO_SURFACE()Lcom/otaliastudios/opengl/internal/EglSurface;

    move-result-object v2

    invoke-static {}, Lcom/otaliastudios/opengl/internal/EglKt;->getEGL_NO_CONTEXT()Lcom/otaliastudios/opengl/internal/EglContext;

    move-result-object v3

    .line 57
    invoke-virtual {v0}, Lcom/otaliastudios/opengl/internal/EglDisplay;->getNative()Landroid/opengl/EGLDisplay;

    move-result-object v0

    invoke-virtual {v1}, Lcom/otaliastudios/opengl/internal/EglSurface;->getNative()Landroid/opengl/EGLSurface;

    move-result-object v1

    invoke-virtual {v2}, Lcom/otaliastudios/opengl/internal/EglSurface;->getNative()Landroid/opengl/EGLSurface;

    move-result-object v2

    invoke-virtual {v3}, Lcom/otaliastudios/opengl/internal/EglContext;->getNative()Landroid/opengl/EGLContext;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 98
    iget-object v0, p0, Lcom/otaliastudios/opengl/core/EglNativeCore;->eglDisplay:Lcom/otaliastudios/opengl/internal/EglDisplay;

    iget-object v1, p0, Lcom/otaliastudios/opengl/core/EglNativeCore;->eglContext:Lcom/otaliastudios/opengl/internal/EglContext;

    .line 63
    invoke-virtual {v0}, Lcom/otaliastudios/opengl/internal/EglDisplay;->getNative()Landroid/opengl/EGLDisplay;

    move-result-object v0

    invoke-virtual {v1}, Lcom/otaliastudios/opengl/internal/EglContext;->getNative()Landroid/opengl/EGLContext;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 66
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 100
    iget-object v0, p0, Lcom/otaliastudios/opengl/core/EglNativeCore;->eglDisplay:Lcom/otaliastudios/opengl/internal/EglDisplay;

    .line 67
    invoke-virtual {v0}, Lcom/otaliastudios/opengl/internal/EglDisplay;->getNative()Landroid/opengl/EGLDisplay;

    move-result-object v0

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 102
    :cond_0
    invoke-static {}, Lcom/otaliastudios/opengl/internal/EglKt;->getEGL_NO_DISPLAY()Lcom/otaliastudios/opengl/internal/EglDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/otaliastudios/opengl/core/EglNativeCore;->eglDisplay:Lcom/otaliastudios/opengl/internal/EglDisplay;

    .line 103
    invoke-static {}, Lcom/otaliastudios/opengl/internal/EglKt;->getEGL_NO_CONTEXT()Lcom/otaliastudios/opengl/internal/EglContext;

    move-result-object v0

    iput-object v0, p0, Lcom/otaliastudios/opengl/core/EglNativeCore;->eglContext:Lcom/otaliastudios/opengl/internal/EglContext;

    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Lcom/otaliastudios/opengl/core/EglNativeCore;->eglConfig:Lcom/otaliastudios/opengl/internal/EglConfig;

    return-void
.end method

.method public final releaseSurface$library_release(Lcom/otaliastudios/opengl/internal/EglSurface;)V
    .locals 1

    const-string v0, "eglSurface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/otaliastudios/opengl/core/EglNativeCore;->eglDisplay:Lcom/otaliastudios/opengl/internal/EglDisplay;

    .line 65
    invoke-virtual {v0}, Lcom/otaliastudios/opengl/internal/EglDisplay;->getNative()Landroid/opengl/EGLDisplay;

    move-result-object v0

    invoke-virtual {p1}, Lcom/otaliastudios/opengl/internal/EglSurface;->getNative()Landroid/opengl/EGLSurface;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    return-void
.end method

.method public final setSurfacePresentationTime$library_release(Lcom/otaliastudios/opengl/internal/EglSurface;J)V
    .locals 1

    const-string v0, "eglSurface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/otaliastudios/opengl/core/EglNativeCore;->eglDisplay:Lcom/otaliastudios/opengl/internal/EglDisplay;

    .line 61
    invoke-virtual {v0}, Lcom/otaliastudios/opengl/internal/EglDisplay;->getNative()Landroid/opengl/EGLDisplay;

    move-result-object v0

    invoke-virtual {p1}, Lcom/otaliastudios/opengl/internal/EglSurface;->getNative()Landroid/opengl/EGLSurface;

    move-result-object p1

    invoke-static {v0, p1, p2, p3}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    return-void
.end method

.method public final swapSurfaceBuffers$library_release(Lcom/otaliastudios/opengl/internal/EglSurface;)Z
    .locals 1

    const-string v0, "eglSurface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/otaliastudios/opengl/core/EglNativeCore;->eglDisplay:Lcom/otaliastudios/opengl/internal/EglDisplay;

    .line 59
    invoke-virtual {v0}, Lcom/otaliastudios/opengl/internal/EglDisplay;->getNative()Landroid/opengl/EGLDisplay;

    move-result-object v0

    invoke-virtual {p1}, Lcom/otaliastudios/opengl/internal/EglSurface;->getNative()Landroid/opengl/EGLSurface;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result p1

    return p1
.end method
