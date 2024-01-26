.class public Lorg/telegram/tgnet/TLRPC$TL_postInteractionCountersStory;
.super Lorg/telegram/tgnet/TLRPC$PostInteractionCounters;
.source "TLRPC.java"


# instance fields
.field public forwards:I

.field public reactions:I

.field public story_id:I

.field public views:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5542
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$PostInteractionCounters;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1

    .line 5551
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_postInteractionCountersStory;->story_id:I

    .line 5552
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_postInteractionCountersStory;->views:I

    .line 5553
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_postInteractionCountersStory;->forwards:I

    .line 5554
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_postInteractionCountersStory;->reactions:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    const v0, -0x75b7f1d9

    .line 5558
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5559
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_postInteractionCountersStory;->story_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5560
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_postInteractionCountersStory;->views:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5561
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_postInteractionCountersStory;->forwards:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5562
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_postInteractionCountersStory;->reactions:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
