.class Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;
.super Landroid/widget/FrameLayout;
.source "SelectAnimatedEmojiDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentView"
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;Landroid/content/Context;)V
    .locals 0

    .line 4512
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    .line 4513
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 4526
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$8300(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/high16 v1, 0x437f0000    # 255.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$8400(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4527
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v0, 0x41400000    # 12.0f

    .line 4528
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 4529
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$8400(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$8500(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)F

    move-result v3

    mul-float v3, v3, v1

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4530
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$8300(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v3}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$8400(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v2, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 4531
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 4533
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 4534
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$8600(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 4535
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$8600(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->drawable:Landroid/graphics/drawable/Drawable;

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_a

    .line 4537
    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$8700(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4538
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    iget-object v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    iget-object v5, v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$8800(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$8900(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v6

    const-string v7, "windowBackgroundWhiteBlueIcon"

    invoke-static {v7, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v7}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$8500(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)F

    move-result v7

    invoke-static {v5, v6, v7}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 4540
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    iget-object v4, v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$400(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/graphics/ColorFilter;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 4542
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$8500(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)F

    move-result v4

    sub-float v4, v3, v4

    mul-float v4, v4, v1

    float-to-int v4, v4

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4543
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$9000(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 4545
    iget-object v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$8600(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->access$7600(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;)F

    move-result v5

    cmpl-float v5, v5, v2

    if-nez v5, :cond_3

    iget-object v5, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v5}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$8600(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    move-result-object v5

    iget-boolean v5, v5, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->selected:Z

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_3
    :goto_1
    const v5, 0x3f4ccccd    # 0.8f

    const v6, 0x3e4ccccd    # 0.2f

    .line 4546
    iget-object v7, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v7}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$8600(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    move-result-object v7

    iget-boolean v7, v7, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->selected:Z

    if-eqz v7, :cond_4

    const v7, 0x3f333333    # 0.7f

    goto :goto_2

    :cond_4
    iget-object v7, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v7}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$8600(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->access$7600(Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;)F

    move-result v7

    :goto_2
    sub-float v7, v3, v7

    mul-float v7, v7, v6

    add-float/2addr v7, v5

    mul-float v7, v7, v3

    .line 4548
    :goto_3
    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    .line 4549
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    mul-float v8, v8, v7

    sub-float/2addr v6, v8

    float-to-int v6, v6

    .line 4550
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v10

    div-float/2addr v10, v9

    mul-float v10, v10, v7

    sub-float/2addr v8, v10

    float-to-int v8, v8

    .line 4551
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v10

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v11

    div-float/2addr v11, v9

    mul-float v11, v11, v7

    add-float/2addr v10, v11

    float-to-int v10, v10

    .line 4552
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v11

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v4, v9

    mul-float v4, v4, v7

    add-float/2addr v11, v4

    float-to-int v4, v11

    .line 4548
    invoke-virtual {v5, v6, v8, v10, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 4554
    iget-object v4, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v4}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$8600(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    move-result-object v4

    iget v4, v4, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->skewAlpha:F

    sub-float v4, v3, v4

    iget-object v6, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v6}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$8500(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)F

    move-result v6

    sub-float v6, v3, v6

    mul-float v4, v4, v6

    sub-float v4, v3, v4

    .line 4555
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v6, 0x41000000    # 8.0f

    cmpg-float v7, v4, v3

    if-gez v7, :cond_5

    .line 4557
    iget v7, v5, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    iget v8, v5, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4558
    invoke-virtual {p1, v3, v4, v2, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 4559
    iget-object v7, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v7}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$8600(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    move-result-object v7

    iget v7, v7, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->skewIndex:I

    int-to-float v7, v7

    mul-float v7, v7, v9

    div-float/2addr v7, v6

    sub-float v7, v3, v7

    sub-float v8, v3, v4

    mul-float v7, v7, v8

    invoke-virtual {p1, v7, v2}, Landroid/graphics/Canvas;->skew(FF)V

    .line 4560
    iget v7, v5, Landroid/graphics/Rect;->left:I

    neg-int v7, v7

    int-to-float v7, v7

    iget v8, v5, Landroid/graphics/Rect;->top:I

    neg-int v8, v8

    int-to-float v8, v8

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4562
    :cond_5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v8}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$9100(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v9}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$8500(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)F

    move-result v9

    const/16 v10, 0x2d

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    mul-float v9, v9, v10

    add-float/2addr v8, v9

    invoke-virtual {p1, v2, v2, v7, v8}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 4563
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 4564
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4565
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 4567
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$8600(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    move-result-object v0

    iget v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->skewIndex:I

    const/4 v2, 0x0

    if-nez v0, :cond_6

    mul-float v4, v4, v6

    .line 4568
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_4

    .line 4569
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$8600(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    move-result-object v0

    iget v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->skewIndex:I

    const/4 v6, 0x1

    if-ne v0, v6, :cond_7

    const/high16 v0, 0x40800000    # 4.0f

    mul-float v4, v4, v0

    .line 4570
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_4

    .line 4571
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$8600(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    move-result-object v0

    iget v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->skewIndex:I

    const/4 v6, 0x6

    if-ne v0, v6, :cond_8

    const/high16 v0, -0x3f800000    # -4.0f

    mul-float v4, v4, v0

    .line 4572
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_4

    .line 4573
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$8600(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    move-result-object v0

    iget v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->skewIndex:I

    const/4 v6, 0x7

    if-ne v0, v6, :cond_9

    const/high16 v0, -0x3f000000    # -8.0f

    mul-float v4, v4, v0

    .line 4574
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 4576
    :cond_9
    :goto_4
    iget v0, v5, Landroid/graphics/Rect;->left:I

    int-to-float v7, v0

    iget v0, v5, Landroid/graphics/Rect;->top:I

    int-to-float v8, v0

    iget v0, v5, Landroid/graphics/Rect;->right:I

    int-to-float v9, v0

    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v0

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$8500(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)F

    move-result v0

    sub-float/2addr v3, v0

    mul-float v3, v3, v1

    float-to-int v11, v3

    const/16 v12, 0x1f

    move-object v6, p1

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 4577
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 4578
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$9200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getX()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$9300(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$9200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    iget-object v2, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v2, v2, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getY()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$9400(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4579
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$9200(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 4580
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_5

    .line 4582
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$8600(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->isDefaultReaction:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$8600(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_b

    .line 4583
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$8600(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$8500(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)F

    move-result v1

    sub-float/2addr v3, v1

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 4584
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$8600(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$9000(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(Landroid/graphics/Rect;)V

    .line 4585
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$8600(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$ImageViewEmoji;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 4588
    :cond_b
    :goto_5
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$9500(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 4589
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$9500(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$8500(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 4590
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$9500(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$9000(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(Landroid/graphics/Rect;)V

    .line 4591
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$9500(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    :cond_c
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 4602
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 4603
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$9500(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4604
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$9500(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 4597
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$9602(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 4610
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 4611
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$9500(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4612
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$9500(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 4618
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 4620
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$9700(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 4624
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 4625
    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$8300(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$8300(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    if-ne p2, p3, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {p2}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$8300(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    if-eq p2, p1, :cond_2

    .line 4626
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog$ContentView;->this$1:Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;

    invoke-static {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;->access$9800(Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectStatusDurationDialog;)V

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 4519
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 4520
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 4518
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
