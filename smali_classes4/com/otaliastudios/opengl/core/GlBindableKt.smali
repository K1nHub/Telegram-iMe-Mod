.class public final Lcom/otaliastudios/opengl/core/GlBindableKt;
.super Ljava/lang/Object;
.source "GlBindable.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGlBindable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlBindable.kt\ncom/otaliastudios/opengl/core/GlBindableKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,18:1\n13536#2,2:19\n13536#2,2:21\n*S KotlinDebug\n*F\n+ 1 GlBindable.kt\ncom/otaliastudios/opengl/core/GlBindableKt\n*L\n15#1:19,2\n17#1:21,2\n*E\n"
.end annotation


# direct methods
.method public static final use(Lcom/otaliastudios/opengl/core/GlBindable;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/otaliastudios/opengl/core/GlBindable;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-interface {p0}, Lcom/otaliastudios/opengl/core/GlBindable;->bind()V

    .line 10
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 11
    invoke-interface {p0}, Lcom/otaliastudios/opengl/core/GlBindable;->unbind()V

    return-void
.end method
