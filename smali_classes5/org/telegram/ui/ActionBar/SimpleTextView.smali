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

    .line 132
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x33

    .line 56
    iput p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->gravity:I

    const/4 p1, 0x1

    .line 57
    iput p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->maxLines:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 66
    iput v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableScale:F

    const/4 v0, 0x4

    .line 67
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    const/16 v0, 0x10

    .line 99
    iput v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->ellipsizeByGradientWidthDp:I

    const/4 v0, 0x3

    .line 114
    iput v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullTextMaxLines:I

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->spoilers:Ljava/util/List;

    .line 117
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->spoilersPool:Ljava/util/Stack;

    .line 118
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->path:Landroid/graphics/Path;

    .line 129
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->mAlignment:Landroid/text/Layout$Alignment;

    .line 133
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, p1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    .line 134
    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    return-void
.end method

.method private calcOffset(I)V
    .locals 5

    .line 281
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    if-nez v0, :cond_0

    return-void

    .line 284
    :cond_0
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_9

    .line 285
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v0

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    iput v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textWidth:I

    .line 286
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayout:Landroid/text/Layout;

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 287
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textHeight:I

    goto :goto_0

    .line 288
    :cond_1
    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->maxLines:I

    if-le v0, v3, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 289
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textHeight:I

    goto :goto_0

    .line 291
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textHeight:I

    .line 294
    :goto_0
    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->gravity:I

    and-int/lit8 v4, v0, 0x7

    if-ne v4, v3, :cond_3

    .line 295
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

    .line 297
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->firstLineLayout:Landroid/text/Layout;

    if-eqz v0, :cond_4

    .line 298
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v0

    float-to-int v0, v0

    neg-int v0, v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetX:I

    goto :goto_1

    .line 300
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v0

    float-to-int v0, v0

    neg-int v0, v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetX:I

    goto :goto_1

    .line 302
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_7

    .line 303
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->firstLineLayout:Landroid/text/Layout;

    if-eqz v0, :cond_6

    int-to-float v4, p1

    .line 304
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v0

    sub-float/2addr v4, v0

    float-to-int v0, v4

    iput v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetX:I

    goto :goto_1

    .line 306
    :cond_6
    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textWidth:I

    sub-int v0, p1, v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetX:I

    goto :goto_1

    :cond_7
    const/16 v0, 0x8

    .line 309
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetX:I

    .line 311
    :goto_1
    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetX:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    add-int/2addr v0, v4

    iput v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetX:I

    .line 312
    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textWidth:I

    iget v4, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->paddingRight:I

    sub-int/2addr p1, v4

    if-le v0, p1, :cond_8

    goto :goto_2

    :cond_8
    const/4 v3, 0x0

    :goto_2
    iput-boolean v3, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textDoesNotFit:Z

    .line 314
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayout:Landroid/text/Layout;

    if-eqz p1, :cond_9

    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayoutAdditionalWidth:I

    if-lez v0, :cond_9

    .line 315
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->firstLineLayout:Landroid/text/Layout;

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    sub-float/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayoutLeftCharactersOffset:F

    .line 319
    :cond_9
    iget p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacingDrawableTextIndex:I

    if-ltz p1, :cond_a

    .line 320
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacingDrawableTextOffset:F

    goto :goto_3

    .line 322
    :cond_a
    iput v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacingDrawableTextOffset:F

    :goto_3
    return-void
.end method

.method private clipOutSpoilers(Landroid/graphics/Canvas;)V
    .locals 8

    .line 968
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 969
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

    .line 970
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 971
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

    .line 973
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->path:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    return-void
.end method

.method private drawLayout(Landroid/graphics/Canvas;)V
    .locals 10

    .line 938
    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayoutLeftOffset:I

    if-eqz v0, :cond_1

    .line 939
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 940
    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayoutLeftOffset:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullAlpha:F

    mul-float v0, v0, v2

    iget v3, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayoutLeftCharactersOffset:F

    mul-float v3, v3, v2

    add-float/2addr v0, v3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 942
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 943
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->clipOutSpoilers(Landroid/graphics/Canvas;)V

    .line 944
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->emojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    if-eqz v0, :cond_0

    .line 945
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->clearPositions()V

    .line 947
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 948
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 950
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

    .line 951
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawSpoilers(Landroid/graphics/Canvas;)V

    .line 952
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 954
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 955
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->clipOutSpoilers(Landroid/graphics/Canvas;)V

    .line 956
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->emojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    if-eqz v0, :cond_2

    .line 957
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->clearPositions()V

    .line 959
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 960
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 962
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

    .line 963
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawSpoilers(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method private drawSpoilers(Landroid/graphics/Canvas;)V
    .locals 2

    .line 977
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

    .line 978
    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getAlignment()Landroid/text/Layout$Alignment;
    .locals 1

    .line 438
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->mAlignment:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method private getMaxTextWidth()I
    .locals 3

    .line 934
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

    .line 625
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->wasLayout:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->buildFullLayout:Z

    if-nez v0, :cond_1

    .line 626
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

    .line 627
    iget v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->gravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    .line 628
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textHeight:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetY:I

    goto :goto_0

    .line 630
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetY:I

    :goto_0
    return v0

    .line 634
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    const/4 v0, 0x1

    return v0
.end method

.method private updateFadePaints()V
    .locals 12

    .line 223
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fadePaint:Landroid/graphics/Paint;

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fadePaintBack:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollNonFitText:Z

    if-eqz v0, :cond_1

    .line 224
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fadePaint:Landroid/graphics/Paint;

    .line 225
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

    .line 226
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fadePaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 228
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fadePaintBack:Landroid/graphics/Paint;

    .line 229
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

    .line 230
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fadePaintBack:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 233
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->forceEllipsizeByGradientLeft:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 234
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 236
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v0

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v2, :cond_3

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v0, :cond_4

    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v0

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v2, :cond_5

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v0, :cond_5

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    .line 238
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fadeEllpsizePaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_6

    iget v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fadeEllpsizePaintWidth:I

    iget v3, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->ellipsizeByGradientWidthDp:I

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    if-ne v2, v3, :cond_6

    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->ellipsizeByGradientLeft:Z

    if-eq v2, v0, :cond_9

    :cond_6
    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->ellipsizeByGradient:Z

    if-eqz v2, :cond_9

    .line 239
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fadeEllpsizePaint:Landroid/graphics/Paint;

    if-nez v2, :cond_7

    .line 240
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fadeEllpsizePaint:Landroid/graphics/Paint;

    .line 242
    :cond_7
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->ellipsizeByGradientLeft:Z

    if-eqz v0, :cond_8

    .line 244
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

    .line 246
    :cond_8
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

    .line 248
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fadeEllpsizePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_9
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

    .line 982
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollNonFitText:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textDoesNotFit:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 985
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 986
    iget-wide v4, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->lastUpdateTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x11

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    move-wide v4, v6

    .line 990
    :cond_1
    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->currentScrollDelay:I

    if-lez v0, :cond_2

    int-to-long v0, v0

    sub-long/2addr v0, v4

    long-to-int v1, v0

    .line 991
    iput v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->currentScrollDelay:I

    goto :goto_1

    .line 993
    :cond_2
    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->totalWidth:I

    const/16 v6, 0x10

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v0, v6

    .line 995
    iget v6, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    const/16 v7, 0x64

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x42480000    # 50.0f

    const/high16 v10, 0x41a00000    # 20.0f

    cmpg-float v6, v6, v8

    if-gez v6, :cond_3

    const/high16 v6, 0x41f00000    # 30.0f

    .line 996
    iget v8, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v8, v7

    mul-float v8, v8, v10

    add-float v9, v8, v6

    goto :goto_0

    .line 997
    :cond_3
    iget v6, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    sub-int v8, v0, v8

    int-to-float v8, v8

    cmpl-float v6, v6, v8

    if-ltz v6, :cond_4

    .line 998
    iget v6, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    sub-int v8, v0, v8

    int-to-float v8, v8

    sub-float/2addr v6, v8

    .line 999
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    mul-float v6, v6, v10

    sub-float/2addr v9, v6

    .line 1003
    :cond_4
    :goto_0
    iget v6, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    long-to-float v4, v4

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    mul-float v4, v4, v5

    add-float/2addr v6, v4

    iput v6, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    .line 1004
    iput-wide v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->lastUpdateTime:J

    int-to-float v0, v0

    cmpl-float v0, v6, v0

    if-lez v0, :cond_5

    .line 1006
    iput v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    const/16 v0, 0x1f4

    .line 1007
    iput v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->currentScrollDelay:I

    .line 1010
    :cond_5
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method protected createLayout(I)Z
    .locals 35

    move-object/from16 v0, p0

    .line 327
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->text:Ljava/lang/CharSequence;

    const/4 v2, -0x1

    .line 328
    iput v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacingDrawableTextIndex:I

    const/4 v2, 0x0

    .line 329
    iput-boolean v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableHidden:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_16

    .line 332
    :try_start_0
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_0

    .line 333
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    sub-int v5, p1, v5

    .line 334
    iget v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    sub-int/2addr v5, v6

    goto :goto_0

    :cond_0
    move/from16 v5, p1

    .line 337
    :goto_0
    iget-object v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_1

    iget-boolean v7, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableOutside:Z

    if-nez v7, :cond_1

    .line 338
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    int-to-float v6, v6

    iget v7, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableScale:F

    mul-float v6, v6, v7

    float-to-int v6, v6

    sub-int/2addr v5, v6

    .line 340
    iget v7, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    sub-int/2addr v5, v7

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 342
    :goto_1
    iget-object v7, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacedText:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_3

    .line 343
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacedText:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    iput v7, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacingDrawableTextIndex:I

    if-ltz v7, :cond_2

    .line 345
    invoke-static {v1}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 346
    new-instance v7, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;

    iget-object v8, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    invoke-direct {v7, v8}, Lorg/telegram/ui/Cells/DialogCell$FixedWidthSpan;-><init>(I)V

    iget v8, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacingDrawableTextIndex:I

    iget-object v9, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacedText:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v8

    invoke-virtual {v1, v7, v8, v9, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 349
    :cond_2
    iget-object v7, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    sub-int/2addr v5, v7

    .line 350
    iget v7, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    sub-int/2addr v5, v7

    .line 353
    :cond_3
    :goto_2
    iget-boolean v7, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->canHideRightDrawable:Z

    if-eqz v7, :cond_4

    if-eqz v6, :cond_4

    iget-boolean v7, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableOutside:Z

    if-nez v7, :cond_4

    .line 354
    iget-object v7, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    int-to-float v8, v5

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v1, v7, v8, v9}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 355
    invoke-virtual {v1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 356
    iput-boolean v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableHidden:Z

    add-int/2addr v5, v6

    .line 358
    iget v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    add-int/2addr v5, v6

    .line 361
    :cond_4
    iget-boolean v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->buildFullLayout:Z

    const/16 v20, 0x7d0

    const/16 v21, 0x8

    if-eqz v6, :cond_e

    .line 363
    iget-boolean v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->ellipsizeByGradient:Z

    if-nez v6, :cond_5

    .line 364
    iget-object v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    int-to-float v7, v5

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v1, v6, v7, v8}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_3

    :cond_5
    move-object v6, v1

    .line 366
    :goto_3
    iget-boolean v7, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->ellipsizeByGradient:Z

    if-nez v7, :cond_b

    invoke-virtual {v6, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    const/4 v8, 0x0

    .line 367
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v9

    iget-object v10, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v12

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/4 v15, 0x0

    sget-object v16, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    iget v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullTextMaxLines:I

    const/16 v19, 0x0

    move-object v7, v1

    move v11, v5

    move/from16 v17, v5

    move/from16 v18, v3

    invoke-static/range {v7 .. v19}, Lorg/telegram/ui/Components/StaticLayoutEx;->createStaticLayout(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;IIZ)Landroid/text/StaticLayout;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayout:Landroid/text/Layout;

    if-eqz v3, :cond_14

    .line 369
    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v3

    .line 370
    iget-object v7, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayout:Landroid/text/Layout;

    invoke-virtual {v7, v4}, Landroid/text/Layout;->getLineStart(I)I

    move-result v7

    .line 371
    invoke-interface {v1, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v17

    .line 372
    invoke-static {v1}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 373
    new-instance v8, Lorg/telegram/ui/Components/EmptyStubSpan;

    invoke-direct {v8}, Lorg/telegram/ui/Components/EmptyStubSpan;-><init>()V

    invoke-virtual {v1, v8, v2, v7, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 375
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v3, v7, :cond_6

    .line 376
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-interface {v6, v3, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_4

    :cond_6
    const-string v3, "\u2026"

    .line 380
    :goto_4
    new-instance v15, Landroid/text/StaticLayout;

    const/4 v9, 0x0

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v10

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    iget-boolean v7, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollNonFitText:Z

    if-eqz v7, :cond_7

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    goto :goto_5

    :cond_7
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    add-int/2addr v7, v5

    :goto_5
    move v12, v7

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v13

    const/high16 v14, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/16 v18, 0x0

    move-object v7, v15

    move-object v8, v6

    move-object v6, v15

    move/from16 v15, v16

    move/from16 v16, v18

    invoke-direct/range {v7 .. v16}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->firstLineLayout:Landroid/text/Layout;

    .line 381
    new-instance v6, Landroid/text/StaticLayout;

    const/4 v10, 0x0

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->length()I

    move-result v11

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    iget-boolean v7, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollNonFitText:Z

    if-eqz v7, :cond_8

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    goto :goto_6

    :cond_8
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    add-int/2addr v7, v5

    :goto_6
    move v13, v7

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v14

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/4 v7, 0x0

    move-object v8, v6

    move-object/from16 v9, v17

    move/from16 v17, v7

    invoke-direct/range {v8 .. v17}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    .line 382
    invoke-virtual {v6, v2}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_9

    .line 383
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u200f"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_9
    move-object v7, v3

    .line 385
    new-instance v3, Landroid/text/StaticLayout;

    const/4 v8, 0x0

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v9

    iget-object v10, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    iget-boolean v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollNonFitText:Z

    if-eqz v6, :cond_a

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    goto :goto_7

    :cond_a
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v6, v5

    :goto_7
    move v11, v6

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v12

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v6, v3

    invoke-direct/range {v6 .. v15}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->partLayout:Landroid/text/Layout;

    const/16 v23, 0x0

    .line 386
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v24

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v6, v5

    iget v7, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayoutAdditionalWidth:I

    add-int v26, v6, v7

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v27

    const/high16 v28, 0x3f800000    # 1.0f

    const/16 v29, 0x0

    const/16 v30, 0x0

    sget-object v31, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    iget v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayoutAdditionalWidth:I

    add-int v32, v5, v6

    iget v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullTextMaxLines:I

    const/16 v34, 0x0

    move-object/from16 v22, v1

    move-object/from16 v25, v3

    move/from16 v33, v6

    invoke-static/range {v22 .. v34}, Lorg/telegram/ui/Components/StaticLayoutEx;->createStaticLayout(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;IIZ)Landroid/text/StaticLayout;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayout:Landroid/text/Layout;

    goto/16 :goto_d

    .line 389
    :cond_b
    new-instance v1, Landroid/text/StaticLayout;

    const/4 v9, 0x0

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v10

    iget-object v11, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    iget-boolean v7, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollNonFitText:Z

    if-nez v7, :cond_d

    iget-boolean v7, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->ellipsizeByGradient:Z

    if-eqz v7, :cond_c

    goto :goto_8

    :cond_c
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    add-int/2addr v7, v5

    goto :goto_9

    :cond_d
    :goto_8
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    :goto_9
    move v12, v7

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v13

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v7, v1

    move-object v8, v6

    invoke-direct/range {v7 .. v16}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    .line 390
    iput-object v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayout:Landroid/text/Layout;

    .line 391
    iput-object v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->partLayout:Landroid/text/Layout;

    .line 392
    iput-object v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->firstLineLayout:Landroid/text/Layout;

    goto/16 :goto_d

    .line 394
    :cond_e
    iget v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->maxLines:I

    if-le v3, v4, :cond_f

    const/4 v8, 0x0

    .line 395
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v9

    iget-object v10, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v12

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/4 v15, 0x0

    sget-object v16, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    iget v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->maxLines:I

    const/16 v19, 0x0

    move-object v7, v1

    move v11, v5

    move/from16 v17, v5

    move/from16 v18, v3

    invoke-static/range {v7 .. v19}, Lorg/telegram/ui/Components/StaticLayoutEx;->createStaticLayout(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;IIZ)Landroid/text/StaticLayout;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    goto :goto_d

    .line 398
    :cond_f
    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollNonFitText:Z

    if-nez v3, :cond_11

    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->ellipsizeByGradient:Z

    if-eqz v3, :cond_10

    goto :goto_a

    .line 401
    :cond_10
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    int-to-float v6, v5

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v1, v3, v6, v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    :cond_11
    :goto_a
    move-object v7, v1

    .line 407
    new-instance v1, Landroid/text/StaticLayout;

    const/4 v8, 0x0

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v9

    iget-object v10, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollNonFitText:Z

    if-nez v3, :cond_13

    iget-boolean v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->ellipsizeByGradient:Z

    if-eqz v3, :cond_12

    goto :goto_b

    :cond_12
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v3, v5

    goto :goto_c

    :cond_13
    :goto_b
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    :goto_c
    move v11, v3

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v12

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v6, v1

    invoke-direct/range {v6 .. v15}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    .line 410
    :cond_14
    :goto_d
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->spoilersPool:Ljava/util/Stack;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->spoilers:Ljava/util/List;

    invoke-virtual {v1, v3}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    .line 411
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->spoilers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 412
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    instance-of v1, v1, Landroid/text/Spannable;

    if-eqz v1, :cond_15

    .line 413
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->spoilersPool:Ljava/util/Stack;

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->spoilers:Ljava/util/List;

    invoke-static {v0, v1, v3, v6}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->addSpoilers(Landroid/view/View;Landroid/text/Layout;Ljava/util/Stack;Ljava/util/List;)V

    .line 415
    :cond_15
    invoke-direct {v0, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->calcOffset(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_e

    :catch_0
    nop

    goto :goto_e

    .line 420
    :cond_16
    iput-object v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    .line 421
    iput v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textWidth:I

    .line 422
    iput v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textHeight:I

    .line 424
    :goto_e
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->emojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    .line 425
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->attachedToWindow:Z

    if-eqz v1, :cond_17

    .line 426
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->emojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    new-array v3, v4, [Landroid/text/Layout;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    aput-object v5, v3, v2

    invoke-static {v2, v0, v1, v3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->emojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    .line 428
    :cond_17
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    return v4
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 519
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->wrapBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    return-object v0

    .line 522
    :cond_0
    invoke-super {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getFullAlpha()F
    .locals 1

    .line 183
    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullAlpha:F

    return v0
.end method

.method public getLeftDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 497
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLineCount()I
    .locals 2

    .line 648
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 649
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    add-int/2addr v1, v0

    .line 651
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayout:Landroid/text/Layout;

    if-eqz v0, :cond_1

    .line 652
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    return v1
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .line 277
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public getRightDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 569
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getRightDrawableOutside()Z
    .locals 1

    .line 1062
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableOutside:Z

    return v0
.end method

.method public getRightDrawableX()I
    .locals 1

    .line 926
    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableX:I

    return v0
.end method

.method public getRightDrawableY()I
    .locals 1

    .line 930
    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableY:I

    return v0
.end method

.method public getSideDrawablesSize()I
    .locals 3

    .line 266
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    .line 269
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 270
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableScale:F

    mul-float v0, v0, v2

    float-to-int v0, v0

    .line 271
    iget v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    :cond_1
    return v1
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 640
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->text:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    .line 1050
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    return v0
.end method

.method public getTextHeight()I
    .locals 1

    .line 481
    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textHeight:I

    return v0
.end method

.method public getTextPaint()Landroid/text/TextPaint;
    .locals 1

    .line 676
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public getTextStartX()I
    .locals 4

    .line 658
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 662
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x3

    if-eqz v0, :cond_1

    .line 663
    iget v3, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->gravity:I

    and-int/lit8 v3, v3, 0x7

    if-ne v3, v2, :cond_1

    .line 664
    iget v3, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    add-int/2addr v3, v0

    add-int/2addr v1, v3

    .line 667
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget v3, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacingDrawableTextIndex:I

    if-gez v3, :cond_2

    .line 668
    iget v3, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->gravity:I

    and-int/lit8 v3, v3, 0x7

    if-ne v3, v2, :cond_2

    .line 669
    iget v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    add-int/2addr v2, v0

    add-int/2addr v1, v2

    .line 672
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

    .line 680
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 683
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getTextWidth()I
    .locals 1

    .line 477
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

    .line 1015
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 1016
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1017
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    .line 1018
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1019
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacedDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_2

    .line 1020
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 149
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 150
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->attachedToWindow:Z

    .line 151
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

    .line 156
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 157
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->attachedToWindow:Z

    .line 158
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->emojiStack:Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-static {p0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V

    .line 159
    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->wasLayout:Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 723
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 726
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
    const/4 v12, 0x1

    goto :goto_0

    :cond_1
    const/4 v12, 0x0

    :goto_0
    const/high16 v1, -0x80000000

    if-nez v12, :cond_3

    .line 728
    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->ellipsizeByGradient:Z

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const/high16 v7, -0x80000000

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 729
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

    move v7, v1

    .line 732
    :goto_2
    iget v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textWidth:I

    iput v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->totalWidth:I

    .line 733
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x3

    const/16 v13, 0x10

    const/4 v14, 0x2

    if-eqz v1, :cond_8

    .line 734
    iget v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    neg-float v1, v1

    float-to-int v1, v1

    .line 735
    iget v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->gravity:I

    and-int/lit8 v4, v3, 0x7

    if-ne v4, v10, :cond_4

    .line 736
    iget v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetX:I

    add-int/2addr v1, v4

    :cond_4
    and-int/lit8 v3, v3, 0x70

    if-ne v3, v13, :cond_5

    .line 740
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/2addr v3, v14

    iget v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawableTopPadding:I

    goto :goto_3

    .line 742
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

    :goto_3
    add-int/2addr v3, v4

    .line 744
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v4, v1, v3, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 745
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 746
    iget v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->gravity:I

    and-int/lit8 v3, v1, 0x7

    if-eq v3, v2, :cond_7

    and-int/lit8 v1, v1, 0x7

    if-ne v1, v10, :cond_6

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    goto :goto_5

    .line 747
    :cond_7
    :goto_4
    iget v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v1, v3

    add-int/2addr v1, v9

    .line 749
    :goto_5
    iget v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->totalWidth:I

    iget v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->totalWidth:I

    goto :goto_6

    :cond_8
    const/4 v1, 0x0

    .line 751
    :goto_6
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_d

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacedText:Ljava/lang/String;

    if-eqz v4, :cond_d

    .line 752
    iget v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    neg-float v4, v4

    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacingDrawableTextOffset:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 753
    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->gravity:I

    and-int/lit8 v6, v5, 0x7

    if-ne v6, v10, :cond_9

    .line 754
    iget v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetX:I

    add-int/2addr v4, v6

    :cond_9
    and-int/lit8 v5, v5, 0x70

    if-ne v5, v13, :cond_a

    .line 758
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int/2addr v3, v5

    div-int/2addr v3, v14

    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawableTopPadding:I

    add-int/2addr v3, v5

    goto :goto_7

    .line 760
    :cond_a
    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textHeight:I

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v5, v3

    div-int/2addr v5, v14

    iget v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawableTopPadding:I

    add-int/2addr v3, v5

    .line 762
    :goto_7
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    add-int/2addr v6, v4

    iget-object v15, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    add-int/2addr v15, v3

    invoke-virtual {v5, v4, v3, v6, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 763
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 764
    iget v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacingDrawableTextIndex:I

    if-gez v3, :cond_d

    .line 765
    iget v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->gravity:I

    and-int/lit8 v4, v3, 0x7

    if-eq v4, v2, :cond_b

    and-int/lit8 v2, v3, 0x7

    if-ne v2, v10, :cond_c

    .line 766
    :cond_b
    iget v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 768
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

    .line 772
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_11

    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableHidden:Z

    if-nez v2, :cond_11

    iget v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableScale:F

    cmpl-float v2, v2, v11

    if-lez v2, :cond_11

    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableOutside:Z

    if-nez v2, :cond_11

    .line 773
    iget v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textWidth:I

    add-int/2addr v2, v15

    iget v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    add-int/2addr v2, v3

    iget v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    neg-float v3, v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    .line 774
    iget v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->gravity:I

    and-int/lit8 v4, v3, 0x7

    if-eq v4, v10, :cond_e

    and-int/lit8 v3, v3, 0x7

    const/4 v4, 0x5

    if-ne v3, v4, :cond_f

    .line 776
    :cond_e
    iget v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetX:I

    add-int/2addr v2, v3

    .line 778
    :cond_f
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    iget v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableScale:F

    mul-float v1, v1, v3

    float-to-int v1, v1

    .line 779
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableScale:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    .line 781
    iget v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->gravity:I

    and-int/lit8 v4, v4, 0x70

    if-ne v4, v13, :cond_10

    .line 782
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v4, v3

    div-int/2addr v4, v14

    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableTopPadding:I

    goto :goto_8

    .line 784
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textHeight:I

    sub-int/2addr v5, v3

    div-int/2addr v5, v14

    add-int/2addr v4, v5

    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableTopPadding:I

    :goto_8
    add-int/2addr v4, v5

    .line 786
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    add-int v6, v2, v1

    add-int v9, v4, v3

    invoke-virtual {v5, v2, v4, v6, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    shr-int/lit8 v5, v1, 0x1

    add-int/2addr v2, v5

    .line 787
    iput v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableX:I

    shr-int/lit8 v2, v3, 0x1

    add-int/2addr v4, v2

    .line 788
    iput v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableY:I

    .line 789
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 790
    iget v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->totalWidth:I

    iget v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    add-int/2addr v3, v1

    add-int/2addr v2, v3

    iput v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->totalWidth:I

    .line 792
    :cond_11
    iget v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->totalWidth:I

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int v9, v1, v2

    .line 794
    iget v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    cmpl-float v2, v1, v11

    if-eqz v2, :cond_15

    .line 795
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_13

    neg-float v1, v1

    float-to-int v1, v1

    add-int/2addr v1, v9

    .line 798
    iget v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->gravity:I

    and-int/lit8 v2, v2, 0x70

    if-ne v2, v13, :cond_12

    .line 799
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/2addr v2, v14

    iget v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawableTopPadding:I

    goto :goto_9

    .line 801
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

    :goto_9
    add-int/2addr v2, v3

    .line 803
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v4, v1

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 804
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 806
    :cond_13
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_15

    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableOutside:Z

    if-nez v2, :cond_15

    .line 807
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableScale:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 808
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableScale:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    .line 809
    iget v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textWidth:I

    add-int/2addr v3, v15

    iget v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    add-int/2addr v3, v4

    iget v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    neg-float v4, v4

    float-to-int v4, v4

    add-int/2addr v3, v4

    add-int/2addr v3, v9

    .line 811
    iget v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->gravity:I

    and-int/lit8 v4, v4, 0x70

    if-ne v4, v13, :cond_14

    .line 812
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v4, v2

    div-int/2addr v4, v14

    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableTopPadding:I

    goto :goto_a

    .line 814
    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textHeight:I

    sub-int/2addr v5, v2

    div-int/2addr v5, v14

    add-int/2addr v4, v5

    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableTopPadding:I

    :goto_a
    add-int/2addr v4, v5

    .line 816
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    add-int/2addr v1, v3

    add-int/2addr v2, v4

    invoke-virtual {v5, v3, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 817
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 821
    :cond_15
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    const/16 v17, 0x4

    if-eqz v1, :cond_2a

    .line 822
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableOutside:Z

    if-nez v1, :cond_16

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->ellipsizeByGradient:Z

    if-eqz v1, :cond_18

    .line 823
    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 824
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

    const/4 v2, 0x2

    goto :goto_b

    :cond_17
    const/4 v2, 0x0

    :goto_b
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v8, v3, v3, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 826
    :cond_18
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->usaAlphaForEmoji:Z

    sput-boolean v1, Lorg/telegram/messenger/Emoji;->emojiDrawingUseAlpha:Z

    .line 827
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->wrapBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_19

    .line 828
    iget v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetX:I

    add-int/2addr v1, v15

    int-to-float v1, v1

    iget v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textWidth:I

    div-int/lit8 v3, v2, 0x2

    add-int/2addr v1, v3

    .line 829
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->minWidth:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 830
    div-int/lit8 v3, v2, 0x2

    sub-int/2addr v1, v3

    .line 831
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->wrapBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    add-int/2addr v2, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 832
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->wrapBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 834
    :cond_19
    iget v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetX:I

    add-int/2addr v1, v15

    if-nez v1, :cond_1a

    iget v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetY:I

    if-nez v1, :cond_1a

    iget v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    cmpl-float v1, v1, v11

    if-eqz v1, :cond_1b

    .line 835
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 836
    iget v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetX:I

    add-int/2addr v1, v15

    int-to-float v1, v1

    iget v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    sub-float/2addr v1, v2

    iget v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetY:I

    int-to-float v2, v2

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 841
    :cond_1b
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawLayout(Landroid/graphics/Canvas;)V

    .line 842
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->partLayout:Landroid/text/Layout;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x437f0000    # 255.0f

    if-eqz v1, :cond_1f

    iget v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullAlpha:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1f

    .line 843
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getAlpha()I

    move-result v1

    .line 844
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullAlpha:F

    sub-float v5, v2, v5

    mul-float v5, v5, v3

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 845
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 847
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->partLayout:Landroid/text/Layout;

    invoke-virtual {v4}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v4, v10, :cond_1d

    .line 848
    iget v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullTextMaxLines:I

    if-ne v4, v10, :cond_1c

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    goto :goto_c

    :cond_1c
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    :goto_c
    int-to-float v4, v4

    goto :goto_d

    :cond_1d
    const/4 v4, 0x0

    .line 850
    :goto_d
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v5

    cmpl-float v5, v5, v11

    if-eqz v5, :cond_1e

    .line 851
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v5

    neg-float v5, v5

    add-float/2addr v5, v4

    invoke-virtual {v8, v5, v11}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_e

    .line 853
    :cond_1e
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->layout:Landroid/text/Layout;

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v5

    sub-float/2addr v5, v4

    invoke-virtual {v8, v5, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 855
    :goto_e
    iget v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayoutLeftOffset:I

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullAlpha:F

    mul-float v4, v4, v5

    iget v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayoutLeftCharactersOffset:F

    mul-float v6, v6, v5

    add-float/2addr v4, v6

    invoke-virtual {v8, v4, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 856
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->partLayout:Landroid/text/Layout;

    invoke-virtual {v4, v8}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 857
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 858
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 860
    :cond_1f
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayout:Landroid/text/Layout;

    if-eqz v1, :cond_20

    iget v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullAlpha:F

    cmpl-float v1, v1, v11

    if-lez v1, :cond_20

    .line 861
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getAlpha()I

    move-result v1

    .line 862
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullAlpha:F

    mul-float v5, v5, v3

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 864
    iget v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayoutLeftOffset:I

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullAlpha:F

    mul-float v4, v4, v5

    iget v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayoutLeftCharactersOffset:F

    mul-float v5, v5, v6

    add-float/2addr v4, v5

    sub-float/2addr v4, v6

    invoke-virtual {v8, v4, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 865
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayout:Landroid/text/Layout;

    invoke-virtual {v4, v8}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 866
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 868
    :cond_20
    iget v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    cmpl-float v1, v1, v11

    if-eqz v1, :cond_21

    int-to-float v1, v9

    .line 869
    invoke-virtual {v8, v1, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 870
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawLayout(Landroid/graphics/Canvas;)V

    .line 872
    :cond_21
    iget v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetX:I

    add-int/2addr v1, v15

    if-nez v1, :cond_22

    iget v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetY:I

    if-nez v1, :cond_22

    iget v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    cmpl-float v1, v1, v11

    if-eqz v1, :cond_23

    .line 873
    :cond_22
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_23
    if-eqz v12, :cond_26

    .line 876
    iget v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    const/16 v4, 0xa

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    cmpg-float v1, v1, v5

    if-gez v1, :cond_24

    .line 877
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fadePaint:Landroid/graphics/Paint;

    iget v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_f

    .line 878
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

    .line 879
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

    .line 880
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fadePaint:Landroid/graphics/Paint;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    sub-float/2addr v2, v1

    mul-float v2, v2, v3

    float-to-int v1, v2

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_f

    .line 882
    :cond_25
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fadePaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_f
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v16, 0x6

    .line 884
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fadePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 885
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 886
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

    .line 887
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fadePaintBack:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 888
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_11

    .line 889
    :cond_26
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->ellipsizeByGradient:Z

    if-eqz v1, :cond_29

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textDoesNotFit:Z

    if-eqz v1, :cond_29

    iget-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fadeEllpsizePaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_29

    .line 890
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 891
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->updateFadePaints()V

    .line 892
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->ellipsizeByGradientLeft:Z

    if-nez v1, :cond_28

    .line 893
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

    const/16 v16, 0x2

    goto :goto_10

    :cond_27
    const/16 v16, 0x0

    :goto_10
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v8, v1, v11}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_28
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 895
    iget v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fadeEllpsizePaintWidth:I

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fadeEllpsizePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 896
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 898
    :cond_29
    :goto_11
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->updateScrollAnimation()V

    .line 899
    sput-boolean v10, Lorg/telegram/messenger/Emoji;->emojiDrawingUseAlpha:Z

    .line 900
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableOutside:Z

    if-eqz v1, :cond_2a

    .line 901
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2a
    if-nez v12, :cond_2b

    .line 904
    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->ellipsizeByGradient:Z

    if-eqz v1, :cond_2c

    .line 905
    :cond_2b
    invoke-virtual {v8, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 908
    :cond_2c
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2f

    iget-boolean v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableOutside:Z

    if-eqz v1, :cond_2f

    .line 909
    iget v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textWidth:I

    add-int/2addr v15, v1

    iget v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    add-int/2addr v15, v1

    iget v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    cmpl-float v2, v1, v11

    if-nez v2, :cond_2d

    neg-int v1, v9

    goto :goto_12

    :cond_2d
    neg-float v1, v1

    float-to-int v1, v1

    :goto_12
    add-int/2addr v15, v1

    add-int/2addr v15, v9

    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->getMaxTextWidth()I

    move-result v1

    iget v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->paddingRight:I

    sub-int/2addr v1, v2

    iget v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    add-int/2addr v1, v2

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v15, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 910
    iget-object v2, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableScale:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    .line 911
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableScale:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    .line 913
    iget v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->gravity:I

    and-int/lit8 v4, v4, 0x70

    if-ne v4, v13, :cond_2e

    .line 914
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v4, v3

    div-int/2addr v4, v14

    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableTopPadding:I

    goto :goto_13

    .line 916
    :cond_2e
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textHeight:I

    sub-int/2addr v5, v3

    div-int/2addr v5, v14

    add-int/2addr v4, v5

    iget v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableTopPadding:I

    :goto_13
    add-int/2addr v4, v5

    .line 918
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    add-int v6, v1, v2

    add-int v7, v4, v3

    invoke-virtual {v5, v1, v4, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    shr-int/2addr v2, v10

    add-int/2addr v1, v2

    .line 919
    iput v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableX:I

    shr-int/lit8 v1, v3, 0x1

    add-int/2addr v4, v1

    .line 920
    iput v4, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableY:I

    .line 921
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2f
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 1031
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v0, 0x1

    .line 1032
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    const-string v0, "android.widget.TextView"

    .line 1033
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1034
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->text:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    const/4 p1, 0x1

    .line 473
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->wasLayout:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 443
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 444
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 445
    iget v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->lastWidth:I

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-eq v1, v2, :cond_0

    .line 446
    iput v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->lastWidth:I

    const/4 v1, 0x0

    .line 447
    iput v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    const/16 v1, 0x1f4

    .line 448
    iput v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->currentScrollDelay:I

    .line 450
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
    const/4 v2, 0x0

    :goto_0
    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->createLayout(I)Z

    .line 453
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/high16 v1, 0x40000000    # 2.0f

    if-ne p2, v1, :cond_2

    goto :goto_1

    .line 456
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textHeight:I

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    add-int/2addr v0, p2

    .line 458
    :goto_1
    iget-boolean p2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->widthWrapContent:Z

    if-eqz p2, :cond_4

    .line 460
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

    .line 462
    :cond_4
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 464
    iget p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->gravity:I

    and-int/lit8 p1, p1, 0x70

    const/16 p2, 0x10

    if-ne p1, p2, :cond_5

    .line 465
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

    .line 467
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->offsetY:I

    :goto_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1071
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableOnClickListener:Landroid/view/View$OnClickListener;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 1072
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

    .line 1073
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

    .line 1074
    iput-boolean v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->maybeClick:Z

    .line 1075
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->touchDownX:F

    .line 1076
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->touchDownY:F

    .line 1077
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 1078
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->maybeClick:Z

    if-eqz v0, :cond_2

    .line 1079
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

    .line 1080
    :cond_1
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->maybeClick:Z

    .line 1081
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 1083
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_5

    .line 1084
    :cond_3
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->maybeClick:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 1085
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 1087
    :cond_4
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->maybeClick:Z

    .line 1088
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1091
    :cond_5
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->maybeClick:Z

    if-eqz p1, :cond_7

    :cond_6
    const/4 v1, 0x1

    :cond_7
    return v1
.end method

.method public replaceTextWithDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 2

    .line 542
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacedDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 546
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 548
    :cond_1
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    .line 550
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 552
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->recreateLayoutMaybe()Z

    move-result p1

    if-nez p1, :cond_3

    .line 553
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 555
    :cond_3
    iput-object p2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacedText:Ljava/lang/String;

    return-void
.end method

.method public setAlignment(Landroid/text/Layout$Alignment;)V
    .locals 0

    .line 433
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->mAlignment:Landroid/text/Layout$Alignment;

    .line 434
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 510
    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->maxLines:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 511
    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 514
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->wrapBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setBuildFullLayout(Z)V
    .locals 0

    .line 174
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->buildFullLayout:Z

    return-void
.end method

.method public setCanHideRightDrawable(Z)V
    .locals 0

    .line 1054
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->canHideRightDrawable:Z

    return-void
.end method

.method public setDrawablePadding(I)V
    .locals 1

    .line 615
    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    if-ne v0, p1, :cond_0

    return-void

    .line 618
    :cond_0
    iput p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    .line 619
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->recreateLayoutMaybe()Z

    move-result p1

    if-nez p1, :cond_1

    .line 620
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setEllipsizeByGradient(I)V
    .locals 1

    const/4 v0, 0x0

    .line 200
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setEllipsizeByGradient(ILjava/lang/Boolean;)V

    return-void
.end method

.method public setEllipsizeByGradient(ILjava/lang/Boolean;)V
    .locals 1

    const/4 v0, 0x1

    .line 213
    invoke-virtual {p0, v0, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setEllipsizeByGradient(ZLjava/lang/Boolean;)V

    .line 214
    iput p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->ellipsizeByGradientWidthDp:I

    .line 215
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->updateFadePaints()V

    return-void
.end method

.method public setEllipsizeByGradient(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 196
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setEllipsizeByGradient(ZLjava/lang/Boolean;)V

    return-void
.end method

.method public setEllipsizeByGradient(ZLjava/lang/Boolean;)V
    .locals 1

    .line 204
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollNonFitText:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 207
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->ellipsizeByGradient:Z

    .line 208
    iput-object p2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->forceEllipsizeByGradientLeft:Ljava/lang/Boolean;

    .line 209
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->updateFadePaints()V

    return-void
.end method

.method public setFullAlpha(F)V
    .locals 0

    .line 178
    iput p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullAlpha:F

    .line 179
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setFullLayoutAdditionalWidth(II)V
    .locals 1

    .line 1038
    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayoutAdditionalWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayoutLeftOffset:I

    if-eq v0, p2, :cond_1

    .line 1039
    :cond_0
    iput p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayoutAdditionalWidth:I

    .line 1040
    iput p2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullLayoutLeftOffset:I

    .line 1041
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

    .line 1046
    iput p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->fullTextMaxLines:I

    return-void
.end method

.method public setGravity(I)V
    .locals 0

    .line 257
    iput p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->gravity:I

    return-void
.end method

.method public setLeftDrawable(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 493
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

    .line 526
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 530
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 532
    :cond_1
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    .line 534
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 536
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->recreateLayoutMaybe()Z

    move-result p1

    if-nez p1, :cond_3

    .line 537
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    return-void
.end method

.method public setLeftDrawableTopPadding(I)V
    .locals 0

    .line 485
    iput p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawableTopPadding:I

    return-void
.end method

.method public setLinkTextColor(I)V
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    iput p1, v0, Landroid/text/TextPaint;->linkColor:I

    .line 144
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setMaxLines(I)V
    .locals 0

    .line 253
    iput p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->maxLines:I

    return-void
.end method

.method public setMinWidth(I)V
    .locals 0

    .line 505
    iput p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->minWidth:I

    return-void
.end method

.method public setMinusWidth(I)V
    .locals 1

    .line 559
    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->minusWidth:I

    if-ne p1, v0, :cond_0

    return-void

    .line 562
    :cond_0
    iput p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->minusWidth:I

    .line 563
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->recreateLayoutMaybe()Z

    move-result p1

    if-nez p1, :cond_1

    .line 564
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setRightDrawable(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 501
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

    .line 573
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 577
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 579
    :cond_1
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    .line 581
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 583
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->recreateLayoutMaybe()Z

    move-result p1

    if-nez p1, :cond_3

    .line 584
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    return-void
.end method

.method public setRightDrawableOnClick(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1066
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setRightDrawableOutside(Z)V
    .locals 0

    .line 1058
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableOutside:Z

    return-void
.end method

.method public setRightDrawableScale(F)V
    .locals 0

    .line 589
    iput p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableScale:F

    return-void
.end method

.method public setRightDrawableTopPadding(I)V
    .locals 0

    .line 489
    iput p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableTopPadding:I

    return-void
.end method

.method public setRightPadding(I)V
    .locals 5

    .line 687
    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->paddingRight:I

    if-eq v0, p1, :cond_4

    .line 688
    iput p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->paddingRight:I

    .line 690
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

    .line 691
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 692
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    sub-int/2addr p1, v0

    .line 693
    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    sub-int/2addr p1, v0

    :cond_0
    const/4 v0, 0x0

    .line 696
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-boolean v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableOutside:Z

    if-nez v2, :cond_1

    .line 697
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableScale:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    sub-int/2addr p1, v0

    .line 699
    iget v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    sub-int/2addr p1, v1

    .line 701
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacedText:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 702
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->text:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacedText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacingDrawableTextIndex:I

    if-gez v1, :cond_2

    .line 703
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->replacedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int/2addr p1, v1

    .line 704
    iget v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    sub-int/2addr p1, v1

    .line 707
    :cond_2
    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->canHideRightDrawable:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableOutside:Z

    if-nez v1, :cond_3

    .line 708
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->text:Ljava/lang/CharSequence;

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    int-to-float v3, p1

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v1, v2, v3, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 709
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->text:Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    .line 710
    iput-boolean v1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawableHidden:Z

    add-int/2addr p1, v0

    .line 712
    iget v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->drawablePadding:I

    add-int/2addr p1, v0

    .line 715
    :cond_3
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->calcOffset(I)V

    .line 717
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_4
    return-void
.end method

.method public setScrollNonFitText(Z)V
    .locals 1

    .line 187
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollNonFitText:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 190
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollNonFitText:Z

    .line 191
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->updateFadePaints()V

    .line 192
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setSideDrawablesColor(I)V
    .locals 1

    .line 593
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->rightDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    .line 594
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->leftDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lorg/telegram/ui/ActionBar/Theme;->setDrawableColor(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)Z
    .locals 1

    const/4 v0, 0x0

    .line 598
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;Z)Z

    move-result p1

    return p1
.end method

.method public setText(Ljava/lang/CharSequence;Z)Z
    .locals 1

    .line 602
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

    .line 605
    :cond_2
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->text:Ljava/lang/CharSequence;

    if-nez p1, :cond_3

    if-eqz p1, :cond_5

    :cond_3
    if-eqz p1, :cond_4

    .line 606
    invoke-virtual {p1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    :cond_4
    const/4 p1, 0x0

    .line 607
    iput p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->scrollingOffset:F

    :cond_5
    const/16 p1, 0x1f4

    .line 609
    iput p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->currentScrollDelay:I

    .line 610
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->recreateLayoutMaybe()Z

    const/4 p1, 0x1

    return p1
.end method

.method public setTextColor(I)V
    .locals 1

    .line 138
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 139
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextSize(I)V
    .locals 1

    .line 163
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    .line 164
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 168
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->recreateLayoutMaybe()Z

    move-result p1

    if-nez p1, :cond_1

    .line 169
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 261
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method public setWidthWrapContent(Z)V
    .locals 0

    .line 219
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/SimpleTextView;->widthWrapContent:Z

    return-void
.end method
