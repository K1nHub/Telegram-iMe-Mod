.class public Lorg/telegram/tgnet/TLRPC$TL_videoSize;
.super Lorg/telegram/tgnet/TLRPC$VideoSize;
.source "TLRPC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20765
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$VideoSize;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1

    .line 20770
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$VideoSize;->flags:I

    .line 20771
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$VideoSize;->type:Ljava/lang/String;

    .line 20772
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$VideoSize;->w:I

    .line 20773
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$VideoSize;->h:I

    .line 20774
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$VideoSize;->size:I

    .line 20775
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$VideoSize;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 20776
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readDouble(Z)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/tgnet/TLRPC$VideoSize;->video_start_ts:D

    :cond_0
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    const v0, -0x21cc4f6c

    .line 20781
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20782
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$VideoSize;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20783
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$VideoSize;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 20784
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$VideoSize;->w:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20785
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$VideoSize;->h:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20786
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$VideoSize;->size:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 20787
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$VideoSize;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 20788
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$VideoSize;->video_start_ts:D

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeDouble(D)V

    :cond_0
    return-void
.end method
