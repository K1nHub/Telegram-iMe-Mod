.class public final Lcom/otaliastudios/opengl/types/BuffersKt;
.super Ljava/lang/Object;
.source "buffers.kt"


# direct methods
.method public static final dispose(Ljava/nio/Buffer;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    instance-of v0, p0, Lcom/otaliastudios/opengl/types/Disposable;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/otaliastudios/opengl/types/Disposable;

    invoke-interface {p0}, Lcom/otaliastudios/opengl/types/Disposable;->dispose()V

    :cond_0
    return-void
.end method
