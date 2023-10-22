.class public Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x5ad8c541


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
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 61029
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 61043
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Updates;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Updates;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 61047
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 61048
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 61049
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->call:Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 61050
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->participant:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 61051
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 61052
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->muted:Z

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeBool(Z)V

    .line 61054
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 61055
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->volume:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 61057
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 61058
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->raise_hand:Z

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeBool(Z)V

    .line 61060
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 61061
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->video_stopped:Z

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeBool(Z)V

    .line 61063
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 61064
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->video_paused:Z

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeBool(Z)V

    .line 61066
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 61067
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_phone_editGroupCallParticipant;->presentation_paused:Z

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeBool(Z)V

    :cond_5
    return-void
.end method
