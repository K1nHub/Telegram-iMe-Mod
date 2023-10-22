.class public Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x20fb22b2


# instance fields
.field public flags:I

.field public limit:I

.field public link:Ljava/lang/String;

.field public offset_date:I

.field public offset_user:Lorg/telegram/tgnet/TLRPC$InputUser;

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public q:Ljava/lang/String;

.field public requested:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 59342
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 59355
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_messages_chatInviteImporters;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_messages_chatInviteImporters;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 59359
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 59360
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;->requested:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;->flags:I

    .line 59361
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 59362
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 59363
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 59364
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;->link:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 59366
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 59367
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 59369
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;->offset_date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 59370
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;->offset_user:Lorg/telegram/tgnet/TLRPC$InputUser;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 59371
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getChatInviteImporters;->limit:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
