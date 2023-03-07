.class public Lorg/telegram/tgnet/TLRPC$TL_channelParticipantSelf_layer131;
.super Lorg/telegram/tgnet/TLRPC$TL_channelParticipantSelf;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x5cd76593


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39363
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantSelf;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 3

    .line 39368
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 39369
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 39370
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->inviter_id:J

    .line 39371
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->date:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 39375
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantSelf_layer131;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 39376
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    long-to-int v1, v0

    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 39377
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->inviter_id:J

    long-to-int v1, v0

    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 39378
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
