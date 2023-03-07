.class public Lorg/telegram/tgnet/TLRPC$TL_messages_addChatUser;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0xdb8ac1d


# instance fields
.field public chat_id:J

.field public fwd_limit:I

.field public user_id:Lorg/telegram/tgnet/TLRPC$InputUser;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52336
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 52344
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Updates;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Updates;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 52348
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messages_addChatUser;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 52349
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_addChatUser;->chat_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 52350
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_addChatUser;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 52351
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_addChatUser;->fwd_limit:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
