.class public Lorg/telegram/tgnet/TLRPC$TL_messageReplyStoryHeader;
.super Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x6367403f


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28440
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2

    .line 28444
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->user_id:J

    .line 28445
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->story_id:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 28449
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messageReplyStoryHeader;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 28450
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->user_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 28451
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->story_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
