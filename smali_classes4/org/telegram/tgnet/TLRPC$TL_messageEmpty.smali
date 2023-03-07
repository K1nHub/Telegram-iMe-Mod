.class public Lorg/telegram/tgnet/TLRPC$TL_messageEmpty;
.super Lorg/telegram/tgnet/TLRPC$Message;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x6f59357c


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 59946
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Message;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1

    .line 59950
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 59951
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 59952
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 59953
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    goto :goto_0

    .line 59955
    :cond_0
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    :goto_0
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 59960
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messageEmpty;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 59961
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 59962
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 59963
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 59964
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    :cond_0
    return-void
.end method
