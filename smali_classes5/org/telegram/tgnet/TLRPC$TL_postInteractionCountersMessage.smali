.class public Lorg/telegram/tgnet/TLRPC$TL_postInteractionCountersMessage;
.super Lorg/telegram/tgnet/TLRPC$PostInteractionCounters;
.source "TLRPC.java"


# instance fields
.field public forwards:I

.field public msg_id:I

.field public reactions:I

.field public views:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5566
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$PostInteractionCounters;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 1

    .line 5575
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_postInteractionCountersMessage;->msg_id:I

    .line 5576
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_postInteractionCountersMessage;->views:I

    .line 5577
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_postInteractionCountersMessage;->forwards:I

    .line 5578
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_postInteractionCountersMessage;->reactions:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1

    const v0, -0x18fa7181

    .line 5582
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5583
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_postInteractionCountersMessage;->msg_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5584
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_postInteractionCountersMessage;->views:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5585
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_postInteractionCountersMessage;->forwards:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 5586
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_postInteractionCountersMessage;->reactions:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
