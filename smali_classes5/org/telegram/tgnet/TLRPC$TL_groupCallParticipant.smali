.class public Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# instance fields
.field public about:Ljava/lang/String;

.field public active_date:I

.field public amplitude:F

.field public can_self_unmute:Z

.field public date:I

.field public flags:I

.field public hasCameraFrame:I

.field public hasPresentationFrame:I

.field public hasVoice:Z

.field public hasVoiceDelayed:Z

.field public just_joined:Z

.field public lastActiveDate:J

.field public lastRaiseHandDate:J

.field public lastSpeakTime:J

.field public lastTypingDate:I

.field public lastVisibleDate:J

.field public lastVoiceUpdateTime:J

.field public left:Z

.field public min:Z

.field public muted:Z

.field public muted_by_you:Z

.field public peer:Lorg/telegram/tgnet/TLRPC$Peer;

.field public presentation:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

.field public presentationEndpoint:Ljava/lang/String;

.field public raise_hand_rating:J

.field public self:Z

.field public source:I

.field public versioned:Z

.field public video:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

.field public videoEndpoint:Ljava/lang/String;

.field public videoIndex:I

.field public video_joined:Z

.field public volume:I

.field public volume_by_admin:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55062
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;
    .locals 1

    const v0, -0x1459c902

    if-eq v0, p1, :cond_1

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 55103
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "can\'t parse magic %x in TL_groupCallParticipant"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 55108
    :cond_1
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;-><init>()V

    .line 55109
    invoke-virtual {p1, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    return-object p1
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 4

    .line 55114
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->flags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 55115
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->muted:Z

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 55116
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->left:Z

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    .line 55117
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->can_self_unmute:Z

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    .line 55118
    :goto_3
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->just_joined:Z

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_4

    :cond_4
    move v1, v2

    .line 55119
    :goto_4
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->versioned:Z

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_5

    move v1, v3

    goto :goto_5

    :cond_5
    move v1, v2

    .line 55120
    :goto_5
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->min:Z

    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_6

    move v1, v3

    goto :goto_6

    :cond_6
    move v1, v2

    .line 55121
    :goto_6
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->muted_by_you:Z

    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_7

    move v1, v3

    goto :goto_7

    :cond_7
    move v1, v2

    .line 55122
    :goto_7
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->volume_by_admin:Z

    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_8

    move v1, v3

    goto :goto_8

    :cond_8
    move v1, v2

    .line 55123
    :goto_8
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->self:Z

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    move v2, v3

    .line 55124
    :cond_9
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->video_joined:Z

    .line 55125
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 55126
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->date:I

    .line 55127
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_a

    .line 55128
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->active_date:I

    .line 55130
    :cond_a
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->source:I

    .line 55131
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_b

    .line 55132
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->volume:I

    .line 55134
    :cond_b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_c

    .line 55135
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->about:Ljava/lang/String;

    .line 55137
    :cond_c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_d

    .line 55138
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->raise_hand_rating:J

    .line 55140
    :cond_d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_e

    .line 55141
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->video:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    .line 55143
    :cond_e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_f

    .line 55144
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->presentation:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    :cond_f
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    const v0, -0x1459c902

    .line 55149
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 55150
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->muted:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->flags:I

    .line 55151
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->left:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->flags:I

    .line 55152
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->can_self_unmute:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x5

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->flags:I

    .line 55153
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->just_joined:Z

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x10

    goto :goto_3

    :cond_3
    and-int/lit8 v0, v0, -0x11

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->flags:I

    .line 55154
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->versioned:Z

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x20

    goto :goto_4

    :cond_4
    and-int/lit8 v0, v0, -0x21

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->flags:I

    .line 55155
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->min:Z

    if-eqz v1, :cond_5

    or-int/lit16 v0, v0, 0x100

    goto :goto_5

    :cond_5
    and-int/lit16 v0, v0, -0x101

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->flags:I

    .line 55156
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->muted_by_you:Z

    if-eqz v1, :cond_6

    or-int/lit16 v0, v0, 0x200

    goto :goto_6

    :cond_6
    and-int/lit16 v0, v0, -0x201

    :goto_6
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->flags:I

    .line 55157
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->volume_by_admin:Z

    if-eqz v1, :cond_7

    or-int/lit16 v0, v0, 0x400

    goto :goto_7

    :cond_7
    and-int/lit16 v0, v0, -0x401

    :goto_7
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->flags:I

    .line 55158
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->self:Z

    if-eqz v1, :cond_8

    or-int/lit16 v0, v0, 0x1000

    goto :goto_8

    :cond_8
    and-int/lit16 v0, v0, -0x1001

    :goto_8
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->flags:I

    .line 55159
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->video_joined:Z

    if-eqz v1, :cond_9

    const v1, 0x8000

    or-int/2addr v0, v1

    goto :goto_9

    :cond_9
    const v1, -0x8001

    and-int/2addr v0, v1

    :goto_9
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->flags:I

    .line 55160
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 55161
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 55162
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 55163
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_a

    .line 55164
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->active_date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 55166
    :cond_a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->source:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 55167
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_b

    .line 55168
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->volume:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 55170
    :cond_b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_c

    .line 55171
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->about:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 55173
    :cond_c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_d

    .line 55174
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->raise_hand_rating:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 55176
    :cond_d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_e

    .line 55177
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->video:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 55179
    :cond_e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_f

    .line 55180
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->presentation:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    :cond_f
    return-void
.end method
