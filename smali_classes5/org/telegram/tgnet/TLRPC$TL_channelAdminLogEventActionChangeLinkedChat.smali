.class public Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeLinkedChat;
.super Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x50c7ac8


# instance fields
.field public new_value:J

.field public prev_value:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44431
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2

    .line 44438
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeLinkedChat;->prev_value:J

    .line 44439
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeLinkedChat;->new_value:J

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 44443
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeLinkedChat;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 44444
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeLinkedChat;->prev_value:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 44445
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeLinkedChat;->new_value:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    return-void
.end method
