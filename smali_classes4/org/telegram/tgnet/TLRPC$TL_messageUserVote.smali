.class public Lorg/telegram/tgnet/TLRPC$TL_messageUserVote;
.super Lorg/telegram/tgnet/TLRPC$MessageUserVote;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x34d247b4


# instance fields
.field public option:[B


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31035
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$MessageUserVote;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2

    .line 31041
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$MessageUserVote;->user_id:J

    .line 31042
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteArray(Z)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageUserVote;->option:[B

    .line 31043
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$MessageUserVote;->date:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 31047
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_messageUserVote;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 31048
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$MessageUserVote;->user_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 31049
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageUserVote;->option:[B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    .line 31050
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageUserVote;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    return-void
.end method
