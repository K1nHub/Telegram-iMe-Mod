.class public Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# instance fields
.field public call:Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

.field public flags:I

.field public muted:Z

.field public participant:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public presentation_paused:Z

.field public raise_hand:Z

.field public video_paused:Z

.field public video_stopped:Z

.field public volume:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 63493
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 63507
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Updates;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Updates;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    const v0, -0x5ad8c541

    .line 63511
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 63512
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 63513
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->call:Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 63514
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->participant:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 63515
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 63516
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->muted:Z

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeBool(Z)V

    .line 63518
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 63519
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->volume:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 63521
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 63522
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->raise_hand:Z

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeBool(Z)V

    .line 63524
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 63525
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->video_stopped:Z

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeBool(Z)V

    .line 63527
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 63528
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->video_paused:Z

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeBool(Z)V

    .line 63530
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 63531
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->presentation_paused:Z

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeBool(Z)V

    :cond_5
    return-void
.end method
