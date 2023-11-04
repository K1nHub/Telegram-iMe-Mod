.class public Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat_layer131;
.super Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;
.source "TLRPC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53023
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 0

    .line 53028
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Lorg/telegram/tgnet/TLRPC$InputPeer;->chat_id:J

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    const v0, 0x179be863

    .line 53032
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 53033
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$InputPeer;->chat_id:J

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
