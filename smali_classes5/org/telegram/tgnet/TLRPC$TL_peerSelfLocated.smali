.class public Lorg/telegram/tgnet/TLRPC$TL_peerSelfLocated;
.super Lorg/telegram/tgnet/TLRPC$PeerLocated;
.source "TLRPC.java"


# instance fields
.field public expires:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46125
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$PeerLocated;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 0

    .line 46131
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_peerSelfLocated;->expires:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    const v0, -0x713d7b5

    .line 46135
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 46136
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_peerSelfLocated;->expires:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
