.class public Lorg/telegram/messenger/utils/CopyUtilities;
.super Ljava/lang/Object;
.source "CopyUtilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/utils/CopyUtilities$ParsedSpan;,
        Lorg/telegram/messenger/utils/CopyUtilities$HTMLTagHandler;,
        Lorg/telegram/messenger/utils/CopyUtilities$HTMLTagAttributesHandler;
    }
.end annotation


# direct methods
.method public static fromHTML(Ljava/lang/String;)Landroid/text/Spannable;
    .locals 11

    const/4 v0, 0x0

    .line 37
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x18

    const-string v3, "</inject>"

    const-string v4, "<inject>"

    if-lt v1, v2, :cond_0

    .line 38
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x3f

    new-instance v2, Lorg/telegram/messenger/utils/CopyUtilities$HTMLTagAttributesHandler;

    new-instance v3, Lorg/telegram/messenger/utils/CopyUtilities$HTMLTagHandler;

    invoke-direct {v3, v0}, Lorg/telegram/messenger/utils/CopyUtilities$HTMLTagHandler;-><init>(Lorg/telegram/messenger/utils/CopyUtilities$1;)V

    invoke-direct {v2, v3, v0}, Lorg/telegram/messenger/utils/CopyUtilities$HTMLTagAttributesHandler;-><init>(Lorg/telegram/messenger/utils/CopyUtilities$HTMLTagAttributesHandler$TagHandler;Lorg/telegram/messenger/utils/CopyUtilities$1;)V

    invoke-static {p0, v1, v0, v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;ILandroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object p0

    goto :goto_0

    .line 40
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lorg/telegram/messenger/utils/CopyUtilities$HTMLTagAttributesHandler;

    new-instance v2, Lorg/telegram/messenger/utils/CopyUtilities$HTMLTagHandler;

    invoke-direct {v2, v0}, Lorg/telegram/messenger/utils/CopyUtilities$HTMLTagHandler;-><init>(Lorg/telegram/messenger/utils/CopyUtilities$1;)V

    invoke-direct {v1, v2, v0}, Lorg/telegram/messenger/utils/CopyUtilities$HTMLTagAttributesHandler;-><init>(Lorg/telegram/messenger/utils/CopyUtilities$HTMLTagAttributesHandler$TagHandler;Lorg/telegram/messenger/utils/CopyUtilities$1;)V

    invoke-static {p0, v0, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    if-nez p0, :cond_1

    return-object v0

    .line 50
    :cond_1
    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 51
    new-instance v2, Ljava/util/ArrayList;

    array-length v4, v1

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    move v4, v3

    .line 52
    :goto_1
    array-length v5, v1

    if-ge v4, v5, :cond_9

    .line 53
    aget-object v5, v1, v4

    .line 54
    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 55
    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    .line 56
    instance-of v8, v5, Landroid/text/style/StyleSpan;

    if-eqz v8, :cond_3

    .line 57
    check-cast v5, Landroid/text/style/StyleSpan;

    invoke-virtual {v5}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v5

    and-int/lit8 v8, v5, 0x1

    if-lez v8, :cond_2

    .line 59
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_messageEntityBold;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityBold;-><init>()V

    invoke-static {v8, v6, v7}, Lorg/telegram/messenger/utils/CopyUtilities;->setEntityStartEnd(Lorg/telegram/tgnet/TLRPC$MessageEntity;II)Lorg/telegram/tgnet/TLRPC$MessageEntity;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    and-int/lit8 v5, v5, 0x2

    if-lez v5, :cond_8

    .line 62
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_messageEntityItalic;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityItalic;-><init>()V

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/utils/CopyUtilities;->setEntityStartEnd(Lorg/telegram/tgnet/TLRPC$MessageEntity;II)Lorg/telegram/tgnet/TLRPC$MessageEntity;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 64
    :cond_3
    instance-of v8, v5, Landroid/text/style/UnderlineSpan;

    if-eqz v8, :cond_4

    .line 65
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_messageEntityUnderline;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityUnderline;-><init>()V

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/utils/CopyUtilities;->setEntityStartEnd(Lorg/telegram/tgnet/TLRPC$MessageEntity;II)Lorg/telegram/tgnet/TLRPC$MessageEntity;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 66
    :cond_4
    instance-of v8, v5, Landroid/text/style/StrikethroughSpan;

    if-eqz v8, :cond_5

    .line 67
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_messageEntityStrike;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityStrike;-><init>()V

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/utils/CopyUtilities;->setEntityStartEnd(Lorg/telegram/tgnet/TLRPC$MessageEntity;II)Lorg/telegram/tgnet/TLRPC$MessageEntity;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 68
    :cond_5
    instance-of v8, v5, Lorg/telegram/messenger/utils/CopyUtilities$ParsedSpan;

    if-eqz v8, :cond_7

    .line 69
    check-cast v5, Lorg/telegram/messenger/utils/CopyUtilities$ParsedSpan;

    .line 70
    iget v5, v5, Lorg/telegram/messenger/utils/CopyUtilities$ParsedSpan;->type:I

    if-nez v5, :cond_6

    .line 71
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_messageEntitySpoiler;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_messageEntitySpoiler;-><init>()V

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/utils/CopyUtilities;->setEntityStartEnd(Lorg/telegram/tgnet/TLRPC$MessageEntity;II)Lorg/telegram/tgnet/TLRPC$MessageEntity;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    const/4 v8, 0x1

    if-ne v5, v8, :cond_8

    .line 73
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_messageEntityPre;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityPre;-><init>()V

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/utils/CopyUtilities;->setEntityStartEnd(Lorg/telegram/tgnet/TLRPC$MessageEntity;II)Lorg/telegram/tgnet/TLRPC$MessageEntity;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 75
    :cond_7
    instance-of v8, v5, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-eqz v8, :cond_8

    .line 76
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;-><init>()V

    .line 77
    check-cast v5, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    iget-wide v9, v5, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentId:J

    iput-wide v9, v8, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document_id:J

    .line 78
    iget-object v5, v5, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iput-object v5, v8, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCustomEmoji;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 79
    invoke-static {v8, v6, v7}, Lorg/telegram/messenger/utils/CopyUtilities;->setEntityStartEnd(Lorg/telegram/tgnet/TLRPC$MessageEntity;II)Lorg/telegram/tgnet/TLRPC$MessageEntity;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 83
    :cond_9
    new-instance v4, Landroid/text/SpannableString;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 84
    invoke-static {v2, v4, v4}, Lorg/telegram/messenger/MediaDataController;->addTextStyleRuns(Ljava/util/ArrayList;Ljava/lang/CharSequence;Landroid/text/Spannable;)V

    .line 85
    :goto_3
    array-length v5, v1

    if-ge v3, v5, :cond_c

    .line 86
    aget-object v5, v1, v3

    .line 87
    instance-of v6, v5, Landroid/text/style/URLSpan;

    if-eqz v6, :cond_b

    .line 88
    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 89
    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    .line 90
    invoke-interface {p0, v6, v7}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 91
    check-cast v5, Landroid/text/style/URLSpan;

    invoke-virtual {v5}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v5

    .line 92
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/16 v9, 0x21

    if-eqz v8, :cond_a

    .line 93
    new-instance v8, Landroid/text/style/URLSpan;

    invoke-direct {v8, v5}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8, v6, v7, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_4

    .line 95
    :cond_a
    new-instance v8, Lorg/telegram/ui/Components/URLSpanReplacement;

    invoke-direct {v8, v5}, Lorg/telegram/ui/Components/URLSpanReplacement;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8, v6, v7, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_b
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 99
    :cond_c
    invoke-static {v2, v4, v0}, Lorg/telegram/messenger/MediaDataController;->addAnimatedEmojiSpans(Ljava/util/ArrayList;Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;)V

    return-object v4

    :catch_0
    move-exception p0

    const-string v1, "Html.fromHtml"

    .line 43
    invoke-static {v1, p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static setEntityStartEnd(Lorg/telegram/tgnet/TLRPC$MessageEntity;II)Lorg/telegram/tgnet/TLRPC$MessageEntity;
    .locals 0

    .line 104
    iput p1, p0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    sub-int/2addr p2, p1

    .line 105
    iput p2, p0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    return-object p0
.end method
