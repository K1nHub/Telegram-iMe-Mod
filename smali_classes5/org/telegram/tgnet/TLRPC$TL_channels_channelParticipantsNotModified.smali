.class public Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipantsNotModified;
.super Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;
.source "TLRPC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43236
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;-><init>()V

    return-void
.end method


# virtual methods
.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    const v0, -0xfe8c017

    .line 43241
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
