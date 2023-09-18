.class public Lnet/lingala/zip4j/model/EndCentralDirRecord;
.super Ljava/lang/Object;
.source "EndCentralDirRecord.java"


# instance fields
.field private noOfThisDisk:I

.field private offsetOfStartOfCentralDir:J

.field private totNoOfEntriesInCentralDir:I


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

    .line 50
    iget v0, p0, Lnet/lingala/zip4j/model/EndCentralDirRecord;->noOfThisDisk:I

    return v0
.end method

.method public getOffsetOfStartOfCentralDir()J
    .locals 2

    .line 91
    iget-wide v0, p0, Lnet/lingala/zip4j/model/EndCentralDirRecord;->offsetOfStartOfCentralDir:J

    return-wide v0
.end method

.method public getTotNoOfEntriesInCentralDir()I
    .locals 1

    .line 75
    iget v0, p0, Lnet/lingala/zip4j/model/EndCentralDirRecord;->totNoOfEntriesInCentralDir:I

    return v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setCommentBytes([B)V
    .locals 0

    return-void
.end method

.method public setCommentLength(I)V
    .locals 0

    return-void
.end method

.method public setNoOfThisDisk(I)V
    .locals 0

    .line 54
    iput p1, p0, Lnet/lingala/zip4j/model/EndCentralDirRecord;->noOfThisDisk:I

    return-void
.end method

.method public setNoOfThisDiskStartOfCentralDir(I)V
    .locals 0

    return-void
.end method

.method public setOffsetOfStartOfCentralDir(J)V
    .locals 0

    .line 95
    iput-wide p1, p0, Lnet/lingala/zip4j/model/EndCentralDirRecord;->offsetOfStartOfCentralDir:J

    return-void
.end method

.method public setSignature(J)V
    .locals 0

    return-void
.end method

.method public setSizeOfCentralDir(I)V
    .locals 0

    return-void
.end method

.method public setTotNoOfEntriesInCentralDir(I)V
    .locals 0

    .line 79
    iput p1, p0, Lnet/lingala/zip4j/model/EndCentralDirRecord;->totNoOfEntriesInCentralDir:I

    return-void
.end method

.method public setTotNoOfEntriesInCentralDirOnThisDisk(I)V
    .locals 0

    return-void
.end method
