.class public final Lcom/otaliastudios/opengl/core/EglCore;
.super Lcom/otaliastudios/opengl/core/EglNativeCore;
.source "EglCore.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/opengl/core/EglCore$Companion;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/otaliastudios/opengl/core/EglCore$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/otaliastudios/opengl/core/EglCore$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/opengl/EGLContext;I)V
    .locals 1

    .line 17
    new-instance v0, Lcom/otaliastudios/opengl/internal/EglContext;

    invoke-direct {v0, p1}, Lcom/otaliastudios/opengl/internal/EglContext;-><init>(Landroid/opengl/EGLContext;)V

    invoke-direct {p0, v0, p2}, Lcom/otaliastudios/opengl/core/EglNativeCore;-><init>(Lcom/otaliastudios/opengl/internal/EglContext;I)V

    return-void
.end method


# virtual methods
.method protected final finalize()V
    .locals 0

    .line 38
    invoke-virtual {p0}, Lcom/otaliastudios/opengl/core/EglCore;->release()V

    return-void
.end method

.method public release()V
    .locals 0

    .line 25
    invoke-super {p0}, Lcom/otaliastudios/opengl/core/EglNativeCore;->release$library_release()V

    return-void
.end method
