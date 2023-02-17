.class Lorg/telegram/ui/Components/Paint/RenderView$1;
.super Ljava/lang/Object;
.source "RenderView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Paint/RenderView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Paint/Painting;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Paint/RenderView;


# direct methods
.method public static synthetic $r8$lambda$DzPsVSNs15k3dJM3eMq-XItQ7VQ(Lorg/telegram/ui/Components/Paint/RenderView$1;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/RenderView$1;->lambda$onSurfaceTextureDestroyed$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$SMhOJ4GVg1rnIfu5wGq15kgHuZ0(Lorg/telegram/ui/Components/Paint/RenderView$1;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/RenderView$1;->lambda$onSurfaceTextureAvailable$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$ku-2iswzEMX5q8TJtPumrqdT9vQ(Lorg/telegram/ui/Components/Paint/RenderView$1;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/RenderView$1;->lambda$onSurfaceTextureSizeChanged$1()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/Paint/RenderView;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/RenderView$1;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onSurfaceTextureAvailable$0()V
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$1;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->access$000(Lorg/telegram/ui/Components/Paint/RenderView;)Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$1;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->access$000(Lorg/telegram/ui/Components/Paint/RenderView;)Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->requestRender()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onSurfaceTextureDestroyed$2()V
    .locals 2

    .line 112
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$1;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->access$000(Lorg/telegram/ui/Components/Paint/RenderView;)Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->shutdown()V

    .line 113
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$1;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->access$002(Lorg/telegram/ui/Components/Paint/RenderView;Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    return-void
.end method

.method private synthetic lambda$onSurfaceTextureSizeChanged$1()V
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$1;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->access$000(Lorg/telegram/ui/Components/Paint/RenderView;)Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$1;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->access$000(Lorg/telegram/ui/Components/Paint/RenderView;)Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->requestRender()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    if-eqz p1, :cond_1

    .line 71
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$1;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-static {v0}, Lorg/telegram/ui/Components/Paint/RenderView;->access$000(Lorg/telegram/ui/Components/Paint/RenderView;)Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/RenderView$1;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    new-instance v1, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/RenderView$1;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-direct {v1, v2, p1}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;-><init>(Lorg/telegram/ui/Components/Paint/RenderView;Landroid/graphics/SurfaceTexture;)V

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/Paint/RenderView;->access$002(Lorg/telegram/ui/Components/Paint/RenderView;Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;)Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    .line 75
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/RenderView$1;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/RenderView;->access$000(Lorg/telegram/ui/Components/Paint/RenderView;)Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->setBufferSize(II)V

    .line 76
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/RenderView$1;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/RenderView;->access$100(Lorg/telegram/ui/Components/Paint/RenderView;)V

    .line 78
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/RenderView$1;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    new-instance p2, Lorg/telegram/ui/Components/Paint/RenderView$1$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/Paint/RenderView$1$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/Paint/RenderView$1;)V

    invoke-virtual {p1, p2}, Landroid/view/TextureView;->post(Ljava/lang/Runnable;)Z

    .line 84
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/RenderView$1;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/RenderView;->access$200(Lorg/telegram/ui/Components/Paint/RenderView;)Lorg/telegram/ui/Components/Paint/Painting;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Painting;->isPaused()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 85
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/RenderView$1;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/RenderView;->access$200(Lorg/telegram/ui/Components/Paint/RenderView;)Lorg/telegram/ui/Components/Paint/Painting;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Painting;->onResume()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    .line 107
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/RenderView$1;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/RenderView;->access$000(Lorg/telegram/ui/Components/Paint/RenderView;)Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 110
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/RenderView$1;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/RenderView;->access$300(Lorg/telegram/ui/Components/Paint/RenderView;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 111
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/RenderView$1;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/RenderView;->access$200(Lorg/telegram/ui/Components/Paint/RenderView;)Lorg/telegram/ui/Components/Paint/Painting;

    move-result-object p1

    new-instance v1, Lorg/telegram/ui/Components/Paint/RenderView$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Paint/RenderView$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Paint/RenderView$1;)V

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/Paint/Painting;->onPause(Ljava/lang/Runnable;)V

    :cond_1
    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 91
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/RenderView$1;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/RenderView;->access$000(Lorg/telegram/ui/Components/Paint/RenderView;)Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 95
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/RenderView$1;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/RenderView;->access$000(Lorg/telegram/ui/Components/Paint/RenderView;)Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->setBufferSize(II)V

    .line 96
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/RenderView$1;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/RenderView;->access$100(Lorg/telegram/ui/Components/Paint/RenderView;)V

    .line 97
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/RenderView$1;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/RenderView;->access$000(Lorg/telegram/ui/Components/Paint/RenderView;)Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;->requestRender()V

    .line 98
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/RenderView$1;->this$0:Lorg/telegram/ui/Components/Paint/RenderView;

    invoke-static {p1}, Lorg/telegram/ui/Components/Paint/RenderView;->access$000(Lorg/telegram/ui/Components/Paint/RenderView;)Lorg/telegram/ui/Components/Paint/RenderView$CanvasInternal;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/Components/Paint/RenderView$1$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/Paint/RenderView$1$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/Paint/RenderView$1;)V

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
