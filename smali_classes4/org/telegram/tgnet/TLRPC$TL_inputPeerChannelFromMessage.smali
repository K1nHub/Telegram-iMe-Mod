.class public Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannelFromMessage;
.super Lorg/telegram/tgnet/TLRPC$InputPeer;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x42d5f7c0


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49552
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$InputPeer;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1

    .line 49557
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$InputPeer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$InputPeer;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 49558
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$InputPeer;->msg_id:I

    .line 49559
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:J

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 49563
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannelFromMessage;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 49564
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$InputPeer;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 49565
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$InputPeer;->msg_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 49566
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    return-void
.end method
