.class public final Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;
.super Landroid/widget/FrameLayout;
.source "ForwardCloudBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CustomContainerView"
.end annotation


# instance fields
.field private fullHeight:Z

.field private final rect:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;


# direct methods
.method public constructor <init>(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    iput-object p1, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 334
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->rect:Landroid/graphics/RectF;

    const/4 p2, 0x0

    .line 338
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 339
    invoke-static {p1}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->access$getBackgroundPaddingLeft$p$s23216452(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;)I

    move-result v0

    invoke-static {p1}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->access$getBackgroundPaddingLeft$p$s23216452(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;)I

    move-result p1

    invoke-virtual {p0, v0, p2, p1, p2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->access$getScrollOffsetY$p(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;)I

    move-result v0

    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {v1}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->access$getBackgroundPaddingTop$p$s23216452(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;)I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x6

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 403
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {v1}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->access$getScrollOffsetY$p(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;)I

    move-result v1

    iget-object v2, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {v2}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->access$getBackgroundPaddingTop$p$s23216452(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;)I

    move-result v2

    sub-int/2addr v1, v2

    const/16 v2, 0xd

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    .line 404
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    const/16 v3, 0x24

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {v4}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->access$getBackgroundPaddingTop$p$s23216452(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;)I

    move-result v4

    add-int/2addr v2, v4

    .line 407
    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v1, v4

    add-int/2addr v0, v4

    .line 409
    iget-boolean v4, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->fullHeight:Z

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x2

    if-eqz v4, :cond_2

    .line 410
    iget-object v4, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {v4}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->access$getBackgroundPaddingTop$p$s23216452(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;)I

    move-result v4

    add-int/2addr v4, v1

    sget v8, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    mul-int/lit8 v9, v8, 0x2

    if-ge v4, v9, :cond_0

    mul-int/lit8 v4, v8, 0x2

    sub-int/2addr v4, v1

    .line 413
    iget-object v9, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {v9}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->access$getBackgroundPaddingTop$p$s23216452(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;)I

    move-result v9

    sub-int/2addr v4, v9

    invoke-static {v8, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int/2addr v1, v4

    add-int/2addr v2, v4

    mul-int/2addr v4, v7

    int-to-float v4, v4

    .line 418
    sget v8, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v8, v8

    div-float/2addr v4, v8

    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    sub-float v4, v6, v4

    goto :goto_0

    :cond_0
    move v4, v6

    .line 420
    :goto_0
    iget-object v8, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {v8}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->access$getBackgroundPaddingTop$p$s23216452(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;)I

    move-result v8

    add-int/2addr v8, v1

    sget v9, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    if-ge v8, v9, :cond_1

    sub-int v8, v9, v1

    .line 423
    iget-object v10, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {v10}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->access$getBackgroundPaddingTop$p$s23216452(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;)I

    move-result v10

    sub-int/2addr v8, v10

    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    goto :goto_1

    :cond_1
    move v8, v5

    goto :goto_1

    :cond_2
    move v8, v5

    move v4, v6

    .line 427
    :goto_1
    iget-object v9, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {v9}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->access$getShadowDrawable$p$s23216452(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v10

    invoke-virtual {v9, v5, v1, v10, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 428
    iget-object v2, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {v2}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->access$getShadowDrawable$p$s23216452(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    cmpg-float v2, v4, v6

    if-nez v2, :cond_3

    const/4 v5, 0x1

    :cond_3
    if-nez v5, :cond_4

    .line 430
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 431
    iget-object v2, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->rect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {v5}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->access$getBackgroundPaddingLeft$p$s23216452(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {v6}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->access$getBackgroundPaddingTop$p$s23216452(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;)I

    move-result v6

    add-int/2addr v6, v1

    int-to-float v6, v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v9

    iget-object v10, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {v10}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->access$getBackgroundPaddingLeft$p$s23216452(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;)I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    .line 432
    iget-object v10, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {v10}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->access$getBackgroundPaddingTop$p$s23216452(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;)I

    move-result v10

    add-int/2addr v10, v1

    const/16 v1, 0x18

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v10, v1

    int-to-float v1, v10

    .line 431
    invoke-virtual {v2, v5, v6, v9, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 434
    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->rect:Landroid/graphics/RectF;

    const/16 v2, 0xc

    .line 435
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v4

    .line 436
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    .line 437
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    .line 433
    invoke-virtual {p1, v1, v5, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 440
    :cond_4
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 441
    iget-object v2, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v3, v1

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v1

    int-to-float v1, v6

    div-float/2addr v1, v4

    const/4 v4, 0x4

    .line 442
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v0, v0

    .line 441
    invoke-virtual {v2, v3, v5, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 443
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_sheet_scrollUp:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 445
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->rect:Landroid/graphics/RectF;

    .line 446
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    .line 447
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    .line 448
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    .line 444
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    if-lez v8, :cond_5

    .line 451
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    const/16 v1, 0xff

    .line 454
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f4ccccd    # 0.8f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 455
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v4, v4

    .line 456
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    .line 452
    invoke-static {v1, v2, v4, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 458
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 460
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->access$getBackgroundPaddingLeft$p$s23216452(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;)I

    move-result v0

    int-to-float v2, v0

    .line 461
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v0, v8

    int-to-float v3, v0

    .line 462
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {v1}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->access$getBackgroundPaddingLeft$p$s23216452(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v4, v0

    .line 463
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v5, v0

    .line 464
    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    move-object v1, p1

    .line 459
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_5
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->access$getScrollOffsetY$p(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {v1}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->access$getScrollOffsetY$p(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 346
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    const/4 p1, 0x1

    return p1

    .line 349
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 390
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 391
    iget-object p1, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {p1}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->access$updateLayout(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 11

    .line 357
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 358
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->access$setIgnoreLayout$p(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;Z)V

    .line 360
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->access$getBackgroundPaddingLeft$p$s23216452(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;)I

    move-result v0

    .line 361
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    .line 362
    iget-object v3, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {v3}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->access$getBackgroundPaddingLeft$p$s23216452(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;)I

    move-result v3

    const/4 v4, 0x0

    .line 359
    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 365
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {v0, v4}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->access$setIgnoreLayout$p(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;Z)V

    const/16 v0, 0x30

    .line 367
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iget-object v3, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {v3}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->access$getBackgroundPaddingTop$p$s23216452(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;)I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v2, v3

    const/16 v3, 0x3d

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    .line 369
    iget-object v5, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {v5}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->access$getListAdapter(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;)Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$ListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$ListAdapter;->getItemCount()I

    move-result v5

    sub-int/2addr v5, v1

    mul-int/2addr v3, v5

    add-int/2addr v2, v3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr v2, v0

    int-to-double v5, v2

    int-to-float v0, p2

    const/high16 v3, 0x40a00000    # 5.0f

    div-float/2addr v0, v3

    float-to-double v7, v0

    const-wide v9, 0x400999999999999aL    # 3.2

    mul-double/2addr v7, v9

    cmpg-double v0, v5, v7

    if-gez v0, :cond_0

    move v0, v4

    goto :goto_0

    .line 370
    :cond_0
    div-int/lit8 v0, p2, 0x5

    mul-int/lit8 v0, v0, 0x2

    :goto_0
    if-eqz v0, :cond_1

    if-ge v2, p2, :cond_1

    sub-int v3, p2, v2

    sub-int/2addr v0, v3

    :cond_1
    if-nez v0, :cond_2

    .line 375
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->access$getBackgroundPaddingTop$p$s23216452(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;)I

    move-result v0

    .line 377
    :cond_2
    iget-object v3, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {v3}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->access$getListView(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;)Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$initListView$1;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    if-eq v3, v0, :cond_3

    .line 378
    iget-object v3, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {v3, v1}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->access$setIgnoreLayout$p(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;Z)V

    .line 379
    iget-object v3, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {v3}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->access$getListView(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;)Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$initListView$1;

    move-result-object v3

    const/16 v5, 0xa

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v3, v6, v0, v5, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 380
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {v0, v4}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->access$setIgnoreLayout$p(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;Z)V

    :cond_3
    if-lt v2, p2, :cond_4

    goto :goto_1

    :cond_4
    move v1, v4

    .line 382
    :goto_1
    iput-boolean v1, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->fullHeight:Z

    .line 385
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 383
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->isDismissed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public requestLayout()V
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet$CustomContainerView;->this$0:Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;

    invoke-static {v0}, Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;->access$getIgnoreLayout$p(Lcom/iMe/fork/ui/dialog/ForwardCloudBottomSheet;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 398
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
