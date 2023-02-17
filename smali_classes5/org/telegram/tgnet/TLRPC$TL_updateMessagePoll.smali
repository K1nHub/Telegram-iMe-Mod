.class public Lorg/telegram/tgnet/TLRPC$TL_updateMessagePoll;
.super Lorg/telegram/tgnet/TLRPC$Update;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x535e9a85


# instance fields
.field public flags:I

.field public poll:Lorg/telegram/tgnet/TLRPC$Poll;

.field public poll_id:J

.field public results:Lorg/telegram/tgnet/TLRPC$PollResults;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31469
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2

    .line 31478
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateMessagePoll;->flags:I

    .line 31479
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateMessagePoll;->poll_id:J

    .line 31480
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateMessagePoll;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 31481
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Poll;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Poll;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateMessagePoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    .line 31483
    :cond_0
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$PollResults;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PollResults;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_updateMessagePoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 31487
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_updateMessagePoll;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 31488
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateMessagePoll;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 31489
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateMessagePoll;->poll_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 31490
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateMessagePoll;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 31491
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateMessagePoll;->poll:Lorg/telegram/tgnet/TLRPC$Poll;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 31493
    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateMessagePoll;->results:Lorg/telegram/tgnet/TLRPC$PollResults;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    return-void
.end method
