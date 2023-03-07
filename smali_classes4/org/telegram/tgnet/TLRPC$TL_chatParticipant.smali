.class public Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;
.super Lorg/telegram/tgnet/TLRPC$ChatParticipant;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x3fd2bff9


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41166
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$ChatParticipant;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2

    .line 41171
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    .line 41172
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->inviter_id:J

    .line 41173
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->date:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 41177
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 41178
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 41179
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->inviter_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 41180
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
