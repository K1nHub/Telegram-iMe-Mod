.class public Lorg/telegram/tgnet/TLRPC$TL_messages_search;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x5f02589e


# instance fields
.field public add_offset:I

.field public filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

.field public flags:I

.field public from_id:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public hash:J

.field public limit:I

.field public max_date:I

.field public max_id:I

.field public min_date:I

.field public min_id:I

.field public offset_id:I

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public q:Ljava/lang/String;

.field public top_msg_id:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51754
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 51773
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$messages_Messages;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$messages_Messages;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 51777
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 51778
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 51779
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 51780
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 51781
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 51782
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->from_id:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 51784
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 51785
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->top_msg_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 51787
    :cond_1
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 51788
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->min_date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 51789
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->max_date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 51790
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->offset_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 51791
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->add_offset:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 51792
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->limit:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 51793
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->max_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 51794
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->min_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 51795
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->hash:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    return-void
.end method
