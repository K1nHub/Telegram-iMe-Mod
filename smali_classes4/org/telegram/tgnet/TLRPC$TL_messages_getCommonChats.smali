.class public Lorg/telegram/tgnet/TLRPC$TL_messages_getCommonChats;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x1bf35efc


# instance fields
.field public limit:I

.field public max_id:J

.field public user_id:Lorg/telegram/tgnet/TLRPC$InputUser;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55066
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 55074
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$messages_Chats;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$messages_Chats;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 55078
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getCommonChats;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 55079
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getCommonChats;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 55080
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getCommonChats;->max_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 55081
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getCommonChats;->limit:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
