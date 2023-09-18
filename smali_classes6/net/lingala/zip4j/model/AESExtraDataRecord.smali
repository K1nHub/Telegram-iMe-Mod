.class public Lnet/lingala/zip4j/model/AESExtraDataRecord;
.super Ljava/lang/Object;
.source "AESExtraDataRecord.java"


# instance fields
.field private aesStrength:I

.field private compressionMethod:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 33
    iput v0, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->aesStrength:I

    .line 34
    iput v0, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->compressionMethod:I

    return-void
.end method


# virtual methods
.method public getAesStrength()I
    .locals 1

    .line 79
    iget v0, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->aesStrength:I

    return v0
.end method

.method public getCompressionMethod()I
    .locals 1

    .line 89
    iget v0, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->compressionMethod:I

    return v0
.end method

.method public setAesStrength(I)V
    .locals 0

    .line 84
    iput p1, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->aesStrength:I

    return-void
.end method

.method public setCompressionMethod(I)V
    .locals 0

    .line 94
    iput p1, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->compressionMethod:I

    return-void
.end method

.method public setDataSize(I)V
    .locals 0

    return-void
.end method

.method public setSignature(J)V
    .locals 0

    return-void
.end method

.method public setVendorID(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setVersionNumber(I)V
    .locals 0

    return-void
.end method
