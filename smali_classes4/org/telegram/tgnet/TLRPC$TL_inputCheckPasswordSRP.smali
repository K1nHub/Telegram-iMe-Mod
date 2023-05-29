.class public Lorg/telegram/tgnet/TLRPC$TL_inputCheckPasswordSRP;
.super Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;
.source "TLRPC.java"


# static fields
.field public static constructor:I = -0x2d800f7e


# instance fields
.field public A:[B

.field public M1:[B

.field public srp_id:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35339
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$InputCheckPasswordSRP;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2

    .line 35347
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputCheckPasswordSRP;->srp_id:J

    .line 35348
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteArray(Z)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputCheckPasswordSRP;->A:[B

    .line 35349
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteArray(Z)[B

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_inputCheckPasswordSRP;->M1:[B

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 35353
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_inputCheckPasswordSRP;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 35354
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputCheckPasswordSRP;->srp_id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 35355
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputCheckPasswordSRP;->A:[B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    .line 35356
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputCheckPasswordSRP;->M1:[B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    return-void
.end method
