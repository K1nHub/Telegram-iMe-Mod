.class public Lorg/telegram/tgnet/TLRPC$TL_updatePeerHistoryTTL;
.super Lorg/telegram/tgnet/TLRPC$Update;
.source "TLRPC.java"


# instance fields
.field public flags:I

.field public peer:Lorg/telegram/tgnet/TLRPC$Peer;

.field public ttl_period:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34033
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1

    .line 34041
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updatePeerHistoryTTL;->flags:I

    .line 34042
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updatePeerHistoryTTL;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 34043
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updatePeerHistoryTTL;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 34044
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_updatePeerHistoryTTL;->ttl_period:I

    :cond_0
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    const v0, -0x4464465b

    .line 34049
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 34050
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updatePeerHistoryTTL;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 34051
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updatePeerHistoryTTL;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 34052
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updatePeerHistoryTTL;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 34053
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updatePeerHistoryTTL;->ttl_period:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    :cond_0
    return-void
.end method
