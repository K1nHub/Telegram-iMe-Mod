.class public Lorg/telegram/messenger/utils/CustomHtml;
.super Ljava/lang/Object;
.source "CustomHtml.java"


# direct methods
.method private static toHTML_1_wrapTextStyle(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .locals 7

    :goto_0
    if-ge p2, p3, :cond_10

    .line 24
    const-class v0, Lorg/telegram/ui/Components/TextStyleSpan;

    invoke-interface {p1, p2, p3, v0}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v0

    if-gez v0, :cond_0

    move v0, p3

    .line 28
    :cond_0
    const-class v1, Lorg/telegram/ui/Components/TextStyleSpan;

    invoke-interface {p1, p2, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/telegram/ui/Components/TextStyleSpan;

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    move v3, v2

    .line 31
    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_8

    .line 32
    aget-object v4, v1, v3

    if-eqz v4, :cond_6

    .line 35
    invoke-virtual {v4}, Lorg/telegram/ui/Components/TextStyleSpan;->getStyleFlags()I

    move-result v5

    and-int/lit16 v6, v5, 0x300

    if-lez v6, :cond_1

    const-string v6, "<spoiler>"

    .line 37
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    and-int/lit8 v6, v5, 0x1

    if-lez v6, :cond_2

    const-string v6, "<b>"

    .line 40
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    and-int/lit8 v6, v5, 0x2

    if-lez v6, :cond_3

    const-string v6, "<i>"

    .line 43
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    and-int/lit8 v6, v5, 0x10

    if-lez v6, :cond_4

    const-string v6, "<u>"

    .line 46
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    and-int/lit8 v6, v5, 0x8

    if-lez v6, :cond_5

    const-string v6, "<s>"

    .line 49
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    and-int/lit16 v5, v5, 0x80

    if-lez v5, :cond_7

    .line 52
    invoke-virtual {v4}, Lorg/telegram/ui/Components/TextStyleSpan;->getTextStyleRun()Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v4}, Lorg/telegram/ui/Components/TextStyleSpan;->getTextStyleRun()Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->urlEntity:Lorg/telegram/tgnet/TLRPC$MessageEntity;

    if-eqz v5, :cond_7

    const-string v5, "<a href=\""

    .line 53
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/TextStyleSpan;->getTextStyleRun()Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->urlEntity:Lorg/telegram/tgnet/TLRPC$MessageEntity;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageEntity;->url:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\">"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 56
    :cond_6
    instance-of v4, v4, Lorg/telegram/ui/Components/URLSpanMono;

    if-eqz v4, :cond_7

    const-string v4, "<pre>"

    .line 57
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 62
    :cond_8
    invoke-static {p0, p1, p2, v0}, Lorg/telegram/messenger/utils/CustomHtml;->toHTML_2_wrapURLReplacements(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    if-eqz v1, :cond_f

    .line 65
    :goto_3
    array-length p2, v1

    if-ge v2, p2, :cond_f

    .line 66
    aget-object p2, v1, v2

    if-eqz p2, :cond_e

    .line 69
    invoke-virtual {p2}, Lorg/telegram/ui/Components/TextStyleSpan;->getStyleFlags()I

    move-result v3

    and-int/lit16 v4, v3, 0x80

    if-lez v4, :cond_9

    .line 70
    invoke-virtual {p2}, Lorg/telegram/ui/Components/TextStyleSpan;->getTextStyleRun()Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {p2}, Lorg/telegram/ui/Components/TextStyleSpan;->getTextStyleRun()Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->urlEntity:Lorg/telegram/tgnet/TLRPC$MessageEntity;

    if-eqz p2, :cond_9

    const-string p2, "</a>"

    .line 71
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    and-int/lit8 p2, v3, 0x8

    if-lez p2, :cond_a

    const-string p2, "</s>"

    .line 74
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    and-int/lit8 p2, v3, 0x10

    if-lez p2, :cond_b

    const-string p2, "</u>"

    .line 77
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    and-int/lit8 p2, v3, 0x2

    if-lez p2, :cond_c

    const-string p2, "</i>"

    .line 80
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    and-int/lit8 p2, v3, 0x1

    if-lez p2, :cond_d

    const-string p2, "</b>"

    .line 83
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    and-int/lit16 p2, v3, 0x300

    if-lez p2, :cond_e

    const-string p2, "</spoiler>"

    .line 86
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_f
    move p2, v0

    goto/16 :goto_0

    :cond_10
    return-void
.end method

.method private static toHTML_2_wrapURLReplacements(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .locals 6

    :goto_0
    if-ge p2, p3, :cond_3

    .line 97
    const-class v0, Lorg/telegram/ui/Components/URLSpanReplacement;

    invoke-interface {p1, p2, p3, v0}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v0

    if-gez v0, :cond_0

    move v0, p3

    .line 101
    :cond_0
    const-class v1, Lorg/telegram/ui/Components/URLSpanReplacement;

    invoke-interface {p1, p2, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/telegram/ui/Components/URLSpanReplacement;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move v3, v2

    .line 104
    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 105
    aget-object v4, v1, v3

    const-string v5, "<a href=\""

    .line 106
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\">"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 110
    :cond_1
    invoke-static {p0, p1, p2, v0}, Lorg/telegram/messenger/utils/CustomHtml;->toHTML_3_wrapMonoscape(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    if-eqz v1, :cond_2

    .line 113
    :goto_2
    array-length p2, v1

    if-ge v2, p2, :cond_2

    const-string p2, "</a>"

    .line 114
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    move p2, v0

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static toHTML_3_wrapMonoscape(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .locals 5

    :goto_0
    if-ge p2, p3, :cond_5

    .line 124
    const-class v0, Lorg/telegram/ui/Components/URLSpanMono;

    invoke-interface {p1, p2, p3, v0}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v0

    if-gez v0, :cond_0

    move v0, p3

    .line 128
    :cond_0
    const-class v1, Lorg/telegram/ui/Components/URLSpanMono;

    invoke-interface {p1, p2, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/telegram/ui/Components/URLSpanMono;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move v3, v2

    .line 131
    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_2

    .line 132
    aget-object v4, v1, v3

    if-eqz v4, :cond_1

    const-string v4, "<pre>"

    .line 134
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 139
    :cond_2
    invoke-static {p0, p1, p2, v0}, Lorg/telegram/messenger/utils/CustomHtml;->toHTML_4_wrapAnimatedEmoji(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    if-eqz v1, :cond_4

    .line 141
    :goto_2
    array-length p2, v1

    if-ge v2, p2, :cond_4

    .line 142
    aget-object p2, v1, v2

    if-eqz p2, :cond_3

    const-string p2, "</pre>"

    .line 144
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    move p2, v0

    goto :goto_0

    :cond_5
    return-void
.end method

.method private static toHTML_4_wrapAnimatedEmoji(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .locals 8

    :goto_0
    if-ge p2, p3, :cond_5

    .line 156
    const-class v0, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-interface {p1, p2, p3, v0}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v0

    if-gez v0, :cond_0

    move v0, p3

    .line 160
    :cond_0
    const-class v1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-interface {p1, p2, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move v3, v2

    .line 163
    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_2

    .line 164
    aget-object v4, v1, v3

    if-eqz v4, :cond_1

    .line 165
    iget-boolean v5, v4, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->standard:Z

    if-nez v5, :cond_1

    .line 166
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<animated-emoji data-document-id=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v4, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->documentId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "\">"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 171
    :cond_2
    invoke-static {p0, p1, p2, v0}, Lorg/telegram/messenger/utils/CustomHtml;->toHTML_5_withinStyle(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V

    if-eqz v1, :cond_4

    .line 174
    :goto_2
    array-length p2, v1

    if-ge v2, p2, :cond_4

    .line 175
    aget-object p2, v1, v2

    if-eqz p2, :cond_3

    .line 176
    iget-boolean p2, p2, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->standard:Z

    if-nez p2, :cond_3

    const-string p2, "</animated-emoji>"

    .line 177
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    move p2, v0

    goto :goto_0

    :cond_5
    return-void
.end method

.method private static toHTML_5_withinStyle(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V
    .locals 9

    :goto_0
    if-ge p2, p3, :cond_a

    .line 186
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const-string v0, "<br>"

    .line 189
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_0
    const/16 v2, 0x3c

    if-ne v0, v2, :cond_1

    const-string v0, "&lt;"

    .line 191
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_1
    const/16 v2, 0x3e

    if-ne v0, v2, :cond_2

    const-string v0, "&gt;"

    .line 193
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_2
    const/16 v2, 0x26

    if-ne v0, v2, :cond_3

    const-string v0, "&amp;"

    .line 195
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    const-string v2, ";"

    const-string v3, "&#"

    const v4, 0xd800

    if-lt v0, v4, :cond_4

    const v5, 0xdfff

    if-gt v0, v5, :cond_4

    const v6, 0xdc00

    if-ge v0, v6, :cond_9

    add-int/lit8 v7, p2, 0x1

    if-ge v7, p3, :cond_9

    .line 198
    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-lt v8, v6, :cond_9

    if-gt v8, v5, :cond_9

    const/high16 p2, 0x10000

    sub-int/2addr v0, v4

    shl-int/2addr v0, v1

    or-int/2addr p2, v0

    sub-int/2addr v8, v6

    or-int/2addr p2, v8

    .line 202
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move p2, v7

    goto :goto_3

    :cond_4
    const/16 v1, 0x7e

    if-gt v0, v1, :cond_8

    const/16 v1, 0x20

    if-ge v0, v1, :cond_5

    goto :goto_2

    :cond_5
    if-ne v0, v1, :cond_7

    :goto_1
    add-int/lit8 v0, p2, 0x1

    if-ge v0, p3, :cond_6

    .line 208
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v1, :cond_6

    const-string p2, "&nbsp;"

    .line 209
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move p2, v0

    goto :goto_1

    .line 213
    :cond_6
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 215
    :cond_7
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 206
    :cond_8
    :goto_2
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method public static toHtml(Landroid/text/Spanned;)Ljava/lang/String;
    .locals 3

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, p0, v2, v1}, Lorg/telegram/messenger/utils/CustomHtml;->toHTML_1_wrapTextStyle(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
