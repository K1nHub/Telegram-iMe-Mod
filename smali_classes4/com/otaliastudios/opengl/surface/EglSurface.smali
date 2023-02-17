.class public abstract Lcom/otaliastudios/opengl/surface/EglSurface;
.super Ljava/lang/Object;
.source "EglSurface.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/opengl/surface/EglSurface$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEglSurface.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EglSurface.kt\ncom/otaliastudios/opengl/surface/EglSurface\n*L\n1#1,185:1\n*E\n"
.end annotation


# instance fields
.field private eglCore:Lcom/otaliastudios/opengl/core/EglCore;

.field private eglSurface:Landroid/opengl/EGLSurface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/otaliastudios/opengl/surface/EglSurface$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/otaliastudios/opengl/surface/EglSurface$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method protected constructor <init>(Lcom/otaliastudios/opengl/core/EglCore;Landroid/opengl/EGLSurface;)V
    .locals 1

    const-string v0, "eglCore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eglSurface"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/otaliastudios/opengl/surface/EglSurface;->eglCore:Lcom/otaliastudios/opengl/core/EglCore;

    iput-object p2, p0, Lcom/otaliastudios/opengl/surface/EglSurface;->eglSurface:Landroid/opengl/EGLSurface;

    return-void
.end method


# virtual methods
.method protected final getEglCore()Lcom/otaliastudios/opengl/core/EglCore;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/otaliastudios/opengl/surface/EglSurface;->eglCore:Lcom/otaliastudios/opengl/core/EglCore;

    return-object v0
.end method

.method protected final getEglSurface()Landroid/opengl/EGLSurface;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/otaliastudios/opengl/surface/EglSurface;->eglSurface:Landroid/opengl/EGLSurface;

    return-object v0
.end method

.method public final makeCurrent()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/otaliastudios/opengl/surface/EglSurface;->eglCore:Lcom/otaliastudios/opengl/core/EglCore;

    iget-object v1, p0, Lcom/otaliastudios/opengl/surface/EglSurface;->eglSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Lcom/otaliastudios/opengl/core/EglCore;->makeSurfaceCurrent$egloo_release(Landroid/opengl/EGLSurface;)V

    return-void
.end method

.method public release()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/otaliastudios/opengl/surface/EglSurface;->eglCore:Lcom/otaliastudios/opengl/core/EglCore;

    iget-object v1, p0, Lcom/otaliastudios/opengl/surface/EglSurface;->eglSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Lcom/otaliastudios/opengl/core/EglCore;->releaseSurface$egloo_release(Landroid/opengl/EGLSurface;)V

    .line 76
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    const-string v1, "EGL14.EGL_NO_SURFACE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/otaliastudios/opengl/surface/EglSurface;->eglSurface:Landroid/opengl/EGLSurface;

    return-void
.end method

.method public final setPresentationTime(J)V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/otaliastudios/opengl/surface/EglSurface;->eglCore:Lcom/otaliastudios/opengl/core/EglCore;

    iget-object v1, p0, Lcom/otaliastudios/opengl/surface/EglSurface;->eglSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1, p1, p2}, Lcom/otaliastudios/opengl/core/EglCore;->setSurfacePresentationTime$egloo_release(Landroid/opengl/EGLSurface;J)V

    return-void
.end method
