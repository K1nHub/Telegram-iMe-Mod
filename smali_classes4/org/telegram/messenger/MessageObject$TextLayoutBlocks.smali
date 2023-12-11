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
    .locals 36

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v11, p2

    .line 6777
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6773
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textLayoutBlocks:Ljava/util/ArrayList;

    .line 6778
    iput-object v11, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->text:Ljava/lang/CharSequence;

    const/4 v12, 0x0

    .line 6779
    iput v12, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textWidth:I

    .line 6781
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

    .line 6782
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

    .line 6783
    iput-boolean v12, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasSingleQuote:Z

    .line 6784
    iput-boolean v12, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasSingleCode:Z

    if-eqz v0, :cond_5

    .line 6787
    move-object v3, v11

    check-cast v3, Landroid/text/Spanned;

    .line 6788
    invoke-interface {v3}, Landroid/text/Spanned;->length()I

    move-result v4

    const-class v5, Lorg/telegram/ui/Components/QuoteSpan;

    invoke-interface {v3, v12, v4, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/telegram/ui/Components/QuoteSpan;

    move v5, v12

    .line 6789
    :goto_2
    array-length v6, v4

    if-ge v5, v6, :cond_2

    .line 6790
    aget-object v6, v4, v5

    iput-boolean v12, v6, Lorg/telegram/ui/Components/QuoteSpan;->adaptLineHeight:Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 6792
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

    move-result v5

    if-ne v4, v5, :cond_3

    move v4, v13

    goto :goto_3

    :cond_3
    move v4, v12

    :goto_3
    iput-boolean v4, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasSingleQuote:Z

    .line 6794
    invoke-interface {v3}, Landroid/text/Spanned;->length()I

    move-result v4

    const-class v5, Lorg/telegram/messenger/CodeHighlighting$Span;

    invoke-interface {v3, v12, v4, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/telegram/messenger/CodeHighlighting$Span;

    .line 6795
    array-length v5, v4

    if-ne v5, v13, :cond_4

    aget-object v5, v4, v12

    invoke-interface {v3, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    if-nez v5, :cond_4

    aget-object v4, v4, v12

    invoke-interface {v3, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {v3}, Landroid/text/Spanned;->length()I

    move-result v3

    if-ne v4, v3, :cond_4

    move v3, v13

    goto :goto_4

    :cond_4
    move v3, v12

    :goto_4
    iput-boolean v3, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasSingleCode:Z

    .line 6800
    :cond_5
    iget-boolean v3, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasSingleQuote:Z

    const/16 v14, 0xf

    const/16 v15, 0x20

    if-eqz v3, :cond_6

    .line 6801
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    :goto_5
    sub-int v3, p4, v3

    move v10, v3

    goto :goto_6

    .line 6802
    :cond_6
    iget-boolean v3, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasSingleCode:Z

    if-eqz v3, :cond_7

    .line 6803
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    goto :goto_5

    :cond_7
    move/from16 v10, p4

    .line 6808
    :goto_6
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 6810
    :try_start_0
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v7, 0x3f800000    # 1.0f

    const/16 v6, 0x18

    const/4 v5, 0x0

    if-lt v8, v6, :cond_8

    .line 6812
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object/from16 v4, p3

    invoke-static {v11, v12, v3, v4, v10}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    .line 6813
    invoke-virtual {v3, v5, v7}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    .line 6814
    invoke-virtual {v3, v13}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    .line 6815
    invoke-virtual {v3, v12}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    .line 6816
    invoke-virtual {v3, v9}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    .line 6817
    invoke-virtual {v3}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v3

    move v13, v8

    move-object/from16 v27, v9

    move/from16 v17, v10

    goto :goto_7

    :cond_8
    move-object/from16 v4, p3

    .line 6819
    new-instance v16, Landroid/text/StaticLayout;

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v3, v16

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move v13, v6

    move v6, v10

    move-object v7, v9

    move v13, v8

    move/from16 v8, v17

    move-object/from16 v27, v9

    move/from16 v9, v18

    move/from16 v17, v10

    move/from16 v10, v19

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    move-object/from16 v3, v16

    .line 6826
    :goto_7
    iget-boolean v4, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasSingleQuote:Z

    if-eqz v4, :cond_9

    .line 6827
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    :goto_8
    add-int v10, v17, v4

    goto :goto_9

    .line 6828
    :cond_9
    iget-boolean v4, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasSingleCode:Z

    if-eqz v4, :cond_a

    .line 6829
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    goto :goto_8

    :cond_a
    move/from16 v10, v17

    .line 6832
    :goto_9
    iput v12, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textHeight:I

    .line 6833
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v4

    const/16 v5, 0xa

    const/16 v6, 0x18

    if-lt v13, v6, :cond_b

    const/4 v6, 0x1

    goto :goto_a

    :cond_b
    move v6, v12

    :goto_a
    if-eqz v6, :cond_c

    const/4 v7, 0x1

    goto :goto_b

    :cond_c
    int-to-float v7, v4

    int-to-float v8, v5

    div-float/2addr v7, v8

    float-to-double v7, v7

    .line 6841
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    .line 6846
    :goto_b
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_e

    .line 6847
    iget-boolean v0, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasQuote:Z

    if-nez v0, :cond_d

    iget-boolean v0, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasCode:Z

    if-eqz v0, :cond_e

    .line 6849
    :cond_d
    invoke-static {v11, v8}, Lorg/telegram/messenger/MessageObject;->cutIntoRanges(Ljava/lang/CharSequence;Ljava/util/ArrayList;)V

    goto :goto_f

    :cond_e
    if-nez v6, :cond_11

    const/4 v6, 0x1

    if-ne v7, v6, :cond_f

    goto :goto_e

    :cond_f
    move v0, v12

    move v6, v0

    :goto_c
    if-ge v0, v7, :cond_12

    sub-int v9, v4, v6

    .line 6854
    invoke-static {v5, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 6856
    invoke-virtual {v3, v6}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v13

    add-int/2addr v9, v6

    add-int/lit8 v5, v9, -0x1

    .line 6857
    invoke-virtual {v3, v5}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v5

    if-ge v5, v13, :cond_10

    goto :goto_d

    .line 6862
    :cond_10
    new-instance v6, Lorg/telegram/messenger/MessageObject$TextRange;

    invoke-direct {v6, v13, v5}, Lorg/telegram/messenger/MessageObject$TextRange;-><init>(II)V

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v6, v9

    :goto_d
    add-int/lit8 v0, v0, 0x1

    const/16 v5, 0xa

    goto :goto_c

    .line 6851
    :cond_11
    :goto_e
    new-instance v0, Lorg/telegram/messenger/MessageObject$TextRange;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-direct {v0, v12, v4}, Lorg/telegram/messenger/MessageObject$TextRange;-><init>(II)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6867
    :cond_12
    :goto_f
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 6869
    iput-boolean v12, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasCodeAtTop:Z

    .line 6870
    iput-boolean v12, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasCodeAtBottom:Z

    .line 6871
    iput-boolean v12, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasQuoteAtBottom:Z

    .line 6872
    iput-boolean v12, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasSingleQuote:Z

    move v7, v12

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 6874
    :goto_10
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_42

    .line 6875
    new-instance v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;

    invoke-direct {v9}, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;-><init>()V

    .line 6877
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject$TextRange;

    .line 6879
    iget-boolean v13, v0, Lorg/telegram/messenger/MessageObject$TextRange;->code:Z

    iput-boolean v13, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->code:Z

    .line 6880
    iget-boolean v13, v0, Lorg/telegram/messenger/MessageObject$TextRange;->quote:Z

    iput-boolean v13, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->quote:Z

    if-nez v7, :cond_13

    const/4 v13, 0x1

    goto :goto_11

    :cond_13
    move v13, v12

    .line 6882
    :goto_11
    iput-boolean v13, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->first:Z

    .line 6883
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/16 v16, 0x1

    add-int/lit8 v13, v13, -0x1

    if-ne v7, v13, :cond_14

    const/4 v13, 0x1

    goto :goto_12

    :cond_14
    move v13, v12

    :goto_12
    iput-boolean v13, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->last:Z

    .line 6885
    iget-boolean v12, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->first:Z

    if-eqz v12, :cond_15

    .line 6886
    iget-boolean v14, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->code:Z

    iput-boolean v14, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasCodeAtTop:Z

    :cond_15
    if-eqz v13, :cond_16

    .line 6889
    iget-boolean v14, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->quote:Z

    iput-boolean v14, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasQuoteAtBottom:Z

    .line 6890
    iget-boolean v14, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->code:Z

    iput-boolean v14, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasCodeAtBottom:Z

    :cond_16
    if-eqz v12, :cond_17

    if-eqz v13, :cond_17

    .line 6892
    iget-boolean v14, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->quote:Z

    if-eqz v14, :cond_17

    const/4 v14, 0x1

    goto :goto_13

    :cond_17
    const/4 v14, 0x0

    :goto_13
    iput-boolean v14, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasSingleQuote:Z

    .line 6894
    iget-boolean v14, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->quote:Z

    const/16 v16, 0x7

    if-eqz v14, :cond_1a

    const/4 v14, 0x6

    if-eqz v12, :cond_18

    if-eqz v13, :cond_18

    .line 6896
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    iput v12, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->padBottom:I

    iput v12, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->padTop:I

    goto :goto_17

    :cond_18
    if-eqz v12, :cond_19

    const/16 v14, 0x8

    .line 6898
    :cond_19
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    iput v12, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->padTop:I

    .line 6899
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    iput v12, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->padBottom:I

    goto :goto_17

    .line 6901
    :cond_1a
    iget-boolean v12, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->code:Z

    if-eqz v12, :cond_1e

    .line 6902
    iget-object v12, v0, Lorg/telegram/messenger/MessageObject$TextRange;->language:Ljava/lang/String;

    iget v13, v0, Lorg/telegram/messenger/MessageObject$TextRange;->end:I

    iget v14, v0, Lorg/telegram/messenger/MessageObject$TextRange;->start:I

    sub-int/2addr v13, v14

    invoke-virtual {v9, v12, v13}, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->layoutCode(Ljava/lang/String;I)V

    const/4 v12, 0x4

    .line 6903
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    iget v14, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->languageHeight:I

    add-int/2addr v13, v14

    iget-boolean v14, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->first:Z

    if-eqz v14, :cond_1b

    const/4 v14, 0x0

    goto :goto_14

    :cond_1b
    const/4 v14, 0x5

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    :goto_14
    add-int/2addr v13, v14

    iput v13, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->padTop:I

    .line 6904
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    iget-boolean v13, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->last:Z

    if-eqz v13, :cond_1c

    const/4 v13, 0x0

    goto :goto_15

    :cond_1c
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    :goto_15
    add-int/2addr v12, v13

    iget-boolean v13, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->hasCodeCopyButton:Z

    if-eqz v13, :cond_1d

    const/16 v13, 0x26

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    goto :goto_16

    :cond_1d
    const/4 v13, 0x0

    :goto_16
    add-int/2addr v12, v13

    iput v12, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->padBottom:I

    .line 6908
    :cond_1e
    :goto_17
    iget-boolean v12, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->code:Z

    if-eqz v12, :cond_21

    .line 6909
    iget v13, v0, Lorg/telegram/messenger/MessageObject$TextRange;->end:I

    iget v14, v0, Lorg/telegram/messenger/MessageObject$TextRange;->start:I

    sub-int/2addr v13, v14

    const/16 v14, 0xdc

    if-le v13, v14, :cond_1f

    .line 6911
    sget-object v13, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextCode3Paint:Landroid/text/TextPaint;

    goto :goto_18

    :cond_1f
    const/16 v14, 0x50

    if-le v13, v14, :cond_20

    .line 6913
    sget-object v13, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextCode2Paint:Landroid/text/TextPaint;

    goto :goto_18

    .line 6915
    :cond_20
    sget-object v13, Lorg/telegram/ui/ActionBar/Theme;->chat_msgTextCodePaint:Landroid/text/TextPaint;

    goto :goto_18

    :cond_21
    move-object/from16 v13, p3

    .line 6920
    :goto_18
    iget-boolean v14, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->quote:Z

    if-eqz v14, :cond_22

    .line 6921
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    sub-int v12, v10, v12

    goto :goto_19

    :cond_22
    if-eqz v12, :cond_23

    const/16 v12, 0xf

    .line 6923
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    sub-int v12, v10, v14

    goto :goto_19

    :cond_23
    move v12, v10

    :goto_19
    const/4 v14, 0x1

    if-ne v4, v14, :cond_27

    .line 6926
    iget-boolean v14, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->code:Z

    if-eqz v14, :cond_26

    iget-boolean v14, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->quote:Z

    if-nez v14, :cond_26

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    instance-of v14, v14, Landroid/text/Spannable;

    if-eqz v14, :cond_26

    .line 6928
    iget-object v3, v0, Lorg/telegram/messenger/MessageObject$TextRange;->language:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_24

    .line 6929
    iget v3, v0, Lorg/telegram/messenger/MessageObject$TextRange;->start:I

    iget v14, v0, Lorg/telegram/messenger/MessageObject$TextRange;->end:I

    invoke-interface {v11, v3, v14}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v14, v0, Lorg/telegram/messenger/MessageObject$TextRange;->language:Ljava/lang/String;

    invoke-static {v3, v14}, Lorg/telegram/messenger/CodeHighlighting;->getHighlighted(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v3

    goto :goto_1a

    .line 6931
    :cond_24
    new-instance v3, Landroid/text/SpannableString;

    iget v14, v0, Lorg/telegram/messenger/MessageObject$TextRange;->start:I

    iget v15, v0, Lorg/telegram/messenger/MessageObject$TextRange;->end:I

    invoke-interface {v11, v14, v15}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-direct {v3, v14}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 6933
    :goto_1a
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x18

    if-lt v14, v15, :cond_25

    .line 6935
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v14

    const/4 v15, 0x0

    invoke-static {v3, v15, v14, v13, v12}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    const/4 v12, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    .line 6936
    invoke-virtual {v3, v12, v14}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    const/4 v13, 0x1

    .line 6937
    invoke-virtual {v3, v13}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    .line 6938
    invoke-virtual {v3, v15}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    move-object/from16 v15, v27

    .line 6939
    invoke-virtual {v3, v15}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    .line 6940
    invoke-virtual {v3}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v3

    move v14, v12

    goto :goto_1b

    :cond_25
    move-object/from16 v15, v27

    const/4 v14, 0x0

    .line 6942
    new-instance v24, Landroid/text/StaticLayout;

    const/high16 v21, 0x3f800000    # 1.0f

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v16, v24

    move-object/from16 v17, v3

    move-object/from16 v18, v13

    move/from16 v19, v12

    move-object/from16 v20, v15

    invoke-direct/range {v16 .. v23}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v3, v24

    goto :goto_1b

    :cond_26
    move-object/from16 v15, v27

    const/4 v14, 0x0

    .line 6946
    :goto_1b
    iput-object v3, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    .line 6947
    iput v14, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textYOffset:F

    const/4 v12, 0x0

    .line 6948
    iput v12, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->charactersOffset:I

    .line 6949
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v13

    iput v13, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->charactersEnd:I

    .line 6951
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v13

    iput v13, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->height:I

    .line 6952
    iget v12, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->padTop:I

    add-int/2addr v12, v13

    iget v13, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->padBottom:I

    add-int/2addr v12, v13

    iput v12, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textHeight:I

    move-object/from16 v29, v8

    const/16 v26, 0x0

    goto/16 :goto_1d

    :cond_27
    move-object/from16 v15, v27

    const/16 v26, 0x0

    .line 6954
    iget v14, v0, Lorg/telegram/messenger/MessageObject$TextRange;->start:I

    move-object/from16 v28, v3

    .line 6955
    iget v3, v0, Lorg/telegram/messenger/MessageObject$TextRange;->end:I

    if-ge v3, v14, :cond_28

    move-object v11, v2

    move-object/from16 v29, v8

    move-object/from16 v21, v15

    const/4 v2, 0x0

    const/4 v8, 0x1

    const/16 v12, 0x20

    const/16 v13, 0xf

    goto/16 :goto_30

    .line 6959
    :cond_28
    iput v14, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->charactersOffset:I

    .line 6960
    iput v3, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->charactersEnd:I

    move-object/from16 v29, v8

    .line 6963
    :try_start_1
    iget-boolean v8, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->code:Z

    if-eqz v8, :cond_29

    iget-boolean v8, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->quote:Z

    if-nez v8, :cond_29

    .line 6964
    invoke-interface {v11, v14, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v8, v0, Lorg/telegram/messenger/MessageObject$TextRange;->language:Ljava/lang/String;

    invoke-static {v3, v8}, Lorg/telegram/messenger/CodeHighlighting;->getHighlighted(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v3

    goto :goto_1c

    .line 6966
    :cond_29
    invoke-interface {v11, v14, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v3

    :goto_1c
    move-object/from16 v17, v3

    .line 6968
    new-instance v3, Landroid/text/StaticLayout;

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v17}, Landroid/text/SpannableString;->length()I

    move-result v19

    const/high16 v23, 0x3f800000    # 1.0f

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v16, v3

    move-object/from16 v20, v13

    move/from16 v21, v12

    move-object/from16 v22, v15

    invoke-direct/range {v16 .. v25}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v3, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    .line 6970
    iput v5, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textYOffset:F

    if-eqz v7, :cond_2a

    sub-float v8, v5, v6

    float-to-int v8, v8

    .line 6972
    iput v8, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->height:I

    .line 6974
    :cond_2a
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    iput v3, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->height:I

    .line 6975
    iget v8, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textHeight:I

    iget v12, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->padTop:I

    add-int/2addr v12, v3

    iget v3, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->padBottom:I

    add-int/2addr v12, v3

    add-int/2addr v8, v12

    iput v8, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textHeight:I

    .line 6976
    iget v6, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textYOffset:F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    move-object/from16 v3, v28

    .line 6983
    :goto_1d
    iget-boolean v8, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->code:Z

    if-eqz v8, :cond_2b

    iget-object v8, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v8}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    instance-of v8, v8, Landroid/text/Spannable;

    if-eqz v8, :cond_2b

    iget-object v8, v0, Lorg/telegram/messenger/MessageObject$TextRange;->language:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2b

    .line 6984
    iget-object v8, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v8}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    move-object/from16 v16, v8

    check-cast v16, Landroid/text/Spannable;

    const/16 v17, 0x0

    iget-object v8, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v8}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v18

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject$TextRange;->language:Ljava/lang/String;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    move-object/from16 v19, v0

    invoke-static/range {v16 .. v22}, Lorg/telegram/messenger/CodeHighlighting;->highlight(Landroid/text/Spannable;IILjava/lang/String;ILorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;Z)V

    .line 6987
    :cond_2b
    iget v0, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->padTop:I

    iget v8, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->height:I

    add-int/2addr v0, v8

    iget v8, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->padBottom:I

    add-int/2addr v0, v8

    int-to-float v0, v0

    add-float/2addr v5, v0

    .line 6989
    iget-object v0, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textLayoutBlocks:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6991
    iget-object v0, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v8

    .line 6995
    :try_start_2
    iget-object v0, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    add-int/lit8 v12, v8, -0x1

    invoke-virtual {v0, v12}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v0

    if-nez v7, :cond_2c

    const/4 v12, 0x0

    cmpl-float v13, v0, v12

    if-ltz v13, :cond_2c

    .line 6997
    iput v0, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textXOffset:F
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2c
    move v12, v0

    goto :goto_1e

    :catch_0
    move-exception v0

    if-nez v7, :cond_2d

    const/4 v12, 0x0

    .line 7002
    iput v12, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textXOffset:F

    .line 7004
    :cond_2d
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v12, 0x0

    .line 7009
    :goto_1e
    :try_start_3
    iget-object v0, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    add-int/lit8 v13, v8, -0x1

    invoke-virtual {v0, v13}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1f

    :catch_1
    move-exception v0

    .line 7012
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_1f
    float-to-double v13, v0

    .line 7015
    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-int v0, v13

    add-int/lit8 v13, v10, 0x50

    if-le v0, v13, :cond_2e

    move v0, v10

    :cond_2e
    add-int/lit8 v13, v4, -0x1

    if-ne v7, v13, :cond_2f

    .line 7023
    iput v0, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->lastLineWidth:I

    :cond_2f
    int-to-float v14, v0

    move-object/from16 v16, v3

    const/4 v3, 0x0

    .line 7026
    invoke-static {v3, v12}, Ljava/lang/Math;->max(FF)F

    move-result v17

    add-float v3, v14, v17

    move/from16 v18, v5

    move/from16 v17, v6

    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v3, v5

    .line 7028
    iget-boolean v5, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->quote:Z

    if-eqz v5, :cond_30

    const/4 v5, 0x0

    .line 7029
    iput v5, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->maxRight:F

    move/from16 v5, v26

    :goto_20
    if-ge v5, v8, :cond_30

    .line 7032
    :try_start_4
    iget v6, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->maxRight:F
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move/from16 v19, v0

    :try_start_5
    iget-object v0, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, v5}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->maxRight:F
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_21

    :catch_2
    move/from16 v19, v0

    .line 7034
    :catch_3
    iget v0, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textWidth:I

    int-to-float v0, v0

    iput v0, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->maxRight:F

    :goto_21
    add-int/lit8 v5, v5, 0x1

    move/from16 v0, v19

    goto :goto_20

    :cond_30
    move/from16 v19, v0

    const/4 v5, 0x1

    if-le v8, v5, :cond_3b

    move v11, v3

    move/from16 v0, v19

    move/from16 v12, v26

    move v14, v12

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_22
    if-ge v12, v8, :cond_37

    move/from16 v20, v8

    .line 7044
    :try_start_6
    iget-object v8, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v8, v12}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v8
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    move-object/from16 v21, v15

    goto :goto_23

    :catch_4
    move-object/from16 v21, v15

    const/4 v8, 0x0

    .line 7049
    :goto_23
    iget-boolean v15, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->quote:Z

    if-eqz v15, :cond_31

    const/16 v15, 0x20

    .line 7050
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    :goto_24
    add-float/2addr v8, v2

    goto :goto_25

    .line 7051
    :cond_31
    iget-boolean v2, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->code:Z

    if-eqz v2, :cond_32

    const/16 v2, 0xf

    .line 7052
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    int-to-float v2, v15

    goto :goto_24

    .line 7056
    :cond_32
    :goto_25
    :try_start_7
    iget-object v2, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2, v12}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_26

    :catch_5
    const/4 v2, 0x0

    :goto_26
    add-int/lit8 v15, v10, 0x14

    int-to-float v15, v15

    cmpl-float v15, v8, v15

    if-lez v15, :cond_33

    int-to-float v8, v10

    const/4 v2, 0x0

    :cond_33
    const/4 v15, 0x0

    cmpl-float v19, v2, v15

    if-gtz v19, :cond_35

    .line 7066
    iget-object v15, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v15, v12}, Landroid/text/StaticLayout;->getParagraphDirection(I)I

    move-result v15

    move/from16 v22, v10

    const/4 v10, -0x1

    if-ne v15, v10, :cond_34

    goto :goto_27

    .line 7071
    :cond_34
    iget-byte v10, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->directionFlags:B

    or-int/lit8 v10, v10, 0x2

    int-to-byte v10, v10

    iput-byte v10, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->directionFlags:B

    const/4 v15, 0x1

    goto :goto_28

    :cond_35
    move/from16 v22, v10

    .line 7067
    :goto_27
    iget v10, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textXOffset:F

    invoke-static {v10, v2}, Ljava/lang/Math;->min(FF)F

    move-result v10

    iput v10, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textXOffset:F

    .line 7068
    iget-byte v10, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->directionFlags:B

    const/4 v15, 0x1

    or-int/2addr v10, v15

    int-to-byte v10, v10

    iput-byte v10, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->directionFlags:B

    .line 7069
    iput-boolean v15, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasRtl:Z

    :goto_28
    if-nez v14, :cond_36

    if-nez v19, :cond_36

    .line 7075
    :try_start_8
    iget-object v10, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    invoke-virtual {v10, v12}, Landroid/text/StaticLayout;->getParagraphDirection(I)I

    move-result v10
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    if-ne v10, v15, :cond_36

    :catch_6
    const/4 v14, 0x1

    .line 7082
    :cond_36
    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-float/2addr v2, v8

    .line 7083
    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v5

    move v15, v5

    move v10, v6

    float-to-double v5, v8

    .line 7084
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    float-to-double v5, v2

    .line 7085
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v2, v5

    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v11

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, p1

    move v6, v10

    move v5, v15

    move/from16 v8, v20

    move-object/from16 v15, v21

    move/from16 v10, v22

    goto/16 :goto_22

    :cond_37
    move/from16 v22, v10

    move-object/from16 v21, v15

    if-eqz v14, :cond_38

    if-ne v7, v13, :cond_3a

    .line 7090
    iput v3, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->lastLineWidth:I

    goto :goto_29

    :cond_38
    if-ne v7, v13, :cond_39

    .line 7093
    iput v0, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->lastLineWidth:I

    :cond_39
    move v5, v6

    .line 7095
    :cond_3a
    :goto_29
    iget v0, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textWidth:I

    float-to-double v2, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textWidth:I

    move v3, v11

    move/from16 v10, v22

    const/4 v2, 0x0

    const/4 v8, 0x1

    goto :goto_2d

    :cond_3b
    move/from16 v22, v10

    move-object/from16 v21, v15

    const/4 v2, 0x0

    cmpl-float v0, v12, v2

    if-lez v0, :cond_3e

    .line 7098
    iget v0, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textXOffset:F

    invoke-static {v0, v12}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textXOffset:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_3c

    add-float/2addr v14, v12

    float-to-int v0, v14

    goto :goto_2a

    :cond_3c
    move/from16 v0, v19

    :goto_2a
    const/4 v8, 0x1

    if-eq v4, v8, :cond_3d

    move v6, v8

    goto :goto_2b

    :cond_3d
    move/from16 v6, v26

    .line 7102
    :goto_2b
    iput-boolean v6, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->hasRtl:Z

    .line 7103
    iget-byte v5, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->directionFlags:B

    or-int/2addr v5, v8

    int-to-byte v5, v5

    iput-byte v5, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->directionFlags:B

    goto :goto_2c

    :cond_3e
    const/4 v8, 0x1

    .line 7105
    iget-byte v0, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->directionFlags:B

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    iput-byte v0, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->directionFlags:B

    move/from16 v0, v19

    .line 7108
    :goto_2c
    iget v5, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textWidth:I

    move/from16 v10, v22

    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textWidth:I

    :goto_2d
    move-object/from16 v11, p1

    if-eqz v11, :cond_41

    .line 7112
    iget-boolean v0, v11, Lorg/telegram/messenger/MessageObject;->isSpoilersRevealed:Z

    if-nez v0, :cond_41

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->access$100(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 7114
    iget-boolean v0, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->quote:Z

    if-eqz v0, :cond_3f

    const/16 v12, 0x20

    .line 7115
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr v3, v0

    move/from16 v33, v3

    const/16 v13, 0xf

    goto :goto_2e

    :cond_3f
    const/16 v12, 0x20

    .line 7116
    iget-boolean v0, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->code:Z

    const/16 v13, 0xf

    if-eqz v0, :cond_40

    .line 7117
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr v3, v0

    :cond_40
    move/from16 v33, v3

    :goto_2e
    const/16 v30, 0x0

    .line 7119
    iget-object v0, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    const/16 v32, -0x1

    const/16 v34, 0x0

    iget-object v3, v9, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->spoilers:Ljava/util/List;

    move-object/from16 v31, v0

    move-object/from16 v35, v3

    invoke-static/range {v30 .. v35}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->addSpoilers(Landroid/view/View;Landroid/text/Layout;IILjava/util/Stack;Ljava/util/List;)V

    goto :goto_2f

    :cond_41
    const/16 v12, 0x20

    const/16 v13, 0xf

    :goto_2f
    move-object/from16 v3, v16

    move/from16 v6, v17

    move/from16 v5, v18

    goto :goto_31

    :catch_7
    move-exception v0

    move-object v11, v2

    move-object/from16 v21, v15

    const/4 v2, 0x0

    const/4 v8, 0x1

    const/16 v12, 0x20

    const/16 v13, 0xf

    .line 6978
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_30
    move-object/from16 v3, v28

    :goto_31
    add-int/lit8 v7, v7, 0x1

    move-object v2, v11

    move v15, v12

    move v14, v13

    move-object/from16 v27, v21

    move/from16 v12, v26

    move-object/from16 v8, v29

    move-object/from16 v11, p2

    goto/16 :goto_10

    :cond_42
    return-void

    :catch_8
    move-exception v0

    .line 6822
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method
