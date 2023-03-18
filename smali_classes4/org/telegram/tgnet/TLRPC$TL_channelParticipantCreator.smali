.class public Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;
.super Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x2fe601d3


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39389
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 3

    .line 39394
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->flags:I

    .line 39395
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 39396
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 39397
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    .line 39398
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 39399
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->rank:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 39404
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 39405
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 39406
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 39407
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 39408
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 39409
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->rank:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
