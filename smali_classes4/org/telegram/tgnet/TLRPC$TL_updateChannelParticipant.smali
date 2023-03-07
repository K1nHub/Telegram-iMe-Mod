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


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32156
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2

    .line 32170
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelParticipant;->flags:I

    .line 32171
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelParticipant;->channel_id:J

    .line 32172
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelParticipant;->date:I

    .line 32173
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelParticipant;->actor_id:J

    .line 32174
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelParticipant;->user_id:J

    .line 32175
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelParticipant;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 32176
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelParticipant;->prev_participant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 32178
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelParticipant;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 32179
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelParticipant;->new_participant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 32181
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelParticipant;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 32182
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelParticipant;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    .line 32184
    :cond_2
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelParticipant;->qts:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 32188
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelParticipant;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 32189
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelParticipant;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 32190
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelParticipant;->channel_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 32191
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelParticipant;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 32192
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelParticipant;->actor_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 32193
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelParticipant;->user_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 32194
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelParticipant;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 32195
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelParticipant;->prev_participant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 32197
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelParticipant;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 32198
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelParticipant;->new_participant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 32200
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelParticipant;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 32201
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelParticipant;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 32203
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelParticipant;->qts:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
