.class public Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator_layer118;
.super Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x7f72ea5c


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39421
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 3

    .line 39426
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->flags:I

    .line 39427
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 39428
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 39429
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 39430
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->rank:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 39435
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator_layer118;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 39436
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 39437
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    long-to-int v1, v0

    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 39438
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 39439
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->rank:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
