.class public Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionPinTopic;
.super Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x5d8d353b


# instance fields
.field public flags:I

.field public new_topic:Lorg/telegram/tgnet/TLRPC$ForumTopic;

.field public prev_topic:Lorg/telegram/tgnet/TLRPC$ForumTopic;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42434
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1

    .line 42442
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionPinTopic;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 42444
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$ForumTopic;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ForumTopic;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionPinTopic;->prev_topic:Lorg/telegram/tgnet/TLRPC$ForumTopic;

    .line 42446
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionPinTopic;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 42447
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$ForumTopic;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ForumTopic;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionPinTopic;->new_topic:Lorg/telegram/tgnet/TLRPC$ForumTopic;

    :cond_1
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    .line 42452
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionPinTopic;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 42453
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionPinTopic;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 42454
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionPinTopic;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 42455
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionPinTopic;->prev_topic:Lorg/telegram/tgnet/TLRPC$ForumTopic;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 42457
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionPinTopic;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 42458
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionPinTopic;->new_topic:Lorg/telegram/tgnet/TLRPC$ForumTopic;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    :cond_1
    return-void
.end method
