.class public Lorg/telegram/tgnet/TLRPC$TL_contacts_topPeersDisabled;
.super Lorg/telegram/tgnet/TLRPC$contacts_TopPeers;
.source "TLRPC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39921
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$contacts_TopPeers;-><init>()V

    return-void
.end method


# virtual methods
.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    const v0, -0x4ad36c63

    .line 39926
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
