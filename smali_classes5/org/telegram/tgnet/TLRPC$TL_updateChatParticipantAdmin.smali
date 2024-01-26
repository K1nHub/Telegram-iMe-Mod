.class public Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipantAdmin;
.super Lorg/telegram/tgnet/TLRPC$Update;
.source "TLRPC.java"


# instance fields
.field public chat_id:J

.field public is_admin:Z

.field public user_id:J

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35906
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2

    .line 35915
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipantAdmin;->chat_id:J

    .line 35916
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipantAdmin;->user_id:J

    .line 35917
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readBool(Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipantAdmin;->is_admin:Z

    .line 35918
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipantAdmin;->version:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    const v0, -0x28359e5e

    .line 35922
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 35923
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipantAdmin;->chat_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 35924
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipantAdmin;->user_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 35925
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipantAdmin;->is_admin:Z

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeBool(Z)V

    .line 35926
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipantAdmin;->version:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
