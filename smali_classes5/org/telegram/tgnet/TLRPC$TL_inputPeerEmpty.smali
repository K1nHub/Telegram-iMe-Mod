.class public Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;
.super Lorg/telegram/tgnet/TLRPC$InputPeer;
.source "TLRPC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54655
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$InputPeer;-><init>()V

    return-void
.end method


# virtual methods
.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    const v0, 0x7f3b18ea

    .line 54660
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
