.class public Lorg/telegram/tgnet/TLRPC$TL_updateChannelParticipant;
.super Lorg/telegram/tgnet/TLRPC$Update;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x67a2c545


# instance fields
.field public actor_id:J

.field public channel_id:J

.field public date:I

.field public flags:I

.field public invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

.field public new_participant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

.field public prev_participant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

.field public qts:I

.field public user_id:J

.field public via_chatlist:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33169
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2

    .line 33184
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelParticipant;->flags:I

    .line 33185
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelParticipant;->channel_id:J

    .line 33186
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelParticipant;->date:I

    .line 33187
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelParticipant;->actor_id:J

    .line 33188
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelParticipant;->user_id:J

    .line 33189
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelParticipant;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 33190
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelParticipant;->prev_participant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 33192
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelParticipant;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 33193
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelParticipant;->new_participant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 33195
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelParticipant;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 33196
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelParticipant;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    .line 33198
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelParticipant;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelParticipant;->via_chatlist:Z

    .line 33199
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelParticipant;->qts:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 33203
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelParticipant;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 33204
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelParticipant;->via_chatlist:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelParticipant;->flags:I

    or-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelParticipant;->flags:I

    and-int/lit8 v0, v0, 0x8

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelParticipant;->flags:I

    .line 33205
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 33206
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelParticipant;->channel_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 33207
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelParticipant;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 33208
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelParticipant;->actor_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 33209
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelParticipant;->user_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 33210
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelParticipant;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 33211
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelParticipant;->prev_participant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 33213
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelParticipant;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 33214
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelParticipant;->new_participant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 33216
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelParticipant;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 33217
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelParticipant;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 33219
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelParticipant;->qts:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
