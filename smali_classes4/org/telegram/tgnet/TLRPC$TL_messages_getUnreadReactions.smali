.class public Lorg/telegram/tgnet/TLRPC$TL_messages_getUnreadReactions;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x3223495b


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
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55936
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 55949
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$messages_Messages;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$messages_Messages;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 55953
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getUnreadReactions;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 55954
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getUnreadReactions;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 55955
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getUnreadReactions;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 55956
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getUnreadReactions;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 55957
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getUnreadReactions;->top_msg_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 55959
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getUnreadReactions;->offset_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 55960
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getUnreadReactions;->add_offset:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 55961
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getUnreadReactions;->limit:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 55962
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getUnreadReactions;->max_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 55963
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getUnreadReactions;->min_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
