.class final Lcom/iMe/ui/topics/TopicsAlert$RootView;
.super Landroid/widget/FrameLayout;
.source "TopicsAlert.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/topics/TopicsAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RootView"
.end annotation


# instance fields
.field private fullHeight:Z

.field private lastNotifyWidth:I

.field private final rect:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/iMe/ui/topics/TopicsAlert;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/topics/TopicsAlert;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 312
    iput-object p1, p0, Lcom/iMe/ui/topics/TopicsAlert$RootView;->this$0:Lcom/iMe/ui/topics/TopicsAlert;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 316
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/topics/TopicsAlert$RootView;->rect:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/iMe/ui/topics/TopicsAlert$RootView;->this$0:Lcom/iMe/ui/topics/TopicsAlert;

    invoke-static {v0}, Lcom/iMe/ui/topics/TopicsAlert;->access$getScrollOffsetY$p(Lcom/iMe/ui/topics/TopicsAlert;)I

    move-result v0

    iget-object v1, p0, Lcom/iMe/ui/topics/TopicsAlert$RootView;->this$0:Lcom/iMe/ui/topics/TopicsAlert;

    invoke-static {v1}, Lcom/iMe/ui/topics/TopicsAlert;->access$getBackgroundPaddingTop$p$s2101051000(Lcom/iMe/ui/topics/TopicsAlert;)I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x6

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 384
    iget-object v1, p0, Lcom/iMe/ui/topics/TopicsAlert$RootView;->this$0:Lcom/iMe/ui/topics/TopicsAlert;

    invoke-static {v1}, Lcom/iMe/ui/topics/TopicsAlert;->access$getScrollOffsetY$p(Lcom/iMe/ui/topics/TopicsAlert;)I

    move-result v1

    iget-object v2, p0, Lcom/iMe/ui/topics/TopicsAlert$RootView;->this$0:Lcom/iMe/ui/topics/TopicsAlert;

    invoke-static {v2}, Lcom/iMe/ui/topics/TopicsAlert;->access$getBackgroundPaddingTop$p$s2101051000(Lcom/iMe/ui/topics/TopicsAlert;)I

    move-result v2

    sub-int/2addr v1, v2

    const/16 v2, 0xd

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    .line 385
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    const/16 v3, 0xf

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/iMe/ui/topics/TopicsAlert$RootView;->this$0:Lcom/iMe/ui/topics/TopicsAlert;

    invoke-static {v3}, Lcom/iMe/ui/topics/TopicsAlert;->access$getBackgroundPaddingTop$p$s2101051000(Lcom/iMe/ui/topics/TopicsAlert;)I

    move-result v3

    add-int/2addr v2, v3

    .line 388
    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v1, v3

    add-int/2addr v0, v3

    .line 390
    iget-boolean v3, p0, Lcom/iMe/ui/topics/TopicsAlert$RootView;->fullHeight:Z

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x2

    if-eqz v3, :cond_2

    .line 391
    iget-object v3, p0, Lcom/iMe/ui/topics/TopicsAlert$RootView;->this$0:Lcom/iMe/ui/topics/TopicsAlert;

    invoke-static {v3}, Lcom/iMe/ui/topics/TopicsAlert;->access$getBackgroundPaddingTop$p$s2101051000(Lcom/iMe/ui/topics/TopicsAlert;)I

    move-result v3

    add-int/2addr v3, v1

    sget v7, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    mul-int/lit8 v8, v7, 0x2

    if-ge v3, v8, :cond_0

    mul-int/lit8 v3, v7, 0x2

    sub-int/2addr v3, v1

    .line 394
    iget-object v8, p0, Lcom/iMe/ui/topics/TopicsAlert$RootView;->this$0:Lcom/iMe/ui/topics/TopicsAlert;

    invoke-static {v8}, Lcom/iMe/ui/topics/TopicsAlert;->access$getBackgroundPaddingTop$p$s2101051000(Lcom/iMe/ui/topics/TopicsAlert;)I

    move-result v8

    sub-int/2addr v3, v8

    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int/2addr v1, v3

    add-int/2addr v2, v3

    mul-int/2addr v3, v6

    int-to-float v3, v3

    .line 399
    sget v7, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v7, v7

    div-float/2addr v3, v7

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    sub-float v3, v5, v3

    goto :goto_0

    :cond_0
    move v3, v5

    .line 401
    :goto_0
    iget-object v7, p0, Lcom/iMe/ui/topics/TopicsAlert$RootView;->this$0:Lcom/iMe/ui/topics/TopicsAlert;

    invoke-static {v7}, Lcom/iMe/ui/topics/TopicsAlert;->access$getBackgroundPaddingTop$p$s2101051000(Lcom/iMe/ui/topics/TopicsAlert;)I

    move-result v7

    add-int/2addr v7, v1

    sget v8, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    if-ge v7, v8, :cond_1

    sub-int v7, v8, v1

    .line 404
    iget-object v9, p0, Lcom/iMe/ui/topics/TopicsAlert$RootView;->this$0:Lcom/iMe/ui/topics/TopicsAlert;

    invoke-static {v9}, Lcom/iMe/ui/topics/TopicsAlert;->access$getBackgroundPaddingTop$p$s2101051000(Lcom/iMe/ui/topics/TopicsAlert;)I

    move-result v9

    sub-int/2addr v7, v9

    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto :goto_1

    :cond_1
    move v7, v4

    goto :goto_1

    :cond_2
    move v7, v4

    move v3, v5

    .line 408
    :goto_1
    iget-object v8, p0, Lcom/iMe/ui/topics/TopicsAlert$RootView;->this$0:Lcom/iMe/ui/topics/TopicsAlert;

    invoke-static {v8}, Lcom/iMe/ui/topics/TopicsAlert;->access$getShadowDrawable$p$s2101051000(Lcom/iMe/ui/topics/TopicsAlert;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v8, v4, v1, v9, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 409
    iget-object v2, p0, Lcom/iMe/ui/topics/TopicsAlert$RootView;->this$0:Lcom/iMe/ui/topics/TopicsAlert;

    invoke-static {v2}, Lcom/iMe/ui/topics/TopicsAlert;->access$getShadowDrawable$p$s2101051000(Lcom/iMe/ui/topics/TopicsAlert;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    cmpg-float v2, v3, v5

    if-nez v2, :cond_3

    const/4 v4, 0x1

    :cond_3
    if-nez v4, :cond_4

    .line 411
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/iMe/ui/topics/TopicsAlert$RootView;->this$0:Lcom/iMe/ui/topics/TopicsAlert;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v4, v5}, Lcom/iMe/ui/topics/TopicsAlert;->access$getThemedColor(Lcom/iMe/ui/topics/TopicsAlert;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 412
    iget-object v2, p0, Lcom/iMe/ui/topics/TopicsAlert$RootView;->rect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/iMe/ui/topics/TopicsAlert$RootView;->this$0:Lcom/iMe/ui/topics/TopicsAlert;

    invoke-static {v4}, Lcom/iMe/ui/topics/TopicsAlert;->access$getBackgroundPaddingLeft$p$s2101051000(Lcom/iMe/ui/topics/TopicsAlert;)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/iMe/ui/topics/TopicsAlert$RootView;->this$0:Lcom/iMe/ui/topics/TopicsAlert;

    invoke-static {v5}, Lcom/iMe/ui/topics/TopicsAlert;->access$getBackgroundPaddingTop$p$s2101051000(Lcom/iMe/ui/topics/TopicsAlert;)I

    move-result v5

    add-int/2addr v5, v1

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v8

    iget-object v9, p0, Lcom/iMe/ui/topics/TopicsAlert$RootView;->this$0:Lcom/iMe/ui/topics/TopicsAlert;

    invoke-static {v9}, Lcom/iMe/ui/topics/TopicsAlert;->access$getBackgroundPaddingLeft$p$s2101051000(Lcom/iMe/ui/topics/TopicsAlert;)I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    .line 413
    iget-object v9, p0, Lcom/iMe/ui/topics/TopicsAlert$RootView;->this$0:Lcom/iMe/ui/topics/TopicsAlert;

    invoke-static {v9}, Lcom/iMe/ui/topics/TopicsAlert;->access$getBackgroundPaddingTop$p$s2101051000(Lcom/iMe/ui/topics/TopicsAlert;)I

    move-result v9

    add-int/2addr v9, v1

    const/16 v1, 0x18

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v9, v1

    int-to-float v1, v9

    .line 412
    invoke-virtual {v2, v4, v5, v8, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 415
    iget-object v1, p0, Lcom/iMe/ui/topics/TopicsAlert$RootView;->rect:Landroid/graphics/RectF;

    const/16 v2, 0xc

    .line 416
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    .line 417
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    .line 418
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    .line 414
    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_4
    const/16 v1, 0x24

    .line 421
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 422
    iget-object v2, p0, Lcom/iMe/ui/topics/TopicsAlert$RootView;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v3, v1

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v1

    int-to-float v1, v8

    div-float/2addr v1, v4

    const/4 v4, 0x4

    .line 423
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v0, v0

    .line 422
    invoke-virtual {v2, v3, v5, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 424
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/iMe/ui/topics/TopicsAlert$RootView;->this$0:Lcom/iMe/ui/topics/TopicsAlert;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_sheet_scrollUp:I

    invoke-static {v1, v2}, Lcom/iMe/ui/topics/TopicsAlert;->access$getThemedColor(Lcom/iMe/ui/topics/TopicsAlert;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 426
    iget-object v0, p0, Lcom/iMe/ui/topics/TopicsAlert$RootView;->rect:Landroid/graphics/RectF;

    .line 427
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    .line 428
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    .line 429
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    .line 425
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    if-lez v7, :cond_5

    .line 432
    iget-object v0, p0, Lcom/iMe/ui/topics/TopicsAlert$RootView;->this$0:Lcom/iMe/ui/topics/TopicsAlert;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v0, v1}, Lcom/iMe/ui/topics/TopicsAlert;->access$getThemedColor(Lcom/iMe/ui/topics/TopicsAlert;I)I

    move-result v0

    const/16 v1, 0xff

    .line 435
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f4ccccd    # 0.8f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 436
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v4, v4

    .line 437
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    .line 433
    invoke-static {v1, v2, v4, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 439
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 441
    iget-object v0, p0, Lcom/iMe/ui/topics/TopicsAlert$RootView;->this$0:Lcom/iMe/ui/topics/TopicsAlert;

    invoke-static {v0}, Lcom/iMe/ui/topics/TopicsAlert;->access$getBackgroundPaddingLeft$p$s2101051000(Lcom/iMe/ui/topics/TopicsAlert;)I

    move-result v0

    int-to-float v2, v0

    .line 442
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v0, v7

    int-to-float v3, v0

    .line 443
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/iMe/ui/topics/TopicsAlert$RootView;->this$0:Lcom/iMe/ui/topics/TopicsAlert;

    invoke-static {v1}, Lcom/iMe/ui/topics/TopicsAlert;->access$getBackgroundPaddingLeft$p$s2101051000(Lcom/iMe/ui/topics/TopicsAlert;)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v4, v0

    .line 444
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v5, v0

    .line 445
    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    move-object v1, p1

    .line 440
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_5
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iMe/ui/topics/TopicsAlert$RootView;->this$0:Lcom/iMe/ui/topics/TopicsAlert;

    invoke-static {v0}, Lcom/iMe/ui/topics/TopicsAlert;->access$getScrollOffsetY$p(Lcom/iMe/ui/topics/TopicsAlert;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/iMe/ui/topics/TopicsAlert$RootView;->this$0:Lcom/iMe/ui/topics/TopicsAlert;

    invoke-static {v1}, Lcom/iMe/ui/topics/TopicsAlert;->access$getScrollOffsetY$p(Lcom/iMe/ui/topics/TopicsAlert;)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 323
    iget-object p1, p0, Lcom/iMe/ui/topics/TopicsAlert$RootView;->this$0:Lcom/iMe/ui/topics/TopicsAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    const/4 p1, 0x1

    goto :goto_0

    .line 327
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 367
    iget v0, p0, Lcom/iMe/ui/topics/TopicsAlert$RootView;->lastNotifyWidth:I

    sub-int v1, p4, p2

    if-eq v0, v1, :cond_0

    .line 368
    iput v1, p0, Lcom/iMe/ui/topics/TopicsAlert$RootView;->lastNotifyWidth:I

    .line 369
    iget-object v0, p0, Lcom/iMe/ui/topics/TopicsAlert$RootView;->this$0:Lcom/iMe/ui/topics/TopicsAlert;

    invoke-static {v0}, Lcom/iMe/ui/topics/TopicsAlert;->access$getListAdapter(Lcom/iMe/ui/topics/TopicsAlert;)Lcom/iMe/ui/topics/TopicsAlert$ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 371
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 372
    iget-object p1, p0, Lcom/iMe/ui/topics/TopicsAlert$RootView;->this$0:Lcom/iMe/ui/topics/TopicsAlert;

    invoke-static {p1}, Lcom/iMe/ui/topics/TopicsAlert;->access$updateLayout(Lcom/iMe/ui/topics/TopicsAlert;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 9

    .line 333
    iget-object v0, p0, Lcom/iMe/ui/topics/TopicsAlert$RootView;->this$0:Lcom/iMe/ui/topics/TopicsAlert;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/iMe/ui/topics/TopicsAlert;->access$setIgnoreLayout$p(Lcom/iMe/ui/topics/TopicsAlert;Z)V

    .line 335
    iget-object v0, p0, Lcom/iMe/ui/topics/TopicsAlert$RootView;->this$0:Lcom/iMe/ui/topics/TopicsAlert;

    invoke-static {v0}, Lcom/iMe/ui/topics/TopicsAlert;->access$getBackgroundPaddingLeft$p$s2101051000(Lcom/iMe/ui/topics/TopicsAlert;)I

    move-result v0

    .line 336
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    .line 337
    iget-object v3, p0, Lcom/iMe/ui/topics/TopicsAlert$RootView;->this$0:Lcom/iMe/ui/topics/TopicsAlert;

    invoke-static {v3}, Lcom/iMe/ui/topics/TopicsAlert;->access$getBackgroundPaddingLeft$p$s2101051000(Lcom/iMe/ui/topics/TopicsAlert;)I

    move-result v3

    const/4 v4, 0x0

    .line 334
    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 340
    iget-object v0, p0, Lcom/iMe/ui/topics/TopicsAlert$RootView;->this$0:Lcom/iMe/ui/topics/TopicsAlert;

    invoke-static {v0, v4}, Lcom/iMe/ui/topics/TopicsAlert;->access$setIgnoreLayout$p(Lcom/iMe/ui/topics/TopicsAlert;Z)V

    .line 341
    iget-object v0, p0, Lcom/iMe/ui/topics/TopicsAlert$RootView;->this$0:Lcom/iMe/ui/topics/TopicsAlert;

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    const/16 v3, 0x1c

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x4

    invoke-static {v0, v2}, Lcom/iMe/ui/topics/TopicsAlert;->access$setItemWidth$p(Lcom/iMe/ui/topics/TopicsAlert;I)V

    const/16 v0, 0x6e

    .line 343
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iget-object v2, p0, Lcom/iMe/ui/topics/TopicsAlert$RootView;->this$0:Lcom/iMe/ui/topics/TopicsAlert;

    invoke-static {v2}, Lcom/iMe/ui/topics/TopicsAlert;->access$getTopics(Lcom/iMe/ui/topics/TopicsAlert;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    const/16 v3, 0x64

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    mul-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 345
    iget-object v2, p0, Lcom/iMe/ui/topics/TopicsAlert$RootView;->this$0:Lcom/iMe/ui/topics/TopicsAlert;

    invoke-static {v2}, Lcom/iMe/ui/topics/TopicsAlert;->access$getBackgroundPaddingTop$p$s2101051000(Lcom/iMe/ui/topics/TopicsAlert;)I

    move-result v2

    add-int/2addr v0, v2

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v0, v2

    .line 346
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    int-to-double v2, v0

    int-to-float v5, p2

    const/high16 v6, 0x40a00000    # 5.0f

    div-float/2addr v5, v6

    float-to-double v5, v5

    const-wide v7, 0x400999999999999aL    # 3.2

    mul-double/2addr v5, v7

    cmpg-double v2, v2, v5

    if-gez v2, :cond_0

    move v2, v4

    goto :goto_0

    .line 347
    :cond_0
    div-int/lit8 v2, p2, 0x5

    mul-int/lit8 v2, v2, 0x2

    :goto_0
    if-eqz v2, :cond_1

    if-ge v0, p2, :cond_1

    sub-int v3, p2, v0

    sub-int/2addr v2, v3

    :cond_1
    if-nez v2, :cond_2

    .line 352
    iget-object v2, p0, Lcom/iMe/ui/topics/TopicsAlert$RootView;->this$0:Lcom/iMe/ui/topics/TopicsAlert;

    invoke-static {v2}, Lcom/iMe/ui/topics/TopicsAlert;->access$getBackgroundPaddingTop$p$s2101051000(Lcom/iMe/ui/topics/TopicsAlert;)I

    move-result v2

    .line 354
    :cond_2
    iget-object v3, p0, Lcom/iMe/ui/topics/TopicsAlert$RootView;->this$0:Lcom/iMe/ui/topics/TopicsAlert;

    invoke-static {v3}, Lcom/iMe/ui/topics/TopicsAlert;->access$getListView(Lcom/iMe/ui/topics/TopicsAlert;)Lcom/iMe/ui/topics/TopicsAlert$initListView$1;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    if-eq v3, v2, :cond_3

    .line 355
    iget-object v3, p0, Lcom/iMe/ui/topics/TopicsAlert$RootView;->this$0:Lcom/iMe/ui/topics/TopicsAlert;

    invoke-static {v3, v1}, Lcom/iMe/ui/topics/TopicsAlert;->access$setIgnoreLayout$p(Lcom/iMe/ui/topics/TopicsAlert;Z)V

    .line 356
    iget-object v3, p0, Lcom/iMe/ui/topics/TopicsAlert$RootView;->this$0:Lcom/iMe/ui/topics/TopicsAlert;

    invoke-static {v3}, Lcom/iMe/ui/topics/TopicsAlert;->access$getListView(Lcom/iMe/ui/topics/TopicsAlert;)Lcom/iMe/ui/topics/TopicsAlert$initListView$1;

    move-result-object v3

    const/16 v5, 0xa

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    const/16 v7, 0xe

    invoke-virtual {v3, v6, v2, v5, v7}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 357
    iget-object v2, p0, Lcom/iMe/ui/topics/TopicsAlert$RootView;->this$0:Lcom/iMe/ui/topics/TopicsAlert;

    invoke-static {v2, v4}, Lcom/iMe/ui/topics/TopicsAlert;->access$setIgnoreLayout$p(Lcom/iMe/ui/topics/TopicsAlert;Z)V

    :cond_3
    if-lt v0, p2, :cond_4

    goto :goto_1

    :cond_4
    move v1, v4

    .line 359
    :goto_1
    iput-boolean v1, p0, Lcom/iMe/ui/topics/TopicsAlert$RootView;->fullHeight:Z

    .line 362
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 360
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/iMe/ui/topics/TopicsAlert$RootView;->this$0:Lcom/iMe/ui/topics/TopicsAlert;

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

    .line 376
    iget-object v0, p0, Lcom/iMe/ui/topics/TopicsAlert$RootView;->this$0:Lcom/iMe/ui/topics/TopicsAlert;

    invoke-static {v0}, Lcom/iMe/ui/topics/TopicsAlert;->access$getIgnoreLayout$p(Lcom/iMe/ui/topics/TopicsAlert;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 379
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
