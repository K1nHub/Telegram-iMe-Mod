.class public Lorg/telegram/tgnet/TLRPC$TL_messageActionPaymentSent;
.super Lorg/telegram/tgnet/TLRPC$MessageAction;
.source "TLRPC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27677
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$MessageAction;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 4

    .line 27681
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 27682
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->recurring_init:Z

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    move v2, v3

    .line 27683
    :cond_1
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->recurring_used:Z

    .line 27684
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->currency:Ljava/lang/String;

    .line 27685
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->total_amount:J

    .line 27686
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_2

    .line 27687
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->invoice_slug:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    const v0, -0x69e9c0aa

    .line 27692
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 27693
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->recurring_init:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    or-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    and-int/lit8 v0, v0, -0x5

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    .line 27694
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->recurring_used:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x8

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x9

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    .line 27695
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 27696
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->currency:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 27697
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->total_amount:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 27698
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 27699
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->invoice_slug:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
