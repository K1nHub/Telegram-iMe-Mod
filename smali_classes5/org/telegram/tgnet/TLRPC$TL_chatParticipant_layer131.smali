.class public Lorg/telegram/tgnet/TLRPC$TL_chatParticipant_layer131;
.super Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;
.source "TLRPC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43868
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2

    .line 43873
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    .line 43874
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->inviter_id:J

    .line 43875
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->date:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    const v0, -0x3728b6c2

    .line 43879
    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 43880
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 43881
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->inviter_id:J

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 43882
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
