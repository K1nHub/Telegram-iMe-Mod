.class public Lorg/telegram/tgnet/TLRPC$TL_messages_getReplies;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# instance fields
.field public add_offset:I

.field public hash:J

.field public limit:I

.field public max_id:I

.field public min_id:I

.field public msg_id:I

.field public offset_date:I

.field public offset_id:I

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61590
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 61604
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$messages_Messages;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$messages_Messages;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    const v0, 0x22ddd30c

    .line 61608
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 61609
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getReplies;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 61610
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getReplies;->msg_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 61611
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getReplies;->offset_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 61612
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getReplies;->offset_date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 61613
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getReplies;->add_offset:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 61614
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getReplies;->limit:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 61615
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getReplies;->max_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 61616
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getReplies;->min_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 61617
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getReplies;->hash:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    return-void
.end method
