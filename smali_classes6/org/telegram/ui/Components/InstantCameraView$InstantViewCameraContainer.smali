.class public Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;
.super Landroid/widget/FrameLayout;
.source "InstantCameraView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/InstantCameraView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InstantViewCameraContainer"
.end annotation


# instance fields
.field imageProgress:F

.field imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field final synthetic this$0:Lorg/telegram/ui/Components/InstantCameraView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/InstantCameraView;Landroid/content/Context;)V
    .locals 0

    .line 3011
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    .line 3012
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x0

    .line 3013
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 3026
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3027
    iget v0, p0, Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;->imageProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_1

    const v2, 0x3d83126f    # 0.064f

    add-float/2addr v0, v2

    .line 3028
    iput v0, p0, Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;->imageProgress:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 3030
    iput v1, p0, Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;->imageProgress:F

    .line 3032
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 3034
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_3

    .line 3035
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3036
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$000(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 3037
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$000(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v1

    div-float/2addr v0, v1

    .line 3038
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 3040
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v0

    neg-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3041
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getAlpha()F

    move-result v0

    .line 3042
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget v2, p0, Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;->imageProgress:F

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 3043
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 3044
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 3045
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    return-void
.end method

.method public setImageReceiver(Lorg/telegram/messenger/ImageReceiver;)V
    .locals 1

    .line 3017
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3018
    iput v0, p0, Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;->imageProgress:F

    .line 3020
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$InstantViewCameraContainer;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 3021
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
