.class public Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# instance fields
.field public expire_date:I

.field public flags:I

.field public legacy_revoke_permanent:Z

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public request_needed:Z

.field public title:Ljava/lang/String;

.field public usage_limit:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59623
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 59635
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    const v0, -0x5fd31a2b

    .line 59639
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 59640
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;->legacy_revoke_permanent:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;->flags:I

    or-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;->flags:I

    and-int/lit8 v0, v0, -0x5

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;->flags:I

    .line 59641
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;->request_needed:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x8

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x9

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;->flags:I

    .line 59642
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 59643
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 59644
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 59645
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;->expire_date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 59647
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 59648
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;->usage_limit:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 59650
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 59651
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_exportChatInvite;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    :cond_4
    return-void
.end method
