.class public Lorg/telegram/tgnet/TLRPC$TL_messageReplyStoryHeader;
.super Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;
.source "TLRPC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29711
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2

    .line 29715
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->user_id:J

    .line 29716
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->story_id:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    const v0, -0x6367403f

    .line 29720
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 29721
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->user_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 29722
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->story_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
