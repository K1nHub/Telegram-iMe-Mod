.class public Lorg/telegram/ui/ActionBar/SimpleTextView;
.super Landroid/view/View;
.source "SimpleTextView.java"


# instance fields
.field private attachedToWindow:Z

.field private buildFullLayout:Z

.field private canHideRightDrawable:Z

.field private currentScrollDelay:I

.field private drawablePadding:I

.field private ellipsizeByGradient:Z

.field private ellipsizeByGradientLeft:Z

.field private ellipsizeByGradientWidthDp:I

.field private emojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

.field private fadeEllpsizePaint:Landroid/graphics/Paint;

.field private fadeEllpsizePaintWidth:I

.field private fadePaint:Landroid/graphics/Paint;

.field private fadePaintBack:Landroid/graphics/Paint;

.field private firstLineLayout:Landroid/text/Layout;

.field private forceEllipsizeByGradientLeft:Ljava/lang/Boolean;

.field private fullAlpha:F

.field private fullLayout:Landroid/text/Layout;

.field private fullLayoutAdditionalWidth:I

.field private fullLayoutLeftCharactersOffset:F

.field private fullLayoutLeftOffset:I

.field private fullTextMaxLines:I

.field private gravity:I

.field private lastUpdateTime:J

.field private lastWidth:I

.field private layout:Landroid/text/Layout;

.field private leftDrawable:Landroid/graphics/drawable/Drawable;

.field private leftDrawableTopPadding:I

.field private mAlignment:Landroid/text/Layout$Alignment;

.field private maxLines:I

.field private maybeClick:Z

.field private minWidth:I

.field private minusWidth:I

.field private offsetX:I

.field private offsetY:I

.field private paddingRight:I

.field private partLayout:Landroid/text/Layout;

.field private path:Landroid/graphics/Path;

.field private replacedDrawable:Landroid/graphics/drawable/Drawable;

.field private replacedText:Ljava/lang/String;

.field private replacingDrawableTextIndex:I

.field private replacingDrawableTextOffset:F

.field private rightDrawable:Landroid/graphics/drawable/Drawable;

.field private rightDrawableHidden:Z

.field private rightDrawableOnClickListener:Landroid/view/View$OnClickListener;

.field private rightDrawableOutside:Z

.field private rightDrawableScale:F

.field private rightDrawableTopPadding:I

.field public rightDrawableX:I

.field public rightDrawableY:I

.field private scrollNonFitText:Z

.field private scrollingOffset:F

.field private spoilers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/telegram/ui/Components/spoilers/SpoilerEffect;",
            ">;"
        }
    .end annotation
.end field

.field private spoilersPool:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lorg/telegram/ui/Components/spoilers/SpoilerEffect;",
            ">;"
        }
    .end annotation
.end field

.field private text:Ljava/lang/CharSequence;

.field private textDoesNotFit:Z

.field private textHeight:I

.field private textPaint:Landroid/text/TextPaint;

.field private textWidth:I

.field private totalWidth:I

.field private touchDownX:F

.field private touchDownY:F

.field private usaAlphaForEmoji:Z

.field private wasLayout:Z

.field private widthWrapContent:Z

.field private wrapBackgroundDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 134
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x33

    .line 58
    iput p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->gravity:I

    const/4 p1, 0x1

    .line 59
    iput p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->maxLines:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 68
    iput v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableScale:F

    const/4 v0, 0x4

    .line 69
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    const/16 v0, 0x10

    .line 101
    iput v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->ellipsizeByGradientWidthDp:I

    const/4 v0, 0x3

    .line 116
    iput v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullTextMaxLines:I

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->spoilers:Ljava/util/List;

    .line 119
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->spoilersPool:Ljava/util/Stack;

    .line 120
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->path:Landroid/graphics/Path;

    .line 131
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->mAlignment:Landroid/text/Layout$Alignment;

    .line 135
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, p1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    .line 136
    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    return-void
.end method

.method private calcOffset(I)V
    .locals 5

    .line 284
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    if-nez v0, :cond_0

    return-void

    .line 287
    :cond_0
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_9

    .line 288
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v0

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    iput v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textWidth:I

    .line 289
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayout:Landroid/text/Layout;

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 290
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textHeight:I

    goto :goto_0

    .line 291
    :cond_1
    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->maxLines:I

    if-le v0, v3, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 292
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textHeight:I

    goto :goto_0

    .line 294
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textHeight:I

    .line 297
    :goto_0
    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->gravity:I

    and-int/lit8 v4, v0, 0x7

    if-ne v4, v3, :cond_3

    .line 298
    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textWidth:I

    sub-int v0, p1, v0

    div-int/lit8 v0, v0, 0x2

    iget-object v4, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    invoke-virtual {v4, v2}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v0, v4

    iput v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetX:I

    goto :goto_1

    :cond_3
    and-int/lit8 v0, v0, 0x7

    const/4 v4, 0x3

    if-ne v0, v4, :cond_5

    .line 300
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->firstLineLayout:Landroid/text/Layout;

    if-eqz v0, :cond_4

    .line 301
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v0

    float-to-int v0, v0

    neg-int v0, v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetX:I

    goto :goto_1

    .line 303
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v0

    float-to-int v0, v0

    neg-int v0, v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetX:I

    goto :goto_1

    .line 305
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_7

    .line 306
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->firstLineLayout:Landroid/text/Layout;

    if-eqz v0, :cond_6

    int-to-float v4, p1

    .line 307
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v0

    sub-float/2addr v4, v0

    float-to-int v0, v4

    iput v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetX:I

    goto :goto_1

    .line 309
    :cond_6
    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textWidth:I

    sub-int v0, p1, v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetX:I

    goto :goto_1

    :cond_7
    const/16 v0, 0x8

    .line 312
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetX:I

    .line 314
    :goto_1
    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetX:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    add-int/2addr v0, v4

    iput v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetX:I

    .line 315
    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textWidth:I

    iget v4, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->paddingRight:I

    sub-int/2addr p1, v4

    if-le v0, p1, :cond_8

    goto :goto_2

    :cond_8
    move v3, v2

    :goto_2
    iput-boolean v3, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textDoesNotFit:Z

    .line 317
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayout:Landroid/text/Layout;

    if-eqz p1, :cond_9

    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayoutAdditionalWidth:I

    if-lez v0, :cond_9

    .line 318
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->firstLineLayout:Landroid/text/Layout;

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    sub-float/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayoutLeftCharactersOffset:F

    .line 322
    :cond_9
    iget p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacingDrawableTextIndex:I

    if-ltz p1, :cond_a

    .line 323
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacingDrawableTextOffset:F

    goto :goto_3

    .line 325
    :cond_a
    iput v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacingDrawableTextOffset:F

    :goto_3
    return-void
.end method

.method private clipOutSpoilers(Landroid/graphics/Canvas;)V
    .locals 8

    .line 981
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 982
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->spoilers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    .line 983
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 984
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->path:Landroid/graphics/Path;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget v5, v1, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v1

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_0

    .line 986
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->path:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    return-void
.end method

.method private drawLayout(Landroid/graphics/Canvas;)V
    .locals 10

    .line 951
    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayoutLeftOffset:I

    if-eqz v0, :cond_1

    .line 952
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 953
    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayoutLeftOffset:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullAlpha:F

    mul-float/2addr v0, v2

    iget v3, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayoutLeftCharactersOffset:F

    mul-float/2addr v3, v2

    add-float/2addr v0, v3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 955
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 956
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->clipOutSpoilers(Landroid/graphics/Canvas;)V

    .line 957
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->emojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    if-eqz v0, :cond_0

    .line 958
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->clearPositions()V

    .line 960
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 961
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 963
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->emojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v1, p1

    invoke-static/range {v1 .. v9}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFF)V

    .line 964
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawSpoilers(Landroid/graphics/Canvas;)V

    .line 965
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 967
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 968
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->clipOutSpoilers(Landroid/graphics/Canvas;)V

    .line 969
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->emojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    if-eqz v0, :cond_2

    .line 970
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->clearPositions()V

    .line 972
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 973
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 975
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->emojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v1, p1

    invoke-static/range {v1 .. v9}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFF)V

    .line 976
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawSpoilers(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method private drawSpoilers(Landroid/graphics/Canvas;)V
    .locals 2

    .line 990
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->spoilers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    .line 991
    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getAlignment()Landroid/text/Layout$Alignment;
    .locals 1

    .line 441
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->mAlignment:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method private getMaxTextWidth()I
    .locals 3

    .line 947
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableOutside:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sub-int/2addr v0, v1

    return v0
.end method

.method private recreateLayoutMaybe()Z
    .locals 3

    .line 638
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->wasLayout:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->buildFullLayout:Z

    if-nez v0, :cond_1

    .line 639
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getMaxTextWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->minusWidth:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->createLayout(I)Z

    move-result v0

    .line 640
    iget v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->gravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    .line 641
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textHeight:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetY:I

    goto :goto_0

    .line 643
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetY:I

    :goto_0
    return v0

    .line 647
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    const/4 v0, 0x1

    return v0
.end method

.method private updateFadePaints()V
    .locals 12

    .line 225
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fadePaint:Landroid/graphics/Paint;

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fadePaintBack:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollNonFitText:Z

    if-eqz v0, :cond_1

    .line 226
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fadePaint:Landroid/graphics/Paint;

    .line 227
    new-instance v10, Landroid/graphics/LinearGradient;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x6

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v5, v2

    const/4 v6, 0x0

    new-array v7, v1, [I

    fill-array-data v7, :array_0

    new-array v8, v1, [F

    fill-array-data v8, :array_1

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 228
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fadePaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 230
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fadePaintBack:Landroid/graphics/Paint;

    .line 231
    new-instance v10, Landroid/graphics/LinearGradient;

    const/4 v3, 0x0

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v5, v2

    new-array v7, v1, [I

    fill-array-data v7, :array_2

    new-array v8, v1, [F

    fill-array-data v8, :array_3

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 232
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fadePaintBack:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 235
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->forceEllipsizeByGradientLeft:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 236
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 241
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fadeEllpsizePaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_3

    iget v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fadeEllpsizePaintWidth:I

    iget v3, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->ellipsizeByGradientWidthDp:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->ellipsizeByGradientLeft:Z

    if-eq v2, v0, :cond_6

    :cond_3
    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->ellipsizeByGradient:Z

    if-eqz v2, :cond_6

    .line 242
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fadeEllpsizePaint:Landroid/graphics/Paint;

    if-nez v2, :cond_4

    .line 243
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fadeEllpsizePaint:Landroid/graphics/Paint;

    .line 245
    :cond_4
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->ellipsizeByGradientLeft:Z

    if-eqz v0, :cond_5

    .line 247
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fadeEllpsizePaint:Landroid/graphics/Paint;

    new-instance v10, Landroid/graphics/LinearGradient;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->ellipsizeByGradientWidthDp:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fadeEllpsizePaintWidth:I

    int-to-float v5, v2

    const/4 v6, 0x0

    new-array v7, v1, [I

    fill-array-data v7, :array_4

    new-array v8, v1, [F

    fill-array-data v8, :array_5

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_1

    .line 249
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fadeEllpsizePaint:Landroid/graphics/Paint;

    new-instance v10, Landroid/graphics/LinearGradient;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->ellipsizeByGradientWidthDp:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iput v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fadeEllpsizePaintWidth:I

    int-to-float v5, v2

    const/4 v6, 0x0

    new-array v7, v1, [I

    fill-array-data v7, :array_6

    new-array v8, v1, [F

    fill-array-data v8, :array_7

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 251
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fadeEllpsizePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_6
    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        -0x1
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        -0x1
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_6
    .array-data 4
        0x0
        -0x1
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateScrollAnimation()V
    .locals 11

    .line 995
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollNonFitText:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textDoesNotFit:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 998
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 999
    iget-wide v4, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->lastUpdateTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x11

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    move-wide v4, v6

    .line 1003
    :cond_1
    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->currentScrollDelay:I

    if-lez v0, :cond_2

    int-to-long v0, v0

    sub-long/2addr v0, v4

    long-to-int v0, v0

    .line 1004
    iput v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->currentScrollDelay:I

    goto :goto_1

    .line 1006
    :cond_2
    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->totalWidth:I

    const/16 v6, 0x10

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v0, v6

    .line 1008
    iget v6, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    const/16 v7, 0x64

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    cmpg-float v6, v6, v8

    const/high16 v8, 0x42480000    # 50.0f

    const/high16 v9, 0x41a00000    # 20.0f

    if-gez v6, :cond_3

    const/high16 v6, 0x41f00000    # 30.0f

    .line 1009
    iget v8, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v8, v7

    mul-float/2addr v8, v9

    add-float/2addr v8, v6

    goto :goto_0

    .line 1010
    :cond_3
    iget v6, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int v10, v0, v10

    int-to-float v10, v10

    cmpl-float v6, v6, v10

    if-ltz v6, :cond_4

    .line 1011
    iget v6, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int v10, v0, v10

    int-to-float v10, v10

    sub-float/2addr v6, v10

    .line 1012
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    mul-float/2addr v6, v9

    sub-float/2addr v8, v6

    .line 1016
    :cond_4
    :goto_0
    iget v6, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    long-to-float v4, v4

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v6, v4

    iput v6, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    .line 1017
    iput-wide v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->lastUpdateTime:J

    int-to-float v0, v0

    cmpl-float v0, v6, v0

    if-lez v0, :cond_5

    .line 1019
    iput v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    const/16 v0, 0x1f4

    .line 1020
    iput v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->currentScrollDelay:I

    .line 1023
    :cond_5
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method public copyScrolling(Lorg/telegram/ui/ActionBar/SimpleTextView;)V
    .locals 0

    .line 624
    iget p1, p1, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    iput p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    return-void
.end method

.method protected createLayout(I)Z
    .locals 33

    move-object/from16 v6, p0

    .line 330
    iget-object v0, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->text:Ljava/lang/CharSequence;

    const/4 v1, -0x1

    .line 331
    iput v1, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacingDrawableTextIndex:I

    const/4 v7, 0x0

    .line 332
    iput-boolean v7, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableHidden:Z

    const/4 v1, 0x0

    const/4 v8, 0x1

    if-eqz v0, :cond_16

    .line 335
    :try_start_0
    iget-object v2, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 336
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int v2, p1, v2

    .line 337
    iget v3, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    sub-int/2addr v2, v3

    goto :goto_0

    :cond_0
    move/from16 v2, p1

    .line 340
    :goto_0
    iget-object v3, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    iget-boolean v4, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableOutside:Z

    if-nez v4, :cond_1

    .line 341
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sub-int/2addr v2, v3

    .line 343
    iget v4, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    sub-int/2addr v2, v4

    goto :goto_1

    :cond_1
    move v3, v7

    .line 345
    :goto_1
    iget-object v4, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacedText:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    .line 346
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacedText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    iput v4, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacingDrawableTextIndex:I

    if-ltz v4, :cond_2

    .line 348
    invoke-static {v0}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 349
    new-instance v4, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;

    iget-object v5, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-direct {v4, v5}, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;-><init>(I)V

    iget v5, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacingDrawableTextIndex:I

    iget-object v9, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacedText:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v5

    invoke-virtual {v0, v4, v5, v9, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 352
    :cond_2
    iget-object v4, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int/2addr v2, v4

    .line 353
    iget v4, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    sub-int/2addr v2, v4

    .line 356
    :cond_3
    :goto_2
    iget-boolean v4, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->canHideRightDrawable:Z

    if-eqz v4, :cond_4

    if-eqz v3, :cond_4

    iget-boolean v4, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableOutside:Z

    if-nez v4, :cond_4

    .line 357
    iget-object v4, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    int-to-float v5, v2

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v4, v5, v9}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 358
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 359
    iput-boolean v8, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableHidden:Z

    add-int/2addr v2, v3

    .line 361
    iget v3, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    add-int/2addr v2, v3

    :cond_4
    move v5, v2

    .line 364
    iget-boolean v2, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->buildFullLayout:Z

    const/16 v3, 0x7d0

    const/16 v4, 0x8

    if-eqz v2, :cond_e

    .line 366
    iget-boolean v2, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->ellipsizeByGradient:Z

    if-nez v2, :cond_5

    .line 367
    iget-object v2, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    int-to-float v9, v5

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v2, v9, v10}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_3

    :cond_5
    move-object v2, v0

    .line 369
    :goto_3
    iget-boolean v9, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->ellipsizeByGradient:Z

    if-nez v9, :cond_b

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    const/4 v10, 0x0

    .line 370
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v11

    iget-object v12, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v14

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/16 v17, 0x0

    sget-object v18, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    iget v1, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullTextMaxLines:I

    const/16 v21, 0x0

    move-object v9, v0

    move v13, v5

    move/from16 v19, v5

    move/from16 v20, v1

    invoke-static/range {v9 .. v21}, Lorg/telegram/ui/Components/StaticLayoutEx;->createStaticLayout(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;IIZ)Landroid/text/StaticLayout;

    move-result-object v1

    iput-object v1, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayout:Landroid/text/Layout;

    if-eqz v1, :cond_14

    .line 372
    invoke-virtual {v1, v7}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v1

    .line 373
    iget-object v9, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayout:Landroid/text/Layout;

    invoke-virtual {v9, v8}, Landroid/text/Layout;->getLineStart(I)I

    move-result v9

    .line 374
    invoke-interface {v0, v7, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v19

    .line 375
    invoke-static {v0}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 376
    new-instance v10, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v10}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    invoke-virtual {v0, v10, v7, v9, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 378
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-ge v1, v9, :cond_6

    .line 379
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v9

    invoke-interface {v2, v1, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_4

    :cond_6
    const-string v1, "\u2026"

    .line 383
    :goto_4
    new-instance v15, Landroid/text/StaticLayout;

    const/4 v11, 0x0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v12

    iget-object v13, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    iget-boolean v9, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollNonFitText:Z

    if-eqz v9, :cond_7

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    goto :goto_5

    :cond_7
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v9, v5

    :goto_5
    move v14, v9

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v16

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    const/16 v20, 0x0

    move-object v9, v15

    move-object v10, v2

    move-object v2, v15

    move-object/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v20

    invoke-direct/range {v9 .. v18}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v2, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->firstLineLayout:Landroid/text/Layout;

    .line 384
    new-instance v2, Landroid/text/StaticLayout;

    const/4 v12, 0x0

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->length()I

    move-result v13

    iget-object v14, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    iget-boolean v9, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollNonFitText:Z

    if-eqz v9, :cond_8

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    goto :goto_6

    :cond_8
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    add-int/2addr v9, v5

    :goto_6
    move v15, v9

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v16

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    const/4 v9, 0x0

    move-object v10, v2

    move-object/from16 v11, v19

    move/from16 v19, v9

    invoke-direct/range {v10 .. v19}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v2, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    .line 385
    invoke-virtual {v2, v7}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v2

    const/4 v9, 0x0

    cmpl-float v2, v2, v9

    if-eqz v2, :cond_9

    .line 386
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u200f"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_9
    move-object v10, v1

    .line 388
    new-instance v1, Landroid/text/StaticLayout;

    const/4 v11, 0x0

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v12

    iget-object v13, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    iget-boolean v2, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollNonFitText:Z

    if-eqz v2, :cond_a

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    goto :goto_7

    :cond_a
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v2, v5

    :goto_7
    move v14, v2

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v15

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v9, v1

    invoke-direct/range {v9 .. v18}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v1, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->partLayout:Landroid/text/Layout;

    const/16 v21, 0x0

    .line 389
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v22

    iget-object v1, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v2, v5

    iget v3, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayoutAdditionalWidth:I

    add-int v24, v2, v3

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v25

    const/high16 v26, 0x3f800000    # 1.0f

    const/16 v27, 0x0

    const/16 v28, 0x0

    sget-object v29, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    iget v2, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayoutAdditionalWidth:I

    add-int v30, v5, v2

    iget v2, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullTextMaxLines:I

    const/16 v32, 0x0

    move-object/from16 v20, v0

    move-object/from16 v23, v1

    move/from16 v31, v2

    invoke-static/range {v20 .. v32}, Lorg/telegram/ui/Components/StaticLayoutEx;->createStaticLayout(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;IIZ)Landroid/text/StaticLayout;

    move-result-object v0

    iput-object v0, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayout:Landroid/text/Layout;

    goto/16 :goto_d

    .line 392
    :cond_b
    new-instance v0, Landroid/text/StaticLayout;

    const/4 v11, 0x0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v12

    iget-object v13, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    iget-boolean v9, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollNonFitText:Z

    if-nez v9, :cond_d

    iget-boolean v9, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->ellipsizeByGradient:Z

    if-eqz v9, :cond_c

    goto :goto_8

    :cond_c
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v3, v5

    goto :goto_9

    :cond_d
    :goto_8
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    :goto_9
    move v14, v3

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v15

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v9, v0

    move-object v10, v2

    invoke-direct/range {v9 .. v18}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    .line 393
    iput-object v1, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayout:Landroid/text/Layout;

    .line 394
    iput-object v1, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->partLayout:Landroid/text/Layout;

    .line 395
    iput-object v1, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->firstLineLayout:Landroid/text/Layout;

    goto/16 :goto_d

    .line 397
    :cond_e
    iget v1, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->maxLines:I

    if-le v1, v8, :cond_f

    const/4 v10, 0x0

    .line 398
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v11

    iget-object v12, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v14

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/16 v17, 0x0

    sget-object v18, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    iget v1, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->maxLines:I

    const/16 v21, 0x0

    move-object v9, v0

    move v13, v5

    move/from16 v19, v5

    move/from16 v20, v1

    invoke-static/range {v9 .. v21}, Lorg/telegram/ui/Components/StaticLayoutEx;->createStaticLayout(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;IIZ)Landroid/text/StaticLayout;

    move-result-object v0

    iput-object v0, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    goto :goto_d

    .line 401
    :cond_f
    iget-boolean v1, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollNonFitText:Z

    if-nez v1, :cond_11

    iget-boolean v1, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->ellipsizeByGradient:Z

    if-eqz v1, :cond_10

    goto :goto_a

    .line 404
    :cond_10
    iget-object v1, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    int-to-float v2, v5

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v1, v2, v9}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_11
    :goto_a
    move-object v10, v0

    .line 410
    new-instance v0, Landroid/text/StaticLayout;

    const/4 v11, 0x0

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v12

    iget-object v13, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    iget-boolean v1, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollNonFitText:Z

    if-nez v1, :cond_13

    iget-boolean v1, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->ellipsizeByGradient:Z

    if-eqz v1, :cond_12

    goto :goto_b

    :cond_12
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v1, v5

    goto :goto_c

    :cond_13
    :goto_b
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    :goto_c
    move v14, v1

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v15

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v18}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    .line 413
    :cond_14
    :goto_d
    iget-object v0, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->spoilersPool:Ljava/util/Stack;

    iget-object v1, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->spoilers:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    .line 414
    iget-object v0, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->spoilers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 415
    iget-object v0, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_15

    .line 416
    iget-object v1, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    const/4 v2, -0x2

    const/4 v3, -0x2

    iget-object v4, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->spoilersPool:Ljava/util/Stack;

    iget-object v9, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->spoilers:Ljava/util/List;

    move-object/from16 v0, p0

    move v10, v5

    move-object v5, v9

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->addSpoilers(Landroid/view/View;Landroid/text/Layout;IILjava/util/Stack;Ljava/util/List;)V

    goto :goto_e

    :cond_15
    move v10, v5

    .line 418
    :goto_e
    invoke-direct {v6, v10}, Lorg/telegram/ui/ActionBar/SimpleTextView;->calcOffset(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_f

    .line 423
    :cond_16
    iput-object v1, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    .line 424
    iput v7, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->textWidth:I

    .line 425
    iput v7, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->textHeight:I

    .line 427
    :catch_0
    :goto_f
    iget-object v0, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->emojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {v6, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    .line 428
    iget-boolean v0, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->attachedToWindow:Z

    if-eqz v0, :cond_17

    .line 429
    iget-object v0, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->emojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    new-array v1, v8, [Landroid/text/Layout;

    iget-object v2, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    aput-object v2, v1, v7

    invoke-static {v7, v6, v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v0

    iput-object v0, v6, Lorg/telegram/ui/ActionBar/SimpleTextView;->emojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 431
    :cond_17
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    return v8
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 522
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->wrapBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    return-object v0

    .line 525
    :cond_0
    invoke-super {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getFullAlpha()F
    .locals 1

    .line 185
    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullAlpha:F

    return v0
.end method

.method public getLeftDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 500
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLineCount()I
    .locals 2

    .line 661
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 662
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    add-int/2addr v1, v0

    .line 664
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1

    .line 665
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    return v1
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .line 280
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public getRightDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 577
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getRightDrawableOutside()Z
    .locals 1

    .line 1075
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableOutside:Z

    return v0
.end method

.method public getRightDrawableX()I
    .locals 1

    .line 939
    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableX:I

    return v0
.end method

.method public getRightDrawableY()I
    .locals 1

    .line 943
    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableY:I

    return v0
.end method

.method public getSideDrawablesSize()I
    .locals 3

    .line 269
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    .line 272
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 273
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableScale:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 274
    iget v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    :cond_1
    return v1
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 653
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->text:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    .line 1063
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    return v0
.end method

.method public getTextHeight()I
    .locals 1

    .line 484
    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textHeight:I

    return v0
.end method

.method public getTextPaint()Landroid/text/TextPaint;
    .locals 1

    .line 689
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public getTextStartX()I
    .locals 4

    .line 671
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 675
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x3

    if-eqz v0, :cond_1

    .line 676
    iget v3, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->gravity:I

    and-int/lit8 v3, v3, 0x7

    if-ne v3, v2, :cond_1

    .line 677
    iget v3, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    add-int/2addr v3, v0

    add-int/2addr v1, v3

    .line 680
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget v3, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacingDrawableTextIndex:I

    if-gez v3, :cond_2

    .line 681
    iget v3, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->gravity:I

    and-int/lit8 v3, v3, 0x7

    if-ne v3, v2, :cond_2

    .line 682
    iget v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    add-int/2addr v2, v0

    add-int/2addr v1, v2

    .line 685
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v0

    float-to-int v0, v0

    iget v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetX:I

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public getTextStartY()I
    .locals 1

    .line 693
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 696
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getTextWidth()I
    .locals 1

    .line 480
    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textWidth:I

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1028
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 1029
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1030
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    .line 1031
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1032
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacedDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_2

    .line 1033
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 151
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 152
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->attachedToWindow:Z

    .line 153
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->emojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    new-array v0, v0, [Landroid/text/Layout;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-static {v3, p0, v1, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->emojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 158
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 159
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->attachedToWindow:Z

    .line 160
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->emojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {p0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    .line 161
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->wasLayout:Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 736
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 739
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollNonFitText:Z

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textDoesNotFit:Z

    if-nez v1, :cond_0

    iget v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    cmpl-float v1, v1, v11

    if-eqz v1, :cond_1

    :cond_0
    move v12, v10

    goto :goto_0

    :cond_1
    move v12, v9

    :goto_0
    const/high16 v1, -0x80000000

    if-nez v12, :cond_2

    .line 741
    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->ellipsizeByGradient:Z

    if-eqz v2, :cond_3

    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 742
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    const/16 v6, 0xff

    const/16 v7, 0x1f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    move-result v1

    :cond_3
    move v7, v1

    .line 745
    iget v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textWidth:I

    iput v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->totalWidth:I

    .line 746
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x3

    const/16 v13, 0x10

    const/4 v14, 0x2

    if-eqz v1, :cond_8

    .line 747
    iget v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    neg-float v1, v1

    float-to-int v1, v1

    .line 748
    iget v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->gravity:I

    and-int/lit8 v4, v3, 0x7

    if-ne v4, v10, :cond_4

    .line 749
    iget v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetX:I

    add-int/2addr v1, v4

    :cond_4
    and-int/lit8 v3, v3, 0x70

    if-ne v3, v13, :cond_5

    .line 753
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/2addr v3, v14

    iget v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawableTopPadding:I

    goto :goto_1

    .line 755
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textHeight:I

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/2addr v4, v14

    add-int/2addr v3, v4

    iget v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawableTopPadding:I

    :goto_1
    add-int/2addr v3, v4

    .line 757
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v4, v1, v3, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 758
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 759
    iget v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->gravity:I

    and-int/lit8 v3, v1, 0x7

    if-eq v3, v2, :cond_7

    and-int/lit8 v1, v1, 0x7

    if-ne v1, v10, :cond_6

    goto :goto_2

    :cond_6
    move v1, v9

    goto :goto_3

    .line 760
    :cond_7
    :goto_2
    iget v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v1, v3

    add-int/2addr v1, v9

    .line 762
    :goto_3
    iget v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->totalWidth:I

    iget v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->totalWidth:I

    goto :goto_4

    :cond_8
    move v1, v9

    .line 764
    :goto_4
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_d

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacedText:Ljava/lang/String;

    if-eqz v4, :cond_d

    .line 765
    iget v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    neg-float v4, v4

    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacingDrawableTextOffset:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 766
    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->gravity:I

    and-int/lit8 v6, v5, 0x7

    if-ne v6, v10, :cond_9

    .line 767
    iget v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetX:I

    add-int/2addr v4, v6

    :cond_9
    and-int/lit8 v5, v5, 0x70

    if-ne v5, v13, :cond_a

    .line 771
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int/2addr v3, v5

    div-int/2addr v3, v14

    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawableTopPadding:I

    add-int/2addr v3, v5

    goto :goto_5

    .line 773
    :cond_a
    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textHeight:I

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v5, v3

    div-int/2addr v5, v14

    iget v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawableTopPadding:I

    add-int/2addr v3, v5

    .line 775
    :goto_5
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    add-int/2addr v6, v4

    iget-object v15, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    add-int/2addr v15, v3

    invoke-virtual {v5, v4, v3, v6, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 776
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 777
    iget v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacingDrawableTextIndex:I

    if-gez v3, :cond_d

    .line 778
    iget v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->gravity:I

    and-int/lit8 v4, v3, 0x7

    if-eq v4, v2, :cond_b

    and-int/lit8 v2, v3, 0x7

    if-ne v2, v10, :cond_c

    .line 779
    :cond_b
    iget v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 781
    :cond_c
    iget v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->totalWidth:I

    iget v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->totalWidth:I

    :cond_d
    move v15, v1

    .line 785
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_11

    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableHidden:Z

    if-nez v2, :cond_11

    iget v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableScale:F

    cmpl-float v2, v2, v11

    if-lez v2, :cond_11

    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableOutside:Z

    if-nez v2, :cond_11

    .line 786
    iget v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textWidth:I

    add-int/2addr v2, v15

    iget v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    add-int/2addr v2, v3

    iget v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    neg-float v3, v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    .line 787
    iget v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->gravity:I

    and-int/lit8 v4, v3, 0x7

    if-eq v4, v10, :cond_e

    and-int/lit8 v3, v3, 0x7

    const/4 v4, 0x5

    if-ne v3, v4, :cond_f

    .line 789
    :cond_e
    iget v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetX:I

    add-int/2addr v2, v3

    .line 791
    :cond_f
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    iget v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableScale:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 792
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 794
    iget v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->gravity:I

    and-int/lit8 v4, v4, 0x70

    if-ne v4, v13, :cond_10

    .line 795
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v4, v3

    div-int/2addr v4, v14

    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableTopPadding:I

    goto :goto_6

    .line 797
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textHeight:I

    sub-int/2addr v5, v3

    div-int/2addr v5, v14

    add-int/2addr v4, v5

    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableTopPadding:I

    :goto_6
    add-int/2addr v4, v5

    .line 799
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    add-int v6, v2, v1

    add-int v9, v4, v3

    invoke-virtual {v5, v2, v4, v6, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    shr-int/lit8 v5, v1, 0x1

    add-int/2addr v2, v5

    .line 800
    iput v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableX:I

    shr-int/lit8 v2, v3, 0x1

    add-int/2addr v4, v2

    .line 801
    iput v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableY:I

    .line 802
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 803
    iget v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->totalWidth:I

    iget v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    add-int/2addr v3, v1

    add-int/2addr v2, v3

    iput v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->totalWidth:I

    .line 805
    :cond_11
    iget v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->totalWidth:I

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int v9, v1, v2

    .line 807
    iget v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    cmpl-float v2, v1, v11

    if-eqz v2, :cond_15

    .line 808
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_13

    neg-float v1, v1

    float-to-int v1, v1

    add-int/2addr v1, v9

    .line 811
    iget v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->gravity:I

    and-int/lit8 v2, v2, 0x70

    if-ne v2, v13, :cond_12

    .line 812
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/2addr v2, v14

    iget v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawableTopPadding:I

    goto :goto_7

    .line 814
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textHeight:I

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/2addr v3, v14

    add-int/2addr v2, v3

    iget v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawableTopPadding:I

    :goto_7
    add-int/2addr v2, v3

    .line 816
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v4, v1

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 817
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 819
    :cond_13
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_15

    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableOutside:Z

    if-nez v2, :cond_15

    .line 820
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 821
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 822
    iget v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textWidth:I

    add-int/2addr v3, v15

    iget v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    add-int/2addr v3, v4

    iget v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    neg-float v4, v4

    float-to-int v4, v4

    add-int/2addr v3, v4

    add-int/2addr v3, v9

    .line 824
    iget v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->gravity:I

    and-int/lit8 v4, v4, 0x70

    if-ne v4, v13, :cond_14

    .line 825
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v4, v2

    div-int/2addr v4, v14

    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableTopPadding:I

    goto :goto_8

    .line 827
    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textHeight:I

    sub-int/2addr v5, v2

    div-int/2addr v5, v14

    add-int/2addr v4, v5

    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableTopPadding:I

    :goto_8
    add-int/2addr v4, v5

    .line 829
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    add-int/2addr v1, v3

    add-int/2addr v2, v4

    invoke-virtual {v5, v3, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 830
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 834
    :cond_15
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    if-eqz v1, :cond_2b

    .line 835
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableOutside:Z

    if-nez v1, :cond_16

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->ellipsizeByGradient:Z

    if-nez v1, :cond_16

    iget v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->paddingRight:I

    if-lez v1, :cond_18

    .line 836
    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 837
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getMaxTextWidth()I

    move-result v1

    iget v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->paddingRight:I

    sub-int/2addr v1, v2

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_17

    instance-of v2, v2, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-nez v2, :cond_17

    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableOutside:Z

    if-eqz v2, :cond_17

    move v2, v14

    goto :goto_9

    :cond_17
    const/4 v2, 0x0

    :goto_9
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v8, v3, v3, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 839
    :cond_18
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->usaAlphaForEmoji:Z

    sput-boolean v1, Lorg/telegram/messenger/Emoji;->emojiDrawingUseAlpha:Z

    .line 840
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->wrapBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_19

    .line 841
    iget v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetX:I

    add-int/2addr v1, v15

    int-to-float v1, v1

    iget v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textWidth:I

    div-int/lit8 v3, v2, 0x2

    add-int/2addr v1, v3

    .line 842
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->minWidth:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 843
    div-int/lit8 v3, v2, 0x2

    sub-int/2addr v1, v3

    .line 844
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->wrapBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    add-int/2addr v2, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 845
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->wrapBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 847
    :cond_19
    iget v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetX:I

    add-int/2addr v1, v15

    if-nez v1, :cond_1a

    iget v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetY:I

    if-nez v1, :cond_1a

    iget v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    cmpl-float v1, v1, v11

    if-eqz v1, :cond_1b

    .line 848
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 849
    iget v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetX:I

    add-int/2addr v1, v15

    int-to-float v1, v1

    iget v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    sub-float/2addr v1, v2

    iget v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetY:I

    int-to-float v2, v2

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 854
    :cond_1b
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawLayout(Landroid/graphics/Canvas;)V

    .line 855
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->partLayout:Landroid/text/Layout;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x437f0000    # 255.0f

    if-eqz v1, :cond_1f

    iget v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullAlpha:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1f

    .line 856
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getAlpha()I

    move-result v1

    .line 857
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullAlpha:F

    sub-float v5, v2, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 858
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 860
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->partLayout:Landroid/text/Layout;

    invoke-virtual {v4}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v4, v10, :cond_1d

    .line 861
    iget v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullTextMaxLines:I

    if-ne v4, v10, :cond_1c

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    goto :goto_a

    :cond_1c
    const/4 v4, 0x4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    :goto_a
    int-to-float v4, v4

    goto :goto_b

    :cond_1d
    move v4, v11

    .line 863
    :goto_b
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v5

    cmpl-float v5, v5, v11

    if-eqz v5, :cond_1e

    .line 864
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v5

    neg-float v5, v5

    add-float/2addr v5, v4

    invoke-virtual {v8, v5, v11}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_c

    .line 866
    :cond_1e
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v5

    sub-float/2addr v5, v4

    invoke-virtual {v8, v5, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 868
    :goto_c
    iget v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayoutLeftOffset:I

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullAlpha:F

    mul-float/2addr v4, v5

    iget v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayoutLeftCharactersOffset:F

    mul-float/2addr v6, v5

    add-float/2addr v4, v6

    invoke-virtual {v8, v4, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 869
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->partLayout:Landroid/text/Layout;

    invoke-virtual {v4, v8}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 870
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 871
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 873
    :cond_1f
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayout:Landroid/text/Layout;

    if-eqz v1, :cond_20

    iget v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullAlpha:F

    cmpl-float v1, v1, v11

    if-lez v1, :cond_20

    .line 874
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getAlpha()I

    move-result v1

    .line 875
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullAlpha:F

    mul-float/2addr v5, v3

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 877
    iget v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayoutLeftOffset:I

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullAlpha:F

    mul-float/2addr v4, v5

    iget v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayoutLeftCharactersOffset:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    sub-float/2addr v4, v6

    invoke-virtual {v8, v4, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 878
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayout:Landroid/text/Layout;

    invoke-virtual {v4, v8}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 879
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 881
    :cond_20
    iget v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    cmpl-float v1, v1, v11

    if-eqz v1, :cond_21

    int-to-float v1, v9

    .line 882
    invoke-virtual {v8, v1, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 883
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawLayout(Landroid/graphics/Canvas;)V

    .line 885
    :cond_21
    iget v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetX:I

    add-int/2addr v1, v15

    if-nez v1, :cond_22

    iget v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetY:I

    if-nez v1, :cond_22

    iget v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    cmpl-float v1, v1, v11

    if-eqz v1, :cond_23

    .line 886
    :cond_22
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_23
    if-eqz v12, :cond_26

    .line 889
    iget v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    const/16 v4, 0xa

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    cmpg-float v1, v1, v5

    if-gez v1, :cond_24

    .line 890
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fadePaint:Landroid/graphics/Paint;

    iget v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_d

    .line 891
    :cond_24
    iget v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->totalWidth:I

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v1, v1, v5

    if-lez v1, :cond_25

    .line 892
    iget v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->totalWidth:I

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    sub-float/2addr v1, v5

    .line 893
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fadePaint:Landroid/graphics/Paint;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    sub-float/2addr v2, v1

    mul-float/2addr v2, v3

    float-to-int v1, v2

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_d

    .line 895
    :cond_25
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fadePaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_d
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v16, 0x6

    .line 897
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fadePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 898
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 899
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getMaxTextWidth()I

    move-result v1

    iget v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->paddingRight:I

    sub-int/2addr v1, v2

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v8, v1, v11}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v2, 0x0

    .line 900
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fadePaintBack:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 901
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_f

    .line 902
    :cond_26
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->ellipsizeByGradient:Z

    if-eqz v1, :cond_29

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textDoesNotFit:Z

    if-eqz v1, :cond_29

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fadeEllpsizePaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_29

    .line 903
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 904
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->updateFadePaints()V

    .line 905
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->ellipsizeByGradientLeft:Z

    if-nez v1, :cond_28

    .line 906
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getMaxTextWidth()I

    move-result v1

    iget v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->paddingRight:I

    sub-int/2addr v1, v2

    iget v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fadeEllpsizePaintWidth:I

    sub-int/2addr v1, v2

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_27

    instance-of v2, v2, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    if-nez v2, :cond_27

    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableOutside:Z

    if-eqz v2, :cond_27

    move/from16 v16, v14

    goto :goto_e

    :cond_27
    const/16 v16, 0x0

    :goto_e
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v8, v1, v11}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_28
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 908
    iget v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fadeEllpsizePaintWidth:I

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fadeEllpsizePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 909
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 911
    :cond_29
    :goto_f
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->updateScrollAnimation()V

    .line 912
    sput-boolean v10, Lorg/telegram/messenger/Emoji;->emojiDrawingUseAlpha:Z

    .line 913
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableOutside:Z

    if-nez v1, :cond_2a

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->ellipsizeByGradient:Z

    if-nez v1, :cond_2a

    iget v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->paddingRight:I

    if-lez v1, :cond_2b

    .line 914
    :cond_2a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2b
    if-nez v12, :cond_2c

    .line 917
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->ellipsizeByGradient:Z

    if-eqz v1, :cond_2d

    .line 918
    :cond_2c
    invoke-virtual {v8, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 921
    :cond_2d
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_30

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableOutside:Z

    if-eqz v1, :cond_30

    .line 922
    iget v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textWidth:I

    add-int/2addr v15, v1

    iget v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    add-int/2addr v15, v1

    iget v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    cmpl-float v2, v1, v11

    if-nez v2, :cond_2e

    neg-int v1, v9

    goto :goto_10

    :cond_2e
    neg-float v1, v1

    float-to-int v1, v1

    :goto_10
    add-int/2addr v15, v1

    add-int/2addr v15, v9

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getMaxTextWidth()I

    move-result v1

    iget v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->paddingRight:I

    sub-int/2addr v1, v2

    iget v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    add-int/2addr v1, v2

    invoke-static {v15, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 923
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 924
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 926
    iget v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->gravity:I

    and-int/lit8 v4, v4, 0x70

    if-ne v4, v13, :cond_2f

    .line 927
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v4, v3

    div-int/2addr v4, v14

    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableTopPadding:I

    goto :goto_11

    .line 929
    :cond_2f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textHeight:I

    sub-int/2addr v5, v3

    div-int/2addr v5, v14

    add-int/2addr v4, v5

    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableTopPadding:I

    :goto_11
    add-int/2addr v4, v5

    .line 931
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    add-int v6, v1, v2

    add-int v7, v4, v3

    invoke-virtual {v5, v1, v4, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    shr-int/2addr v2, v10

    add-int/2addr v1, v2

    .line 932
    iput v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableX:I

    shr-int/lit8 v1, v3, 0x1

    add-int/2addr v4, v1

    .line 933
    iput v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableY:I

    .line 934
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_30
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 1044
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v0, 0x1

    .line 1045
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    const-string v0, "android.widget.TextView"

    .line 1046
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1047
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->text:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    const/4 p1, 0x1

    .line 476
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->wasLayout:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 446
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 447
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 448
    iget v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->lastWidth:I

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-eq v1, v2, :cond_0

    .line 449
    iput v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->lastWidth:I

    const/4 v1, 0x0

    .line 450
    iput v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    const/16 v1, 0x1f4

    .line 451
    iput v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->currentScrollDelay:I

    .line 453
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->minusWidth:I

    sub-int/2addr v1, v2

    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableOutside:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget v4, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    add-int/2addr v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->createLayout(I)Z

    .line 456
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/high16 v1, 0x40000000    # 2.0f

    if-ne p2, v1, :cond_2

    goto :goto_1

    .line 459
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textHeight:I

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    add-int/2addr v0, p2

    .line 461
    :goto_1
    iget-boolean p2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->widthWrapContent:Z

    if-eqz p2, :cond_4

    .line 463
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    iget v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textWidth:I

    add-int/2addr p2, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr p2, v1

    iget v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->minusWidth:I

    add-int/2addr p2, v1

    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableOutside:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    add-int v3, v1, v2

    :cond_3
    add-int/2addr p2, v3

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 465
    :cond_4
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 467
    iget p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->gravity:I

    and-int/lit8 p1, p1, 0x70

    const/16 p2, 0x10

    if-ne p1, p2, :cond_5

    .line 468
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p2, v0

    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textHeight:I

    sub-int/2addr p2, v0

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    iput p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetY:I

    goto :goto_2

    .line 470
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetY:I

    :goto_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1084
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableOnClickListener:Landroid/view/View$OnClickListener;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 1085
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget v3, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableX:I

    const/16 v4, 0x10

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v3, v3

    iget v5, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableY:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableX:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableY:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v7, v4

    int-to-float v4, v7

    invoke-virtual {v0, v3, v5, v6, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1086
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1087
    iput-boolean v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->maybeClick:Z

    .line 1088
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->touchDownX:F

    .line 1089
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->touchDownY:F

    .line 1090
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 1091
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->maybeClick:Z

    if-eqz v0, :cond_2

    .line 1092
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->touchDownX:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->touchSlop:F

    cmpl-float v0, v0, v3

    if-gez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v3, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->touchDownY:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->touchSlop:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_5

    .line 1093
    :cond_1
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->maybeClick:Z

    .line 1094
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 1096
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_5

    .line 1097
    :cond_3
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->maybeClick:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 1098
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 1100
    :cond_4
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->maybeClick:Z

    .line 1101
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1104
    :cond_5
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->maybeClick:Z

    if-eqz p1, :cond_7

    :cond_6
    move v1, v2

    :cond_7
    return v1
.end method

.method public replaceTextWithDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 2

    .line 550
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacedDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 554
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 556
    :cond_1
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    .line 558
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 560
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->recreateLayoutMaybe()Z

    move-result p1

    if-nez p1, :cond_3

    .line 561
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 563
    :cond_3
    iput-object p2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacedText:Ljava/lang/String;

    return-void
.end method

.method public resetScrolling()V
    .locals 1

    const/4 v0, 0x0

    .line 620
    iput v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    return-void
.end method

.method public setAlignment(Landroid/text/Layout$Alignment;)V
    .locals 0

    .line 436
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->mAlignment:Landroid/text/Layout$Alignment;

    .line 437
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 513
    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->maxLines:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 514
    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 517
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->wrapBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setBuildFullLayout(Z)V
    .locals 0

    .line 176
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->buildFullLayout:Z

    return-void
.end method

.method public setCanHideRightDrawable(Z)V
    .locals 0

    .line 1067
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->canHideRightDrawable:Z

    return-void
.end method

.method public setDrawablePadding(I)V
    .locals 1

    .line 628
    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    if-ne v0, p1, :cond_0

    return-void

    .line 631
    :cond_0
    iput p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    .line 632
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->recreateLayoutMaybe()Z

    move-result p1

    if-nez p1, :cond_1

    .line 633
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setEllipsizeByGradient(I)V
    .locals 1

    const/4 v0, 0x0

    .line 202
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setEllipsizeByGradient(ILjava/lang/Boolean;)V

    return-void
.end method

.method public setEllipsizeByGradient(ILjava/lang/Boolean;)V
    .locals 1

    const/4 v0, 0x1

    .line 215
    invoke-virtual {p0, v0, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setEllipsizeByGradient(ZLjava/lang/Boolean;)V

    .line 216
    iput p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->ellipsizeByGradientWidthDp:I

    .line 217
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->updateFadePaints()V

    return-void
.end method

.method public setEllipsizeByGradient(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 198
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setEllipsizeByGradient(ZLjava/lang/Boolean;)V

    return-void
.end method

.method public setEllipsizeByGradient(ZLjava/lang/Boolean;)V
    .locals 1

    .line 206
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollNonFitText:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 209
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->ellipsizeByGradient:Z

    .line 210
    iput-object p2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->forceEllipsizeByGradientLeft:Ljava/lang/Boolean;

    .line 211
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->updateFadePaints()V

    return-void
.end method

.method public setFullAlpha(F)V
    .locals 0

    .line 180
    iput p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullAlpha:F

    .line 181
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setFullLayoutAdditionalWidth(II)V
    .locals 1

    .line 1051
    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayoutAdditionalWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayoutLeftOffset:I

    if-eq v0, p2, :cond_1

    .line 1052
    :cond_0
    iput p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayoutAdditionalWidth:I

    .line 1053
    iput p2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayoutLeftOffset:I

    .line 1054
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getMaxTextWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    iget p2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->minusWidth:I

    sub-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->createLayout(I)Z

    :cond_1
    return-void
.end method

.method public setFullTextMaxLines(I)V
    .locals 0

    .line 1059
    iput p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullTextMaxLines:I

    return-void
.end method

.method public setGravity(I)V
    .locals 0

    .line 260
    iput p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->gravity:I

    return-void
.end method

.method public setLeftDrawable(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 496
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setLeftDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLeftDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 529
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 533
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 535
    :cond_1
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    .line 537
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 539
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->recreateLayoutMaybe()Z

    move-result p1

    if-nez p1, :cond_3

    .line 540
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    return-void
.end method

.method public setLeftDrawableTopPadding(I)V
    .locals 0

    .line 488
    iput p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawableTopPadding:I

    return-void
.end method

.method public setLinkTextColor(I)V
    .locals 1

    .line 145
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    iput p1, v0, Landroid/text/TextPaint;->linkColor:I

    .line 146
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setMaxLines(I)V
    .locals 0

    .line 256
    iput p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->maxLines:I

    return-void
.end method

.method public setMinWidth(I)V
    .locals 0

    .line 508
    iput p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->minWidth:I

    return-void
.end method

.method public setMinusWidth(I)V
    .locals 1

    .line 567
    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->minusWidth:I

    if-ne p1, v0, :cond_0

    return-void

    .line 570
    :cond_0
    iput p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->minusWidth:I

    .line 571
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->recreateLayoutMaybe()Z

    move-result p1

    if-nez p1, :cond_1

    .line 572
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setRightDrawable(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 504
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setRightDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 581
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 585
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 587
    :cond_1
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    .line 589
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 591
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->recreateLayoutMaybe()Z

    move-result p1

    if-nez p1, :cond_3

    .line 592
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    return-void
.end method

.method public setRightDrawableOnClick(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1079
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setRightDrawableOutside(Z)V
    .locals 0

    .line 1071
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableOutside:Z

    return-void
.end method

.method public setRightDrawableScale(F)V
    .locals 0

    .line 597
    iput p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableScale:F

    return-void
.end method

.method public setRightDrawableTopPadding(I)V
    .locals 0

    .line 492
    iput p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableTopPadding:I

    return-void
.end method

.method public setRightPadding(I)V
    .locals 5

    .line 700
    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->paddingRight:I

    if-eq v0, p1, :cond_4

    .line 701
    iput p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->paddingRight:I

    .line 703
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getMaxTextWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->minusWidth:I

    sub-int/2addr p1, v0

    .line 704
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 705
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    sub-int/2addr p1, v0

    .line 706
    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    sub-int/2addr p1, v0

    :cond_0
    const/4 v0, 0x0

    .line 709
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableOutside:Z

    if-nez v2, :cond_1

    .line 710
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sub-int/2addr p1, v0

    .line 712
    iget v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    sub-int/2addr p1, v1

    .line 714
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacedText:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 715
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->text:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacedText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacingDrawableTextIndex:I

    if-gez v1, :cond_2

    .line 716
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int/2addr p1, v1

    .line 717
    iget v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    sub-int/2addr p1, v1

    .line 720
    :cond_2
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->canHideRightDrawable:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableOutside:Z

    if-nez v1, :cond_3

    .line 721
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->text:Ljava/lang/CharSequence;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    int-to-float v3, p1

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v1, v2, v3, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 722
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->text:Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    .line 723
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableHidden:Z

    add-int/2addr p1, v0

    .line 725
    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    add-int/2addr p1, v0

    .line 728
    :cond_3
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->calcOffset(I)V

    .line 730
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_4
    return-void
.end method

.method public setScrollNonFitText(Z)V
    .locals 1

    .line 189
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollNonFitText:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 192
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollNonFitText:Z

    .line 193
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->updateFadePaints()V

    .line 194
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setSideDrawablesColor(I)V
    .locals 1

    .line 601
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    .line 602
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)Z
    .locals 1

    const/4 v0, 0x0

    .line 606
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;Z)Z

    move-result p1

    return p1
.end method

.method public setText(Ljava/lang/CharSequence;Z)Z
    .locals 1

    .line 610
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->text:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-nez p2, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 613
    :cond_2
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->text:Ljava/lang/CharSequence;

    const/16 p1, 0x1f4

    .line 614
    iput p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->currentScrollDelay:I

    .line 615
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->recreateLayoutMaybe()Z

    const/4 p1, 0x1

    return p1
.end method

.method public setTextColor(I)V
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 141
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextSize(I)V
    .locals 1

    .line 165
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    .line 166
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 170
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->recreateLayoutMaybe()Z

    move-result p1

    if-nez p1, :cond_1

    .line 171
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 264
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method public setWidthWrapContent(Z)V
    .locals 0

    .line 221
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->widthWrapContent:Z

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 546
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
