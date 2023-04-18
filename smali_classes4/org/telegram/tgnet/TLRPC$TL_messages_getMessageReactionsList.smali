.class public Lorg/telegram/tgnet/TLRPC$TL_messages_getMessageReactionsList;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x461b3f48


# instance fields
.field public flags:I

.field public id:I

.field public limit:I

.field public offset:Ljava/lang/String;

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public reaction:Lorg/telegram/tgnet/TLRPC$Reaction;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 56043
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 56054
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_messages_messageReactionsList;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_messages_messageReactionsList;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 56058
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessageReactionsList;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 56059
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessageReactionsList;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 56060
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessageReactionsList;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 56061
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessageReactionsList;->id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 56062
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessageReactionsList;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 56063
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessageReactionsList;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 56065
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessageReactionsList;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 56066
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessageReactionsList;->offset:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 56068
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessageReactionsList;->limit:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
