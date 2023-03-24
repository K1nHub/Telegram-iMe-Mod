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
.field private path:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/Paint/Views/TextPaintView;Landroid/content/Context;)V
    .locals 0

    .line 313
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;-><init>(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/content/Context;)V

    .line 340
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$TextViewSelectionView;->path:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 344
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    const/high16 v0, 0x40000000    # 2.0f

    .line 346
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40900000    # 4.5f

    .line 347
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/16 v3, 0xf

    .line 349
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    .line 351
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v4, v1, v0

    sub-float/2addr v3, v4

    .line 352
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v4

    .line 354
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    add-float v12, v1, v3

    add-float v6, v1, v5

    invoke-virtual {v4, v1, v1, v12, v6}, Landroid/graphics/RectF;->set(FFFF)V

    const/16 v7, 0xc

    .line 356
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v3, v0

    .line 357
    invoke-static {v7, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    div-float v13, v5, v0

    invoke-static {v7, v13}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 359
    iget-object v7, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$TextViewSelectionView;->path:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->rewind()V

    mul-float/2addr v3, v0

    add-float v7, v1, v3

    mul-float/2addr v0, v5

    add-float v8, v1, v0

    .line 360
    invoke-virtual {v4, v1, v1, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 361
    iget-object v9, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$TextViewSelectionView;->path:Landroid/graphics/Path;

    const/high16 v10, 0x43340000    # 180.0f

    const/high16 v11, 0x42b40000    # 90.0f

    invoke-virtual {v9, v4, v10, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    sub-float v3, v12, v3

    .line 362
    invoke-virtual {v4, v3, v1, v12, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 363
    iget-object v8, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$TextViewSelectionView;->path:Landroid/graphics/Path;

    const/high16 v9, 0x43870000    # 270.0f

    invoke-virtual {v8, v4, v9, v11}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 364
    iget-object v8, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$TextViewSelectionView;->path:Landroid/graphics/Path;

    iget-object v9, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 366
    iget-object v8, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$TextViewSelectionView;->path:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->rewind()V

    sub-float v0, v6, v0

    .line 367
    invoke-virtual {v4, v1, v0, v7, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 368
    iget-object v7, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$TextViewSelectionView;->path:Landroid/graphics/Path;

    const/high16 v8, -0x3d4c0000    # -90.0f

    invoke-virtual {v7, v4, v10, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 369
    invoke-virtual {v4, v3, v0, v12, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 370
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$TextViewSelectionView;->path:Landroid/graphics/Path;

    invoke-virtual {v0, v4, v11, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 371
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/TextPaintView$TextViewSelectionView;->path:Landroid/graphics/Path;

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-float v0, v1, v5

    sub-float v10, v6, v5

    .line 373
    iget-object v9, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->paint:Landroid/graphics/Paint;

    move-object v4, p1

    move v5, v1

    move v6, v0

    move v7, v1

    move v8, v10

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 374
    iget-object v11, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->paint:Landroid/graphics/Paint;

    move-object v6, p1

    move v7, v12

    move v8, v0

    move v9, v12

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float/2addr v13, v1

    .line 376
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->dotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v13, v2, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 377
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->dotStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v13, v2, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 379
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->dotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v12, v13, v2, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 380
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->dotStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v12, v13, v2, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected pointInsideHandle(FF)I
    .locals 7

    const/high16 v0, 0x3f800000    # 1.0f

    .line 318
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x419c0000    # 19.5f

    .line 319
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 322
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v4, v0, v3

    sub-float/2addr v2, v4

    .line 323
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v4

    div-float v3, v5, v3

    add-float/2addr v3, v0

    sub-float v4, v0, v1

    cmpl-float v4, p1, v4

    if-lez v4, :cond_0

    sub-float v4, v3, v1

    cmpl-float v4, p2, v4

    if-lez v4, :cond_0

    add-float v4, v0, v1

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    add-float v4, v3, v1

    cmpg-float v4, p2, v4

    if-gez v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-float v4, v0, v2

    sub-float v6, v4, v1

    cmpl-float v6, p1, v6

    if-lez v6, :cond_1

    sub-float v6, v3, v1

    cmpl-float v6, p2, v6

    if-lez v6, :cond_1

    add-float/2addr v4, v1

    cmpg-float v4, p1, v4

    if-gez v4, :cond_1

    add-float/2addr v3, v1

    cmpg-float v1, p2, v3

    if-gez v1, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    cmpl-float v1, p1, v0

    if-lez v1, :cond_2

    cmpg-float p1, p1, v2

    if-gez p1, :cond_2

    cmpl-float p1, p2, v0

    if-lez p1, :cond_2

    cmpg-float p1, p2, v5

    if-gez p1, :cond_2

    const/4 p1, 0x3

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
