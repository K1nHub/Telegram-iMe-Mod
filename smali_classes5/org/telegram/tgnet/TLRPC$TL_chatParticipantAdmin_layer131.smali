.class public Lorg/telegram/tgnet/TLRPC$TL_chatParticipantAdmin_layer131;
.super Lorg/telegram/tgnet/TLRPC$TL_chatParticipantAdmin;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x1d291bca


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41089
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantAdmin;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2

    .line 41094
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    .line 41095
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->inviter_id:J

    .line 41096
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->date:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 41100
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantAdmin_layer131;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 41101
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    long-to-int v1, v0

    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 41102
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->inviter_id:J

    long-to-int v1, v0

    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 41103
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
