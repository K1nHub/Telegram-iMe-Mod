.class public Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;
.super Ljava/lang/Object;
.source "Zip64EndCentralDirLocator.java"


# instance fields
.field private offsetZip64EndOfCentralDirRec:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOffsetZip64EndOfCentralDirRec()J
    .locals 2

    .line 47
    iget-wide v0, p0, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->offsetZip64EndOfCentralDirRec:J

    return-wide v0
.end method

.method public setNoOfDiskStartOfZip64EndOfCentralDirRec(I)V
    .locals 0

    return-void
.end method

.method public setOffsetZip64EndOfCentralDirRec(J)V
    .locals 0

    .line 51
    iput-wide p1, p0, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->offsetZip64EndOfCentralDirRec:J

    return-void
.end method

.method public setSignature(J)V
    .locals 0

    return-void
.end method

.method public setTotNumberOfDiscs(I)V
    .locals 0

    return-void
.end method
