.class Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$6;
.super Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;
.source "LPhotoPaintView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;-><init>(Landroid/content/Context;Landroid/app/Activity;ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;ILjava/util/ArrayList;Lorg/telegram/messenger/MediaController$CropState;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field lastUpdate:J

.field linePaint:Landroid/graphics/Paint;

.field stickyXAlpha:F

.field stickyYAlpha:F

.field final synthetic this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;Landroid/content/Context;Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$6;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView$EntitiesContainerViewDelegate;)V

    .line 383
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$6;->linePaint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    .line 389
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 390
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$6;->linePaint:Landroid/graphics/Paint;

    const/4 p2, 0x2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 391
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$6;->linePaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 392
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$6;->linePaint:Landroid/graphics/Paint;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 397
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 399
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$6;->lastUpdate:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x10

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 400
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$6;->lastUpdate:J

    .line 403
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$6;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$500(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/EntityView;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$6;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$500(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/EntityView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasTouchDown()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$6;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$500(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/EntityView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasPanned()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 404
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$6;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$500(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/EntityView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getStickyX()I

    move-result v3

    .line 405
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$6;->this$0:Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;

    invoke-static {v2}, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;->access$500(Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView;)Lorg/telegram/ui/Components/Paint/Views/EntityView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getStickyY()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const/high16 v4, 0x43160000    # 150.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-eqz v3, :cond_1

    .line 409
    iget v7, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$6;->stickyXAlpha:F

    cmpl-float v8, v7, v5

    if-eqz v8, :cond_1

    long-to-float v3, v0

    div-float/2addr v3, v4

    add-float/2addr v7, v3

    .line 410
    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$6;->stickyXAlpha:F

    .line 411
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_1

    :cond_1
    if-nez v3, :cond_2

    .line 412
    iget v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$6;->stickyXAlpha:F

    cmpl-float v7, v3, v6

    if-eqz v7, :cond_2

    long-to-float v7, v0

    div-float/2addr v7, v4

    sub-float/2addr v3, v7

    .line 413
    invoke-static {v6, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$6;->stickyXAlpha:F

    .line 414
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 417
    iget v3, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$6;->stickyYAlpha:F

    cmpl-float v7, v3, v5

    if-eqz v7, :cond_3

    long-to-float v0, v0

    div-float/2addr v0, v4

    add-float/2addr v3, v0

    .line 418
    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$6;->stickyYAlpha:F

    .line 419
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_2

    :cond_3
    if-nez v2, :cond_4

    .line 420
    iget v2, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$6;->stickyYAlpha:F

    cmpl-float v3, v2, v6

    if-eqz v3, :cond_4

    long-to-float v0, v0

    div-float/2addr v0, v4

    sub-float/2addr v2, v0

    .line 421
    invoke-static {v6, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$6;->stickyYAlpha:F

    .line 422
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 425
    :cond_4
    :goto_2
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$6;->stickyYAlpha:F

    cmpl-float v1, v0, v6

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x437f0000    # 255.0f

    if-eqz v1, :cond_5

    .line 426
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$6;->linePaint:Landroid/graphics/Paint;

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 427
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v11, v0, v2

    const/4 v8, 0x0

    .line 428
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v10, v0

    iget-object v12, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$6;->linePaint:Landroid/graphics/Paint;

    move-object v7, p1

    move v9, v11

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 430
    :cond_5
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$6;->stickyXAlpha:F

    cmpl-float v1, v0, v6

    if-eqz v1, :cond_6

    .line 431
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$6;->linePaint:Landroid/graphics/Paint;

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 432
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v6, v0, v2

    const/4 v5, 0x0

    .line 433
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v7, v0

    iget-object v8, p0, Lorg/telegram/ui/Components/Paint/Views/LPhotoPaintView$6;->linePaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, v6

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_6
    return-void
.end method
