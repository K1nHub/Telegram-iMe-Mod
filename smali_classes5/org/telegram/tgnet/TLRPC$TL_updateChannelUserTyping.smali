.class public Lorg/telegram/tgnet/TLRPC$TL_updateChannelUserTyping;
.super Lorg/telegram/tgnet/TLRPC$Update;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x737736dd


# instance fields
.field public action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

.field public channel_id:J

.field public flags:I

.field public from_id:Lorg/telegram/tgnet/TLRPC$Peer;

.field public top_msg_id:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31865
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2

    .line 31875
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelUserTyping;->flags:I

    .line 31876
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelUserTyping;->channel_id:J

    .line 31877
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelUserTyping;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 31878
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelUserTyping;->top_msg_id:I

    .line 31880
    :cond_0
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelUserTyping;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 31881
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$SendMessageAction;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelUserTyping;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 31885
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelUserTyping;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 31886
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelUserTyping;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 31887
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelUserTyping;->channel_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 31888
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelUserTyping;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 31889
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelUserTyping;->top_msg_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 31891
    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelUserTyping;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 31892
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelUserTyping;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    return-void
.end method
