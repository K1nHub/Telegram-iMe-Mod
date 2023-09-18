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
.field private asizeDp:I

.field public cacheType:I

.field public document:Lorg/telegram/tgnet/TLRPC$Document;

.field public documentAbsolutePath:Ljava/lang/String;

.field public documentId:J

.field private fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field public fromEmojiKeyboard:Z

.field public full:Z

.field lastDrawnCx:F

.field lastDrawnCy:F

.field protected measuredSize:I

.field positionChanged:Z

.field private recordPositions:Z

.field private scale:F

.field private size:F

.field spanDrawn:Z

.field public standard:Z

.field public top:Z


# direct methods
.method public constructor <init>(JFLandroid/graphics/Paint$FontMetricsInt;)V
    .locals 2

    .line 70
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

    .line 71
    iput-wide p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentId:J

    .line 72
    iput p3, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->scale:F

    .line 73
    iput-object p4, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    if-eqz p4, :cond_0

    .line 75
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

    .line 77
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

    .line 67
    invoke-direct {p0, p1, p2, v0, p3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(JFLandroid/graphics/Paint$FontMetricsInt;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$Document;FLandroid/graphics/Paint$FontMetricsInt;)V
    .locals 2

    .line 62
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-direct {p0, v0, v1, p2, p3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(JFLandroid/graphics/Paint$FontMetricsInt;)V

    .line 63
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->document:Lorg/telegram/tgnet/TLRPC$Document;

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

    .line 83
    instance-of v0, p0, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    .line 84
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

    .line 86
    :goto_0
    array-length v0, p0

    if-ge v2, v0, :cond_0

    .line 87
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

    .line 857
    iget-object v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_0

    .line 858
    new-instance v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-object v2, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(Lorg/telegram/tgnet/TLRPC$Document;Landroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_0

    .line 860
    :cond_0
    new-instance v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-wide v2, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentId:J

    iget v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->scale:F

    iget-object v4, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v1, v2, v3, v0, v4}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(JFLandroid/graphics/Paint$FontMetricsInt;)V

    .line 862
    :goto_0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->fromEmojiKeyboard:Z

    iput-boolean p0, v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->fromEmojiKeyboard:Z

    return-object v1
.end method

.method public static cloneSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 7

    .line 867
    instance-of v0, p0, Landroid/text/Spanned;

    if-nez v0, :cond_0

    return-object p0

    .line 870
    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    .line 871
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Landroid/text/style/CharacterStyle;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/CharacterStyle;

    if-eqz v1, :cond_5

    .line 872
    array-length v2, v1

    if-gtz v2, :cond_1

    goto :goto_2

    .line 875
    :cond_1
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v2

    const-class v4, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-interface {v0, v3, v2, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-eqz v2, :cond_2

    .line 876
    array-length v2, v2

    if-gtz v2, :cond_2

    return-object p0

    .line 879
    :cond_2
    new-instance p0, Landroid/text/SpannableString;

    invoke-direct {p0, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 880
    :goto_0
    array-length v2, v1

    if-ge v3, v2, :cond_5

    .line 881
    aget-object v2, v1, v3

    if-nez v2, :cond_3

    goto :goto_1

    .line 885
    :cond_3
    aget-object v2, v1, v3

    instance-of v2, v2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-eqz v2, :cond_4

    .line 886
    aget-object v2, v1, v3

    invoke-interface {v0, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 887
    aget-object v4, v1, v3

    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 889
    aget-object v5, v1, v3

    check-cast v5, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    .line 890
    invoke-virtual {p0, v5}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V

    .line 891
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

    .line 193
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

    .line 203
    :cond_0
    sget v2, Lorg/telegram/messenger/Emoji;->emojiDrawingYOffset:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    const/4 v4, 0x0

    if-nez v2, :cond_2

    cmpl-float v2, p3, v3

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v11, v4

    goto :goto_1

    .line 205
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 206
    sget v2, Lorg/telegram/messenger/Emoji;->emojiDrawingYOffset:F

    const/high16 v5, 0x41a00000    # 20.0f

    mul-float/2addr v5, p3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v2, v5

    invoke-virtual {p0, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v2, 0x1

    move v11, v2

    .line 209
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 210
    :goto_2
    iget-object v2, v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->backgroundDrawingArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_4

    .line 211
    iget-object v2, v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->backgroundDrawingArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;

    .line 212
    iget-object v3, v2, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;->layout:Landroid/text/Layout;

    if-ne v3, v0, :cond_3

    move-object v0, v2

    move-object v1, p0

    move-object/from16 v2, p4

    move-wide v3, v5

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    .line 213
    invoke-virtual/range {v0 .. v9}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$SpansChunk;->draw(Landroid/graphics/Canvas;Ljava/util/List;JFFFFLandroid/graphics/ColorFilter;)V

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    if-eqz v11, :cond_5

    .line 219
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

    .line 229
    :cond_0
    sget p1, Lorg/telegram/messenger/Emoji;->emojiDrawingYOffset:F

    const/4 p4, 0x0

    cmpl-float p1, p1, p4

    const/4 p5, 0x1

    const/4 p6, 0x0

    if-nez p1, :cond_2

    cmpl-float p1, p3, p4

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, p6

    goto :goto_1

    .line 231
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 232
    sget p1, Lorg/telegram/messenger/Emoji;->emojiDrawingYOffset:F

    const/high16 p7, 0x41a00000    # 20.0f

    mul-float/2addr p3, p7

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    add-float/2addr p1, p3

    invoke-virtual {p0, p4, p1}, Landroid/graphics/Canvas;->translate(FF)V

    move p1, p5

    .line 235
    :goto_1
    invoke-static {p2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->access$008(Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)I

    move p3, p6

    .line 236
    :goto_2
    iget-object p4, p2, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->holders:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-ge p3, p4, :cond_4

    .line 237
    iget-object p4, p2, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->holders:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;

    .line 238
    iget-object p7, p4, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget p8, p7, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->measuredSize:I

    int-to-float p8, p8

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p8, v0

    .line 240
    iget v0, p7, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->lastDrawnCx:F

    .line 241
    iget p7, p7, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->lastDrawnCy:F

    .line 242
    iget-object v1, p4, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->drawableBounds:Landroid/graphics/Rect;

    sub-float v2, v0, p8

    float-to-int v2, v2

    sub-float v3, p7, p8

    float-to-int v3, v3

    add-float/2addr v0, p8

    float-to-int v0, v0

    add-float/2addr p7, p8

    float-to-int p7, p7

    invoke-virtual {v1, v2, v3, v0, p7}, Landroid/graphics/Rect;->set(IIII)V

    .line 243
    iget-object p7, p4, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    iget-object p8, p4, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->drawableBounds:Landroid/graphics/Rect;

    invoke-virtual {p7, p8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 245
    iget-object p7, p4, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    iget p7, p7, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->rawDrawIndex:I

    invoke-static {p2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->access$000(Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)I

    move-result p8

    if-ge p7, p8, :cond_3

    .line 246
    iget-object p7, p4, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-static {p2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->access$000(Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)I

    move-result p8

    iput p8, p7, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->rawDrawIndex:I

    move p7, p5

    goto :goto_3

    :cond_3
    move p7, p6

    .line 249
    :goto_3
    iget-object p4, p4, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {p4, p0, p7, p9}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->drawRaw(Landroid/graphics/Canvas;ZI)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_4
    if-eqz p1, :cond_5

    .line 253
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    :goto_4
    return-void
.end method

.method private static isInsideSpoiler(Landroid/text/Layout;II)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 258
    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    instance-of v1, v1, Landroid/text/Spanned;

    if-nez v1, :cond_0

    goto :goto_1

    .line 261
    :cond_0
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 262
    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 263
    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Landroid/text/Spanned;

    const-class v1, Lorg/telegram/ui/Components/TextStyleSpan;

    invoke-interface {p0, p1, p2, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/telegram/ui/Components/TextStyleSpan;

    move p1, v0

    :goto_0
    if-eqz p0, :cond_2

    .line 264
    array-length p2, p0

    if-ge p1, p2, :cond_2

    .line 265
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

    .line 596
    :goto_0
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 597
    invoke-virtual {p1, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v1, :cond_1

    .line 599
    invoke-virtual {v1, p0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 602
    :cond_2
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->clear()V

    return-void
.end method

.method public static release(Landroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 609
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->release()V

    return-void
.end method

.method public static update(ILandroid/view/View;Ljava/util/ArrayList;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/AnimatedEmojiSpan;",
            ">;",
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

    .line 549
    new-instance p3, Landroid/util/LongSparseArray;

    invoke-direct {p3}, Landroid/util/LongSparseArray;-><init>()V

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    .line 553
    :goto_0
    invoke-virtual {p3}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 554
    invoke-virtual {p3, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    .line 555
    invoke-virtual {p3, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    const/4 v5, 0x1

    if-nez v4, :cond_2

    .line 557
    invoke-virtual {p3, v2, v3}, Landroid/util/LongSparseArray;->remove(J)V

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_2
    move v6, v0

    .line 561
    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 562
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v7

    cmp-long v7, v7, v2

    if-nez v7, :cond_3

    move v6, v5

    goto :goto_3

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    move v6, v0

    :goto_3
    if-nez v6, :cond_5

    .line 568
    invoke-virtual {v4, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Landroid/view/View;)V

    .line 569
    invoke-virtual {p3, v2, v3}, Landroid/util/LongSparseArray;->remove(J)V

    goto :goto_1

    :cond_5
    :goto_4
    add-int/2addr v1, v5

    goto :goto_0

    .line 576
    :cond_6
    :goto_5
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    .line 577
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-eqz v1, :cond_9

    .line 579
    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v2

    invoke-virtual {p3, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_9

    .line 581
    iget-boolean v2, v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->standard:Z

    if-eqz v2, :cond_7

    const/16 v2, 0x8

    goto :goto_6

    :cond_7
    iget v2, v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->cacheType:I

    if-gez v2, :cond_8

    move v2, p0

    .line 582
    :cond_8
    :goto_6
    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iget-wide v4, v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentId:J

    invoke-static {v3, v2, v4, v5}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IIJ)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object v2

    .line 583
    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Landroid/view/View;)V

    .line 584
    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v3

    invoke-virtual {p3, v3, v4, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_a
    return-object p3
.end method

.method public static update(ILandroid/view/View;[Lorg/telegram/ui/Components/AnimatedEmojiSpan;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;
    .locals 9
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

    .line 491
    new-instance p3, Landroid/util/LongSparseArray;

    invoke-direct {p3}, Landroid/util/LongSparseArray;-><init>()V

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    .line 495
    :goto_0
    invoke-virtual {p3}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 496
    invoke-virtual {p3, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    .line 497
    invoke-virtual {p3, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    const/4 v5, 0x1

    if-nez v4, :cond_2

    .line 499
    invoke-virtual {p3, v2, v3}, Landroid/util/LongSparseArray;->remove(J)V

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_2
    move v6, v0

    .line 504
    :goto_2
    array-length v7, p2

    if-ge v6, v7, :cond_4

    .line 505
    aget-object v7, p2, v6

    if-eqz v7, :cond_3

    aget-object v7, p2, v6

    invoke-virtual {v7}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v7

    cmp-long v7, v7, v2

    if-nez v7, :cond_3

    move v6, v5

    goto :goto_3

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    move v6, v0

    :goto_3
    if-nez v6, :cond_5

    .line 512
    invoke-virtual {v4, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->removeView(Landroid/view/View;)V

    .line 513
    invoke-virtual {p3, v2, v3}, Landroid/util/LongSparseArray;->remove(J)V

    goto :goto_1

    :cond_5
    :goto_4
    add-int/2addr v1, v5

    goto :goto_0

    .line 520
    :cond_6
    :goto_5
    array-length v1, p2

    if-ge v0, v1, :cond_b

    .line 521
    aget-object v1, p2, v0

    if-eqz v1, :cond_a

    .line 523
    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v2

    invoke-virtual {p3, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_a

    .line 525
    iget-boolean v2, v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->standard:Z

    if-eqz v2, :cond_7

    const/16 v2, 0x8

    goto :goto_6

    :cond_7
    iget v2, v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->cacheType:I

    if-gez v2, :cond_8

    move v2, p0

    .line 526
    :cond_8
    :goto_6
    iget-object v3, v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v3, :cond_9

    .line 527
    sget v4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v4, v2, v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IILorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object v2

    goto :goto_7

    .line 529
    :cond_9
    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iget-wide v4, v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentId:J

    invoke-static {v3, v2, v4, v5}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IIJ)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object v2

    .line 531
    :goto_7
    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Landroid/view/View;)V

    .line 532
    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v3

    invoke-virtual {p3, v3, v4, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_b
    return-object p3
.end method

.method public static update(Landroid/view/View;Ljava/util/ArrayList;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/AnimatedEmojiSpan;",
            ">;",
            "Landroid/util/LongSparseArray<",
            "Lorg/telegram/ui/Components/AnimatedEmojiDrawable;",
            ">;)",
            "Landroid/util/LongSparseArray<",
            "Lorg/telegram/ui/Components/AnimatedEmojiDrawable;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 541
    invoke-static {v0, p0, p1, p2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;Ljava/util/ArrayList;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    move-result-object p0

    return-object p0
.end method

.method public static update(Landroid/view/View;[Lorg/telegram/ui/Components/AnimatedEmojiSpan;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    const/4 v0, 0x0

    .line 483
    invoke-static {v0, p0, p1, p2}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;[Lorg/telegram/ui/Components/AnimatedEmojiSpan;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    move-result-object p0

    return-object p0
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

    .line 353
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

    .line 357
    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;ZLorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;Ljava/util/ArrayList;Z)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object p0

    return-object p0
.end method

.method public static varargs update(ILandroid/view/View;Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;
    .locals 1

    const/4 v0, 0x0

    .line 375
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

    .line 361
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

    move v1, v0

    goto :goto_0

    .line 365
    :cond_0
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    new-array v7, v1, [Landroid/text/Layout;

    if-eqz p4, :cond_1

    .line 367
    :goto_1
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 368
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

    .line 371
    invoke-static/range {v2 .. v7}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;ZLorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;Z[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object p0

    return-object p0
.end method

.method public static varargs update(ILandroid/view/View;ZLorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;Z[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;
    .locals 16

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    if-eqz v1, :cond_16

    .line 383
    array-length v3, v1

    if-gtz v3, :cond_0

    goto/16 :goto_d

    :cond_0
    const/4 v3, 0x0

    move v4, v3

    .line 391
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_11

    .line 392
    aget-object v5, v1, v4

    if-eqz v5, :cond_b

    .line 394
    invoke-virtual {v5}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    instance-of v7, v7, Landroid/text/Spanned;

    if-eqz v7, :cond_b

    .line 396
    invoke-virtual {v5}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Landroid/text/Spanned;

    .line 397
    invoke-interface {v7}, Landroid/text/Spanned;->length()I

    move-result v8

    const-class v9, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-interface {v7, v3, v8, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    move v9, v3

    :goto_1
    if-eqz v8, :cond_c

    .line 399
    array-length v10, v8

    if-ge v9, v10, :cond_c

    .line 400
    aget-object v10, v8, v9

    if-nez v10, :cond_1

    goto/16 :goto_6

    :cond_1
    if-eqz p4, :cond_2

    .line 404
    invoke-virtual {v5}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    instance-of v11, v11, Landroid/text/Spannable;

    if-eqz v11, :cond_2

    .line 405
    invoke-interface {v7, v10}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    invoke-interface {v7, v10}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v12

    .line 406
    move-object v13, v7

    check-cast v13, Landroid/text/Spannable;

    invoke-interface {v13, v10}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 407
    invoke-static {v10}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->cloneSpan(Lorg/telegram/ui/Components/AnimatedEmojiSpan;)Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    move-result-object v10

    const/16 v14, 0x21

    invoke-interface {v13, v10, v11, v12, v14}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    if-nez v0, :cond_3

    .line 411
    new-instance v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;-><init>()V

    :cond_3
    move v11, v3

    .line 413
    :goto_2
    iget-object v12, v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->holders:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_5

    .line 414
    iget-object v12, v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->holders:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;

    iget-object v12, v12, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-ne v12, v10, :cond_4

    iget-object v12, v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->holders:Ljava/util/ArrayList;

    .line 415
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;

    iget-object v12, v12, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->layout:Landroid/text/Layout;

    if-ne v12, v5, :cond_4

    .line 416
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

    .line 421
    new-instance v11, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;

    move-object/from16 v12, p1

    move/from16 v13, p2

    invoke-direct {v11, v12, v13}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;-><init>(Landroid/view/View;Z)V

    .line 422
    iput-object v5, v11, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->layout:Landroid/text/Layout;

    .line 423
    iget-boolean v14, v10, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->standard:Z

    if-eqz v14, :cond_6

    const/16 v14, 0x8

    goto :goto_4

    :cond_6
    iget v14, v10, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->cacheType:I

    if-gez v14, :cond_7

    move/from16 v14, p0

    .line 424
    :cond_7
    :goto_4
    iget-object v15, v10, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentAbsolutePath:Ljava/lang/String;

    if-eqz v15, :cond_8

    .line 425
    sget v15, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-virtual {v10}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v2

    iget-object v6, v10, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentAbsolutePath:Ljava/lang/String;

    invoke-static {v15, v14, v2, v3, v6}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IIJLjava/lang/String;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object v2

    iput-object v2, v11, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    goto :goto_5

    .line 426
    :cond_8
    iget-object v2, v10, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_9

    .line 427
    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v3, v14, v2}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IILorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object v2

    iput-object v2, v11, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    goto :goto_5

    .line 429
    :cond_9
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iget-wide v12, v10, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentId:J

    invoke-static {v2, v14, v12, v13}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IIJ)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object v2

    iput-object v2, v11, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->drawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    .line 431
    :goto_5
    invoke-interface {v7, v10}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v7, v10}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v5, v2, v3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->isInsideSpoiler(Landroid/text/Layout;II)Z

    move-result v2

    iput-boolean v2, v11, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->insideSpoiler:Z

    .line 432
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v11, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->drawableBounds:Landroid/graphics/Rect;

    .line 433
    iput-object v10, v11, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    .line 434
    invoke-virtual {v0, v5, v11}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->add(Landroid/text/Layout;Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;)V

    goto :goto_6

    .line 436
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

    .line 442
    :goto_7
    iget-object v3, v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->holders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_10

    .line 443
    iget-object v3, v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->holders:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;

    .line 444
    iget-object v3, v3, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->layout:Landroid/text/Layout;

    if-ne v3, v5, :cond_f

    .line 445
    iget-object v3, v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->holders:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;

    iget-object v3, v3, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    const/4 v6, 0x0

    :goto_8
    if-eqz v8, :cond_e

    .line 447
    array-length v7, v8

    if-ge v6, v7, :cond_e

    .line 448
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

    .line 454
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

    .line 463
    :goto_a
    iget-object v3, v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->holders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_15

    .line 464
    iget-object v3, v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->holders:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;

    iget-object v3, v3, Lorg/telegram/ui/Components/AnimatedEmojiSpan$AnimatedEmojiHolder;->layout:Landroid/text/Layout;

    const/4 v4, 0x0

    .line 466
    :goto_b
    array-length v5, v1

    if-ge v4, v5, :cond_13

    .line 467
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

    .line 473
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

    .line 385
    iget-object v1, v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;->holders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 386
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

    .line 379
    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->update(ILandroid/view/View;ZLorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;Z[Landroid/text/Layout;)Lorg/telegram/ui/Components/AnimatedEmojiSpan$EmojiGroupedSpans;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addSize(I)V
    .locals 0

    return-void
.end method

.method public applyFontMetrics(Landroid/graphics/Paint$FontMetricsInt;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    return-void
.end method

.method public applyFontMetrics(Landroid/graphics/Paint$FontMetricsInt;I)V
    .locals 0

    .line 114
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 115
    iput p2, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->cacheType:I

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 0

    .line 180
    iget-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->recordPositions:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 181
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->spanDrawn:Z

    .line 182
    iget p2, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->measuredSize:I

    int-to-float p2, p2

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    add-float/2addr p5, p2

    int-to-float p2, p6

    sub-int/2addr p8, p6

    int-to-float p4, p8

    div-float/2addr p4, p3

    add-float/2addr p2, p4

    .line 184
    iget p3, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->lastDrawnCx:F

    cmpl-float p3, p5, p3

    if-nez p3, :cond_0

    iget p3, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->lastDrawnCy:F

    cmpl-float p3, p2, p3

    if-eqz p3, :cond_1

    .line 185
    :cond_0
    iput p5, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->lastDrawnCx:F

    .line 186
    iput p2, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->lastDrawnCy:F

    .line 187
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->positionChanged:Z

    :cond_1
    return-void
.end method

.method public getDocumentId()J
    .locals 2

    .line 94
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

    .line 125
    iget-boolean p2, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->top:Z

    if-eqz p2, :cond_0

    .line 126
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p5

    :cond_0
    const/4 p1, 0x0

    if-nez p5, :cond_1

    move p2, p1

    goto :goto_0

    .line 128
    :cond_1
    iget p2, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    :goto_0
    if-nez p5, :cond_2

    move p3, p1

    goto :goto_1

    :cond_2
    iget p3, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 129
    :goto_1
    iget-object p4, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    if-nez p4, :cond_4

    .line 130
    iget p4, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->size:F

    float-to-int p4, p4

    const/16 v0, 0x8

    .line 132
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    const/16 v1, 0xa

    .line 133
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    if-eqz p5, :cond_3

    neg-int v2, v1

    sub-int/2addr v2, v0

    int-to-float v2, v2

    .line 136
    iget v3, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->scale:F

    mul-float v4, v2, v3

    float-to-int v4, v4

    iput v4, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v1, v0

    int-to-float v0, v1

    mul-float v1, v0, v3

    float-to-int v1, v1

    .line 137
    iput v1, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 138
    iput v1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    mul-float/2addr v0, v3

    float-to-int v0, v0

    .line 139
    iput v0, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 140
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    :cond_3
    int-to-float p1, p4

    .line 143
    iget p4, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->scale:F

    mul-float/2addr p1, p4

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->measuredSize:I

    goto :goto_2

    .line 145
    :cond_4
    iget p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->size:F

    iget v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->scale:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->measuredSize:I

    if-eqz p5, :cond_6

    .line 148
    iget-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->full:Z

    if-nez p1, :cond_5

    .line 149
    iget p1, p4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 150
    iget p1, p4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 152
    iget p1, p4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 153
    iget p1, p4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto :goto_2

    .line 155
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

    .line 157
    iget-object p4, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget p4, p4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float p4, p4

    div-float/2addr p4, p1

    iget v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->measuredSize:I

    int-to-float v0, v0

    mul-float/2addr p4, v0

    float-to-double v0, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p4, v0

    iput p4, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 158
    iget-object p4, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget p4, p4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-float p4, p4

    div-float/2addr p4, p1

    iget v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->measuredSize:I

    int-to-float v0, v0

    mul-float/2addr p4, v0

    float-to-double v0, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p4, v0

    iput p4, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 160
    iget-object p4, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget p4, p4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float p4, p4

    div-float/2addr p4, p1

    iget v0, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->measuredSize:I

    int-to-float v0, v0

    mul-float/2addr p4, v0

    float-to-double v0, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p4, v0

    iput p4, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 161
    iget-object p4, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget p4, p4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-float p4, p4

    div-float/2addr p4, p1

    iget p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->measuredSize:I

    int-to-float p1, p1

    mul-float/2addr p4, p1

    float-to-double v0, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    :cond_6
    :goto_2
    if-eqz p5, :cond_7

    .line 165
    iget-boolean p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->top:Z

    if-eqz p1, :cond_7

    .line 166
    iget p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr p2, p1

    iget p4, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int/2addr p3, p4

    add-int/2addr p2, p3

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    .line 167
    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr p4, p2

    .line 168
    iput p4, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 170
    :cond_7
    iget p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->measuredSize:I

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public replaceFontMetrics(Landroid/graphics/Paint$FontMetricsInt;)V
    .locals 1

    .line 98
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    if-eqz p1, :cond_0

    .line 100
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

    .line 102
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->size:F

    :cond_0
    return-void
.end method

.method public replaceFontMetrics(Landroid/graphics/Paint$FontMetricsInt;II)V
    .locals 0

    .line 108
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    int-to-float p1, p2

    .line 109
    iput p1, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->size:F

    .line 110
    iput p3, p0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->cacheType:I

    return-void
.end method
