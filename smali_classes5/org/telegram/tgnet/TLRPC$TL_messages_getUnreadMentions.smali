.class public Lorg/telegram/tgnet/TLRPC$TL_messages_getUnreadMentions;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# instance fields
.field public add_offset:I

.field public flags:I

.field public limit:I

.field public max_id:I

.field public min_id:I

.field public offset_id:I

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public top_msg_id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 60504
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 60517
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$messages_Messages;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$messages_Messages;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    const v0, -0xef81870

    .line 60521
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 60522
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getUnreadMentions;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 60523
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getUnreadMentions;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 60524
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getUnreadMentions;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 60525
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getUnreadMentions;->top_msg_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 60527
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getUnreadMentions;->offset_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 60528
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getUnreadMentions;->add_offset:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 60529
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getUnreadMentions;->limit:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 60530
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getUnreadMentions;->max_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 60531
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getUnreadMentions;->min_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
