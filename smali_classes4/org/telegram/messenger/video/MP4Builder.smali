.class public Lorg/telegram/messenger/video/MP4Builder;
.super Ljava/lang/Object;
.source "MP4Builder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;
    }
.end annotation


# instance fields
.field private allowSyncFiles:Z

.field private currentMp4Movie:Lorg/telegram/messenger/video/Mp4Movie;

.field private dataOffset:J

.field private fc:Ljava/nio/channels/FileChannel;

.field private fos:Ljava/io/FileOutputStream;

.field private mdat:Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;

.field private sizeBuffer:Ljava/nio/ByteBuffer;

.field private splitMdat:Z

.field private track2SampleSizes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/telegram/messenger/video/Track;",
            "[J>;"
        }
    .end annotation
.end field

.field private wasFirstVideoFrame:Z

.field private writeNewMdat:Z

.field private wroteSinceLastMdat:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lorg/telegram/messenger/video/MP4Builder;->mdat:Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;

    .line 55
    iput-object v0, p0, Lorg/telegram/messenger/video/MP4Builder;->currentMp4Movie:Lorg/telegram/messenger/video/Mp4Movie;

    .line 56
    iput-object v0, p0, Lorg/telegram/messenger/video/MP4Builder;->fos:Ljava/io/FileOutputStream;

    .line 57
    iput-object v0, p0, Lorg/telegram/messenger/video/MP4Builder;->fc:Ljava/nio/channels/FileChannel;

    const-wide/16 v1, 0x0

    .line 58
    iput-wide v1, p0, Lorg/telegram/messenger/video/MP4Builder;->dataOffset:J

    .line 59
    iput-wide v1, p0, Lorg/telegram/messenger/video/MP4Builder;->wroteSinceLastMdat:J

    const/4 v1, 0x1

    .line 60
    iput-boolean v1, p0, Lorg/telegram/messenger/video/MP4Builder;->writeNewMdat:Z

    .line 61
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/telegram/messenger/video/MP4Builder;->track2SampleSizes:Ljava/util/HashMap;

    .line 62
    iput-object v0, p0, Lorg/telegram/messenger/video/MP4Builder;->sizeBuffer:Ljava/nio/ByteBuffer;

    .line 65
    iput-boolean v1, p0, Lorg/telegram/messenger/video/MP4Builder;->allowSyncFiles:Z

    return-void
.end method

.method private flushCurrentMdat()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lorg/telegram/messenger/video/MP4Builder;->fc:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    .line 88
    iget-object v2, p0, Lorg/telegram/messenger/video/MP4Builder;->fc:Ljava/nio/channels/FileChannel;

    iget-object v3, p0, Lorg/telegram/messenger/video/MP4Builder;->mdat:Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;

    invoke-virtual {v3}, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;->getOffset()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 89
    iget-object v2, p0, Lorg/telegram/messenger/video/MP4Builder;->mdat:Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;

    iget-object v3, p0, Lorg/telegram/messenger/video/MP4Builder;->fc:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 90
    iget-object v2, p0, Lorg/telegram/messenger/video/MP4Builder;->fc:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 91
    iget-object v0, p0, Lorg/telegram/messenger/video/MP4Builder;->mdat:Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;->setDataOffset(J)V

    .line 92
    iget-object v0, p0, Lorg/telegram/messenger/video/MP4Builder;->mdat:Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;->setContentSize(J)V

    .line 93
    iget-object v0, p0, Lorg/telegram/messenger/video/MP4Builder;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 94
    iget-boolean v0, p0, Lorg/telegram/messenger/video/MP4Builder;->allowSyncFiles:Z

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lorg/telegram/messenger/video/MP4Builder;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    :cond_0
    return-void
.end method

.method public static gcd(JJ)J
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    return-wide p0

    .line 292
    :cond_0
    rem-long/2addr p0, p2

    invoke-static {p2, p3, p0, p1}, Lorg/telegram/messenger/video/MP4Builder;->gcd(JJ)J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public addTrack(Landroid/media/MediaFormat;Z)I
    .locals 1

    .line 182
    iget-object v0, p0, Lorg/telegram/messenger/video/MP4Builder;->currentMp4Movie:Lorg/telegram/messenger/video/Mp4Movie;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/video/Mp4Movie;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result p1

    return p1
.end method

.method protected createCtts(Lorg/telegram/messenger/video/Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V
    .locals 6

    .line 410
    invoke-virtual {p1}, Lorg/telegram/messenger/video/Track;->getSampleCompositions()[I

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 415
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 417
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 418
    aget v3, p1, v2

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    .line 419
    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->getOffset()I

    move-result v5

    if-ne v5, v3, :cond_1

    .line 420
    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->getCount()I

    move-result v3

    add-int/2addr v3, v4

    invoke-virtual {v0, v3}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->setCount(I)V

    goto :goto_1

    .line 422
    :cond_1
    new-instance v0, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;

    invoke-direct {v0, v4, v3}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;-><init>(II)V

    .line 423
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 426
    :cond_2
    new-instance p1, Lcom/coremedia/iso/boxes/CompositionTimeToSample;

    invoke-direct {p1}, Lcom/coremedia/iso/boxes/CompositionTimeToSample;-><init>()V

    .line 427
    invoke-virtual {p1, v1}, Lcom/coremedia/iso/boxes/CompositionTimeToSample;->setEntries(Ljava/util/List;)V

    .line 428
    invoke-virtual {p2, p1}, Lcom/googlecode/mp4parser/BasicContainer;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    return-void
.end method

.method protected createFileTypeBox(Z)Lcom/coremedia/iso/boxes/FileTypeBox;
    .locals 4

    .line 211
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const-string/jumbo v1, "isom"

    .line 212
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "iso2"

    .line 213
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    const-string p1, "hvc1"

    goto :goto_0

    :cond_0
    const-string p1, "avc1"

    .line 214
    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string/jumbo p1, "mp41"

    .line 215
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 216
    new-instance p1, Lcom/coremedia/iso/boxes/FileTypeBox;

    const-wide/16 v2, 0x200

    invoke-direct {p1, v1, v2, v3, v0}, Lcom/coremedia/iso/boxes/FileTypeBox;-><init>(Ljava/lang/String;JLjava/util/List;)V

    return-object p1
.end method

.method public createMovie(Lorg/telegram/messenger/video/Mp4Movie;ZZ)Lorg/telegram/messenger/video/MP4Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lorg/telegram/messenger/video/MP4Builder;->currentMp4Movie:Lorg/telegram/messenger/video/Mp4Movie;

    .line 70
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Lorg/telegram/messenger/video/Mp4Movie;->getCacheFile()Ljava/io/File;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lorg/telegram/messenger/video/MP4Builder;->fos:Ljava/io/FileOutputStream;

    .line 71
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/video/MP4Builder;->fc:Ljava/nio/channels/FileChannel;

    .line 73
    invoke-virtual {p0, p3}, Lorg/telegram/messenger/video/MP4Builder;->createFileTypeBox(Z)Lcom/coremedia/iso/boxes/FileTypeBox;

    move-result-object p1

    .line 74
    iget-object p3, p0, Lorg/telegram/messenger/video/MP4Builder;->fc:Ljava/nio/channels/FileChannel;

    invoke-virtual {p1, p3}, Lcom/googlecode/mp4parser/AbstractBox;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 75
    iget-wide v0, p0, Lorg/telegram/messenger/video/MP4Builder;->dataOffset:J

    invoke-virtual {p1}, Lcom/googlecode/mp4parser/AbstractBox;->getSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/messenger/video/MP4Builder;->dataOffset:J

    .line 76
    iget-wide v2, p0, Lorg/telegram/messenger/video/MP4Builder;->wroteSinceLastMdat:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/telegram/messenger/video/MP4Builder;->wroteSinceLastMdat:J

    .line 77
    iput-boolean p2, p0, Lorg/telegram/messenger/video/MP4Builder;->splitMdat:Z

    .line 79
    new-instance p1, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;-><init>(Lorg/telegram/messenger/video/MP4Builder$1;)V

    iput-object p1, p0, Lorg/telegram/messenger/video/MP4Builder;->mdat:Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;

    const/4 p1, 0x4

    .line 81
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/video/MP4Builder;->sizeBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method protected createMovieBox(Lorg/telegram/messenger/video/Mp4Movie;)Lcom/coremedia/iso/boxes/MovieBox;
    .locals 12

    .line 307
    new-instance v0, Lcom/coremedia/iso/boxes/MovieBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/MovieBox;-><init>()V

    .line 308
    new-instance v1, Lcom/coremedia/iso/boxes/MovieHeaderBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/MovieHeaderBox;-><init>()V

    .line 310
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setCreationTime(Ljava/util/Date;)V

    .line 311
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setModificationTime(Ljava/util/Date;)V

    .line 312
    sget-object v2, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_0:Lcom/googlecode/mp4parser/util/Matrix;

    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setMatrix(Lcom/googlecode/mp4parser/util/Matrix;)V

    .line 313
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/video/MP4Builder;->getTimescale(Lorg/telegram/messenger/video/Mp4Movie;)J

    move-result-wide v2

    .line 316
    invoke-virtual {p1}, Lorg/telegram/messenger/video/Mp4Movie;->getTracks()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const-wide/16 v5, 0x0

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/video/Track;

    .line 317
    invoke-virtual {v7}, Lorg/telegram/messenger/video/Track;->prepare()V

    .line 318
    invoke-virtual {v7}, Lorg/telegram/messenger/video/Track;->getDuration()J

    move-result-wide v8

    mul-long/2addr v8, v2

    invoke-virtual {v7}, Lorg/telegram/messenger/video/Track;->getTimeScale()I

    move-result v7

    int-to-long v10, v7

    div-long/2addr v8, v10

    cmp-long v7, v8, v5

    if-lez v7, :cond_0

    move-wide v5, v8

    goto :goto_0

    .line 324
    :cond_1
    invoke-virtual {v1, v5, v6}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setDuration(J)V

    .line 325
    invoke-virtual {v1, v2, v3}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setTimescale(J)V

    .line 326
    invoke-virtual {p1}, Lorg/telegram/messenger/video/Mp4Movie;->getTracks()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setNextTrackId(J)V

    .line 328
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/BasicContainer;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 329
    invoke-virtual {p1}, Lorg/telegram/messenger/video/Mp4Movie;->getTracks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/video/Track;

    .line 330
    invoke-virtual {p0, v2, p1}, Lorg/telegram/messenger/video/MP4Builder;->createTrackBox(Lorg/telegram/messenger/video/Track;Lorg/telegram/messenger/video/Mp4Movie;)Lcom/coremedia/iso/boxes/TrackBox;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/BasicContainer;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method protected createSidx(Lorg/telegram/messenger/video/Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V
    .locals 0

    return-void
.end method

.method protected createStbl(Lorg/telegram/messenger/video/Track;)Lcom/coremedia/iso/boxes/Box;
    .locals 1

    .line 392
    new-instance v0, Lcom/coremedia/iso/boxes/SampleTableBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/SampleTableBox;-><init>()V

    .line 394
    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/video/MP4Builder;->createStsd(Lorg/telegram/messenger/video/Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V

    .line 395
    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/video/MP4Builder;->createStts(Lorg/telegram/messenger/video/Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V

    .line 396
    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/video/MP4Builder;->createCtts(Lorg/telegram/messenger/video/Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V

    .line 397
    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/video/MP4Builder;->createStss(Lorg/telegram/messenger/video/Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V

    .line 398
    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/video/MP4Builder;->createStsc(Lorg/telegram/messenger/video/Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V

    .line 399
    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/video/MP4Builder;->createStsz(Lorg/telegram/messenger/video/Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V

    .line 400
    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/video/MP4Builder;->createStco(Lorg/telegram/messenger/video/Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V

    return-object v0
.end method

.method protected createStco(Lorg/telegram/messenger/video/Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V
    .locals 9

    .line 512
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 514
    invoke-virtual {p1}, Lorg/telegram/messenger/video/Track;->getSamples()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v1, -0x1

    move-wide v3, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/video/Sample;

    .line 515
    invoke-virtual {v5}, Lorg/telegram/messenger/video/Sample;->getOffset()J

    move-result-wide v6

    cmp-long v8, v3, v1

    if-eqz v8, :cond_0

    cmp-long v8, v3, v6

    if-eqz v8, :cond_0

    move-wide v3, v1

    :cond_0
    cmp-long v3, v3, v1

    if-nez v3, :cond_1

    .line 520
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    :cond_1
    invoke-virtual {v5}, Lorg/telegram/messenger/video/Sample;->getSize()J

    move-result-wide v3

    add-long/2addr v3, v6

    goto :goto_0

    .line 524
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [J

    const/4 v1, 0x0

    .line 525
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 526
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 529
    :cond_3
    new-instance v0, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;-><init>()V

    .line 530
    invoke-virtual {v0, p1}, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;->setChunkOffsets([J)V

    .line 531
    invoke-virtual {p2, v0}, Lcom/googlecode/mp4parser/BasicContainer;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    return-void
.end method

.method protected createStsc(Lorg/telegram/messenger/video/Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V
    .locals 16

    .line 460
    new-instance v0, Lcom/coremedia/iso/boxes/SampleToChunkBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/SampleToChunkBox;-><init>()V

    .line 461
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/SampleToChunkBox;->setEntries(Ljava/util/List;)V

    .line 469
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/video/Track;->getSamples()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    move v5, v2

    move v6, v5

    move v7, v3

    :goto_0
    if-ge v5, v1, :cond_4

    .line 471
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/video/Track;->getSamples()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/video/Sample;

    .line 472
    invoke-virtual {v8}, Lorg/telegram/messenger/video/Sample;->getOffset()J

    move-result-wide v9

    .line 473
    invoke-virtual {v8}, Lorg/telegram/messenger/video/Sample;->getSize()J

    move-result-wide v11

    add-long/2addr v9, v11

    add-int/2addr v6, v3

    add-int/lit8 v8, v1, -0x1

    if-eq v5, v8, :cond_1

    .line 480
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/video/Track;->getSamples()Ljava/util/ArrayList;

    move-result-object v8

    add-int/lit8 v11, v5, 0x1

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/video/Sample;

    .line 481
    invoke-virtual {v8}, Lorg/telegram/messenger/video/Sample;->getOffset()J

    move-result-wide v11

    cmp-long v8, v9, v11

    if-eqz v8, :cond_0

    goto :goto_1

    :cond_0
    move v8, v2

    goto :goto_2

    :cond_1
    :goto_1
    move v8, v3

    :goto_2
    if-eqz v8, :cond_3

    if-eq v4, v6, :cond_2

    .line 489
    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/SampleToChunkBox;->getEntries()Ljava/util/List;

    move-result-object v4

    new-instance v15, Lcom/coremedia/iso/boxes/SampleToChunkBox$Entry;

    int-to-long v9, v7

    int-to-long v11, v6

    const-wide/16 v13, 0x1

    move-object v8, v15

    invoke-direct/range {v8 .. v14}, Lcom/coremedia/iso/boxes/SampleToChunkBox$Entry;-><init>(JJJ)V

    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v6

    :cond_2
    add-int/lit8 v7, v7, 0x1

    move v6, v2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    move-object/from16 v4, p2

    .line 496
    invoke-virtual {v4, v0}, Lcom/googlecode/mp4parser/BasicContainer;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    return-void
.end method

.method protected createStsd(Lorg/telegram/messenger/video/Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V
    .locals 0

    .line 406
    invoke-virtual {p1}, Lorg/telegram/messenger/video/Track;->getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/googlecode/mp4parser/BasicContainer;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    return-void
.end method

.method protected createStss(Lorg/telegram/messenger/video/Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V
    .locals 1

    .line 451
    invoke-virtual {p1}, Lorg/telegram/messenger/video/Track;->getSyncSamples()[J

    move-result-object p1

    if-eqz p1, :cond_0

    .line 452
    array-length v0, p1

    if-lez v0, :cond_0

    .line 453
    new-instance v0, Lcom/coremedia/iso/boxes/SyncSampleBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/SyncSampleBox;-><init>()V

    .line 454
    invoke-virtual {v0, p1}, Lcom/coremedia/iso/boxes/SyncSampleBox;->setSampleNumber([J)V

    .line 455
    invoke-virtual {p2, v0}, Lcom/googlecode/mp4parser/BasicContainer;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    :cond_0
    return-void
.end method

.method protected createStsz(Lorg/telegram/messenger/video/Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V
    .locals 2

    .line 500
    new-instance v0, Lcom/coremedia/iso/boxes/SampleSizeBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/SampleSizeBox;-><init>()V

    .line 501
    iget-object v1, p0, Lorg/telegram/messenger/video/MP4Builder;->track2SampleSizes:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [J

    invoke-virtual {v0, p1}, Lcom/coremedia/iso/boxes/SampleSizeBox;->setSampleSizes([J)V

    .line 502
    invoke-virtual {p2, v0}, Lcom/googlecode/mp4parser/BasicContainer;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    return-void
.end method

.method protected createStts(Lorg/telegram/messenger/video/Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V
    .locals 9

    .line 433
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 434
    invoke-virtual {p1}, Lorg/telegram/messenger/video/Track;->getSampleDurations()[J

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 436
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 437
    aget-wide v3, p1, v2

    const-wide/16 v5, 0x1

    if-eqz v1, :cond_0

    .line 438
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getDelta()J

    move-result-wide v7

    cmp-long v7, v7, v3

    if-nez v7, :cond_0

    .line 439
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v3

    add-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->setCount(J)V

    goto :goto_1

    .line 441
    :cond_0
    new-instance v1, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    invoke-direct {v1, v5, v6, v3, v4}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;-><init>(JJ)V

    .line 442
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 445
    :cond_1
    new-instance p1, Lcom/coremedia/iso/boxes/TimeToSampleBox;

    invoke-direct {p1}, Lcom/coremedia/iso/boxes/TimeToSampleBox;-><init>()V

    .line 446
    invoke-virtual {p1, v0}, Lcom/coremedia/iso/boxes/TimeToSampleBox;->setEntries(Ljava/util/List;)V

    .line 447
    invoke-virtual {p2, p1}, Lcom/googlecode/mp4parser/BasicContainer;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    return-void
.end method

.method protected createTrackBox(Lorg/telegram/messenger/video/Track;Lorg/telegram/messenger/video/Mp4Movie;)Lcom/coremedia/iso/boxes/TrackBox;
    .locals 8

    .line 336
    new-instance v0, Lcom/coremedia/iso/boxes/TrackBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/TrackBox;-><init>()V

    .line 337
    new-instance v1, Lcom/coremedia/iso/boxes/TrackHeaderBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/TrackHeaderBox;-><init>()V

    const/4 v2, 0x1

    .line 339
    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setEnabled(Z)V

    .line 340
    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setInMovie(Z)V

    .line 341
    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setInPreview(Z)V

    .line 342
    invoke-virtual {p1}, Lorg/telegram/messenger/video/Track;->isAudio()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 343
    sget-object v3, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_0:Lcom/googlecode/mp4parser/util/Matrix;

    invoke-virtual {v1, v3}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setMatrix(Lcom/googlecode/mp4parser/util/Matrix;)V

    goto :goto_0

    .line 345
    :cond_0
    invoke-virtual {p2}, Lorg/telegram/messenger/video/Mp4Movie;->getMatrix()Lcom/googlecode/mp4parser/util/Matrix;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setMatrix(Lcom/googlecode/mp4parser/util/Matrix;)V

    :goto_0
    const/4 v3, 0x0

    .line 347
    invoke-virtual {v1, v3}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setAlternateGroup(I)V

    .line 348
    invoke-virtual {p1}, Lorg/telegram/messenger/video/Track;->getCreationTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setCreationTime(Ljava/util/Date;)V

    .line 349
    invoke-virtual {p1}, Lorg/telegram/messenger/video/Track;->getDuration()J

    move-result-wide v4

    invoke-virtual {p0, p2}, Lorg/telegram/messenger/video/MP4Builder;->getTimescale(Lorg/telegram/messenger/video/Mp4Movie;)J

    move-result-wide v6

    mul-long/2addr v4, v6

    invoke-virtual {p1}, Lorg/telegram/messenger/video/Track;->getTimeScale()I

    move-result p2

    int-to-long v6, p2

    div-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setDuration(J)V

    .line 350
    invoke-virtual {p1}, Lorg/telegram/messenger/video/Track;->getHeight()I

    move-result p2

    int-to-double v4, p2

    invoke-virtual {v1, v4, v5}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setHeight(D)V

    .line 351
    invoke-virtual {p1}, Lorg/telegram/messenger/video/Track;->getWidth()I

    move-result p2

    int-to-double v4, p2

    invoke-virtual {v1, v4, v5}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setWidth(D)V

    .line 352
    invoke-virtual {v1, v3}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setLayer(I)V

    .line 353
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, p2}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setModificationTime(Ljava/util/Date;)V

    .line 354
    invoke-virtual {p1}, Lorg/telegram/messenger/video/Track;->getTrackId()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setTrackId(J)V

    .line 355
    invoke-virtual {p1}, Lorg/telegram/messenger/video/Track;->getVolume()F

    move-result p2

    invoke-virtual {v1, p2}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setVolume(F)V

    .line 357
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/BasicContainer;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 359
    new-instance p2, Lcom/coremedia/iso/boxes/MediaBox;

    invoke-direct {p2}, Lcom/coremedia/iso/boxes/MediaBox;-><init>()V

    .line 360
    invoke-virtual {v0, p2}, Lcom/googlecode/mp4parser/BasicContainer;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 361
    new-instance v1, Lcom/coremedia/iso/boxes/MediaHeaderBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/MediaHeaderBox;-><init>()V

    .line 362
    invoke-virtual {p1}, Lorg/telegram/messenger/video/Track;->getCreationTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->setCreationTime(Ljava/util/Date;)V

    .line 363
    invoke-virtual {p1}, Lorg/telegram/messenger/video/Track;->getDuration()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->setDuration(J)V

    .line 364
    invoke-virtual {p1}, Lorg/telegram/messenger/video/Track;->getTimeScale()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->setTimescale(J)V

    const-string v3, "eng"

    .line 365
    invoke-virtual {v1, v3}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->setLanguage(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p2, v1}, Lcom/googlecode/mp4parser/BasicContainer;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 367
    new-instance v1, Lcom/coremedia/iso/boxes/HandlerBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/HandlerBox;-><init>()V

    .line 368
    invoke-virtual {p1}, Lorg/telegram/messenger/video/Track;->isAudio()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "SoundHandle"

    goto :goto_1

    :cond_1
    const-string v3, "VideoHandle"

    :goto_1
    invoke-virtual {v1, v3}, Lcom/coremedia/iso/boxes/HandlerBox;->setName(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p1}, Lorg/telegram/messenger/video/Track;->getHandler()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/coremedia/iso/boxes/HandlerBox;->setHandlerType(Ljava/lang/String;)V

    .line 371
    invoke-virtual {p2, v1}, Lcom/googlecode/mp4parser/BasicContainer;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 373
    new-instance v1, Lcom/coremedia/iso/boxes/MediaInformationBox;

    invoke-direct {v1}, Lcom/coremedia/iso/boxes/MediaInformationBox;-><init>()V

    .line 374
    invoke-virtual {p1}, Lorg/telegram/messenger/video/Track;->getMediaHeaderBox()Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/googlecode/mp4parser/BasicContainer;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 376
    new-instance v3, Lcom/coremedia/iso/boxes/DataInformationBox;

    invoke-direct {v3}, Lcom/coremedia/iso/boxes/DataInformationBox;-><init>()V

    .line 377
    new-instance v4, Lcom/coremedia/iso/boxes/DataReferenceBox;

    invoke-direct {v4}, Lcom/coremedia/iso/boxes/DataReferenceBox;-><init>()V

    .line 378
    invoke-virtual {v3, v4}, Lcom/googlecode/mp4parser/BasicContainer;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 379
    new-instance v5, Lcom/coremedia/iso/boxes/DataEntryUrlBox;

    invoke-direct {v5}, Lcom/coremedia/iso/boxes/DataEntryUrlBox;-><init>()V

    .line 380
    invoke-virtual {v5, v2}, Lcom/googlecode/mp4parser/AbstractFullBox;->setFlags(I)V

    .line 381
    invoke-virtual {v4, v5}, Lcom/googlecode/mp4parser/BasicContainer;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 382
    invoke-virtual {v1, v3}, Lcom/googlecode/mp4parser/BasicContainer;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 384
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/video/MP4Builder;->createStbl(Lorg/telegram/messenger/video/Track;)Lcom/coremedia/iso/boxes/Box;

    move-result-object p1

    .line 385
    invoke-virtual {v1, p1}, Lcom/googlecode/mp4parser/BasicContainer;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 386
    invoke-virtual {p2, v1}, Lcom/googlecode/mp4parser/BasicContainer;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    return-object v0
.end method

.method public finishMovie()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lorg/telegram/messenger/video/MP4Builder;->mdat:Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;

    invoke-virtual {v0}, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;->getContentSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 187
    invoke-direct {p0}, Lorg/telegram/messenger/video/MP4Builder;->flushCurrentMdat()V

    .line 190
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/video/MP4Builder;->currentMp4Movie:Lorg/telegram/messenger/video/Mp4Movie;

    invoke-virtual {v0}, Lorg/telegram/messenger/video/Mp4Movie;->getTracks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/video/Track;

    .line 191
    invoke-virtual {v1}, Lorg/telegram/messenger/video/Track;->getSamples()Ljava/util/ArrayList;

    move-result-object v2

    .line 192
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v4, v3, [J

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_1

    .line 194
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/video/Sample;

    invoke-virtual {v6}, Lorg/telegram/messenger/video/Sample;->getSize()J

    move-result-wide v6

    aput-wide v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 196
    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/video/MP4Builder;->track2SampleSizes:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 199
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/video/MP4Builder;->currentMp4Movie:Lorg/telegram/messenger/video/Mp4Movie;

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/video/MP4Builder;->createMovieBox(Lorg/telegram/messenger/video/Mp4Movie;)Lcom/coremedia/iso/boxes/MovieBox;

    move-result-object v0

    .line 200
    iget-object v1, p0, Lorg/telegram/messenger/video/MP4Builder;->fc:Ljava/nio/channels/FileChannel;

    invoke-interface {v0, v1}, Lcom/coremedia/iso/boxes/Box;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 201
    iget-object v0, p0, Lorg/telegram/messenger/video/MP4Builder;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 202
    iget-boolean v0, p0, Lorg/telegram/messenger/video/MP4Builder;->allowSyncFiles:Z

    if-eqz v0, :cond_3

    .line 203
    iget-object v0, p0, Lorg/telegram/messenger/video/MP4Builder;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    .line 206
    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/video/MP4Builder;->fc:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 207
    iget-object v0, p0, Lorg/telegram/messenger/video/MP4Builder;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method

.method public getLastFrameTimestamp(I)J
    .locals 2

    .line 178
    iget-object v0, p0, Lorg/telegram/messenger/video/MP4Builder;->currentMp4Movie:Lorg/telegram/messenger/video/Mp4Movie;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/video/Mp4Movie;->getLastFrameTimestamp(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimescale(Lorg/telegram/messenger/video/Mp4Movie;)J
    .locals 4

    .line 297
    invoke-virtual {p1}, Lorg/telegram/messenger/video/Mp4Movie;->getTracks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    invoke-virtual {p1}, Lorg/telegram/messenger/video/Mp4Movie;->getTracks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/video/Track;

    invoke-virtual {v0}, Lorg/telegram/messenger/video/Track;->getTimeScale()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 300
    :goto_0
    invoke-virtual {p1}, Lorg/telegram/messenger/video/Mp4Movie;->getTracks()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/video/Track;

    .line 301
    invoke-virtual {v2}, Lorg/telegram/messenger/video/Track;->getTimeScale()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3, v0, v1}, Lorg/telegram/messenger/video/MP4Builder;->gcd(JJ)J

    move-result-wide v0

    goto :goto_1

    :cond_1
    return-wide v0
.end method

.method public setAllowSyncFiles(Z)V
    .locals 0

    .line 220
    iput-boolean p1, p0, Lorg/telegram/messenger/video/MP4Builder;->allowSyncFiles:Z

    return-void
.end method

.method public writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 100
    iget-boolean v0, p0, Lorg/telegram/messenger/video/MP4Builder;->writeNewMdat:Z

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lorg/telegram/messenger/video/MP4Builder;->mdat:Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;->setContentSize(J)V

    .line 102
    iget-object v0, p0, Lorg/telegram/messenger/video/MP4Builder;->mdat:Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;

    iget-object v4, p0, Lorg/telegram/messenger/video/MP4Builder;->fc:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 103
    iget-object v0, p0, Lorg/telegram/messenger/video/MP4Builder;->mdat:Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;

    iget-wide v4, p0, Lorg/telegram/messenger/video/MP4Builder;->dataOffset:J

    invoke-virtual {v0, v4, v5}, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;->setDataOffset(J)V

    .line 104
    iget-wide v4, p0, Lorg/telegram/messenger/video/MP4Builder;->dataOffset:J

    const-wide/16 v6, 0x10

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/telegram/messenger/video/MP4Builder;->dataOffset:J

    .line 105
    iget-wide v4, p0, Lorg/telegram/messenger/video/MP4Builder;->wroteSinceLastMdat:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/telegram/messenger/video/MP4Builder;->wroteSinceLastMdat:J

    .line 106
    iput-boolean v3, p0, Lorg/telegram/messenger/video/MP4Builder;->writeNewMdat:Z

    .line 137
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/video/MP4Builder;->mdat:Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;

    invoke-virtual {v0}, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;->getContentSize()J

    move-result-wide v4

    iget v6, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;->setContentSize(J)V

    .line 138
    iget-wide v4, p0, Lorg/telegram/messenger/video/MP4Builder;->wroteSinceLastMdat:J

    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/telegram/messenger/video/MP4Builder;->wroteSinceLastMdat:J

    const-wide/32 v6, 0x8000

    cmp-long v0, v4, v6

    const/4 v4, 0x1

    if-ltz v0, :cond_2

    .line 142
    iget-boolean v0, p0, Lorg/telegram/messenger/video/MP4Builder;->splitMdat:Z

    if-eqz v0, :cond_1

    .line 143
    invoke-direct {p0}, Lorg/telegram/messenger/video/MP4Builder;->flushCurrentMdat()V

    .line 144
    iput-boolean v4, p0, Lorg/telegram/messenger/video/MP4Builder;->writeNewMdat:Z

    .line 147
    :cond_1
    iput-wide v1, p0, Lorg/telegram/messenger/video/MP4Builder;->wroteSinceLastMdat:J

    goto :goto_0

    :cond_2
    move v4, v3

    .line 150
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/video/MP4Builder;->currentMp4Movie:Lorg/telegram/messenger/video/Mp4Movie;

    iget-wide v5, p0, Lorg/telegram/messenger/video/MP4Builder;->dataOffset:J

    invoke-virtual {v0, p1, v5, v6, p3}, Lorg/telegram/messenger/video/Mp4Movie;->addSample(IJLandroid/media/MediaCodec$BufferInfo;)V

    if-eqz p4, :cond_3

    .line 153
    iget-object p1, p0, Lorg/telegram/messenger/video/MP4Builder;->sizeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 154
    iget-object p1, p0, Lorg/telegram/messenger/video/MP4Builder;->sizeBuffer:Ljava/nio/ByteBuffer;

    iget p4, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/lit8 p4, p4, -0x4

    invoke-virtual {p1, p4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 155
    iget-object p1, p0, Lorg/telegram/messenger/video/MP4Builder;->sizeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 156
    iget-object p1, p0, Lorg/telegram/messenger/video/MP4Builder;->fc:Ljava/nio/channels/FileChannel;

    iget-object p4, p0, Lorg/telegram/messenger/video/MP4Builder;->sizeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 158
    iget p1, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1

    .line 160
    :cond_3
    iget p1, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 162
    :goto_1
    iget p1, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget p4, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr p1, p4

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 163
    iget-object p1, p0, Lorg/telegram/messenger/video/MP4Builder;->fc:Ljava/nio/channels/FileChannel;

    invoke-virtual {p1, p2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 165
    iget-wide p1, p0, Lorg/telegram/messenger/video/MP4Builder;->dataOffset:J

    iget p3, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    int-to-long p3, p3

    add-long/2addr p1, p3

    iput-wide p1, p0, Lorg/telegram/messenger/video/MP4Builder;->dataOffset:J

    if-eqz v4, :cond_5

    .line 168
    iget-object p1, p0, Lorg/telegram/messenger/video/MP4Builder;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    .line 169
    iget-boolean p1, p0, Lorg/telegram/messenger/video/MP4Builder;->allowSyncFiles:Z

    if-eqz p1, :cond_4

    .line 170
    iget-object p1, p0, Lorg/telegram/messenger/video/MP4Builder;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->sync()V

    .line 172
    :cond_4
    iget-object p1, p0, Lorg/telegram/messenger/video/MP4Builder;->fc:Ljava/nio/channels/FileChannel;

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide p1

    return-wide p1

    :cond_5
    return-wide v1
.end method
