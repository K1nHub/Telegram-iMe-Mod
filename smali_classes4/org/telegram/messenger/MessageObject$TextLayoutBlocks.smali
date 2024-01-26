.class public Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;
.super Ljava/lang/Object;
.source "MessageObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MessageObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextLayoutBlocks"
.end annotation


# instance fields
.field public hasCode:Z

.field public hasCodeAtBottom:Z

.field public hasCodeAtTop:Z

.field public hasQuote:Z

.field public hasQuoteAtBottom:Z

.field public hasRtl:Z

.field public hasSingleCode:Z

.field public hasSingleQuote:Z

.field public lastLineWidth:I

.field public final text:Ljava/lang/CharSequence;

.field public textHeight:I

.field public final textLayoutBlocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject$TextLayoutBlock;",
            ">;"
        }
    .end annotation
.end field

.field public textWidth:I

.field public textXOffset:F


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/MessageObject;Ljava/lang/CharSequence;Landroid/text/TextPaint;I)V
    .locals 32

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    .line 7166
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7162
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textLayoutBlocks:Ljava/util/ArrayList;

    .line 7167
    iput-object v0, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->text:Ljava/lang/CharSequence;

    const/4 v9, 0x0

    .line 7168
    iput v9, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textWidth:I

    const/4 v10, 0x1

    if-eqz v2, :cond_0

    .line 7169
    iget-object v3, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v3, :cond_0

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->noforwards:Z

    if-eqz v3, :cond_0

    move v3, v10

    goto :goto_0

    :cond_0
    move v3, v9

    :goto_0
    if-eqz v2, :cond_2

    if-nez v3, :cond_2

    .line 7171
    iget v3, v2, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    neg-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 7172
    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->noforwards:Z

    if-eqz v3, :cond_1

    move v3, v10

    goto :goto_1

    :cond_1
    move v3, v9

    :cond_2
    :goto_1
    move v11, v3

    .line 7175
    instance-of v3, v0, Landroid/text/Spanned;

    if-eqz v3, :cond_3

    move-object v4, v0

    check-cast v4, Landroid/text/Spanned;

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const-class v6, Lorg/telegram/messenger/CodeHighlighting$Span;

    invoke-interface {v4, v9, v5, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/telegram/messenger/CodeHighlighting$Span;

    array-length v4, v4

    if-lez v4, :cond_3

    move v4, v10

    goto :goto_2

    :cond_3
    move v4, v9

    :goto_2
    iput-boolean v4, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasCode:Z

    if-eqz v3, :cond_4

    .line 7176
    move-object v4, v0

    check-cast v4, Landroid/text/Spanned;

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const-class v6, Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;

    invoke-interface {v4, v9, v5, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;

    array-length v4, v4

    if-lez v4, :cond_4

    move v4, v10

    goto :goto_3

    :cond_4
    move v4, v9

    :goto_3
    iput-boolean v4, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasQuote:Z

    .line 7177
    iput-boolean v9, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasSingleQuote:Z

    .line 7178
    iput-boolean v9, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasSingleCode:Z

    if-eqz v3, :cond_8

    .line 7181
    move-object v3, v0

    check-cast v3, Landroid/text/Spanned;

    .line 7182
    invoke-interface {v3}, Landroid/text/Spanned;->length()I

    move-result v4

    const-class v5, Lorg/telegram/ui/Components/QuoteSpan;

    invoke-interface {v3, v9, v4, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/telegram/ui/Components/QuoteSpan;

    move v5, v9

    .line 7183
    :goto_4
    array-length v6, v4

    if-ge v5, v6, :cond_5

    .line 7184
    aget-object v6, v4, v5

    iput-boolean v9, v6, Lorg/telegram/ui/Components/QuoteSpan;->adaptLineHeight:Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 7186
    :cond_5
    array-length v5, v4

    if-ne v5, v10, :cond_6

    aget-object v5, v4, v9

    invoke-interface {v3, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    if-nez v5, :cond_6

    aget-object v4, v4, v9

    invoke-interface {v3, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {v3}, Landroid/text/Spanned;->length()I

    move-result v5

    if-ne v4, v5, :cond_6

    move v4, v10

    goto :goto_5

    :cond_6
    move v4, v9

    :goto_5
    iput-boolean v4, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasSingleQuote:Z

    .line 7188
    invoke-interface {v3}, Landroid/text/Spanned;->length()I

    move-result v4

    const-class v5, Lorg/telegram/messenger/CodeHighlighting$Span;

    invoke-interface {v3, v9, v4, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/telegram/messenger/CodeHighlighting$Span;

    .line 7189
    array-length v5, v4

    if-ne v5, v10, :cond_7

    aget-object v5, v4, v9

    invoke-interface {v3, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    if-nez v5, :cond_7

    aget-object v4, v4, v9

    invoke-interface {v3, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {v3}, Landroid/text/Spanned;->length()I

    move-result v3

    if-ne v4, v3, :cond_7

    move v3, v10

    goto :goto_6

    :cond_7
    move v3, v9

    :goto_6
    iput-boolean v3, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasSingleCode:Z

    .line 7194
    :cond_8
    iget-boolean v3, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasSingleQuote:Z

    const/16 v12, 0x20

    const/16 v13, 0xf

    if-eqz v3, :cond_9

    .line 7195
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    :goto_7
    sub-int v3, p4, v3

    move/from16 v20, v3

    goto :goto_8

    .line 7196
    :cond_9
    iget-boolean v3, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasSingleCode:Z

    if-eqz v3, :cond_a

    .line 7197
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    goto :goto_7

    :cond_a
    move/from16 v20, p4

    .line 7202
    :goto_8
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, v20

    .line 7204
    :try_start_0
    invoke-static/range {v3 .. v8}, Lorg/telegram/messenger/MessageObject;->access$100(Ljava/lang/CharSequence;Landroid/text/TextPaint;IFFZ)Landroid/text/StaticLayout;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9

    if-eqz v2, :cond_13

    .line 7209
    iget-boolean v6, v2, Lorg/telegram/messenger/MessageObject;->isRepostPreview:Z

    if-eqz v6, :cond_13

    const/16 v6, 0x16

    .line 7211
    iget v7, v2, Lorg/telegram/messenger/MessageObject;->type:I

    if-eqz v7, :cond_c

    .line 7212
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->hasValidGroupId()Z

    move-result v6

    if-eqz v6, :cond_b

    const/4 v6, 0x7

    goto :goto_9

    :cond_b
    const/16 v6, 0xc

    .line 7214
    :cond_c
    :goto_9
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isWebpage()Z

    move-result v7

    if-eqz v7, :cond_d

    add-int/lit8 v6, v6, -0x8

    .line 7217
    :cond_d
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v7

    if-le v7, v6, :cond_13

    .line 7218
    sget v7, Lorg/telegram/messenger/R$string;->ReadMore:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 7219
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "\u2026 "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v15, p3

    invoke-virtual {v15, v8}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v8

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v8, v5

    float-to-double v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    move v8, v9

    const/4 v5, 0x0

    :goto_a
    if-ge v8, v6, :cond_e

    .line 7223
    invoke-virtual {v3, v8}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result v13

    invoke-static {v5, v13}, Ljava/lang/Math;->max(FF)F

    move-result v5

    add-int/lit8 v8, v8, 0x1

    const/16 v13, 0xf

    goto :goto_a

    :cond_e
    sub-int/2addr v6, v10

    .line 7226
    invoke-virtual {v3, v6}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v8

    .line 7227
    invoke-virtual {v3, v6}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v6

    sub-int/2addr v6, v10

    :goto_b
    if-lt v6, v8, :cond_10

    .line 7230
    invoke-virtual {v3, v6}, Landroid/text/StaticLayout;->getPrimaryHorizontal(I)F

    move-result v13

    int-to-float v10, v4

    sub-float v10, v5, v10

    cmpg-float v10, v13, v10

    if-gez v10, :cond_f

    goto :goto_c

    :cond_f
    add-int/lit8 v6, v6, -0x1

    const/4 v10, 0x1

    goto :goto_b

    :cond_10
    :goto_c
    if-lt v6, v8, :cond_12

    .line 7235
    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_11

    goto :goto_d

    :cond_11
    add-int/lit8 v6, v6, -0x1

    goto :goto_c

    .line 7239
    :cond_12
    :goto_d
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-interface {v0, v9, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 7240
    new-instance v3, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks$1;

    invoke-direct {v3, v1}, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks$1;-><init>(Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;)V

    .line 7245
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/16 v6, 0x21

    .line 7240
    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v14, v0

    move-object/from16 v15, p3

    move/from16 v16, v20

    .line 7248
    :try_start_1
    invoke-static/range {v14 .. v19}, Lorg/telegram/messenger/MessageObject;->access$100(Ljava/lang/CharSequence;Landroid/text/TextPaint;IFFZ)Landroid/text/StaticLayout;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_e

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 7250
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void

    :cond_13
    :goto_e
    move-object/from16 v31, v3

    move-object v3, v0

    move-object/from16 v0, v31

    .line 7256
    iget-boolean v4, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasSingleQuote:Z

    if-eqz v4, :cond_14

    .line 7257
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int v20, v20, v4

    goto :goto_f

    .line 7258
    :cond_14
    iget-boolean v4, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasSingleCode:Z

    if-eqz v4, :cond_15

    const/16 v4, 0xf

    .line 7259
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int v20, v20, v5

    :cond_15
    :goto_f
    move/from16 v4, v20

    .line 7262
    iput v9, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textHeight:I

    .line 7263
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v5

    const/16 v6, 0xa

    .line 7267
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x18

    if-lt v7, v8, :cond_16

    const/4 v7, 0x1

    goto :goto_10

    :cond_16
    move v7, v9

    :goto_10
    if-eqz v7, :cond_17

    const/4 v8, 0x1

    goto :goto_11

    :cond_17
    int-to-float v8, v5

    int-to-float v10, v6

    div-float/2addr v8, v10

    float-to-double v13, v8

    .line 7271
    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-int v8, v13

    .line 7276
    :goto_11
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 7277
    instance-of v13, v3, Landroid/text/Spanned;

    if-eqz v13, :cond_19

    iget-boolean v13, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasQuote:Z

    if-nez v13, :cond_18

    iget-boolean v13, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasCode:Z

    if-eqz v13, :cond_19

    .line 7279
    :cond_18
    invoke-static {v3, v10}, Lorg/telegram/messenger/MessageObject;->cutIntoRanges(Ljava/lang/CharSequence;Ljava/util/ArrayList;)V

    goto :goto_15

    :cond_19
    if-nez v7, :cond_1c

    const/4 v7, 0x1

    if-ne v8, v7, :cond_1a

    goto :goto_14

    :cond_1a
    move v7, v9

    move v13, v7

    :goto_12
    if-ge v7, v8, :cond_1d

    sub-int v14, v5, v13

    .line 7284
    invoke-static {v6, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 7286
    invoke-virtual {v0, v13}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v15

    add-int/2addr v14, v13

    add-int/lit8 v6, v14, -0x1

    .line 7287
    invoke-virtual {v0, v6}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v6

    if-ge v6, v15, :cond_1b

    goto :goto_13

    .line 7292
    :cond_1b
    new-instance v13, Lorg/telegram/messenger/MessageObject$TextRange;

    invoke-direct {v13, v15, v6}, Lorg/telegram/messenger/MessageObject$TextRange;-><init>(II)V

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v13, v14

    :goto_13
    add-int/lit8 v7, v7, 0x1

    const/16 v6, 0xa

    goto :goto_12

    .line 7281
    :cond_1c
    :goto_14
    new-instance v5, Lorg/telegram/messenger/MessageObject$TextRange;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-direct {v5, v9, v6}, Lorg/telegram/messenger/MessageObject$TextRange;-><init>(II)V

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7297
    :cond_1d
    :goto_15
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 7299
    iput-boolean v9, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasCodeAtTop:Z

    .line 7300
    iput-boolean v9, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasCodeAtBottom:Z

    .line 7301
    iput-boolean v9, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasQuoteAtBottom:Z

    .line 7302
    iput-boolean v9, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasSingleQuote:Z

    move-object v6, v0

    move v7, v9

    const/4 v8, 0x0

    const/4 v13, 0x0

    .line 7304
    :goto_16
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_4e

    .line 7305
    new-instance v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;

    invoke-direct {v14}, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;-><init>()V

    .line 7307
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject$TextRange;

    .line 7309
    iget-boolean v15, v0, Lorg/telegram/messenger/MessageObject$TextRange;->code:Z

    iput-boolean v15, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->code:Z

    .line 7310
    iget-boolean v15, v0, Lorg/telegram/messenger/MessageObject$TextRange;->quote:Z

    iput-boolean v15, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->quote:Z

    if-nez v7, :cond_1e

    const/4 v15, 0x1

    goto :goto_17

    :cond_1e
    move v15, v9

    .line 7312
    :goto_17
    iput-boolean v15, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->first:Z

    .line 7313
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/16 v16, 0x1

    add-int/lit8 v15, v15, -0x1

    if-ne v7, v15, :cond_1f

    const/4 v15, 0x1

    goto :goto_18

    :cond_1f
    move v15, v9

    :goto_18
    iput-boolean v15, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->last:Z

    .line 7315
    iget-boolean v9, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->first:Z

    if-eqz v9, :cond_20

    .line 7316
    iget-boolean v12, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->code:Z

    iput-boolean v12, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasCodeAtTop:Z

    :cond_20
    if-eqz v15, :cond_21

    .line 7319
    iget-boolean v12, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->quote:Z

    iput-boolean v12, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasQuoteAtBottom:Z

    .line 7320
    iget-boolean v12, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->code:Z

    iput-boolean v12, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasCodeAtBottom:Z

    :cond_21
    if-eqz v9, :cond_22

    if-eqz v15, :cond_22

    .line 7322
    iget-boolean v12, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->quote:Z

    if-eqz v12, :cond_22

    const/4 v12, 0x1

    goto :goto_19

    :cond_22
    const/4 v12, 0x0

    :goto_19
    iput-boolean v12, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasSingleQuote:Z

    .line 7324
    iget-boolean v12, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->quote:Z

    if-eqz v12, :cond_25

    const/4 v12, 0x6

    if-eqz v9, :cond_23

    if-eqz v15, :cond_23

    .line 7326
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    iput v9, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->padBottom:I

    iput v9, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->padTop:I

    goto :goto_1d

    :cond_23
    if-eqz v9, :cond_24

    const/16 v12, 0x8

    .line 7328
    :cond_24
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    iput v9, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->padTop:I

    const/4 v9, 0x7

    .line 7329
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    iput v12, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->padBottom:I

    goto :goto_1d

    .line 7331
    :cond_25
    iget-boolean v9, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->code:Z

    if-eqz v9, :cond_29

    .line 7332
    iget-object v9, v0, Lorg/telegram/messenger/MessageObject$TextRange;->language:Ljava/lang/String;

    iget v12, v0, Lorg/telegram/messenger/MessageObject$TextRange;->end:I

    iget v15, v0, Lorg/telegram/messenger/MessageObject$TextRange;->start:I

    sub-int/2addr v12, v15

    invoke-virtual {v14, v9, v12, v11}, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->layoutCode(Ljava/lang/String;IZ)V

    const/4 v9, 0x4

    .line 7333
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    iget v15, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->languageHeight:I

    add-int/2addr v12, v15

    iget-boolean v15, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->first:Z

    if-eqz v15, :cond_26

    const/4 v15, 0x0

    goto :goto_1a

    :cond_26
    const/4 v15, 0x5

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    :goto_1a
    add-int/2addr v12, v15

    iput v12, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->padTop:I

    .line 7334
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    iget-boolean v12, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->last:Z

    if-eqz v12, :cond_27

    const/4 v12, 0x7

    const/4 v15, 0x0

    goto :goto_1b

    :cond_27
    const/4 v12, 0x7

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    :goto_1b
    add-int/2addr v9, v15

    iget-boolean v15, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->hasCodeCopyButton:Z

    if-eqz v15, :cond_28

    const/16 v15, 0x26

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    goto :goto_1c

    :cond_28
    const/4 v15, 0x0

    :goto_1c
    add-int/2addr v9, v15

    iput v9, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->padBottom:I

    goto :goto_1e

    :cond_29
    :goto_1d
    const/4 v12, 0x7

    .line 7338
    :goto_1e
    iget-boolean v9, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->code:Z

    if-eqz v9, :cond_2c

    .line 7339
    iget v15, v0, Lorg/telegram/messenger/MessageObject$TextRange;->end:I

    iget v12, v0, Lorg/telegram/messenger/MessageObject$TextRange;->start:I

    sub-int/2addr v15, v12

    const/16 v12, 0xdc

    if-le v15, v12, :cond_2a

    .line 7341
    sget-object v15, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextCode3Paint:Landroid/text/TextPaint;

    :goto_1f
    move-object/from16 v22, v15

    goto :goto_20

    :cond_2a
    const/16 v12, 0x50

    if-le v15, v12, :cond_2b

    .line 7343
    sget-object v15, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextCode2Paint:Landroid/text/TextPaint;

    goto :goto_1f

    .line 7345
    :cond_2b
    sget-object v15, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextCodePaint:Landroid/text/TextPaint;

    goto :goto_1f

    :cond_2c
    move-object/from16 v22, p3

    .line 7350
    :goto_20
    iget-boolean v12, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->quote:Z

    if-eqz v12, :cond_2d

    const/16 v12, 0x20

    .line 7351
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int v9, v4, v9

    :goto_21
    move/from16 v23, v9

    goto :goto_22

    :cond_2d
    if-eqz v9, :cond_2e

    const/16 v9, 0xf

    .line 7353
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    sub-int v9, v4, v12

    goto :goto_21

    :cond_2e
    move/from16 v23, v4

    :goto_22
    const/4 v9, 0x1

    if-ne v5, v9, :cond_31

    .line 7356
    iget-boolean v9, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->code:Z

    if-eqz v9, :cond_30

    iget-boolean v9, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->quote:Z

    if-nez v9, :cond_30

    invoke-virtual {v6}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    instance-of v9, v9, Landroid/text/Spannable;

    if-eqz v9, :cond_30

    .line 7358
    iget-object v6, v0, Lorg/telegram/messenger/MessageObject$TextRange;->language:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2f

    .line 7359
    iget v6, v0, Lorg/telegram/messenger/MessageObject$TextRange;->start:I

    iget v9, v0, Lorg/telegram/messenger/MessageObject$TextRange;->end:I

    invoke-interface {v3, v6, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v9, v0, Lorg/telegram/messenger/MessageObject$TextRange;->language:Ljava/lang/String;

    invoke-static {v6, v9}, Lorg/telegram/messenger/CodeHighlighting;->getHighlighted(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v6

    goto :goto_23

    .line 7361
    :cond_2f
    new-instance v6, Landroid/text/SpannableString;

    iget v9, v0, Lorg/telegram/messenger/MessageObject$TextRange;->start:I

    iget v12, v0, Lorg/telegram/messenger/MessageObject$TextRange;->end:I

    invoke-interface {v3, v9, v12}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-direct {v6, v9}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    :goto_23
    move-object/from16 v21, v6

    const/high16 v24, 0x3f800000    # 1.0f

    const/16 v25, 0x0

    const/16 v26, 0x0

    .line 7363
    invoke-static/range {v21 .. v26}, Lorg/telegram/messenger/MessageObject;->access$100(Ljava/lang/CharSequence;Landroid/text/TextPaint;IFFZ)Landroid/text/StaticLayout;

    move-result-object v6

    .line 7366
    :cond_30
    iput-object v6, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    const/4 v9, 0x0

    .line 7367
    iput v9, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textYOffset:F

    const/4 v9, 0x0

    .line 7368
    iput v9, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->charactersOffset:I

    .line 7369
    invoke-virtual {v6}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v12

    iput v12, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->charactersEnd:I

    .line 7371
    invoke-virtual {v6}, Landroid/text/StaticLayout;->getHeight()I

    move-result v12

    iput v12, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->height:I

    .line 7372
    iget v15, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->padTop:I

    add-int/2addr v15, v12

    iget v12, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->padBottom:I

    add-int/2addr v15, v12

    iput v15, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textHeight:I

    goto :goto_25

    :cond_31
    const/4 v9, 0x0

    .line 7374
    iget v12, v0, Lorg/telegram/messenger/MessageObject$TextRange;->start:I

    .line 7375
    iget v15, v0, Lorg/telegram/messenger/MessageObject$TextRange;->end:I

    if-ge v15, v12, :cond_32

    move-object/from16 v18, v3

    move-object/from16 p2, v10

    move/from16 v24, v11

    const/4 v3, 0x1

    const/4 v9, 0x0

    const/16 v11, 0x20

    const/16 v12, 0xf

    move v10, v4

    move-object v4, v2

    goto/16 :goto_3a

    .line 7379
    :cond_32
    iput v12, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->charactersOffset:I

    .line 7380
    iput v15, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->charactersEnd:I

    .line 7383
    :try_start_2
    iget-boolean v9, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->code:Z

    if-eqz v9, :cond_33

    iget-boolean v9, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->quote:Z

    if-nez v9, :cond_33

    .line 7384
    invoke-interface {v3, v12, v15}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v12, v0, Lorg/telegram/messenger/MessageObject$TextRange;->language:Ljava/lang/String;

    invoke-static {v9, v12}, Lorg/telegram/messenger/CodeHighlighting;->getHighlighted(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v9

    goto :goto_24

    .line 7386
    :cond_33
    invoke-interface {v3, v12, v15}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v9}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v9

    :goto_24
    move-object/from16 v21, v9

    const/high16 v24, 0x3f800000    # 1.0f

    const/16 v25, 0x0

    const/16 v26, 0x0

    .line 7388
    invoke-static/range {v21 .. v26}, Lorg/telegram/messenger/MessageObject;->access$100(Ljava/lang/CharSequence;Landroid/text/TextPaint;IFFZ)Landroid/text/StaticLayout;

    move-result-object v9

    iput-object v9, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    .line 7390
    iput v8, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textYOffset:F

    if-eqz v7, :cond_34

    sub-float v12, v8, v13

    float-to-int v12, v12

    .line 7392
    iput v12, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->height:I

    .line 7394
    :cond_34
    invoke-virtual {v9}, Landroid/text/StaticLayout;->getHeight()I

    move-result v9

    iput v9, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->height:I

    .line 7395
    iget v12, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textHeight:I

    iget v15, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->padTop:I

    add-int/2addr v15, v9

    iget v9, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->padBottom:I

    add-int/2addr v15, v9

    add-int/2addr v12, v15

    iput v12, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textHeight:I

    .line 7396
    iget v13, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textYOffset:F
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    .line 7403
    :goto_25
    iget-boolean v9, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->code:Z

    if-eqz v9, :cond_35

    iget-object v9, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v9}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    instance-of v9, v9, Landroid/text/Spannable;

    if-eqz v9, :cond_35

    iget-object v9, v0, Lorg/telegram/messenger/MessageObject$TextRange;->language:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_35

    .line 7404
    iget-object v9, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v9}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    move-object/from16 v21, v9

    check-cast v21, Landroid/text/Spannable;

    const/16 v22, 0x0

    iget-object v9, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v9}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v23

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject$TextRange;->language:Ljava/lang/String;

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x1

    move-object/from16 v24, v0

    invoke-static/range {v21 .. v27}, Lorg/telegram/messenger/CodeHighlighting;->highlight(Landroid/text/Spannable;IILjava/lang/String;ILorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;Z)V

    .line 7407
    :cond_35
    iget v0, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->padTop:I

    iget v9, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->height:I

    add-int/2addr v0, v9

    iget v9, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->padBottom:I

    add-int/2addr v0, v9

    int-to-float v0, v0

    add-float/2addr v8, v0

    .line 7409
    iget-object v0, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textLayoutBlocks:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7411
    iget-object v0, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v9

    .line 7415
    :try_start_3
    iget-object v0, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    add-int/lit8 v12, v9, -0x1

    invoke-virtual {v0, v12}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v0

    if-nez v7, :cond_36

    const/4 v12, 0x0

    cmpl-float v15, v0, v12

    if-ltz v15, :cond_36

    .line 7417
    iput v0, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textXOffset:F
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_36
    move v12, v0

    goto :goto_26

    :catch_1
    move-exception v0

    if-nez v7, :cond_37

    const/4 v12, 0x0

    .line 7422
    iput v12, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textXOffset:F

    .line 7424
    :cond_37
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v12, 0x0

    .line 7429
    :goto_26
    :try_start_4
    iget-object v0, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    add-int/lit8 v15, v9, -0x1

    invoke-virtual {v0, v15}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object/from16 p2, v10

    move v15, v11

    goto :goto_27

    :catch_2
    move-exception v0

    .line 7432
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move-object/from16 p2, v10

    move v15, v11

    const/4 v0, 0x0

    :goto_27
    float-to-double v10, v0

    .line 7435
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v0, v10

    add-int/lit8 v10, v4, 0x50

    if-le v0, v10, :cond_38

    move v0, v4

    :cond_38
    add-int/lit8 v10, v5, -0x1

    if-ne v7, v10, :cond_39

    .line 7443
    iput v0, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->lastLineWidth:I

    :cond_39
    int-to-float v11, v0

    move-object/from16 v18, v3

    const/4 v3, 0x0

    .line 7446
    invoke-static {v3, v12}, Ljava/lang/Math;->max(FF)F

    move-result v19

    add-float v3, v11, v19

    float-to-double v2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 7448
    iget-boolean v3, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->quote:Z

    if-eqz v3, :cond_3a

    const/4 v3, 0x0

    .line 7449
    iput v3, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->maxRight:F

    const/4 v3, 0x0

    :goto_28
    if-ge v3, v9, :cond_3a

    move/from16 v19, v0

    .line 7452
    :try_start_5
    iget v0, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->maxRight:F
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-object/from16 v20, v6

    :try_start_6
    iget-object v6, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v6, v3}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result v6

    invoke-static {v0, v6}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->maxRight:F
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_29

    :catch_3
    move-object/from16 v20, v6

    .line 7454
    :catch_4
    iget v0, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textWidth:I

    int-to-float v0, v0

    iput v0, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->maxRight:F

    :goto_29
    add-int/lit8 v3, v3, 0x1

    move/from16 v0, v19

    move-object/from16 v6, v20

    goto :goto_28

    :cond_3a
    move/from16 v19, v0

    move-object/from16 v20, v6

    const/4 v3, 0x1

    if-le v9, v3, :cond_45

    move/from16 v21, v8

    move/from16 v0, v19

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v8, v2

    :goto_2a
    if-ge v11, v9, :cond_41

    move/from16 v22, v9

    .line 7464
    :try_start_7
    iget-object v9, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v9, v11}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v9
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    move/from16 v23, v13

    goto :goto_2b

    :catch_5
    move/from16 v23, v13

    const/4 v9, 0x0

    .line 7469
    :goto_2b
    iget-boolean v13, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->quote:Z

    if-eqz v13, :cond_3b

    move/from16 v24, v15

    const/16 v13, 0x20

    .line 7470
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    :goto_2c
    int-to-float v13, v15

    add-float/2addr v9, v13

    goto :goto_2d

    :cond_3b
    move/from16 v24, v15

    .line 7471
    iget-boolean v13, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->code:Z

    if-eqz v13, :cond_3c

    const/16 v13, 0xf

    .line 7472
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    goto :goto_2c

    .line 7476
    :cond_3c
    :goto_2d
    :try_start_8
    iget-object v13, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v13, v11}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v13
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_2e

    :catch_6
    const/4 v13, 0x0

    :goto_2e
    add-int/lit8 v15, v4, 0x14

    int-to-float v15, v15

    cmpl-float v15, v9, v15

    if-lez v15, :cond_3d

    int-to-float v9, v4

    move v13, v9

    const/4 v9, 0x0

    const/4 v15, 0x0

    goto :goto_2f

    :cond_3d
    const/4 v15, 0x0

    move/from16 v31, v13

    move v13, v9

    move/from16 v9, v31

    :goto_2f
    cmpl-float v19, v9, v15

    if-gtz v19, :cond_3f

    .line 7486
    iget-object v15, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v15, v11}, Landroid/text/StaticLayout;->getParagraphDirection(I)I

    move-result v15

    move/from16 v25, v4

    const/4 v4, -0x1

    if-ne v15, v4, :cond_3e

    goto :goto_30

    .line 7491
    :cond_3e
    iget-byte v4, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->directionFlags:B

    or-int/lit8 v4, v4, 0x2

    int-to-byte v4, v4

    iput-byte v4, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->directionFlags:B

    const/4 v15, 0x1

    goto :goto_31

    :cond_3f
    move/from16 v25, v4

    .line 7487
    :goto_30
    iget v4, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textXOffset:F

    invoke-static {v4, v9}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textXOffset:F

    .line 7488
    iget-byte v4, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->directionFlags:B

    const/4 v15, 0x1

    or-int/2addr v4, v15

    int-to-byte v4, v4

    iput-byte v4, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->directionFlags:B

    .line 7489
    iput-boolean v15, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasRtl:Z

    :goto_31
    if-nez v12, :cond_40

    if-nez v19, :cond_40

    .line 7495
    :try_start_9
    iget-object v4, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, v11}, Landroid/text/StaticLayout;->getParagraphDirection(I)I

    move-result v4
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    if-ne v4, v15, :cond_40

    :catch_7
    const/4 v12, 0x1

    .line 7502
    :cond_40
    invoke-static {v6, v13}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-float/2addr v9, v13

    .line 7503
    invoke-static {v3, v9}, Ljava/lang/Math;->max(FF)F

    move-result v3

    move v15, v3

    float-to-double v3, v13

    .line 7504
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    float-to-double v3, v9

    .line 7505
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v11, v11, 0x1

    move v3, v15

    move/from16 v9, v22

    move/from16 v13, v23

    move/from16 v15, v24

    move/from16 v4, v25

    goto/16 :goto_2a

    :cond_41
    move/from16 v25, v4

    move/from16 v23, v13

    move/from16 v24, v15

    if-eqz v12, :cond_42

    if-ne v7, v10, :cond_44

    .line 7510
    iput v2, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->lastLineWidth:I

    goto :goto_32

    :cond_42
    if-ne v7, v10, :cond_43

    .line 7513
    iput v0, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->lastLineWidth:I

    :cond_43
    move v3, v6

    .line 7515
    :cond_44
    :goto_32
    iget v0, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textWidth:I

    float-to-double v2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textWidth:I

    move v2, v8

    move/from16 v10, v25

    const/4 v3, 0x1

    const/4 v9, 0x0

    goto :goto_36

    :cond_45
    move/from16 v25, v4

    move/from16 v21, v8

    move/from16 v23, v13

    move/from16 v24, v15

    const/4 v9, 0x0

    cmpl-float v0, v12, v9

    if-lez v0, :cond_48

    .line 7518
    iget v0, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textXOffset:F

    invoke-static {v0, v12}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textXOffset:F

    cmpl-float v0, v0, v9

    if-nez v0, :cond_46

    add-float/2addr v11, v12

    float-to-int v0, v11

    goto :goto_33

    :cond_46
    move/from16 v0, v19

    :goto_33
    const/4 v3, 0x1

    if-eq v5, v3, :cond_47

    move v4, v3

    goto :goto_34

    :cond_47
    const/4 v4, 0x0

    .line 7522
    :goto_34
    iput-boolean v4, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasRtl:Z

    .line 7523
    iget-byte v4, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->directionFlags:B

    or-int/2addr v4, v3

    int-to-byte v4, v4

    iput-byte v4, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->directionFlags:B

    goto :goto_35

    :cond_48
    const/4 v3, 0x1

    .line 7525
    iget-byte v0, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->directionFlags:B

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    iput-byte v0, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->directionFlags:B

    move/from16 v0, v19

    .line 7528
    :goto_35
    iget v4, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textWidth:I

    move/from16 v10, v25

    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textWidth:I

    .line 7530
    :goto_36
    iget-object v0, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->languageLayout:Lorg/telegram/ui/Components/Text;

    if-eqz v0, :cond_4a

    .line 7531
    iget v4, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textWidth:I

    int-to-float v4, v4

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v0

    const/16 v6, 0xf

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v6, v8

    add-float/2addr v0, v6

    iget-object v6, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    if-nez v6, :cond_49

    move v6, v9

    goto :goto_37

    :cond_49
    invoke-virtual {v6}, Landroid/text/StaticLayout;->getWidth()I

    move-result v6

    int-to-float v6, v6

    :goto_37
    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    iput v0, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textWidth:I

    :cond_4a
    move-object/from16 v4, p1

    if-eqz v4, :cond_4d

    .line 7535
    iget-boolean v0, v4, Lorg/telegram/messenger/MessageObject;->isSpoilersRevealed:Z

    if-nez v0, :cond_4d

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->access$200(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 7537
    iget-boolean v0, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->quote:Z

    if-eqz v0, :cond_4b

    const/16 v11, 0x20

    .line 7538
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr v2, v0

    move/from16 v28, v2

    const/16 v12, 0xf

    goto :goto_38

    :cond_4b
    const/16 v11, 0x20

    .line 7539
    iget-boolean v0, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->code:Z

    const/16 v12, 0xf

    if-eqz v0, :cond_4c

    .line 7540
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr v2, v0

    :cond_4c
    move/from16 v28, v2

    :goto_38
    const/16 v25, 0x0

    .line 7542
    iget-object v0, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    const/16 v27, -0x1

    const/16 v29, 0x0

    iget-object v2, v14, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->spoilers:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v30, v2

    invoke-static/range {v25 .. v30}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->addSpoilers(Landroid/view/View;Landroid/text/Layout;IILjava/util/Stack;Ljava/util/List;)V

    goto :goto_39

    :cond_4d
    const/16 v11, 0x20

    const/16 v12, 0xf

    :goto_39
    move-object/from16 v6, v20

    move/from16 v8, v21

    move/from16 v13, v23

    goto :goto_3a

    :catch_8
    move-exception v0

    move-object/from16 v18, v3

    move-object/from16 p2, v10

    move/from16 v24, v11

    const/4 v3, 0x1

    const/4 v9, 0x0

    const/16 v11, 0x20

    const/16 v12, 0xf

    move v10, v4

    move-object v4, v2

    .line 7398
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_3a
    add-int/lit8 v7, v7, 0x1

    move-object v2, v4

    move v4, v10

    move v12, v11

    move-object/from16 v3, v18

    move/from16 v11, v24

    const/4 v9, 0x0

    move-object/from16 v10, p2

    goto/16 :goto_16

    :cond_4e
    return-void

    :catch_9
    move-exception v0

    move-object v2, v0

    .line 7206
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method
