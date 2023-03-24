.class public Lorg/telegram/ui/Components/Paint/Views/StickerView$StickerViewSelectionView;
.super Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;
.source "StickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/Paint/Views/StickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StickerViewSelectionView"
.end annotation


# instance fields
.field private arcRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/Paint/Views/StickerView;Landroid/content/Context;)V
    .locals 0

    .line 198
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;-><init>(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/content/Context;)V

    .line 195
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView$StickerViewSelectionView;->arcRect:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 226
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 228
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40900000    # 4.5f

    .line 229
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v6, v1

    add-float/2addr v0, v6

    const/16 v1, 0xf

    .line 231
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    add-float v7, v0, v1

    .line 232
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float v8, v0, v7

    .line 234
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView$StickerViewSelectionView;->arcRect:Landroid/graphics/RectF;

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, v8

    add-float v9, v7, v1

    invoke-virtual {v0, v7, v7, v9, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 235
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView$StickerViewSelectionView;->arcRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/high16 v3, 0x43340000    # 180.0f

    const/4 v4, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 236
    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/StickerView$StickerViewSelectionView;->arcRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->paint:Landroid/graphics/Paint;

    const/high16 v2, 0x43340000    # 180.0f

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    add-float/2addr v8, v7

    .line 238
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->dotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v6, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 239
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->dotStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v6, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 241
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->dotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v8, v6, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 242
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->dotStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v8, v6, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected pointInsideHandle(FF)I
    .locals 6

    const/high16 v0, 0x3f800000    # 1.0f

    .line 203
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x419c0000    # 19.5f

    .line 204
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 207
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v4, v0, v3

    sub-float/2addr v2, v4

    div-float/2addr v2, v3

    add-float/2addr v2, v0

    sub-float v5, v0, v1

    cmpl-float v5, p1, v5

    if-lez v5, :cond_0

    sub-float v5, v2, v1

    cmpl-float v5, p2, v5

    if-lez v5, :cond_0

    add-float v5, v0, v1

    cmpg-float v5, p1, v5

    if-gez v5, :cond_0

    add-float v5, v2, v1

    cmpg-float v5, p2, v5

    if-gez v5, :cond_0

    const/4 p1, 0x1

    return p1

    .line 211
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v4

    add-float/2addr v5, v0

    sub-float/2addr v5, v1

    cmpl-float v5, p1, v5

    if-lez v5, :cond_1

    sub-float v5, v2, v1

    cmpl-float v5, p2, v5

    if-lez v5, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v4

    add-float/2addr v0, v5

    add-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    add-float/2addr v2, v1

    cmpg-float v0, p2, v2

    if-gez v0, :cond_1

    const/4 p1, 0x2

    return p1

    .line 215
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    sub-float/2addr p1, v0

    float-to-double v1, p1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    .line 217
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    sub-float/2addr p2, v0

    float-to-double p1, p2

    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v1, p1

    float-to-double p1, v0

    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    cmpg-double p1, v1, p1

    if-gez p1, :cond_2

    const/4 p1, 0x3

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
