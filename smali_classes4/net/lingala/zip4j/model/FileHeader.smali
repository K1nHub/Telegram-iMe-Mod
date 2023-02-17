.class public Lnet/lingala/zip4j/model/FileHeader;
.super Ljava/lang/Object;
.source "FileHeader.java"


# instance fields
.field private aesExtraDataRecord:Lnet/lingala/zip4j/model/AESExtraDataRecord;

.field private compressedSize:J

.field private compressionMethod:I

.field private crc32:J

.field private crcBuff:[B

.field private diskNumberStart:I

.field private encryptionMethod:I

.field private externalFileAttr:[B

.field private extraDataRecords:Ljava/util/ArrayList;

.field private extraFieldLength:I

.field private fileName:Ljava/lang/String;

.field private fileNameUTF8Encoded:Z

.field private isDirectory:Z

.field private isEncrypted:Z

.field private lastModFileTime:I

.field private offsetLocalHeader:J

.field private password:[C

.field private uncompressedSize:J

.field private zip64ExtendedInfo:Lnet/lingala/zip4j/model/Zip64ExtendedInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 85
    iput v0, p0, Lnet/lingala/zip4j/model/FileHeader;->encryptionMethod:I

    const-wide/16 v0, 0x0

    .line 86
    iput-wide v0, p0, Lnet/lingala/zip4j/model/FileHeader;->crc32:J

    .line 87
    iput-wide v0, p0, Lnet/lingala/zip4j/model/FileHeader;->uncompressedSize:J

    return-void
.end method


# virtual methods
.method public getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;
    .locals 1

    .line 352
    iget-object v0, p0, Lnet/lingala/zip4j/model/FileHeader;->aesExtraDataRecord:Lnet/lingala/zip4j/model/AESExtraDataRecord;

    return-object v0
.end method

.method public getCompressedSize()J
    .locals 2

    .line 147
    iget-wide v0, p0, Lnet/lingala/zip4j/model/FileHeader;->compressedSize:J

    return-wide v0
.end method

.method public getCompressionMethod()I
    .locals 1

    .line 123
    iget v0, p0, Lnet/lingala/zip4j/model/FileHeader;->compressionMethod:I

    return v0
.end method

.method public getCrc32()J
    .locals 4

    .line 139
    iget-wide v0, p0, Lnet/lingala/zip4j/model/FileHeader;->crc32:J

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public getCrcBuff()[B
    .locals 1

    .line 320
    iget-object v0, p0, Lnet/lingala/zip4j/model/FileHeader;->crcBuff:[B

    return-object v0
.end method

.method public getDiskNumberStart()I
    .locals 1

    .line 187
    iget v0, p0, Lnet/lingala/zip4j/model/FileHeader;->diskNumberStart:I

    return v0
.end method

.method public getEncryptionMethod()I
    .locals 1

    .line 304
    iget v0, p0, Lnet/lingala/zip4j/model/FileHeader;->encryptionMethod:I

    return v0
.end method

.method public getExternalFileAttr()[B
    .locals 1

    .line 203
    iget-object v0, p0, Lnet/lingala/zip4j/model/FileHeader;->externalFileAttr:[B

    return-object v0
.end method

.method public getExtraDataRecords()Ljava/util/ArrayList;
    .locals 1

    .line 328
    iget-object v0, p0, Lnet/lingala/zip4j/model/FileHeader;->extraDataRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getExtraFieldLength()I
    .locals 1

    .line 171
    iget v0, p0, Lnet/lingala/zip4j/model/FileHeader;->extraFieldLength:I

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 219
    iget-object v0, p0, Lnet/lingala/zip4j/model/FileHeader;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModFileTime()I
    .locals 1

    .line 131
    iget v0, p0, Lnet/lingala/zip4j/model/FileHeader;->lastModFileTime:I

    return v0
.end method

.method public getOffsetLocalHeader()J
    .locals 2

    .line 211
    iget-wide v0, p0, Lnet/lingala/zip4j/model/FileHeader;->offsetLocalHeader:J

    return-wide v0
.end method

.method public getPassword()[C
    .locals 1

    .line 312
    iget-object v0, p0, Lnet/lingala/zip4j/model/FileHeader;->password:[C

    return-object v0
.end method

.method public getUncompressedSize()J
    .locals 2

    .line 155
    iget-wide v0, p0, Lnet/lingala/zip4j/model/FileHeader;->uncompressedSize:J

    return-wide v0
.end method

.method public getZip64ExtendedInfo()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;
    .locals 1

    .line 344
    iget-object v0, p0, Lnet/lingala/zip4j/model/FileHeader;->zip64ExtendedInfo:Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    return-object v0
.end method

.method public isDirectory()Z
    .locals 1

    .line 235
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/FileHeader;->isDirectory:Z

    return v0
.end method

.method public isEncrypted()Z
    .locals 1

    .line 296
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/FileHeader;->isEncrypted:Z

    return v0
.end method

.method public isFileNameUTF8Encoded()Z
    .locals 1

    .line 360
    iget-boolean v0, p0, Lnet/lingala/zip4j/model/FileHeader;->fileNameUTF8Encoded:Z

    return v0
.end method

.method public setAesExtraDataRecord(Lnet/lingala/zip4j/model/AESExtraDataRecord;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lnet/lingala/zip4j/model/FileHeader;->aesExtraDataRecord:Lnet/lingala/zip4j/model/AESExtraDataRecord;

    return-void
.end method

.method public setCompressedSize(J)V
    .locals 0

    .line 151
    iput-wide p1, p0, Lnet/lingala/zip4j/model/FileHeader;->compressedSize:J

    return-void
.end method

.method public setCompressionMethod(I)V
    .locals 0

    .line 127
    iput p1, p0, Lnet/lingala/zip4j/model/FileHeader;->compressionMethod:I

    return-void
.end method

.method public setCrc32(J)V
    .locals 0

    .line 143
    iput-wide p1, p0, Lnet/lingala/zip4j/model/FileHeader;->crc32:J

    return-void
.end method

.method public setCrcBuff([B)V
    .locals 0

    .line 324
    iput-object p1, p0, Lnet/lingala/zip4j/model/FileHeader;->crcBuff:[B

    return-void
.end method

.method public setDataDescriptorExists(Z)V
    .locals 0

    return-void
.end method

.method public setDirectory(Z)V
    .locals 0

    .line 239
    iput-boolean p1, p0, Lnet/lingala/zip4j/model/FileHeader;->isDirectory:Z

    return-void
.end method

.method public setDiskNumberStart(I)V
    .locals 0

    .line 191
    iput p1, p0, Lnet/lingala/zip4j/model/FileHeader;->diskNumberStart:I

    return-void
.end method

.method public setEncrypted(Z)V
    .locals 0

    .line 300
    iput-boolean p1, p0, Lnet/lingala/zip4j/model/FileHeader;->isEncrypted:Z

    return-void
.end method

.method public setEncryptionMethod(I)V
    .locals 0

    .line 308
    iput p1, p0, Lnet/lingala/zip4j/model/FileHeader;->encryptionMethod:I

    return-void
.end method

.method public setExternalFileAttr([B)V
    .locals 0

    .line 207
    iput-object p1, p0, Lnet/lingala/zip4j/model/FileHeader;->externalFileAttr:[B

    return-void
.end method

.method public setExtraDataRecords(Ljava/util/ArrayList;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lnet/lingala/zip4j/model/FileHeader;->extraDataRecords:Ljava/util/ArrayList;

    return-void
.end method

.method public setExtraFieldLength(I)V
    .locals 0

    .line 175
    iput p1, p0, Lnet/lingala/zip4j/model/FileHeader;->extraFieldLength:I

    return-void
.end method

.method public setFileComment(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lnet/lingala/zip4j/model/FileHeader;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setFileNameLength(I)V
    .locals 0

    return-void
.end method

.method public setFileNameUTF8Encoded(Z)V
    .locals 0

    .line 364
    iput-boolean p1, p0, Lnet/lingala/zip4j/model/FileHeader;->fileNameUTF8Encoded:Z

    return-void
.end method

.method public setGeneralPurposeFlag([B)V
    .locals 0

    return-void
.end method

.method public setInternalFileAttr([B)V
    .locals 0

    return-void
.end method

.method public setLastModFileTime(I)V
    .locals 0

    .line 135
    iput p1, p0, Lnet/lingala/zip4j/model/FileHeader;->lastModFileTime:I

    return-void
.end method

.method public setOffsetLocalHeader(J)V
    .locals 0

    .line 215
    iput-wide p1, p0, Lnet/lingala/zip4j/model/FileHeader;->offsetLocalHeader:J

    return-void
.end method

.method public setSignature(I)V
    .locals 0

    return-void
.end method

.method public setUncompressedSize(J)V
    .locals 0

    .line 159
    iput-wide p1, p0, Lnet/lingala/zip4j/model/FileHeader;->uncompressedSize:J

    return-void
.end method

.method public setVersionMadeBy(I)V
    .locals 0

    return-void
.end method

.method public setVersionNeededToExtract(I)V
    .locals 0

    return-void
.end method

.method public setZip64ExtendedInfo(Lnet/lingala/zip4j/model/Zip64ExtendedInfo;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lnet/lingala/zip4j/model/FileHeader;->zip64ExtendedInfo:Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    return-void
.end method
