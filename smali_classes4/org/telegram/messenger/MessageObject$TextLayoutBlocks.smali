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
    .locals 35

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v11, p2

    .line 6605
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6598
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textLayoutBlocks:Ljava/util/ArrayList;

    .line 6606
    iput-object v11, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->text:Ljava/lang/CharSequence;

    const/4 v12, 0x0

    .line 6607
    iput v12, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textWidth:I

    .line 6609
    instance-of v0, v11, Landroid/text/Spanned;

    const/4 v13, 0x1

    if-eqz v0, :cond_0

    move-object v3, v11

    check-cast v3, Landroid/text/Spanned;

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const-class v5, Lorg/telegram/messenger/CodeHighlighting$Span;

    invoke-interface {v3, v12, v4, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/telegram/messenger/CodeHighlighting$Span;

    array-length v3, v3

    if-lez v3, :cond_0

    move v3, v13

    goto :goto_0

    :cond_0
    move v3, v12

    :goto_0
    iput-boolean v3, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasCode:Z

    if-eqz v0, :cond_1

    .line 6610
    move-object v3, v11

    check-cast v3, Landroid/text/Spanned;

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const-class v5, Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;

    invoke-interface {v3, v12, v4, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/telegram/ui/Components/QuoteSpan$QuoteStyleSpan;

    array-length v3, v3

    if-lez v3, :cond_1

    move v3, v13

    goto :goto_1

    :cond_1
    move v3, v12

    :goto_1
    iput-boolean v3, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasQuote:Z

    .line 6611
    iput-boolean v12, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasSingleQuote:Z

    if-eqz v0, :cond_4

    .line 6614
    move-object v3, v11

    check-cast v3, Landroid/text/Spanned;

    .line 6615
    invoke-interface {v3}, Landroid/text/Spanned;->length()I

    move-result v4

    const-class v5, Lorg/telegram/ui/Components/QuoteSpan;

    invoke-interface {v3, v12, v4, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/telegram/ui/Components/QuoteSpan;

    move v5, v12

    .line 6616
    :goto_2
    array-length v6, v4

    if-ge v5, v6, :cond_2

    .line 6617
    aget-object v6, v4, v5

    iput-boolean v12, v6, Lorg/telegram/ui/Components/QuoteSpan;->adaptLineHeight:Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 6619
    :cond_2
    array-length v5, v4

    if-ne v5, v13, :cond_3

    aget-object v5, v4, v12

    invoke-interface {v3, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    if-nez v5, :cond_3

    aget-object v4, v4, v12

    invoke-interface {v3, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {v3}, Landroid/text/Spanned;->length()I

    move-result v3

    if-ne v4, v3, :cond_3

    move v3, v13

    goto :goto_3

    :cond_3
    move v3, v12

    :goto_3
    iput-boolean v3, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasSingleQuote:Z

    .line 6624
    :cond_4
    iget-boolean v3, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasSingleQuote:Z

    const/16 v14, 0x20

    if-eqz v3, :cond_5

    .line 6625
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int v3, p4, v3

    move v15, v3

    goto :goto_4

    :cond_5
    move/from16 v15, p4

    .line 6630
    :goto_4
    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 6632
    :try_start_0
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v8, 0x3f800000    # 1.0f

    const/16 v7, 0x18

    const/4 v6, 0x0

    if-lt v9, v7, :cond_6

    .line 6634
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object/from16 v5, p3

    invoke-static {v11, v12, v3, v5, v15}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    .line 6635
    invoke-virtual {v3, v6, v8}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    .line 6636
    invoke-virtual {v3, v13}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    .line 6637
    invoke-virtual {v3, v12}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    .line 6638
    invoke-virtual {v3, v10}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    .line 6639
    invoke-virtual {v3}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v3

    move v13, v9

    move-object/from16 v27, v10

    goto :goto_5

    :cond_6
    move-object/from16 v5, p3

    .line 6641
    new-instance v16, Landroid/text/StaticLayout;

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v3, v16

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move v6, v15

    move v13, v7

    move-object v7, v10

    move/from16 v8, v17

    move v13, v9

    move/from16 v9, v18

    move-object/from16 v27, v10

    move/from16 v10, v19

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a

    move-object/from16 v3, v16

    .line 6648
    :goto_5
    iget-boolean v4, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasSingleQuote:Z

    if-eqz v4, :cond_7

    .line 6649
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v15, v4

    .line 6652
    :cond_7
    iput v12, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textHeight:I

    .line 6653
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v4

    const/16 v5, 0xa

    const/16 v6, 0x18

    if-lt v13, v6, :cond_8

    const/4 v6, 0x1

    goto :goto_6

    :cond_8
    move v6, v12

    :goto_6
    if-eqz v6, :cond_9

    const/4 v7, 0x1

    goto :goto_7

    :cond_9
    int-to-float v7, v4

    int-to-float v8, v5

    div-float/2addr v7, v8

    float-to-double v7, v7

    .line 6661
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    .line 6666
    :goto_7
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_b

    .line 6667
    iget-boolean v0, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasQuote:Z

    if-nez v0, :cond_a

    iget-boolean v0, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasCode:Z

    if-eqz v0, :cond_b

    .line 6669
    :cond_a
    invoke-static {v11, v13}, Lorg/telegram/messenger/MessageObject;->cutIntoRanges(Ljava/lang/CharSequence;Ljava/util/ArrayList;)V

    goto :goto_b

    :cond_b
    if-nez v6, :cond_e

    const/4 v6, 0x1

    if-ne v7, v6, :cond_c

    goto :goto_a

    :cond_c
    move v0, v12

    move v6, v0

    :goto_8
    if-ge v0, v7, :cond_f

    sub-int v8, v4, v6

    .line 6674
    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 6676
    invoke-virtual {v3, v6}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v9

    add-int/2addr v8, v6

    add-int/lit8 v10, v8, -0x1

    .line 6677
    invoke-virtual {v3, v10}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v10

    if-ge v10, v9, :cond_d

    goto :goto_9

    .line 6682
    :cond_d
    new-instance v6, Lorg/telegram/messenger/MessageObject$TextRange;

    invoke-direct {v6, v9, v10}, Lorg/telegram/messenger/MessageObject$TextRange;-><init>(II)V

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v6, v8

    :goto_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 6671
    :cond_e
    :goto_a
    new-instance v0, Lorg/telegram/messenger/MessageObject$TextRange;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-direct {v0, v12, v4}, Lorg/telegram/messenger/MessageObject$TextRange;-><init>(II)V

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6687
    :cond_f
    :goto_b
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 6689
    iput-boolean v12, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasCodeAtTop:Z

    .line 6690
    iput-boolean v12, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasCodeAtBottom:Z

    .line 6691
    iput-boolean v12, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasQuoteAtBottom:Z

    .line 6692
    iput-boolean v12, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasSingleQuote:Z

    move v8, v12

    const/4 v9, 0x0

    const/16 v28, 0x0

    .line 6694
    :goto_c
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_39

    .line 6695
    new-instance v7, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;

    invoke-direct {v7}, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;-><init>()V

    .line 6697
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject$TextRange;

    .line 6699
    iget-boolean v4, v0, Lorg/telegram/messenger/MessageObject$TextRange;->code:Z

    iput-boolean v4, v7, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->code:Z

    .line 6700
    iget-boolean v4, v0, Lorg/telegram/messenger/MessageObject$TextRange;->quote:Z

    iput-boolean v4, v7, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->quote:Z

    if-nez v8, :cond_10

    const/4 v4, 0x1

    goto :goto_d

    :cond_10
    move v4, v12

    .line 6702
    :goto_d
    iput-boolean v4, v7, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->first:Z

    .line 6703
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ne v8, v4, :cond_11

    const/4 v4, 0x1

    goto :goto_e

    :cond_11
    move v4, v12

    :goto_e
    iput-boolean v4, v7, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->last:Z

    .line 6705
    iget-boolean v5, v7, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->first:Z

    if-eqz v5, :cond_12

    .line 6706
    iget-boolean v6, v7, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->code:Z

    iput-boolean v6, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasCodeAtTop:Z

    :cond_12
    if-eqz v4, :cond_13

    .line 6709
    iget-boolean v6, v7, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->quote:Z

    iput-boolean v6, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasQuoteAtBottom:Z

    .line 6710
    iget-boolean v6, v7, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->code:Z

    iput-boolean v6, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasCodeAtBottom:Z

    :cond_13
    if-eqz v5, :cond_14

    if-eqz v4, :cond_14

    .line 6712
    iget-boolean v6, v7, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->quote:Z

    if-eqz v6, :cond_14

    const/4 v6, 0x1

    goto :goto_f

    :cond_14
    move v6, v12

    :goto_f
    iput-boolean v6, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasSingleQuote:Z

    .line 6714
    iget-boolean v6, v7, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->quote:Z

    if-eqz v6, :cond_17

    const/4 v6, 0x6

    if-eqz v5, :cond_15

    if-eqz v4, :cond_15

    .line 6716
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    iput v4, v7, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->padBottom:I

    iput v4, v7, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->padTop:I

    goto :goto_12

    :cond_15
    if-eqz v5, :cond_16

    const/16 v6, 0x8

    .line 6718
    :cond_16
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    iput v4, v7, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->padTop:I

    const/4 v4, 0x7

    .line 6719
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    iput v4, v7, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->padBottom:I

    goto :goto_12

    .line 6721
    :cond_17
    iget-boolean v4, v7, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->code:Z

    if-eqz v4, :cond_1a

    const/4 v4, 0x5

    if-eqz v5, :cond_18

    move v5, v12

    goto :goto_10

    .line 6722
    :cond_18
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    :goto_10
    iput v5, v7, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->padTop:I

    .line 6723
    iget-boolean v5, v7, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->last:Z

    if-eqz v5, :cond_19

    move v4, v12

    goto :goto_11

    :cond_19
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    :goto_11
    iput v4, v7, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->padBottom:I

    .line 6727
    :cond_1a
    :goto_12
    iget-boolean v4, v7, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->code:Z

    if-eqz v4, :cond_1d

    .line 6728
    iget v5, v0, Lorg/telegram/messenger/MessageObject$TextRange;->end:I

    iget v6, v0, Lorg/telegram/messenger/MessageObject$TextRange;->start:I

    sub-int/2addr v5, v6

    const/16 v6, 0xdc

    if-le v5, v6, :cond_1b

    .line 6730
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextCode3Paint:Landroid/text/TextPaint;

    goto :goto_13

    :cond_1b
    const/16 v6, 0x50

    if-le v5, v6, :cond_1c

    .line 6732
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextCode2Paint:Landroid/text/TextPaint;

    goto :goto_13

    .line 6734
    :cond_1c
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextCodePaint:Landroid/text/TextPaint;

    goto :goto_13

    :cond_1d
    move-object/from16 v5, p3

    :goto_13
    const/4 v6, 0x1

    if-ne v10, v6, :cond_20

    if-eqz v4, :cond_1f

    .line 6739
    iget-boolean v4, v7, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->quote:Z

    if-nez v4, :cond_1f

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    instance-of v4, v4, Landroid/text/Spannable;

    if-eqz v4, :cond_1f

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject$TextRange;->language:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 6740
    iget v3, v0, Lorg/telegram/messenger/MessageObject$TextRange;->start:I

    iget v4, v0, Lorg/telegram/messenger/MessageObject$TextRange;->end:I

    invoke-interface {v11, v3, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject$TextRange;->language:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/telegram/messenger/CodeHighlighting;->getHighlighted(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v4

    .line 6741
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-lt v3, v6, :cond_1e

    .line 6743
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v4, v12, v3, v5, v15}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    const/4 v4, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 6744
    invoke-virtual {v3, v4, v6}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    const/4 v5, 0x1

    .line 6745
    invoke-virtual {v3, v5}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    .line 6746
    invoke-virtual {v3, v12}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    move-object/from16 v5, v27

    .line 6747
    invoke-virtual {v3, v5}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    .line 6748
    invoke-virtual {v3}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v3

    move v14, v4

    move-object/from16 v26, v5

    move/from16 v27, v6

    move-object v12, v7

    move/from16 v29, v8

    move/from16 v30, v9

    move/from16 v31, v10

    goto :goto_14

    :cond_1e
    move-object/from16 v26, v27

    const/4 v3, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 6750
    new-instance v16, Landroid/text/StaticLayout;

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    const/16 v19, 0x0

    move v14, v3

    move-object/from16 v3, v16

    move/from16 v27, v6

    move v6, v15

    move-object v12, v7

    move-object/from16 v7, v26

    move/from16 v29, v8

    move/from16 v8, v17

    move/from16 v30, v9

    move/from16 v9, v18

    move/from16 v31, v10

    move/from16 v10, v19

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    goto :goto_14

    :cond_1f
    move-object v12, v7

    move/from16 v29, v8

    move/from16 v30, v9

    move/from16 v31, v10

    move-object/from16 v26, v27

    const/4 v14, 0x0

    const/high16 v27, 0x3f800000    # 1.0f

    .line 6754
    :goto_14
    iput-object v3, v12, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    .line 6755
    iput v14, v12, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textYOffset:F

    const/4 v6, 0x0

    .line 6756
    iput v6, v12, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->charactersOffset:I

    .line 6757
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    iput v4, v12, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->charactersEnd:I

    .line 6759
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v4

    iput v4, v12, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->height:I

    .line 6760
    iget v5, v12, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->padTop:I

    add-int/2addr v5, v4

    iget v4, v12, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->padBottom:I

    add-int/2addr v5, v4

    iput v5, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textHeight:I

    move/from16 v8, v29

    move/from16 v5, v30

    const/16 v7, 0x18

    goto/16 :goto_17

    :cond_20
    move/from16 v29, v8

    move/from16 v30, v9

    move/from16 v31, v10

    move v6, v12

    move-object/from16 v26, v27

    const/4 v14, 0x0

    const/high16 v27, 0x3f800000    # 1.0f

    move-object v12, v7

    .line 6762
    iget v7, v0, Lorg/telegram/messenger/MessageObject$TextRange;->start:I

    .line 6763
    iget v8, v0, Lorg/telegram/messenger/MessageObject$TextRange;->end:I

    if-ge v8, v7, :cond_21

    move-object v7, v2

    move-object/from16 v16, v13

    move v2, v14

    move/from16 v8, v29

    move/from16 v5, v30

    move/from16 v6, v31

    const/4 v4, 0x1

    goto/16 :goto_28

    .line 6767
    :cond_21
    iput v7, v12, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->charactersOffset:I

    .line 6768
    iput v8, v12, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->charactersEnd:I

    if-eqz v4, :cond_22

    .line 6771
    :try_start_1
    iget-boolean v4, v12, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->quote:Z

    if-nez v4, :cond_22

    .line 6772
    invoke-interface {v11, v7, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v7, v0, Lorg/telegram/messenger/MessageObject$TextRange;->language:Ljava/lang/String;

    invoke-static {v4, v7}, Lorg/telegram/messenger/CodeHighlighting;->getHighlighted(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v4

    goto :goto_15

    .line 6774
    :cond_22
    invoke-interface {v11, v7, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v4

    :goto_15
    move-object/from16 v17, v4

    .line 6776
    new-instance v4, Landroid/text/StaticLayout;

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v17}, Landroid/text/SpannableString;->length()I

    move-result v19

    iget-boolean v7, v12, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->quote:Z

    if-eqz v7, :cond_23

    const/16 v7, 0x18

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    goto :goto_16

    :cond_23
    const/16 v7, 0x18

    move v8, v6

    :goto_16
    sub-int v21, v15, v8

    const/high16 v23, 0x3f800000    # 1.0f

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v16, v4

    move-object/from16 v20, v5

    move-object/from16 v22, v26

    invoke-direct/range {v16 .. v25}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v4, v12, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    move/from16 v5, v30

    .line 6778
    :try_start_2
    iput v5, v12, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textYOffset:F
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    move/from16 v8, v29

    if-eqz v8, :cond_24

    sub-float v9, v5, v28

    float-to-int v9, v9

    .line 6780
    :try_start_3
    iput v9, v12, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->height:I

    .line 6782
    :cond_24
    invoke-virtual {v4}, Landroid/text/StaticLayout;->getHeight()I

    move-result v4

    iput v4, v12, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->height:I

    .line 6783
    iget v9, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textHeight:I

    iget v10, v12, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->padTop:I

    add-int/2addr v10, v4

    iget v4, v12, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->padBottom:I

    add-int/2addr v10, v4

    add-int/2addr v9, v10

    iput v9, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textHeight:I

    .line 6784
    iget v4, v12, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textYOffset:F
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    move/from16 v28, v4

    .line 6791
    :goto_17
    iget-boolean v4, v12, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->code:Z

    if-eqz v4, :cond_25

    iget-object v4, v12, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    instance-of v4, v4, Landroid/text/Spannable;

    if-eqz v4, :cond_25

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject$TextRange;->language:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 6792
    iget-object v4, v12, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v16, v4

    check-cast v16, Landroid/text/Spannable;

    const/16 v17, 0x0

    iget-object v4, v12, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v18

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject$TextRange;->language:Ljava/lang/String;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    move-object/from16 v19, v0

    invoke-static/range {v16 .. v22}, Lorg/telegram/messenger/CodeHighlighting;->highlight(Landroid/text/Spannable;IILjava/lang/String;ILorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;Z)V

    .line 6795
    :cond_25
    iget v0, v12, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->padTop:I

    iget v4, v12, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->height:I

    add-int/2addr v0, v4

    iget v4, v12, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->padBottom:I

    add-int/2addr v0, v4

    int-to-float v0, v0

    add-float v9, v5, v0

    .line 6797
    iget-object v0, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textLayoutBlocks:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6799
    iget-object v0, v12, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v4

    .line 6803
    :try_start_4
    iget-object v0, v12, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    add-int/lit8 v5, v4, -0x1

    invoke-virtual {v0, v5}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v0

    if-nez v8, :cond_26

    cmpl-float v5, v0, v14

    if-ltz v5, :cond_26

    .line 6805
    iput v0, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textXOffset:F
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_26
    move v5, v0

    goto :goto_18

    :catch_0
    move-exception v0

    if-nez v8, :cond_27

    .line 6810
    iput v14, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textXOffset:F

    .line 6812
    :cond_27
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move v5, v14

    .line 6817
    :goto_18
    :try_start_5
    iget-object v0, v12, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    add-int/lit8 v10, v4, -0x1

    invoke-virtual {v0, v10}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_19

    :catch_1
    move-exception v0

    .line 6820
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move v0, v14

    :goto_19
    float-to-double v6, v0

    .line 6823
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    add-int/lit8 v6, v15, 0x50

    if-le v0, v6, :cond_28

    move v0, v15

    :cond_28
    move/from16 v6, v31

    add-int/lit8 v10, v6, -0x1

    if-ne v8, v10, :cond_29

    .line 6831
    iput v0, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->lastLineWidth:I

    :cond_29
    int-to-float v7, v0

    .line 6834
    invoke-static {v14, v5}, Ljava/lang/Math;->max(FF)F

    move-result v16

    add-float v14, v7, v16

    move-object/from16 v16, v13

    float-to-double v13, v14

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-int v13, v13

    .line 6836
    iget-boolean v14, v12, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->quote:Z

    if-eqz v14, :cond_2a

    const/4 v14, 0x0

    .line 6837
    iput v14, v12, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->maxRight:F

    const/4 v14, 0x0

    :goto_1a
    if-ge v14, v4, :cond_2a

    move/from16 v18, v0

    .line 6840
    :try_start_6
    iget v0, v12, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->maxRight:F
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-object/from16 v19, v3

    :try_start_7
    iget-object v3, v12, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, v14}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, v12, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->maxRight:F
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1b

    :catch_2
    move-object/from16 v19, v3

    .line 6842
    :catch_3
    iget v0, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textWidth:I

    int-to-float v0, v0

    iput v0, v12, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->maxRight:F

    :goto_1b
    add-int/lit8 v14, v14, 0x1

    move/from16 v0, v18

    move-object/from16 v3, v19

    goto :goto_1a

    :cond_2a
    move/from16 v18, v0

    move-object/from16 v19, v3

    const/4 v3, 0x1

    if-le v4, v3, :cond_34

    move/from16 v20, v9

    move v9, v13

    move/from16 v0, v18

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v14, 0x0

    :goto_1c
    if-ge v7, v4, :cond_30

    move/from16 v21, v4

    .line 6852
    :try_start_8
    iget-object v4, v12, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, v7}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v4
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_1d

    :catch_4
    const/4 v4, 0x0

    .line 6857
    :goto_1d
    iget-boolean v11, v12, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->quote:Z

    if-eqz v11, :cond_2b

    const/16 v11, 0x20

    .line 6858
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v4, v2

    goto :goto_1e

    :cond_2b
    const/16 v11, 0x20

    .line 6862
    :goto_1e
    :try_start_9
    iget-object v2, v12, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v7}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_1f

    :catch_5
    const/4 v2, 0x0

    :goto_1f
    add-int/lit8 v11, v15, 0x14

    int-to-float v11, v11

    cmpl-float v11, v4, v11

    if-lez v11, :cond_2c

    int-to-float v4, v15

    const/4 v2, 0x0

    :cond_2c
    const/4 v11, 0x0

    cmpl-float v18, v2, v11

    if-gtz v18, :cond_2e

    .line 6872
    iget-object v11, v12, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v11, v7}, Landroid/text/StaticLayout;->getParagraphDirection(I)I

    move-result v11

    move/from16 v22, v15

    const/4 v15, -0x1

    if-ne v11, v15, :cond_2d

    goto :goto_20

    .line 6877
    :cond_2d
    iget-byte v11, v12, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->directionFlags:B

    or-int/lit8 v11, v11, 0x2

    int-to-byte v11, v11

    iput-byte v11, v12, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->directionFlags:B

    const/4 v15, 0x1

    goto :goto_21

    :cond_2e
    move/from16 v22, v15

    .line 6873
    :goto_20
    iget v11, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textXOffset:F

    invoke-static {v11, v2}, Ljava/lang/Math;->min(FF)F

    move-result v11

    iput v11, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textXOffset:F

    .line 6874
    iget-byte v11, v12, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->directionFlags:B

    const/4 v15, 0x1

    or-int/2addr v11, v15

    int-to-byte v11, v11

    iput-byte v11, v12, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->directionFlags:B

    .line 6875
    iput-boolean v15, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasRtl:Z

    :goto_21
    if-nez v14, :cond_2f

    if-nez v18, :cond_2f

    .line 6881
    :try_start_a
    iget-object v11, v12, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v11, v7}, Landroid/text/StaticLayout;->getParagraphDirection(I)I

    move-result v11
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    if-ne v11, v15, :cond_2f

    :catch_6
    const/4 v14, 0x1

    .line 6888
    :cond_2f
    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v5

    add-float/2addr v2, v4

    .line 6889
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    move v11, v3

    float-to-double v3, v4

    .line 6890
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    float-to-double v2, v2

    .line 6891
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v9

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, p1

    move v3, v11

    move/from16 v4, v21

    move/from16 v15, v22

    move-object/from16 v11, p2

    goto/16 :goto_1c

    :cond_30
    move/from16 v22, v15

    if-eqz v14, :cond_31

    if-ne v8, v10, :cond_33

    .line 6896
    iput v13, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->lastLineWidth:I

    goto :goto_22

    :cond_31
    if-ne v8, v10, :cond_32

    .line 6899
    iput v0, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->lastLineWidth:I

    :cond_32
    move v3, v5

    .line 6901
    :cond_33
    :goto_22
    iget v0, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textWidth:I

    float-to-double v2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textWidth:I

    move-object/from16 v7, p1

    move/from16 v32, v9

    move/from16 v15, v22

    const/4 v2, 0x0

    const/4 v4, 0x1

    goto :goto_26

    :cond_34
    move/from16 v20, v9

    move/from16 v22, v15

    const/4 v2, 0x0

    cmpl-float v0, v5, v2

    if-lez v0, :cond_37

    .line 6904
    iget v0, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textXOffset:F

    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textXOffset:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_35

    add-float/2addr v7, v5

    float-to-int v0, v7

    goto :goto_23

    :cond_35
    move/from16 v0, v18

    :goto_23
    const/4 v4, 0x1

    if-eq v6, v4, :cond_36

    move v3, v4

    goto :goto_24

    :cond_36
    const/4 v3, 0x0

    .line 6908
    :goto_24
    iput-boolean v3, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasRtl:Z

    .line 6909
    iget-byte v3, v12, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->directionFlags:B

    or-int/2addr v3, v4

    int-to-byte v3, v3

    iput-byte v3, v12, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->directionFlags:B

    goto :goto_25

    :cond_37
    const/4 v4, 0x1

    .line 6911
    iget-byte v0, v12, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->directionFlags:B

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    iput-byte v0, v12, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->directionFlags:B

    move/from16 v0, v18

    .line 6914
    :goto_25
    iget v3, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textWidth:I

    move/from16 v15, v22

    invoke-static {v15, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textWidth:I

    move-object/from16 v7, p1

    move/from16 v32, v13

    :goto_26
    if-eqz v7, :cond_38

    .line 6921
    iget-boolean v0, v7, Lorg/telegram/messenger/MessageObject;->isSpoilersRevealed:Z

    if-nez v0, :cond_38

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->access$100(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-nez v0, :cond_38

    const/16 v29, 0x0

    .line 6922
    iget-object v0, v12, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    const/16 v31, -0x1

    const/16 v33, 0x0

    iget-object v3, v12, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->spoilers:Ljava/util/List;

    move-object/from16 v30, v0

    move-object/from16 v34, v3

    invoke-static/range {v29 .. v34}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->addSpoilers(Landroid/view/View;Landroid/text/Layout;IILjava/util/Stack;Ljava/util/List;)V

    :cond_38
    move-object/from16 v3, v19

    move/from16 v9, v20

    goto :goto_29

    :catch_7
    move-exception v0

    move-object v7, v2

    move-object/from16 v16, v13

    move v2, v14

    goto :goto_27

    :catch_8
    move-exception v0

    move-object v7, v2

    move-object/from16 v16, v13

    move v2, v14

    move/from16 v8, v29

    goto :goto_27

    :catch_9
    move-exception v0

    move-object v7, v2

    move-object/from16 v16, v13

    move v2, v14

    move/from16 v8, v29

    move/from16 v5, v30

    :goto_27
    move/from16 v6, v31

    const/4 v4, 0x1

    .line 6786
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_28
    move v9, v5

    :goto_29
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v11, p2

    move v10, v6

    move-object v2, v7

    move-object/from16 v13, v16

    move-object/from16 v27, v26

    const/4 v12, 0x0

    const/16 v14, 0x20

    goto/16 :goto_c

    :cond_39
    return-void

    :catch_a
    move-exception v0

    .line 6644
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method
