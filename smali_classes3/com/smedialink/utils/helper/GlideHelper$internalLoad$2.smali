.class public final Lcom/smedialink/utils/helper/GlideHelper$internalLoad$2;
.super Lcom/bumptech/glide/request/target/CustomTarget;
.source "GlideHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/utils/helper/GlideHelper;->internalLoad(Landroid/content/Context;Lcom/bumptech/glide/load/model/GlideUrl;Lorg/fork/utils/Callbacks$Callback1;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/CustomTarget<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $callback:Lorg/fork/utils/Callbacks$Callback1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/fork/utils/Callbacks$Callback1<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/fork/utils/Callbacks$Callback1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/fork/utils/Callbacks$Callback1<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/smedialink/utils/helper/GlideHelper$internalLoad$2;->$callback:Lorg/fork/utils/Callbacks$Callback1;

    .line 44
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/CustomTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/request/transition/Transition<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    const-string p2, "resource"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object p2, p0, Lcom/smedialink/utils/helper/GlideHelper$internalLoad$2;->$callback:Lorg/fork/utils/Callbacks$Callback1;

    invoke-interface {p2, p1}, Lorg/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0

    .line 44
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/utils/helper/GlideHelper$internalLoad$2;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
