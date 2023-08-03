.class public Lorg/telegram/ui/Components/Paint/Views/TextPaintView$TextViewSelectionView;
.super Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;
.source "TextPaintView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Paint/Views/TextPaintView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextViewSelectionView"
.end annotation


# instance fields
.field private final clearPaint:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/Paint/Views/TextPaintView;Landroid/content/Context;)V
    .locals 1

    .line 381
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;-><init>(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/content/Context;)V

    .line 378
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$TextViewSelectionView;->clearPaint:Landroid/graphics/Paint;

    .line 409
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$TextViewSelectionView;->path:Landroid/graphics/Path;

    .line 382
    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 413
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    const/high16 v1, 0x40000000    # 2.0f

    .line 415
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x40b51eb8    # 5.66f

    .line 416
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v9

    add-float/2addr v2, v9

    const/16 v3, 0xf

    .line 418
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    add-float v10, v2, v3

    .line 420
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v3, v10, v1

    sub-float/2addr v2, v3

    .line 421
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v3

    .line 423
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    add-float v11, v10, v2

    add-float v12, v10, v4

    invoke-virtual {v3, v10, v10, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    const/16 v5, 0xc

    .line 425
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v2, v1

    .line 426
    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    div-float/2addr v4, v1

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v13

    .line 428
    iget-object v5, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$TextViewSelectionView;->path:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->rewind()V

    mul-float/2addr v2, v1

    add-float v5, v10, v2

    mul-float/2addr v1, v13

    add-float v6, v10, v1

    .line 429
    invoke-virtual {v3, v10, v10, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 430
    iget-object v7, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$TextViewSelectionView;->path:Landroid/graphics/Path;

    const/high16 v14, 0x43340000    # 180.0f

    const/high16 v15, 0x42b40000    # 90.0f

    invoke-virtual {v7, v3, v14, v15}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    sub-float v2, v11, v2

    .line 431
    invoke-virtual {v3, v2, v10, v11, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 432
    iget-object v6, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$TextViewSelectionView;->path:Landroid/graphics/Path;

    const/high16 v7, 0x43870000    # 270.0f

    invoke-virtual {v6, v3, v7, v15}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 433
    iget-object v6, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$TextViewSelectionView;->path:Landroid/graphics/Path;

    iget-object v7, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v8, v6, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 435
    iget-object v6, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$TextViewSelectionView;->path:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->rewind()V

    sub-float v1, v12, v1

    .line 436
    invoke-virtual {v3, v10, v1, v5, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 437
    iget-object v5, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$TextViewSelectionView;->path:Landroid/graphics/Path;

    const/high16 v6, -0x3d4c0000    # -90.0f

    invoke-virtual {v5, v3, v14, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 438
    invoke-virtual {v3, v2, v1, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 439
    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$TextViewSelectionView;->path:Landroid/graphics/Path;

    invoke-virtual {v1, v3, v15, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 440
    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$TextViewSelectionView;->path:Landroid/graphics/Path;

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-float v14, v10, v4

    .line 442
    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->dotStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v10, v14, v9, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/4 v15, 0x1

    .line 443
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v9, v1

    const/high16 v16, 0x3f800000    # 1.0f

    add-float v1, v1, v16

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->dotPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v10, v14, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 445
    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->dotStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v11, v14, v9, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 446
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v9, v1

    add-float v1, v1, v16

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->dotPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v11, v14, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 448
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v5, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v6, 0xff

    const/16 v7, 0x1f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    add-float v7, v10, v13

    sub-float/2addr v12, v13

    .line 450
    iget-object v6, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->paint:Landroid/graphics/Paint;

    move v2, v10

    move v3, v7

    move v4, v10

    move v5, v12

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 451
    iget-object v6, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->paint:Landroid/graphics/Paint;

    move v2, v11

    move v4, v11

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 452
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v9

    sub-float v1, v1, v16

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$TextViewSelectionView;->clearPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v11, v14, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 453
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v9, v1

    sub-float v9, v9, v16

    iget-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$TextViewSelectionView;->clearPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v10, v14, v9, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 455
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected pointInsideHandle(FF)I
    .locals 6

    const/high16 v0, 0x3f800000    # 1.0f

    .line 387
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x419c0000    # 19.5f

    .line 388
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 391
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v4, v0, v3

    sub-float/2addr v2, v4

    .line 392
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v4

    div-float/2addr v5, v3

    add-float/2addr v5, v0

    sub-float v3, v0, v1

    cmpl-float v3, p1, v3

    if-lez v3, :cond_0

    sub-float v3, v5, v1

    cmpl-float v3, p2, v3

    if-lez v3, :cond_0

    add-float v3, v0, v1

    cmpg-float v3, p1, v3

    if-gez v3, :cond_0

    add-float v3, v5, v1

    cmpg-float v3, p2, v3

    if-gez v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-float/2addr v0, v2

    sub-float v2, v0, v1

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    sub-float v2, v5, v1

    cmpl-float v2, p2, v2

    if-lez v2, :cond_1

    add-float/2addr v0, v1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    add-float/2addr v5, v1

    cmpg-float p1, p2, v5

    if-gez p1, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
