.class public Lorg/telegram/tgnet/TLRPC$TL_updateChannelTooLong;
.super Lorg/telegram/tgnet/TLRPC$Update;
.source "TLRPC.java"


# instance fields
.field public channel_id:J

.field public flags:I

.field public pts:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35715
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2

    .line 35723
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelTooLong;->flags:I

    .line 35724
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelTooLong;->channel_id:J

    .line 35725
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelTooLong;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 35726
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelTooLong;->pts:I

    :cond_0
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    const v0, 0x108d941f

    .line 35731
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 35732
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelTooLong;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 35733
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelTooLong;->channel_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 35734
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelTooLong;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 35735
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelTooLong;->pts:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    :cond_0
    return-void
.end method
