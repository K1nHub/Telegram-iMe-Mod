.class Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$RenderThread;
.super Ljava/lang/Thread;
.source "GLIconTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenderThread"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$RenderThread;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$1;)V
    .locals 0

    .line 265
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$RenderThread;-><init>(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 268
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$RenderThread;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->isRunning:Z

    .line 270
    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->access$400(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;)V

    .line 271
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$RenderThread;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->access$500(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;)V

    .line 273
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 275
    :catch_0
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$RenderThread;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-boolean v2, v2, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->isRunning:Z

    if-eqz v2, :cond_5

    .line 276
    :catch_1
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$RenderThread;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-object v3, v2, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    const-wide/16 v4, 0x64

    if-nez v3, :cond_1

    .line 278
    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 284
    :cond_1
    invoke-static {v2}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->access$600(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 285
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$RenderThread;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    iget-object v3, v2, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->access$700(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;)V

    .line 286
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$RenderThread;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->access$602(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;Z)Z

    .line 289
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$RenderThread;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    invoke-static {v2}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->access$800(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 290
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 291
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$RenderThread;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    invoke-static {v2}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->access$900(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;)V

    .line 295
    :cond_3
    :try_start_1
    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$RenderThread;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    invoke-static {v2}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->access$800(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 296
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 298
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    goto :goto_3

    .line 300
    :goto_2
    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView$RenderThread;->this$0:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    invoke-static {v4}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->access$1000(Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;)I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 301
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    sub-long/2addr v2, v0

    goto :goto_2

    :cond_5
    return-void
.end method
