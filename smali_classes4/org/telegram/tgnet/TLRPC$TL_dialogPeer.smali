.class public Lorg/telegram/tgnet/TLRPC$TL_dialogPeer;
.super Lorg/telegram/tgnet/TLRPC$DialogPeer;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x1a9240fb


# instance fields
.field public peer:Lorg/telegram/tgnet/TLRPC$Peer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3068
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$DialogPeer;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1

    .line 3074
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_dialogPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 3078
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_dialogPeer;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 3079
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_dialogPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    return-void
.end method
