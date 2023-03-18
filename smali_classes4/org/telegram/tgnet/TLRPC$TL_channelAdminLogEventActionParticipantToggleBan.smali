.class public Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantToggleBan;
.super Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x1927c282


# instance fields
.field public new_participant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

.field public prev_participant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42160
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1

    .line 42167
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantToggleBan;->prev_participant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 42168
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantToggleBan;->new_participant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 42172
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantToggleBan;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 42173
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantToggleBan;->prev_participant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 42174
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantToggleBan;->new_participant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    return-void
.end method
