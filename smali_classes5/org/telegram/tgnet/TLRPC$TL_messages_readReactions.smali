.class public Lorg/telegram/tgnet/TLRPC$TL_messages_readReactions;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# instance fields
.field public flags:I

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public top_msg_id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59516
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 59524
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_messages_affectedHistory;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_messages_affectedHistory;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    const v0, 0x54aa7f8e

    .line 59528
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 59529
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_readReactions;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 59530
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_readReactions;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 59531
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_readReactions;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 59532
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_readReactions;->top_msg_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    :cond_0
    return-void
.end method
