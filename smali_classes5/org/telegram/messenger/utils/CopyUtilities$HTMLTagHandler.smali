.class Lorg/telegram/messenger/utils/CopyUtilities$HTMLTagHandler;
.super Ljava/lang/Object;
.source "CopyUtilities.java"

# interfaces
.implements Lorg/telegram/messenger/utils/CopyUtilities$HTMLTagAttributesHandler$TagHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/utils/CopyUtilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HTMLTagHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/utils/CopyUtilities$1;)V
    .locals 0

    .line 205
    invoke-direct {p0}, Lorg/telegram/messenger/utils/CopyUtilities$HTMLTagHandler;-><init>()V

    return-void
.end method

.method private getLast(Landroid/text/Editable;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/text/Editable;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 263
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0, p2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    .line 264
    array-length v0, p2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 267
    :cond_0
    array-length v0, p2

    :goto_0
    if-lez v0, :cond_2

    add-int/lit8 v2, v0, -0x1

    .line 268
    aget-object v3, p2, v2

    invoke-interface {p1, v3}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    const/16 v4, 0x11

    if-ne v3, v4, :cond_1

    .line 269
    aget-object p1, p2, v2

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private getLast(Landroid/text/Editable;Ljava/lang/Class;I)Lorg/telegram/messenger/utils/CopyUtilities$ParsedSpan;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/telegram/messenger/utils/CopyUtilities$ParsedSpan;",
            ">(",
            "Landroid/text/Editable;",
            "Ljava/lang/Class<",
            "TT;>;I)TT;"
        }
    .end annotation

    .line 277
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0, p2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lorg/telegram/messenger/utils/CopyUtilities$ParsedSpan;

    .line 278
    array-length v0, p2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 281
    :cond_0
    array-length v0, p2

    :goto_0
    if-lez v0, :cond_2

    add-int/lit8 v2, v0, -0x1

    .line 282
    aget-object v3, p2, v2

    invoke-interface {p1, v3}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    const/16 v4, 0x11

    if-ne v3, v4, :cond_1

    aget-object v3, p2, v2

    iget v3, v3, Lorg/telegram/messenger/utils/CopyUtilities$ParsedSpan;->type:I

    if-ne v3, p3, :cond_1

    .line 283
    aget-object p1, p2, v2

    return-object p1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method


# virtual methods
.method public handleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/Attributes;)Z
    .locals 7

    .line 209
    const-class v0, Lorg/telegram/messenger/utils/CopyUtilities$ParsedSpan;

    const-string v1, "animated-emoji"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x21

    const/16 v3, 0x11

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_0

    const-string p1, "data-document-id"

    .line 211
    invoke-static {p4, p1}, Lorg/telegram/messenger/utils/CopyUtilities$HTMLTagAttributesHandler;->getValue(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 213
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    .line 214
    new-instance p4, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-direct {p4, p1, p2, v4}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;-><init>(JLandroid/graphics/Paint$FontMetricsInt;)V

    invoke-interface {p3}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-interface {p3}, Landroid/text/Editable;->length()I

    move-result p2

    invoke-interface {p3, p4, p1, p2, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    return v6

    .line 218
    :cond_0
    const-class p1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    invoke-direct {p0, p3, p1}, Lorg/telegram/messenger/utils/CopyUtilities$HTMLTagHandler;->getLast(Landroid/text/Editable;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-eqz p1, :cond_8

    .line 220
    invoke-interface {p3, p1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result p2

    .line 221
    invoke-interface {p3, p1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 222
    invoke-interface {p3}, Landroid/text/Editable;->length()I

    move-result p4

    if-eq p2, p4, :cond_1

    .line 223
    invoke-interface {p3}, Landroid/text/Editable;->length()I

    move-result p4

    invoke-interface {p3, p1, p2, p4, v2}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    return v6

    :cond_2
    const-string/jumbo p4, "spoiler"

    .line 228
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    if-eqz p1, :cond_3

    .line 230
    new-instance p1, Lorg/telegram/messenger/utils/CopyUtilities$ParsedSpan;

    invoke-direct {p1, v5, v4}, Lorg/telegram/messenger/utils/CopyUtilities$ParsedSpan;-><init>(ILorg/telegram/messenger/utils/CopyUtilities$1;)V

    invoke-interface {p3}, Landroid/text/Editable;->length()I

    move-result p2

    invoke-interface {p3}, Landroid/text/Editable;->length()I

    move-result p4

    invoke-interface {p3, p1, p2, p4, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    return v6

    .line 233
    :cond_3
    invoke-direct {p0, p3, v0, v5}, Lorg/telegram/messenger/utils/CopyUtilities$HTMLTagHandler;->getLast(Landroid/text/Editable;Ljava/lang/Class;I)Lorg/telegram/messenger/utils/CopyUtilities$ParsedSpan;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 235
    invoke-interface {p3, p1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result p2

    .line 236
    invoke-interface {p3, p1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 237
    invoke-interface {p3}, Landroid/text/Editable;->length()I

    move-result p4

    if-eq p2, p4, :cond_4

    .line 238
    invoke-interface {p3}, Landroid/text/Editable;->length()I

    move-result p4

    invoke-interface {p3, p1, p2, p4, v2}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    :cond_4
    return v6

    :cond_5
    const-string p4, "pre"

    .line 243
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    if-eqz p1, :cond_6

    .line 245
    new-instance p1, Lorg/telegram/messenger/utils/CopyUtilities$ParsedSpan;

    invoke-direct {p1, v6, v4}, Lorg/telegram/messenger/utils/CopyUtilities$ParsedSpan;-><init>(ILorg/telegram/messenger/utils/CopyUtilities$1;)V

    invoke-interface {p3}, Landroid/text/Editable;->length()I

    move-result p2

    invoke-interface {p3}, Landroid/text/Editable;->length()I

    move-result p4

    invoke-interface {p3, p1, p2, p4, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    return v6

    .line 248
    :cond_6
    invoke-direct {p0, p3, v0, v6}, Lorg/telegram/messenger/utils/CopyUtilities$HTMLTagHandler;->getLast(Landroid/text/Editable;Ljava/lang/Class;I)Lorg/telegram/messenger/utils/CopyUtilities$ParsedSpan;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 250
    invoke-interface {p3, p1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result p2

    .line 251
    invoke-interface {p3, p1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 252
    invoke-interface {p3}, Landroid/text/Editable;->length()I

    move-result p4

    if-eq p2, p4, :cond_7

    .line 253
    invoke-interface {p3}, Landroid/text/Editable;->length()I

    move-result p4

    invoke-interface {p3, p1, p2, p4, v2}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    :cond_7
    return v6

    :cond_8
    return v5
.end method
