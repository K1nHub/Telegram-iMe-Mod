.class public Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;
.super Ljava/lang/Object;
.source "Zip64EndCentralDirRecord.java"


# instance fields
.field private noOfThisDisk:I

.field private offsetStartCenDirWRTStartDiskNo:J

.field private sizeOfZip64EndCentralDirRec:J

.field private totNoOfEntriesInCentralDir:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNoOfThisDisk()I
    .locals 1

    .line 76
    iget v0, p0, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->noOfThisDisk:I

    return v0
.end method

.method public getOffsetStartCenDirWRTStartDiskNo()J
    .locals 2

    .line 117
    iget-wide v0, p0, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->offsetStartCenDirWRTStartDiskNo:J

    return-wide v0
.end method

.method public getSizeOfZip64EndCentralDirRec()J
    .locals 2

    .line 52
    iget-wide v0, p0, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->sizeOfZip64EndCentralDirRec:J

    return-wide v0
.end method

.method public getTotNoOfEntriesInCentralDir()J
    .locals 2

    .line 101
    iget-wide v0, p0, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->totNoOfEntriesInCentralDir:J

    return-wide v0
.end method

.method public setExtensibleDataSector([B)V
    .locals 0

    return-void
.end method

.method public setNoOfThisDisk(I)V
    .locals 0

    .line 80
    iput p1, p0, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->noOfThisDisk:I

    return-void
.end method

.method public setNoOfThisDiskStartOfCentralDir(I)V
    .locals 0

    return-void
.end method

.method public setOffsetStartCenDirWRTStartDiskNo(J)V
    .locals 0

    .line 122
    iput-wide p1, p0, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->offsetStartCenDirWRTStartDiskNo:J

    return-void
.end method

.method public setSignature(J)V
    .locals 0

    return-void
.end method

.method public setSizeOfCentralDir(J)V
    .locals 0

    return-void
.end method

.method public setSizeOfZip64EndCentralDirRec(J)V
    .locals 0

    .line 56
    iput-wide p1, p0, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->sizeOfZip64EndCentralDirRec:J

    return-void
.end method

.method public setTotNoOfEntriesInCentralDir(J)V
    .locals 0

    .line 105
    iput-wide p1, p0, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->totNoOfEntriesInCentralDir:J

    return-void
.end method

.method public setTotNoOfEntriesInCentralDirOnThisDisk(J)V
    .locals 0

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
