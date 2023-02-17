.class Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$FrameLoaderCallback;
.super Ljava/lang/Object;
.source "WebpFrameLoader.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrameLoaderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$FrameLoaderCallback;->this$0:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 314
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 315
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

    .line 316
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$FrameLoaderCallback;->this$0:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->onFrameReady(Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;)V

    return v1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 319
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$DelayTarget;

    .line 320
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$FrameLoaderCallback;->this$0:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;

    iget-object v0, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->requestManager:Lcom/bumptech/glide/RequestManager;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->clear(Lcom/bumptech/glide/request/target/Target;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
