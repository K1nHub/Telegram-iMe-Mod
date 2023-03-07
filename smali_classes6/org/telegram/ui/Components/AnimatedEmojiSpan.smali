.class public Lorg/telegram/ui/Components/AnimatedEmojiSpan;
.super Landroid/text/style/ReplacementSpan;
.source "AnimatedEmojiSpan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/AnimatedEmojiSpan$InvalidateHolder;,
        Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;,
        Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;,
        Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;,
        Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;
    }
.end annotation


# instance fields
.field public cacheType:I

.field public document:Lorg/telegram/tgnet/TLRPC$Document;

.field public documentAbsolutePath:Ljava/lang/String;

.field public documentId:J

.field private fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field public fromEmojiKeyboard:Z

.field public full:Z

.field lastDrawnCx:F

.field lastDrawnCy:F

.field measuredSize:I

.field private recordPositions:Z

.field private scale:F

.field private size:F

.field spanDrawn:Z

.field public standard:Z

.field public top:Z


# direct methods
.method public constructor <init>(JFLandroid/graphics/Paint$FontMetricsInt;)V
    .locals 2

    .line 65
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->full:Z

    .line 41
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->top:Z

    const/16 v0, 0x14

    .line 44
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->size:F

    const/4 v1, -0x1

    .line 45
    iput v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->cacheType:I

    const/4 v1, 0x1

    .line 53
    iput-boolean v1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->recordPositions:Z

    .line 66
    iput-wide p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentId:J

    .line 67
    iput p3, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->scale:F

    .line 68
    iput-object p4, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    if-eqz p4, :cond_0

    .line 70
    iget p1, p4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p2, p4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    add-int/2addr p1, p2

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->size:F

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-nez p1, :cond_0

    .line 72
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->size:F

    :cond_0
    return-void
.end method

.method public constructor <init>(JLandroid/graphics/Paint$FontMetricsInt;)V
    .locals 1

    const v0, 0x3f99999a    # 1.2f

    .line 62
    invoke-direct {p0, p1, p2, v0, p3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(JFLandroid/graphics/Paint$FontMetricsInt;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$Document;Landroid/graphics/Paint$FontMetricsInt;)V
    .locals 3

    .line 57
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    const v2, 0x3f99999a    # 1.2f

    invoke-direct {p0, v0, v1, v2, p2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(JFLandroid/graphics/Paint$FontMetricsInt;)V

    .line 58
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->document:Lorg/telegram/tgnet/TLRPC$Document;

    return-void
.end method

.method static synthetic access$302(Lorg/telegram/ui/Components/AnimatedEmojiSpan;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->recordPositions:Z

    return p1
.end method

.method public static applyFontMetricsForString(Ljava/lang/CharSequence;Landroid/graphics/Paint;)V
    .locals 3

    .line 78
    instance-of v0, p0, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    .line 79
    move-object v0, p0

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    const-class v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    const/4 v2, 0x0

    invoke-interface {v0, v2, p0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-eqz p0, :cond_0

    .line 81
    :goto_0
    array-length v0, p0

    if-ge v2, v0, :cond_0

    .line 82
    aget-object v0, p0, v2

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->applyFontMetrics(Landroid/graphics/Paint$FontMetricsInt;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static cloneSpan(Lorg/telegram/ui/Components/AnimatedEmojiSpan;)Lorg/telegram/ui/Components/AnimatedEmojiSpan;
    .locals 5

    .line 853
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_0

    .line 854
    new-instance v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(Lorg/telegram/tgnet/TLRPC$Document;Landroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_0

    .line 856
    :cond_0
    new-instance v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-wide v2, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentId:J

    iget v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->scale:F

    iget-object v4, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v1, v2, v3, v0, v4}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(JFLandroid/graphics/Paint$FontMetricsInt;)V

    .line 858
    :goto_0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->fromEmojiKeyboard:Z

    iput-boolean p0, v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->fromEmojiKeyboard:Z

    return-object v1
.end method

.method public static cloneSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 7

    .line 863
    instance-of v0, p0, Landroid/text/Spanned;

    if-nez v0, :cond_0

    return-object p0

    .line 866
    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    .line 867
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Landroid/text/style/CharacterStyle;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/CharacterStyle;

    if-eqz v1, :cond_5

    .line 868
    array-length v2, v1

    if-gtz v2, :cond_1

    goto :goto_2

    .line 871
    :cond_1
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v2

    const-class v4, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-interface {v0, v3, v2, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-eqz v2, :cond_2

    .line 872
    array-length v2, v2

    if-gtz v2, :cond_2

    return-object p0

    .line 875
    :cond_2
    new-instance p0, Landroid/text/SpannableString;

    invoke-direct {p0, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 876
    :goto_0
    array-length v2, v1

    if-ge v3, v2, :cond_5

    .line 877
    aget-object v2, v1, v3

    if-nez v2, :cond_3

    goto :goto_1

    .line 881
    :cond_3
    aget-object v2, v1, v3

    instance-of v2, v2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-eqz v2, :cond_4

    .line 882
    aget-object v2, v1, v3

    invoke-interface {v0, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 883
    aget-object v4, v1, v3

    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 885
    aget-object v5, v1, v3

    check-cast v5, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    .line 886
    invoke-virtual {p0, v5}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V

    .line 887
    invoke-static {v5}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->cloneSpan(Lorg/telegram/ui/Components/AnimatedEmojiSpan;)Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    move-result-object v5

    const/16 v6, 0x21

    invoke-virtual {p0, v5, v2, v4, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return-object p0
.end method

.method public static drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFF)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/text/Layout;",
            "Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;",
            "F",
            "Ljava/util/List<",
            "Lorg/telegram/ui/Components/spoilers/SpoilerEffect;",
            ">;FFFF)V"
        }
    .end annotation

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 188
    invoke-static/range {v0 .. v9}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFFLandroid/graphics/ColorFilter;)V

    return-void
.end method

.method public static drawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFFLandroid/graphics/ColorFilter;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/text/Layout;",
            "Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;",
            "F",
            "Ljava/util/List<",
            "Lorg/telegram/ui/Components/spoilers/SpoilerEffect;",
            ">;FFFF",
            "Landroid/graphics/ColorFilter;",
            ")V"
        }
    .end annotation

    move-object v10, p0

    move-object v0, p1

    move-object v1, p2

    if-eqz v10, :cond_5

    if-eqz v0, :cond_5

    if-nez v1, :cond_0

    goto :goto_4

    .line 198
    :cond_0
    sget v2, Lorg/telegram/messenger/Emoji;->emojiDrawingYOffset:F

    const/4 v3, 0x0

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-nez v2, :cond_2

    cmpl-float v2, p3, v4

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v11, 0x0

    goto :goto_1

    .line 200
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 201
    sget v2, Lorg/telegram/messenger/Emoji;->emojiDrawingYOffset:F

    const/high16 v5, 0x41a00000    # 20.0f

    mul-float v5, v5, p3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v2, v5

    invoke-virtual {p0, v4, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v2, 0x1

    const/4 v11, 0x1

    .line 204
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 205
    :goto_2
    iget-object v2, v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->backgroundDrawingArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_4

    .line 206
    iget-object v2, v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->backgroundDrawingArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;

    .line 207
    iget-object v6, v2, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;->layout:Landroid/text/Layout;

    if-ne v6, v0, :cond_3

    move-object v0, v2

    move-object v1, p0

    move-object/from16 v2, p4

    move-wide v3, v4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    .line 208
    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;->draw(Landroid/graphics/Canvas;Ljava/util/List;JFFFFLandroid/graphics/ColorFilter;)V

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    if-eqz v11, :cond_5

    .line 214
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    :goto_4
    return-void
.end method

.method public static drawRawAnimatedEmojis(Landroid/graphics/Canvas;Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;FLjava/util/List;FFFFI)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/text/Layout;",
            "Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;",
            "F",
            "Ljava/util/List<",
            "Lorg/telegram/ui/Components/spoilers/SpoilerEffect;",
            ">;FFFFI)V"
        }
    .end annotation

    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_4

    .line 224
    :cond_0
    sget p1, Lorg/telegram/messenger/Emoji;->emojiDrawingYOffset:F

    const/4 p4, 0x1

    const/4 p5, 0x0

    const/4 p6, 0x0

    cmpl-float p1, p1, p5

    if-nez p1, :cond_2

    cmpl-float p1, p3, p5

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    .line 226
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 227
    sget p1, Lorg/telegram/messenger/Emoji;->emojiDrawingYOffset:F

    const/high16 p7, 0x41a00000    # 20.0f

    mul-float p3, p3, p7

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    add-float/2addr p1, p3

    invoke-virtual {p0, p5, p1}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 p1, 0x1

    .line 230
    :goto_1
    invoke-static {p2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->access$008(Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)I

    const/4 p3, 0x0

    .line 231
    :goto_2
    iget-object p5, p2, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->holders:Ljava/util/ArrayList;

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p5

    if-ge p3, p5, :cond_4

    .line 232
    iget-object p5, p2, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->holders:Ljava/util/ArrayList;

    invoke-virtual {p5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;

    .line 233
    iget-object p7, p5, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget p8, p7, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->measuredSize:I

    int-to-float p8, p8

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p8, v0

    .line 235
    iget v0, p7, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->lastDrawnCx:F

    .line 236
    iget p7, p7, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->lastDrawnCy:F

    .line 237
    iget-object v1, p5, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->drawableBounds:Landroid/graphics/Rect;

    sub-float v2, v0, p8

    float-to-int v2, v2

    sub-float v3, p7, p8

    float-to-int v3, v3

    add-float/2addr v0, p8

    float-to-int v0, v0

    add-float/2addr p7, p8

    float-to-int p7, p7

    invoke-virtual {v1, v2, v3, v0, p7}, Landroid/graphics/Rect;->set(IIII)V

    .line 238
    iget-object p7, p5, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    iget-object p8, p5, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->drawableBounds:Landroid/graphics/Rect;

    invoke-virtual {p7, p8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 240
    iget-object p7, p5, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    iget p7, p7, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->rawDrawIndex:I

    invoke-static {p2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->access$000(Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)I

    move-result p8

    if-ge p7, p8, :cond_3

    .line 241
    iget-object p7, p5, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-static {p2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->access$000(Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)I

    move-result p8

    iput p8, p7, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->rawDrawIndex:I

    const/4 p7, 0x1

    goto :goto_3

    :cond_3
    const/4 p7, 0x0

    .line 244
    :goto_3
    iget-object p5, p5, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {p5, p0, p7, p9}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->drawRaw(Landroid/graphics/Canvas;ZI)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_4
    if-eqz p1, :cond_5

    .line 248
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    :goto_4
    return-void
.end method

.method private static isInsideSpoiler(Landroid/text/Layout;II)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 253
    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    instance-of v1, v1, Landroid/text/Spanned;

    if-nez v1, :cond_0

    goto :goto_1

    .line 256
    :cond_0
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 257
    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 258
    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Landroid/text/Spanned;

    const-class v1, Lorg/telegram/ui/Components/TextStyleSpan;

    invoke-interface {p0, p1, p2, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/telegram/ui/Components/TextStyleSpan;

    const/4 p1, 0x0

    :goto_0
    if-eqz p0, :cond_2

    .line 259
    array-length p2, p0

    if-ge p1, p2, :cond_2

    .line 260
    aget-object p2, p0, p1

    if-eqz p2, :cond_1

    aget-object p2, p0, p1

    invoke-virtual {p2}, Lorg/telegram/ui/Components/TextStyleSpan;->isSpoiler()Z

    move-result p2

    if-eqz p2, :cond_1

    return v2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public static release(Landroid/view/View;Landroid/util/LongSparseArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/util/LongSparseArray<",
            "Lorg/telegram/ui/Components/AnimatedEmojiDrawable;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 592
    :goto_0
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 593
    invoke-virtual {p1, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v1, :cond_1

    .line 595
    invoke-virtual {v1, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 598
    :cond_2
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->clear()V

    return-void
.end method

.method public static release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 605
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->release()V

    return-void
.end method

.method public static update(ILandroid/view/View;[Lorg/telegram/ui/Components/AnimatedEmojiSpan;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/View;",
            "[",
            "Lorg/telegram/ui/Components/AnimatedEmojiSpan;",
            "Landroid/util/LongSparseArray<",
            "Lorg/telegram/ui/Components/AnimatedEmojiDrawable;",
            ">;)",
            "Landroid/util/LongSparseArray<",
            "Lorg/telegram/ui/Components/AnimatedEmojiDrawable;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_0

    return-object p3

    :cond_0
    if-nez p3, :cond_1

    .line 487
    new-instance p3, Landroid/util/LongSparseArray;

    invoke-direct {p3}, Landroid/util/LongSparseArray;-><init>()V

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 491
    :goto_0
    invoke-virtual {p3}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 492
    invoke-virtual {p3, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    .line 493
    invoke-virtual {p3, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    const/4 v5, 0x1

    if-nez v4, :cond_2

    .line 495
    invoke-virtual {p3, v2, v3}, Landroid/util/LongSparseArray;->remove(J)V

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_2
    const/4 v6, 0x0

    .line 500
    :goto_2
    array-length v7, p2

    if-ge v6, v7, :cond_4

    .line 501
    aget-object v7, p2, v6

    if-eqz v7, :cond_3

    aget-object v7, p2, v6

    invoke-virtual {v7}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v7

    cmp-long v9, v7, v2

    if-nez v9, :cond_3

    const/4 v6, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_3
    if-nez v6, :cond_5

    .line 508
    invoke-virtual {v4, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    .line 509
    invoke-virtual {p3, v2, v3}, Landroid/util/LongSparseArray;->remove(J)V

    goto :goto_1

    :cond_5
    :goto_4
    add-int/2addr v1, v5

    goto :goto_0

    .line 516
    :cond_6
    :goto_5
    array-length v1, p2

    if-ge v0, v1, :cond_b

    .line 517
    aget-object v1, p2, v0

    if-eqz v1, :cond_a

    .line 519
    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v2

    invoke-virtual {p3, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_a

    .line 521
    iget-boolean v2, v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->standard:Z

    if-eqz v2, :cond_7

    const/16 v2, 0x8

    goto :goto_6

    :cond_7
    iget v2, v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->cacheType:I

    if-gez v2, :cond_8

    move v2, p0

    .line 522
    :cond_8
    :goto_6
    iget-object v3, v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v3, :cond_9

    .line 523
    sget v4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v4, v2, v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IILorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object v2

    goto :goto_7

    .line 525
    :cond_9
    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iget-wide v4, v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentId:J

    invoke-static {v3, v2, v4, v5}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IIJ)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object v2

    .line 527
    :goto_7
    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Landroid/view/View;)V

    .line 528
    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v3

    invoke-virtual {p3, v3, v4, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_b
    return-object p3
.end method

.method public static update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;Ljava/util/ArrayList;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/View;",
            "Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject$TextLayoutBlock;",
            ">;)",
            "Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 349
    invoke-static {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;Ljava/util/ArrayList;Z)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object p0

    return-object p0
.end method

.method public static update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;Ljava/util/ArrayList;Z)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/View;",
            "Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject$TextLayoutBlock;",
            ">;Z)",
            "Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;"
        }
    .end annotation

    const/4 v2, 0x0

    move v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 353
    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;ZLorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;Ljava/util/ArrayList;Z)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object p0

    return-object p0
.end method

.method public static varargs update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;
    .locals 1

    const/4 v0, 0x0

    .line 371
    invoke-static {p0, p1, v0, p2, p3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;ZLorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object p0

    return-object p0
.end method

.method public static update(ILandroid/view/View;ZLorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;Ljava/util/ArrayList;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/View;",
            "Z",
            "Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject$TextLayoutBlock;",
            ">;)",
            "Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;"
        }
    .end annotation

    const/4 v5, 0x0

    move v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 357
    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;ZLorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;Ljava/util/ArrayList;Z)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object p0

    return-object p0
.end method

.method public static update(ILandroid/view/View;ZLorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;Ljava/util/ArrayList;Z)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/View;",
            "Z",
            "Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject$TextLayoutBlock;",
            ">;Z)",
            "Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p4, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 361
    :cond_0
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    new-array v7, v1, [Landroid/text/Layout;

    if-eqz p4, :cond_1

    .line 363
    :goto_1
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 364
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    aput-object v1, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p5

    .line 367
    invoke-static/range {v2 .. v7}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;ZLorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;Z[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object p0

    return-object p0
.end method

.method public static varargs update(ILandroid/view/View;ZLorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;Z[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;
    .locals 16

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    if-eqz v1, :cond_16

    .line 379
    array-length v3, v1

    if-gtz v3, :cond_0

    goto/16 :goto_d

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 387
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_11

    .line 388
    aget-object v5, v1, v4

    if-eqz v5, :cond_b

    .line 390
    invoke-virtual {v5}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    instance-of v7, v7, Landroid/text/Spanned;

    if-eqz v7, :cond_b

    .line 392
    invoke-virtual {v5}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Landroid/text/Spanned;

    .line 393
    invoke-interface {v7}, Landroid/text/Spanned;->length()I

    move-result v8

    const-class v9, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-interface {v7, v3, v8, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    const/4 v9, 0x0

    :goto_1
    if-eqz v8, :cond_c

    .line 395
    array-length v10, v8

    if-ge v9, v10, :cond_c

    .line 396
    aget-object v10, v8, v9

    if-nez v10, :cond_1

    goto/16 :goto_6

    :cond_1
    if-eqz p4, :cond_2

    .line 400
    invoke-virtual {v5}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    instance-of v11, v11, Landroid/text/Spannable;

    if-eqz v11, :cond_2

    .line 401
    invoke-interface {v7, v10}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    invoke-interface {v7, v10}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v12

    .line 402
    move-object v13, v7

    check-cast v13, Landroid/text/Spannable;

    invoke-interface {v13, v10}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 403
    invoke-static {v10}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->cloneSpan(Lorg/telegram/ui/Components/AnimatedEmojiSpan;)Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    move-result-object v10

    const/16 v14, 0x21

    invoke-interface {v13, v10, v11, v12, v14}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    if-nez v0, :cond_3

    .line 407
    new-instance v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;-><init>()V

    :cond_3
    const/4 v11, 0x0

    .line 409
    :goto_2
    iget-object v12, v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->holders:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_5

    .line 410
    iget-object v12, v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->holders:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;

    iget-object v12, v12, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-ne v12, v10, :cond_4

    iget-object v12, v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->holders:Ljava/util/ArrayList;

    .line 411
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;

    iget-object v12, v12, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->layout:Landroid/text/Layout;

    if-ne v12, v5, :cond_4

    .line 412
    iget-object v12, v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->holders:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;

    goto :goto_3

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_5
    const/4 v11, 0x0

    :goto_3
    if-nez v11, :cond_a

    .line 417
    new-instance v11, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;

    move-object/from16 v12, p1

    move/from16 v13, p2

    invoke-direct {v11, v12, v13}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;-><init>(Landroid/view/View;Z)V

    .line 418
    iput-object v5, v11, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->layout:Landroid/text/Layout;

    .line 419
    iget-boolean v14, v10, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->standard:Z

    if-eqz v14, :cond_6

    const/16 v14, 0x8

    goto :goto_4

    :cond_6
    iget v14, v10, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->cacheType:I

    if-gez v14, :cond_7

    move/from16 v14, p0

    .line 420
    :cond_7
    :goto_4
    iget-object v15, v10, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentAbsolutePath:Ljava/lang/String;

    if-eqz v15, :cond_8

    .line 421
    sget v15, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-virtual {v10}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v2

    iget-object v6, v10, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentAbsolutePath:Ljava/lang/String;

    invoke-static {v15, v14, v2, v3, v6}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IIJLjava/lang/String;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object v2

    iput-object v2, v11, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    goto :goto_5

    .line 422
    :cond_8
    iget-object v2, v10, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_9

    .line 423
    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v3, v14, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IILorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object v2

    iput-object v2, v11, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    goto :goto_5

    .line 425
    :cond_9
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iget-wide v12, v10, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentId:J

    invoke-static {v2, v14, v12, v13}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IIJ)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object v2

    iput-object v2, v11, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    .line 427
    :goto_5
    invoke-interface {v7, v10}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v7, v10}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v5, v2, v3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->isInsideSpoiler(Landroid/text/Layout;II)Z

    move-result v2

    iput-boolean v2, v11, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->insideSpoiler:Z

    .line 428
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v11, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->drawableBounds:Landroid/graphics/Rect;

    .line 429
    iput-object v10, v11, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    .line 430
    invoke-virtual {v0, v5, v11}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->add(Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;)V

    goto :goto_6

    .line 432
    :cond_a
    invoke-interface {v7, v10}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v7, v10}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v5, v2, v3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->isInsideSpoiler(Landroid/text/Layout;II)Z

    move-result v2

    iput-boolean v2, v11, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->insideSpoiler:Z

    :goto_6
    add-int/lit8 v9, v9, 0x1

    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_b
    const/4 v8, 0x0

    :cond_c
    if-eqz v0, :cond_10

    const/4 v2, 0x0

    .line 438
    :goto_7
    iget-object v3, v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->holders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_10

    .line 439
    iget-object v3, v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->holders:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;

    .line 440
    iget-object v3, v3, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->layout:Landroid/text/Layout;

    if-ne v3, v5, :cond_f

    .line 441
    iget-object v3, v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->holders:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;

    iget-object v3, v3, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    const/4 v6, 0x0

    :goto_8
    if-eqz v8, :cond_e

    .line 443
    array-length v7, v8

    if-ge v6, v7, :cond_e

    .line 444
    aget-object v7, v8, v6

    if-ne v7, v3, :cond_d

    const/4 v3, 0x1

    goto :goto_9

    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_e
    const/4 v3, 0x0

    :goto_9
    if-nez v3, :cond_f

    .line 450
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->remove(I)V

    add-int/lit8 v2, v2, -0x1

    :cond_f
    const/4 v3, 0x1

    add-int/2addr v2, v3

    goto :goto_7

    :cond_10
    add-int/lit8 v4, v4, 0x1

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_11
    if-eqz v0, :cond_15

    const/4 v2, 0x0

    .line 459
    :goto_a
    iget-object v3, v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->holders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_15

    .line 460
    iget-object v3, v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->holders:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;

    iget-object v3, v3, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->layout:Landroid/text/Layout;

    const/4 v4, 0x0

    .line 462
    :goto_b
    array-length v5, v1

    if-ge v4, v5, :cond_13

    .line 463
    aget-object v5, v1, v4

    if-ne v5, v3, :cond_12

    const/4 v3, 0x1

    goto :goto_c

    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_13
    const/4 v3, 0x0

    :goto_c
    if-nez v3, :cond_14

    .line 469
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->remove(I)V

    add-int/lit8 v2, v2, -0x1

    :cond_14
    const/4 v3, 0x1

    add-int/2addr v2, v3

    goto :goto_a

    :cond_15
    return-object v0

    :cond_16
    :goto_d
    if-eqz v0, :cond_17

    .line 381
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->holders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 382
    invoke-virtual/range {p3 .. p3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->release()V

    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public static varargs update(ILandroid/view/View;ZLorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;
    .locals 6

    const/4 v4, 0x0

    move v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 375
    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;ZLorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;Z[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public applyFontMetrics(Landroid/graphics/Paint$FontMetricsInt;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    return-void
.end method

.method public applyFontMetrics(Landroid/graphics/Paint$FontMetricsInt;I)V
    .locals 0

    .line 109
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 110
    iput p2, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->cacheType:I

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 0

    .line 175
    iget-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->recordPositions:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 176
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->spanDrawn:Z

    .line 177
    iget p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->measuredSize:I

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    add-float/2addr p5, p1

    int-to-float p1, p6

    sub-int/2addr p8, p6

    int-to-float p3, p8

    div-float/2addr p3, p2

    add-float/2addr p1, p3

    .line 179
    iget p2, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->lastDrawnCx:F

    cmpl-float p2, p5, p2

    if-nez p2, :cond_0

    iget p2, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->lastDrawnCy:F

    cmpl-float p2, p1, p2

    if-eqz p2, :cond_1

    .line 180
    :cond_0
    iput p5, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->lastDrawnCx:F

    .line 181
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->lastDrawnCy:F

    :cond_1
    return-void
.end method

.method public getDocumentId()J
    .locals 2

    .line 89
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentId:J

    :goto_0
    return-wide v0
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 5

    if-nez p5, :cond_0

    .line 120
    iget-boolean p2, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->top:Z

    if-eqz p2, :cond_0

    .line 121
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p5

    :cond_0
    const/4 p1, 0x0

    if-nez p5, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    .line 123
    :cond_1
    iget p2, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    :goto_0
    if-nez p5, :cond_2

    const/4 p3, 0x0

    goto :goto_1

    :cond_2
    iget p3, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 124
    :goto_1
    iget-object p4, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    if-nez p4, :cond_4

    .line 125
    iget p4, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->size:F

    float-to-int p4, p4

    const/16 v0, 0x8

    .line 127
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    const/16 v1, 0xa

    .line 128
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    if-eqz p5, :cond_3

    neg-int v2, v1

    sub-int/2addr v2, v0

    int-to-float v2, v2

    .line 131
    iget v3, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->scale:F

    mul-float v4, v2, v3

    float-to-int v4, v4

    iput v4, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v1, v0

    int-to-float v0, v1

    mul-float v1, v0, v3

    float-to-int v1, v1

    .line 132
    iput v1, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    mul-float v2, v2, v3

    float-to-int v1, v2

    .line 133
    iput v1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    mul-float v0, v0, v3

    float-to-int v0, v0

    .line 134
    iput v0, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 135
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    :cond_3
    int-to-float p1, p4

    .line 138
    iget p4, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->scale:F

    mul-float p1, p1, p4

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->measuredSize:I

    goto/16 :goto_2

    .line 140
    :cond_4
    iget p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->size:F

    iget v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->scale:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->measuredSize:I

    if-eqz p5, :cond_6

    .line 143
    iget-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->full:Z

    if-nez p1, :cond_5

    .line 144
    iget p1, p4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 145
    iget p1, p4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 147
    iget p1, p4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 148
    iget p1, p4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto :goto_2

    .line 150
    :cond_5
    iget p1, p4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget-object p4, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget p4, p4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    add-int/2addr p1, p4

    int-to-float p1, p1

    .line 152
    iget-object p4, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget p4, p4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float p4, p4

    div-float/2addr p4, p1

    iget v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->measuredSize:I

    int-to-float v0, v0

    mul-float p4, p4, v0

    float-to-double v0, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p4, v0

    iput p4, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 153
    iget-object p4, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget p4, p4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-float p4, p4

    div-float/2addr p4, p1

    iget v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->measuredSize:I

    int-to-float v0, v0

    mul-float p4, p4, v0

    float-to-double v0, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p4, v0

    iput p4, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 155
    iget-object p4, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget p4, p4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float p4, p4

    div-float/2addr p4, p1

    iget v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->measuredSize:I

    int-to-float v0, v0

    mul-float p4, p4, v0

    float-to-double v0, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p4, v0

    iput p4, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 156
    iget-object p4, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget p4, p4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-float p4, p4

    div-float/2addr p4, p1

    iget p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->measuredSize:I

    int-to-float p1, p1

    mul-float p4, p4, p1

    float-to-double v0, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    :cond_6
    :goto_2
    if-eqz p5, :cond_7

    .line 160
    iget-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->top:Z

    if-eqz p1, :cond_7

    .line 161
    iget p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr p2, p1

    iget p4, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int/2addr p3, p4

    add-int/2addr p2, p3

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    .line 162
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr p4, p2

    .line 163
    iput p4, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 165
    :cond_7
    iget p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->measuredSize:I

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public replaceFontMetrics(Landroid/graphics/Paint$FontMetricsInt;)V
    .locals 1

    .line 93
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    if-eqz p1, :cond_0

    .line 95
    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->size:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    const/16 p1, 0x14

    .line 97
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->size:F

    :cond_0
    return-void
.end method

.method public replaceFontMetrics(Landroid/graphics/Paint$FontMetricsInt;II)V
    .locals 0

    .line 103
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    int-to-float p1, p2

    .line 104
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->size:F

    .line 105
    iput p3, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->cacheType:I

    return-void
.end method
