.class Lorg/telegram/ui/ProfileActivity$21;
.super Landroid/widget/FrameLayout;
.source "ProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field canvasButton:Lorg/telegram/ui/Components/CanvasButton;

.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;


# direct methods
.method public static synthetic $r8$lambda$CCtxDHFgrRD4UaId3QvsMr0UHG4(Lorg/telegram/ui/ProfileActivity$21;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$21;->lambda$dispatchDraw$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ProfileActivity;Landroid/content/Context;)V
    .locals 0

    .line 4335
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$21;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$dispatchDraw$0()V
    .locals 2

    .line 4368
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$21;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$15900(Lorg/telegram/ui/ProfileActivity;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 4369
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$21;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$1800(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ProfileGalleryView;->scrollToLastItem()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 4341
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 4342
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$21;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$15800(Lorg/telegram/ui/ProfileActivity;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 4343
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4344
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$21;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$10500(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$21;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$10500(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 4345
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$21;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$15800(Lorg/telegram/ui/ProfileActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v7, v0

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$21;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$15800(Lorg/telegram/ui/ProfileActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v8, v0

    const/high16 v0, 0x437f0000    # 255.0f

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$21;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$1100(Lorg/telegram/ui/ProfileActivity;)F

    move-result v3

    sub-float v3, v1, v3

    mul-float/2addr v3, v0

    float-to-int v9, v3

    const/16 v10, 0x1f

    move-object v4, p1

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 4346
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$21;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$15800(Lorg/telegram/ui/ProfileActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 4347
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 4348
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 4349
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 4351
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$21;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$8000(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$21;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget v3, v0, Lorg/telegram/ui/ProfileActivity;->photoDescriptionProgress:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_3

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$15900(Lorg/telegram/ui/ProfileActivity;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    .line 4352
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$21;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$10500(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v0

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$21;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileActivity;->access$10500(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v0, v5

    const/16 v5, 0x16

    .line 4353
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    const/16 v7, 0x1c

    .line 4354
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lorg/telegram/ui/ProfileActivity$21;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v9}, Lorg/telegram/ui/ProfileActivity;->access$16000(Lorg/telegram/ui/ProfileActivity;)F

    move-result v9

    sub-float/2addr v8, v9

    iget-object v9, p0, Lorg/telegram/ui/ProfileActivity$21;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v9}, Lorg/telegram/ui/ProfileActivity;->access$10500(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v9

    aget-object v9, v9, v3

    invoke-virtual {v9}, Landroid/view/View;->getX()F

    move-result v9

    add-float/2addr v8, v9

    sub-float/2addr v8, v5

    .line 4356
    iget-object v9, p0, Lorg/telegram/ui/ProfileActivity$21;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v9}, Lorg/telegram/ui/ProfileActivity;->access$16100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v9

    div-float v6, v5, v6

    sub-float v6, v0, v6

    invoke-virtual {v9, v8, v6, v5, v5}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 4357
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$21;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileActivity;->access$16100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/ProfileActivity$21;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget v6, v6, Lorg/telegram/ui/ProfileActivity;->photoDescriptionProgress:F

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 4358
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4359
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$21;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget v6, v5, Lorg/telegram/ui/ProfileActivity;->photoDescriptionProgress:F

    .line 4360
    invoke-static {v5}, Lorg/telegram/ui/ProfileActivity;->access$16100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v5

    iget-object v9, p0, Lorg/telegram/ui/ProfileActivity$21;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v9}, Lorg/telegram/ui/ProfileActivity;->access$16100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v9

    invoke-virtual {p1, v6, v6, v5, v9}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 4361
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$21;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileActivity;->access$16100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v5

    invoke-virtual {v5, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 4362
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 4364
    iget-object v5, p0, Lorg/telegram/ui/ProfileActivity$21;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileActivity;->access$15900(Lorg/telegram/ui/ProfileActivity;)F

    move-result v5

    cmpl-float v4, v5, v4

    if-nez v4, :cond_2

    .line 4365
    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$21;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    if-nez v4, :cond_1

    .line 4366
    new-instance v4, Lorg/telegram/ui/Components/CanvasButton;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Components/CanvasButton;-><init>(Landroid/view/View;)V

    iput-object v4, p0, Lorg/telegram/ui/ProfileActivity$21;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    .line 4367
    new-instance v5, Lorg/telegram/ui/ProfileActivity$21$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lorg/telegram/ui/ProfileActivity$21$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ProfileActivity$21;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/CanvasButton;->setDelegate(Ljava/lang/Runnable;)V

    .line 4373
    :cond_1
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    const/4 v5, 0x4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    sub-float v6, v8, v6

    const/16 v9, 0xe

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    sub-float v10, v0, v10

    iget-object v11, p0, Lorg/telegram/ui/ProfileActivity$21;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v11}, Lorg/telegram/ui/ProfileActivity;->access$10500(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v11

    const/4 v12, 0x2

    aget-object v11, v11, v12

    invoke-virtual {v11}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getTextWidth()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v8, v11

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    iget-object v11, p0, Lorg/telegram/ui/ProfileActivity$21;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v11}, Lorg/telegram/ui/ProfileActivity;->access$15900(Lorg/telegram/ui/ProfileActivity;)F

    move-result v11

    sub-float/2addr v1, v11

    mul-float/2addr v7, v1

    add-float/2addr v8, v7

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v8, v1

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {v4, v6, v10, v8, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4374
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$21;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/CanvasButton;->setRect(Landroid/graphics/RectF;)V

    .line 4375
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$21;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/CanvasButton;->setRounded(Z)V

    .line 4376
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$21;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    const/4 v1, -0x1

    const/16 v3, 0x32

    invoke-static {v1, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Components/CanvasButton;->setColor(II)V

    .line 4377
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$21;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/CanvasButton;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 4379
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$21;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    if-eqz p1, :cond_3

    .line 4380
    invoke-virtual {p1}, Lorg/telegram/ui/Components/CanvasButton;->cancelRipple()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 4398
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 4399
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$21;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$16100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 4404
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 4405
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$21;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$16100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 4388
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$21;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/CanvasButton;->checkTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 4393
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$21;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/CanvasButton;->checkTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
