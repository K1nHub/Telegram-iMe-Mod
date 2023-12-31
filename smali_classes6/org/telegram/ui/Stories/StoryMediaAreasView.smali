.class public Lorg/telegram/ui/Stories/StoryMediaAreasView;
.super Landroid/widget/FrameLayout;
.source "StoryMediaAreasView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;
    }
.end annotation


# instance fields
.field private final cutPaint:Landroid/graphics/Paint;

.field private hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

.field private final hintsContainer:Landroid/widget/FrameLayout;

.field private lastMediaAreas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/tl/TL_stories$MediaArea;",
            ">;"
        }
    .end annotation
.end field

.field private malicious:Z

.field matrix:Landroid/graphics/Matrix;

.field public final parentHighlightAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

.field point:[F

.field private final rectF:Landroid/graphics/RectF;

.field private resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private selectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

.field private shined:Z


# direct methods
.method public static synthetic $r8$lambda$_9W0gzQj_IP24UNjWD-PK_1D1oY(Lorg/telegram/ui/Stories/StoryMediaAreasView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->lambda$onClick$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jp7hW7N6nd8i2br7pCDHnFDtT_k(Lorg/telegram/ui/Stories/StoryMediaAreasView;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->lambda$onClick$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$so1TxbHy8RMAJjnqt17YM4pThWU(Lorg/telegram/ui/Stories/StoryMediaAreasView;Lorg/telegram/ui/Stories/recorder/HintView2;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->lambda$onClick$1(Lorg/telegram/ui/Stories/recorder/HintView2;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 9

    .line 56
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->selectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    .line 45
    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 50
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->matrix:Landroid/graphics/Matrix;

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 51
    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->point:[F

    .line 339
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->rectF:Landroid/graphics/RectF;

    .line 340
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->cutPaint:Landroid/graphics/Paint;

    .line 342
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v1, -0x1

    .line 343
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 345
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x78

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->parentHighlightAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v0, 0x0

    .line 379
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->shined:Z

    .line 57
    iput-object p2, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 58
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 59
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->hintsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private drawHighlight(Landroid/graphics/Canvas;)V
    .locals 12

    .line 356
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->parentHighlightAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->selectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v4, v0, v1

    if-lez v4, :cond_4

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 358
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v8, v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    int-to-float v9, v4

    const/16 v10, 0xff

    const/16 v11, 0x1f

    move-object v5, p1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    const/high16 v4, 0x18000000

    .line 359
    invoke-static {v4, v0}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    move v0, v3

    .line 360
    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 361
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 362
    iget-object v5, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->hintsContainer:Landroid/widget/FrameLayout;

    if-eq v4, v5, :cond_2

    .line 363
    move-object v5, v4

    check-cast v5, Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    .line 364
    iget-object v5, v5, Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;->highlightAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v6, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->selectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    if-ne v4, v6, :cond_1

    move v6, v2

    goto :goto_2

    :cond_1
    move v6, v3

    :goto_2
    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v5

    cmpl-float v6, v5, v1

    if-lez v6, :cond_2

    .line 366
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 367
    iget-object v6, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v7

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v8

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v9

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v10

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 368
    invoke-virtual {v4}, Landroid/view/View;->getRotation()F

    move-result v4

    iget-object v6, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    invoke-virtual {p1, v4, v6, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 369
    iget-object v4, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->cutPaint:Landroid/graphics/Paint;

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 370
    iget-object v4, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v5

    const v6, 0x3e4ccccd    # 0.2f

    mul-float/2addr v5, v6

    iget-object v7, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    mul-float/2addr v7, v6

    iget-object v6, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->cutPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v7, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 371
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 375
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    return-void
.end method

.method public static getMediaAreasFor(Lorg/telegram/ui/Stories/recorder/StoryEntry;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/ui/Stories/recorder/StoryEntry;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/tl/TL_stories$MediaArea;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 63
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_1

    .line 66
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 67
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 68
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    iget-object v2, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    instance-of v2, v2, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaSuggestedReaction;

    if-eqz v2, :cond_1

    .line 69
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->mediaEntities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;

    iget-object v2, v2, Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$onClick$0()V
    .locals 1

    .line 181
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    const/4 v0, 0x0

    .line 183
    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    :cond_0
    const/4 v0, 0x0

    .line 185
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->onHintVisible(Z)V

    return-void
.end method

.method private synthetic lambda$onClick$1(Lorg/telegram/ui/Stories/recorder/HintView2;)V
    .locals 1

    .line 257
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->hintsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 258
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 259
    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->selectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    .line 260
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    const/4 p1, 0x0

    .line 261
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->onHintVisible(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onClick$2(Landroid/view/View;)V
    .locals 0

    .line 269
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->selectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->onClick(Landroid/view/View;)V

    return-void
.end method

.method private onClickAway()V
    .locals 4

    .line 303
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    .line 305
    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 307
    :cond_0
    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->selectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    .line 308
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    const/4 v0, 0x0

    .line 309
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->onHintVisible(Z)V

    .line 311
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->malicious:Z

    if-eqz v1, :cond_2

    move v1, v0

    .line 312
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 313
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 314
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->hintsContainer:Landroid/widget/FrameLayout;

    if-eq v2, v3, :cond_1

    .line 315
    invoke-virtual {v2, v0}, Landroid/view/View;->setClickable(Z)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static rotatedRectContainsPoint(FFFFFFF)Z
    .locals 6

    sub-float/2addr p5, p0

    sub-float/2addr p6, p1

    neg-float p0, p4

    float-to-double p0, p0

    .line 422
    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p0

    float-to-double p4, p5

    .line 423
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, p4

    float-to-double v2, p6

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    sub-double/2addr v0, v4

    double-to-float p6, v0

    .line 424
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr p4, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    mul-double/2addr v2, p0

    add-double/2addr p4, v2

    double-to-float p0, p4

    neg-float p1, p2

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p1, p4

    cmpl-float p1, p6, p1

    if-ltz p1, :cond_0

    div-float/2addr p2, p4

    cmpg-float p1, p6, p2

    if-gtz p1, :cond_0

    neg-float p1, p3

    div-float/2addr p1, p4

    cmpl-float p1, p0, p1

    if-ltz p1, :cond_0

    div-float/2addr p3, p4

    cmpg-float p0, p0, p3

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public closeHint()V
    .locals 2

    .line 281
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    .line 283
    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 285
    :cond_0
    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->selectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    .line 286
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    const/4 v0, 0x0

    .line 287
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->onHintVisible(Z)V

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    .line 349
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->hintsContainer:Landroid/widget/FrameLayout;

    if-ne p2, v0, :cond_0

    .line 350
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->drawHighlight(Landroid/graphics/Canvas;)V

    .line 352
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public hasAreaAboveAt(FF)Z
    .locals 11

    const/4 v0, 0x0

    move v1, v0

    .line 400
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 401
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 402
    instance-of v3, v2, Lorg/telegram/ui/Stories/StoryReactionWidgetView;

    if-eqz v3, :cond_0

    .line 404
    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v4

    .line 405
    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v5

    .line 406
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v6, v3

    .line 407
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v7, v3

    .line 408
    invoke-virtual {v2}, Landroid/view/View;->getRotation()F

    move-result v8

    move v9, p1

    move v10, p2

    .line 403
    invoke-static/range {v4 .. v10}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->rotatedRectContainsPoint(FFFFFFF)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public hasClickableViews(FF)Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 442
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 443
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 444
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->hintsContainer:Landroid/widget/FrameLayout;

    if-ne v2, v3, :cond_0

    goto :goto_1

    .line 447
    :cond_0
    instance-of v3, v2, Lorg/telegram/ui/Stories/StoryReactionWidgetView;

    if-nez v3, :cond_1

    goto :goto_1

    .line 450
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 451
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->point:[F

    aput p1, v3, v0

    const/4 v4, 0x1

    .line 452
    aput p2, v3, v4

    .line 453
    iget-object v5, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 454
    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->point:[F

    aget v3, v3, v0

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->point:[F

    aget v3, v3, v0

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->point:[F

    aget v3, v3, v4

    .line 455
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->point:[F

    aget v3, v3, v4

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v3, v2

    if-gtz v2, :cond_2

    return v4

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public hasSelected()Z
    .locals 1

    .line 394
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->selectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11

    .line 171
    instance-of v0, p1, Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    if-nez v0, :cond_0

    return-void

    .line 175
    :cond_0
    instance-of v0, p1, Lorg/telegram/ui/Stories/StoryReactionWidgetView;

    if-eqz v0, :cond_1

    .line 176
    check-cast p1, Lorg/telegram/ui/Stories/StoryReactionWidgetView;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->showEffect(Lorg/telegram/ui/Stories/StoryReactionWidgetView;)V

    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->selectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, p1, :cond_4

    .line 180
    new-instance p1, Lorg/telegram/ui/Stories/StoryMediaAreasView$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/StoryMediaAreasView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/StoryMediaAreasView;)V

    const-wide/16 v5, 0xc8

    invoke-static {p1, v5, v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 188
    new-instance p1, Lorg/telegram/ui/Stories/StoryMediaAreasView$1;

    invoke-direct {p1, p0, v1}, Lorg/telegram/ui/Stories/StoryMediaAreasView$1;-><init>(Lorg/telegram/ui/Stories/StoryMediaAreasView;I)V

    .line 194
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->setResourceProvider(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 195
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 196
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->selectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    instance-of v5, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaVenue;

    if-eqz v5, :cond_2

    .line 197
    check-cast v1, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaVenue;

    .line 198
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;-><init>()V

    .line 199
    iget-object v5, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaVenue;->venue_id:Ljava/lang/String;

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->venue_id:Ljava/lang/String;

    .line 200
    iget-object v5, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaVenue;->venue_type:Ljava/lang/String;

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->venue_type:Ljava/lang/String;

    .line 201
    iget-object v5, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaVenue;->title:Ljava/lang/String;

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    .line 202
    iget-object v5, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaVenue;->address:Ljava/lang/String;

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->address:Ljava/lang/String;

    .line 203
    iget-object v5, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaVenue;->provider:Ljava/lang/String;

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->provider:Ljava/lang/String;

    .line 204
    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaVenue;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iput-object v1, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    .line 205
    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    goto :goto_0

    .line 206
    :cond_2
    instance-of v1, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaGeoPoint;

    if-eqz v1, :cond_3

    .line 207
    invoke-virtual {p1, v4}, Lorg/telegram/ui/LocationActivity;->setInitialMaxZoom(Z)V

    .line 208
    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->selectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    iget-object v1, v1, Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    check-cast v1, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaGeoPoint;

    .line 209
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;-><init>()V

    .line 210
    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaGeoPoint;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iput-object v1, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    .line 211
    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 217
    :goto_0
    invoke-virtual {p1, v3}, Lorg/telegram/ui/LocationActivity;->setSharingAllowed(Z)V

    .line 218
    new-instance v1, Lorg/telegram/messenger/MessageObject;

    sget v4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-direct {v1, v4, v0, v3, v3}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    invoke-virtual {p1, v1}, Lorg/telegram/ui/LocationActivity;->setMessageObject(Lorg/telegram/messenger/MessageObject;)V

    .line 219
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 220
    iput-object v2, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->selectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    .line 221
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void

    .line 213
    :cond_3
    iput-object v2, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->selectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    .line 214
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void

    :cond_4
    if-eqz v0, :cond_5

    .line 225
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->malicious:Z

    if-eqz v0, :cond_5

    .line 226
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->onClickAway()V

    return-void

    .line 230
    :cond_5
    check-cast p1, Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->selectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    .line 231
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 232
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz p1, :cond_6

    .line 233
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    .line 234
    iput-object v2, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 237
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->selectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    const/16 v0, 0x64

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_7

    move p1, v4

    goto :goto_1

    :cond_7
    move p1, v3

    .line 239
    :goto_1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    sget v2, Lorg/telegram/messenger/R$string;->StoryViewLocation:I

    const-string v5, "StoryViewLocation"

    invoke-static {v5, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 240
    new-instance v2, Landroid/text/SpannableString;

    const-string v5, ">"

    invoke-direct {v2, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 241
    new-instance v6, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v7, Lorg/telegram/messenger/R$drawable;->photos_arrow:I

    invoke-direct {v6, v7}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    const/4 v7, 0x2

    .line 242
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Lorg/telegram/ui/Components/ColoredImageSpan;->translate(FF)V

    .line 243
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v7

    const/16 v8, 0x21

    invoke-virtual {v2, v6, v3, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 244
    new-instance v6, Landroid/text/SpannableString;

    const-string v7, "<"

    invoke-direct {v6, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 245
    new-instance v7, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v9, Lorg/telegram/messenger/R$drawable;->attach_arrow_right:I

    invoke-direct {v7, v9}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    const/4 v9, -0x2

    .line 246
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v7, v9, v10}, Lorg/telegram/ui/Components/ColoredImageSpan;->translate(FF)V

    const/high16 v9, -0x40800000    # -1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    .line 247
    invoke-virtual {v7, v9, v10}, Lorg/telegram/ui/Components/ColoredImageSpan;->setScale(FF)V

    .line 248
    invoke-virtual {v6}, Landroid/text/SpannableString;->length()I

    move-result v9

    invoke-virtual {v6, v7, v3, v9, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 249
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->isRTL(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object v2, v6

    :cond_8
    invoke-static {v5, v0, v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 251
    new-instance v2, Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz p1, :cond_9

    move v1, v4

    :cond_9
    invoke-direct {v2, v3, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;-><init>(Landroid/content/Context;I)V

    .line 252
    invoke-virtual {v2, v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    const v1, 0x28ffffff

    .line 253
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setSelectorColor(I)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->selectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    .line 254
    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    const/16 v3, 0x8

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v2, v5

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->setJointPx(FF)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    const-wide/16 v1, 0x1388

    .line 255
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->setDuration(J)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 256
    new-instance v1, Lorg/telegram/ui/Stories/StoryMediaAreasView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Stories/StoryMediaAreasView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/StoryMediaAreasView;Lorg/telegram/ui/Stories/recorder/HintView2;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setOnHiddenListener(Ljava/lang/Runnable;)Lorg/telegram/ui/Stories/recorder/HintView2;

    const/16 v0, 0x32

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz p1, :cond_a

    .line 265
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->selectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    iget-object v5, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->selectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v1

    add-float/2addr v2, v5

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2

    .line 267
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->selectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    iget-object v5, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->selectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v1

    sub-float/2addr v2, v5

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v2, v1

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 269
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    new-instance v1, Lorg/telegram/ui/Stories/StoryMediaAreasView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/StoryMediaAreasView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/StoryMediaAreasView;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-virtual {p1, v1, v2, v5, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 271
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->hintsContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/4 v2, -0x1

    invoke-static {v2, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->show()Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 273
    invoke-virtual {p0, v4}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->onHintVisible(Z)V

    return-void
.end method

.method protected onHintVisible(Z)V
    .locals 0

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    const/4 p1, 0x0

    move v0, p1

    .line 323
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 324
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 325
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->hintsContainer:Landroid/widget/FrameLayout;

    if-ne v1, v2, :cond_0

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    .line 326
    invoke-virtual {v1, p1, p1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 327
    :cond_0
    instance-of v2, v1, Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    if-eqz v2, :cond_1

    .line 328
    check-cast v1, Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    .line 329
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    neg-int v4, v2

    .line 330
    div-int/lit8 v4, v4, 0x2

    neg-int v5, v3

    div-int/lit8 v5, v5, 0x2

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v4, v5, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 331
    iget-object v2, v1, Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->coordinates:Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaCoordinates;

    iget-wide v2, v2, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaCoordinates;->x:D

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v2, v6

    double-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 332
    iget-object v2, v1, Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->coordinates:Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaCoordinates;

    iget-wide v2, v2, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaCoordinates;->y:D

    div-double/2addr v2, v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 333
    iget-object v2, v1, Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->coordinates:Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaCoordinates;

    iget-wide v2, v2, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaCoordinates;->rotation:D

    double-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setRotation(F)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10

    .line 149
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 150
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/4 v0, 0x0

    .line 151
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 152
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 153
    iget-object v2, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->hintsContainer:Landroid/widget/FrameLayout;

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v2, :cond_0

    .line 155
    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 156
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 154
    invoke-virtual {v2, v1, v3}, Landroid/widget/FrameLayout;->measure(II)V

    goto :goto_1

    .line 158
    :cond_0
    instance-of v1, v1, Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    if-eqz v1, :cond_1

    .line 159
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    .line 160
    iget-object v2, v1, Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->coordinates:Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaCoordinates;

    iget-wide v4, v2, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaCoordinates;->w:D

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    int-to-double v8, p1

    mul-double/2addr v4, v8

    .line 161
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget-object v4, v1, Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;->mediaArea:Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    iget-object v4, v4, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->coordinates:Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaCoordinates;

    iget-wide v4, v4, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaCoordinates;->h:D

    div-double/2addr v4, v6

    int-to-double v6, p2

    mul-double/2addr v4, v6

    .line 162
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 160
    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public onStoryItemUpdated(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Z)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 433
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 434
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/ui/Stories/StoryReactionWidgetView;

    if-eqz v1, :cond_1

    .line 435
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/StoryReactionWidgetView;

    .line 436
    iget-object v2, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    invoke-virtual {v1, v2, p2}, Lorg/telegram/ui/Stories/StoryReactionWidgetView;->setViews(Lorg/telegram/tgnet/tl/TL_stories$StoryViews;Z)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 292
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->shown()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 295
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 296
    invoke-direct {p0}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->onClickAway()V

    .line 298
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method protected presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    return-void
.end method

.method public set(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/util/ArrayList;Lorg/telegram/ui/EmojiAnimationsOverlay;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/tl/TL_stories$StoryItem;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/tl/TL_stories$MediaArea;",
            ">;",
            "Lorg/telegram/ui/EmojiAnimationsOverlay;",
            ")V"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->lastMediaAreas:Ljava/util/ArrayList;

    if-ne p2, v0, :cond_1

    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->lastMediaAreas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    return-void

    .line 95
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 96
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    .line 97
    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->hintView:Lorg/telegram/ui/Stories/recorder/HintView2;

    :cond_2
    const/4 v0, 0x0

    move v2, v0

    .line 100
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_4

    .line 101
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 102
    iget-object v5, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->hintsContainer:Landroid/widget/FrameLayout;

    if-eq v3, v5, :cond_3

    .line 103
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    add-int/lit8 v2, v2, -0x1

    :cond_3
    add-int/2addr v2, v4

    goto :goto_0

    .line 107
    :cond_4
    iput-object v1, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->selectedArea:Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    .line 108
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 109
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->onHintVisible(Z)V

    .line 110
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->malicious:Z

    .line 112
    iput-object p2, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->lastMediaAreas:Ljava/util/ArrayList;

    if-nez p2, :cond_5

    return-void

    .line 117
    :cond_5
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->shined:Z

    const-wide/16 v1, 0x0

    move v3, v0

    .line 122
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_9

    .line 123
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;

    if-eqz v5, :cond_8

    .line 124
    iget-object v6, v5, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->coordinates:Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaCoordinates;

    if-eqz v6, :cond_8

    .line 126
    instance-of v6, v5, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaSuggestedReaction;

    if-eqz v6, :cond_7

    .line 127
    new-instance v6, Lorg/telegram/ui/Stories/StoryReactionWidgetView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    move-object v8, v5

    check-cast v8, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaSuggestedReaction;

    invoke-direct {v6, v7, p0, v8, p3}, Lorg/telegram/ui/Stories/StoryReactionWidgetView;-><init>(Landroid/content/Context;Landroid/view/View;Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaSuggestedReaction;Lorg/telegram/ui/EmojiAnimationsOverlay;)V

    if-eqz p1, :cond_6

    .line 130
    iget-object v7, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    invoke-virtual {v6, v7, v0}, Lorg/telegram/ui/Stories/StoryReactionWidgetView;->setViews(Lorg/telegram/tgnet/tl/TL_stories$StoryViews;Z)V

    .line 132
    :cond_6
    invoke-static {v6}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    goto :goto_2

    .line 134
    :cond_7
    new-instance v6, Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, p0, v5}, Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;-><init>(Landroid/content/Context;Landroid/view/View;Lorg/telegram/tgnet/tl/TL_stories$MediaArea;)V

    .line 136
    :goto_2
    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    invoke-virtual {p0, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 139
    iget-object v5, v5, Lorg/telegram/tgnet/tl/TL_stories$MediaArea;->coordinates:Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaCoordinates;

    iget-wide v6, v5, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaCoordinates;->w:D

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v8

    const-wide v10, 0x4090e00000000000L    # 1080.0

    mul-double/2addr v6, v10

    iget-wide v10, v5, Lorg/telegram/tgnet/tl/TL_stories$TL_mediaAreaCoordinates;->h:D

    div-double/2addr v10, v8

    const-wide/high16 v8, 0x409e000000000000L    # 1920.0

    mul-double/2addr v10, v8

    mul-double/2addr v6, v10

    add-double/2addr v1, v6

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_9
    const-wide p1, 0x4124e20000000000L    # 684288.0

    cmpl-double p1, v1, p1

    if-lez p1, :cond_a

    move v0, v4

    .line 142
    :cond_a
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->malicious:Z

    .line 144
    iget-object p1, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->hintsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->bringToFront()V

    return-void
.end method

.method public set(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/ui/EmojiAnimationsOverlay;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 86
    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media_areas:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 87
    :goto_0
    invoke-virtual {p0, p1, v0, p2}, Lorg/telegram/ui/Stories/StoryMediaAreasView;->set(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Ljava/util/ArrayList;Lorg/telegram/ui/EmojiAnimationsOverlay;)V

    return-void
.end method

.method public shine()V
    .locals 3

    .line 381
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->shined:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 384
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/StoryMediaAreasView;->shined:Z

    const/4 v0, 0x0

    .line 385
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 386
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 387
    instance-of v2, v1, Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    if-eqz v2, :cond_1

    .line 388
    check-cast v1, Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/StoryMediaAreasView$AreaView;->shine()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public showEffect(Lorg/telegram/ui/Stories/StoryReactionWidgetView;)V
    .locals 0

    return-void
.end method
