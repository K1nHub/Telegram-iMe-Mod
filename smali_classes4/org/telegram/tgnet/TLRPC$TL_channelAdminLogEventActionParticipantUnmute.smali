.class public Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantUnmute;
.super Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x19bbd640


# instance fields
.field public participant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42386
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1

    .line 42392
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantUnmute;->participant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 42396
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantUnmute;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 42397
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantUnmute;->participant:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    return-void
.end method
