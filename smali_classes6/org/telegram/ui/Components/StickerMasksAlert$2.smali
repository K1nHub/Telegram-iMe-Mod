.class Lorg/telegram/ui/Components/StickerMasksAlert$2;
.super Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
.source "StickerMasksAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/StickerMasksAlert;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private ignoreLayout:Z

.field private lastUpdateTime:J

.field private rect:Landroid/graphics/RectF;

.field private statusBarProgress:F

.field final synthetic this$0:Lorg/telegram/ui/Components/StickerMasksAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/StickerMasksAlert;Landroid/content/Context;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$2;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 349
    iput-boolean p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$2;->ignoreLayout:Z

    .line 350
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$2;->rect:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0xd

    .line 409
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    .line 410
    iget-object v3, v0, Lorg/telegram/ui/Components/StickerMasksAlert$2;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$1000(Lorg/telegram/ui/Components/StickerMasksAlert;)I

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Components/StickerMasksAlert$2;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$1100(Lorg/telegram/ui/Components/StickerMasksAlert;)I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v2

    .line 411
    iget-object v4, v0, Lorg/telegram/ui/Components/StickerMasksAlert$2;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$1200(Lorg/telegram/ui/Components/StickerMasksAlert;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    int-to-float v3, v3

    .line 412
    iget-object v4, v0, Lorg/telegram/ui/Components/StickerMasksAlert$2;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$800(Lorg/telegram/ui/Components/StickerMasksAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    :cond_0
    const/16 v4, 0x14

    .line 414
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v4, v3

    .line 416
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    const/16 v6, 0xf

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, v0, Lorg/telegram/ui/Components/StickerMasksAlert$2;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v6}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$1300(Lorg/telegram/ui/Components/StickerMasksAlert;)I

    move-result v6

    add-int/2addr v5, v6

    const/16 v6, 0xc

    .line 419
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    .line 420
    iget-object v8, v0, Lorg/telegram/ui/Components/StickerMasksAlert$2;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v8}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$1400(Lorg/telegram/ui/Components/StickerMasksAlert;)I

    move-result v8

    add-int/2addr v8, v3

    const/4 v9, 0x4

    const/high16 v10, 0x3f800000    # 1.0f

    if-ge v8, v7, :cond_1

    .line 421
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    add-int/2addr v2, v8

    int-to-float v2, v2

    sub-int v8, v7, v3

    .line 422
    iget-object v11, v0, Lorg/telegram/ui/Components/StickerMasksAlert$2;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v11}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$1500(Lorg/telegram/ui/Components/StickerMasksAlert;)I

    move-result v11

    sub-int/2addr v8, v11

    int-to-float v8, v8

    div-float/2addr v8, v2

    invoke-static {v10, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    int-to-float v7, v7

    sub-float/2addr v7, v2

    mul-float v7, v7, v8

    float-to-int v2, v7

    sub-int/2addr v3, v2

    sub-int/2addr v4, v2

    add-int/2addr v5, v2

    sub-float v2, v10, v8

    goto :goto_0

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    .line 432
    :goto_0
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x15

    if-lt v7, v8, :cond_2

    .line 433
    sget v7, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v3, v7

    add-int/2addr v4, v7

    .line 437
    :cond_2
    iget-object v7, v0, Lorg/telegram/ui/Components/StickerMasksAlert$2;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v7}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$1600(Lorg/telegram/ui/Components/StickerMasksAlert;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v11

    invoke-virtual {v7, v8, v3, v11, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 438
    iget-object v5, v0, Lorg/telegram/ui/Components/StickerMasksAlert$2;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v5}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$1600(Lorg/telegram/ui/Components/StickerMasksAlert;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const v5, -0xdadadb

    cmpl-float v7, v2, v10

    if-eqz v7, :cond_3

    .line 441
    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 442
    iget-object v7, v0, Lorg/telegram/ui/Components/StickerMasksAlert$2;->rect:Landroid/graphics/RectF;

    iget-object v8, v0, Lorg/telegram/ui/Components/StickerMasksAlert$2;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v8}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$1700(Lorg/telegram/ui/Components/StickerMasksAlert;)I

    move-result v8

    int-to-float v8, v8

    iget-object v11, v0, Lorg/telegram/ui/Components/StickerMasksAlert$2;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v11}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$1800(Lorg/telegram/ui/Components/StickerMasksAlert;)I

    move-result v11

    add-int/2addr v11, v3

    int-to-float v11, v11

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v12

    iget-object v13, v0, Lorg/telegram/ui/Components/StickerMasksAlert$2;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v13}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$1900(Lorg/telegram/ui/Components/StickerMasksAlert;)I

    move-result v13

    sub-int/2addr v12, v13

    int-to-float v12, v12

    iget-object v13, v0, Lorg/telegram/ui/Components/StickerMasksAlert$2;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v13}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$2000(Lorg/telegram/ui/Components/StickerMasksAlert;)I

    move-result v13

    add-int/2addr v13, v3

    const/16 v3, 0x18

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v13, v3

    int-to-float v3, v13

    invoke-virtual {v7, v8, v11, v12, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 443
    iget-object v3, v0, Lorg/telegram/ui/Components/StickerMasksAlert$2;->rect:Landroid/graphics/RectF;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, v2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v2

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v7, v6, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 446
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 447
    iget-wide v11, v0, Lorg/telegram/ui/Components/StickerMasksAlert$2;->lastUpdateTime:J

    sub-long v11, v6, v11

    const-wide/16 v13, 0x12

    cmp-long v3, v11, v13

    if-lez v3, :cond_4

    move-wide v11, v13

    .line 451
    :cond_4
    iput-wide v6, v0, Lorg/telegram/ui/Components/StickerMasksAlert$2;->lastUpdateTime:J

    const/high16 v3, 0x43340000    # 180.0f

    const/4 v6, 0x0

    cmpl-float v7, v2, v6

    if-lez v7, :cond_6

    const/16 v7, 0x24

    .line 454
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    .line 455
    iget-object v8, v0, Lorg/telegram/ui/Components/StickerMasksAlert$2;->rect:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v13

    sub-int/2addr v13, v7

    const/4 v14, 0x2

    div-int/2addr v13, v14

    int-to-float v13, v13

    int-to-float v15, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v16

    add-int v16, v16, v7

    div-int/lit8 v7, v16, 0x2

    int-to-float v7, v7

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v4, v9

    int-to-float v4, v4

    invoke-virtual {v8, v13, v15, v7, v4}, Landroid/graphics/RectF;->set(FFFF)V

    const v4, -0xb4b4b5

    .line 457
    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    .line 458
    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 459
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    int-to-float v7, v7

    mul-float v7, v7, v10

    mul-float v7, v7, v2

    float-to-int v2, v7

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 460
    iget-object v2, v0, Lorg/telegram/ui/Components/StickerMasksAlert$2;->rect:Landroid/graphics/RectF;

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v7, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 461
    iget v2, v0, Lorg/telegram/ui/Components/StickerMasksAlert$2;->statusBarProgress:F

    cmpl-float v4, v2, v6

    if-lez v4, :cond_8

    long-to-float v4, v11

    div-float/2addr v4, v3

    sub-float/2addr v2, v4

    .line 462
    iput v2, v0, Lorg/telegram/ui/Components/StickerMasksAlert$2;->statusBarProgress:F

    cmpg-float v2, v2, v6

    if-gez v2, :cond_5

    .line 464
    iput v6, v0, Lorg/telegram/ui/Components/StickerMasksAlert$2;->statusBarProgress:F

    goto :goto_1

    .line 466
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_1

    .line 470
    :cond_6
    iget v2, v0, Lorg/telegram/ui/Components/StickerMasksAlert$2;->statusBarProgress:F

    cmpg-float v4, v2, v10

    if-gez v4, :cond_8

    long-to-float v4, v11

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    .line 471
    iput v2, v0, Lorg/telegram/ui/Components/StickerMasksAlert$2;->statusBarProgress:F

    cmpl-float v2, v2, v10

    if-lez v2, :cond_7

    .line 473
    iput v10, v0, Lorg/telegram/ui/Components/StickerMasksAlert$2;->statusBarProgress:F

    goto :goto_1

    .line 475
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_8
    :goto_1
    const/high16 v2, 0x437f0000    # 255.0f

    .line 481
    iget v3, v0, Lorg/telegram/ui/Components/StickerMasksAlert$2;->statusBarProgress:F

    mul-float v3, v3, v2

    float-to-int v2, v3

    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f4ccccd    # 0.8f

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v4

    float-to-int v6, v6

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v4

    float-to-int v4, v5

    invoke-static {v2, v3, v6, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    .line 482
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 483
    iget-object v2, v0, Lorg/telegram/ui/Components/StickerMasksAlert$2;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$2100(Lorg/telegram/ui/Components/StickerMasksAlert;)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Components/StickerMasksAlert$2;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v5}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$2200(Lorg/telegram/ui/Components/StickerMasksAlert;)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v5, v5

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 387
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$2;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$1000(Lorg/telegram/ui/Components/StickerMasksAlert;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$2;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$1000(Lorg/telegram/ui/Components/StickerMasksAlert;)I

    move-result v1

    const/16 v2, 0xc

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 388
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$2;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    const/4 p1, 0x1

    return p1

    .line 391
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 381
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onLayout(ZIIII)V

    .line 382
    iget-object p1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$2;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$900(Lorg/telegram/ui/Components/StickerMasksAlert;Z)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 356
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 357
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x15

    if-lt v0, v3, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$2;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$500(Lorg/telegram/ui/Components/StickerMasksAlert;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 358
    iput-boolean v1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$2;->ignoreLayout:Z

    .line 359
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$2;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$600(Lorg/telegram/ui/Components/StickerMasksAlert;)I

    move-result v0

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    iget-object v4, p0, Lorg/telegram/ui/Components/StickerMasksAlert$2;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$700(Lorg/telegram/ui/Components/StickerMasksAlert;)I

    move-result v4

    invoke-virtual {p0, v0, v3, v4, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 360
    iput-boolean v2, p0, Lorg/telegram/ui/Components/StickerMasksAlert$2;->ignoreLayout:Z

    .line 362
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v0

    sub-int v0, p2, v0

    .line 364
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->measureKeyboardHeight()I

    move-result v3

    const/16 v4, 0x14

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    if-le v3, v4, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 366
    iput v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$2;->statusBarProgress:F

    const/4 v0, 0x0

    goto :goto_0

    .line 368
    :cond_1
    div-int/lit8 v3, v0, 0x5

    mul-int/lit8 v3, v3, 0x3

    sub-int/2addr v0, v3

    const/16 v3, 0x10

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 370
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/StickerMasksAlert$2;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$800(Lorg/telegram/ui/Components/StickerMasksAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    if-eq v3, v0, :cond_2

    .line 371
    iput-boolean v1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$2;->ignoreLayout:Z

    .line 372
    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$2;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$800(Lorg/telegram/ui/Components/StickerMasksAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    neg-int v3, v0

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setPinnedSectionOffsetY(I)V

    .line 373
    iget-object v1, p0, Lorg/telegram/ui/Components/StickerMasksAlert$2;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/StickerMasksAlert;->access$800(Lorg/telegram/ui/Components/StickerMasksAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    const/4 v3, 0x4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    const/16 v5, 0x30

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v1, v4, v0, v3, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 374
    iput-boolean v2, p0, Lorg/telegram/ui/Components/StickerMasksAlert$2;->ignoreLayout:Z

    :cond_2
    const/high16 v0, 0x40000000    # 2.0f

    .line 376
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 396
    iget-object v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$2;->this$0:Lorg/telegram/ui/Components/StickerMasksAlert;

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

    .line 401
    iget-boolean v0, p0, Lorg/telegram/ui/Components/StickerMasksAlert$2;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 404
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
