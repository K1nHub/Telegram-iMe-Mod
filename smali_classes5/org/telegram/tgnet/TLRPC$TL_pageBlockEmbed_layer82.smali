.class public Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed_layer82;
.super Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;
.source "TLRPC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 65108
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 4

    .line 65113
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->flags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 65114
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->full_width:Z

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    move v2, v3

    .line 65115
    :cond_1
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->allow_scrolling:Z

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 65117
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->url:Ljava/lang/String;

    .line 65119
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 65120
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->html:Ljava/lang/String;

    .line 65122
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 65123
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->poster_photo_id:J

    .line 65125
    :cond_4
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->w:I

    .line 65126
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->h:I

    .line 65127
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    .line 65128
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    invoke-static {p1, v1, p2}, Lorg/telegram/tgnet/TLRPC$RichText;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    .line 65129
    iget-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_textEmpty;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_textEmpty;-><init>()V

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    const v0, -0x321dff2f    # -4.7396304E8f

    .line 65133
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 65134
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->full_width:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->flags:I

    .line 65135
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->allow_scrolling:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x8

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x9

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->flags:I

    .line 65136
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 65137
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 65138
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 65140
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 65141
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->html:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 65143
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 65144
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->poster_photo_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 65146
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->w:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 65147
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->h:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 65148
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    return-void
.end method
