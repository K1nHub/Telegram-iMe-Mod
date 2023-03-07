.class public Lorg/telegram/tgnet/TLRPC$TL_secureFile;
.super Lorg/telegram/tgnet/TLRPC$SecureFile;
.source "TLRPC.java"


# static fields
.field public static constructor:I = 0x7d09c27e


# instance fields
.field public access_hash:J

.field public date:I

.field public dc_id:I

.field public file_hash:[B

.field public id:J

.field public secret:[B

.field public size:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 4821
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$SecureFile;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2

    .line 4833
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureFile;->id:J

    .line 4834
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureFile;->access_hash:J

    .line 4835
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureFile;->size:J

    .line 4836
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureFile;->dc_id:I

    .line 4837
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureFile;->date:I

    .line 4838
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteArray(Z)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureFile;->file_hash:[B

    .line 4839
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteArray(Z)[B

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_secureFile;->secret:[B

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2

    .line 4843
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_secureFile;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 4844
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureFile;->id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 4845
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureFile;->access_hash:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 4846
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureFile;->size:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 4847
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureFile;->dc_id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 4848
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureFile;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 4849
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureFile;->file_hash:[B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    .line 4850
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_secureFile;->secret:[B

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    return-void
.end method
