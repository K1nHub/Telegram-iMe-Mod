.class public Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;
.super Ljava/lang/Object;
.source "MediaCodecVideoConvertor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/video/MediaCodecVideoConvertor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConvertVideoParams"
.end annotation


# instance fields
.field avatarStartTime:J

.field bitrate:I

.field blurPath:Ljava/lang/String;

.field cacheFile:Ljava/io/File;

.field callback:Lorg/telegram/messenger/MediaController$VideoConvertorListener;

.field cropState:Lorg/telegram/messenger/MediaController$CropState;

.field duration:J

.field endTime:J

.field framerate:I

.field gradientBottomColor:Ljava/lang/Integer;

.field gradientTopColor:Ljava/lang/Integer;

.field hdrInfo:Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

.field isPhoto:Z

.field isRound:Z

.field isSecret:Z

.field isStory:Z

.field mediaEntities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;",
            ">;"
        }
    .end annotation
.end field

.field muted:Z

.field needCompress:Z

.field originalBitrate:I

.field originalHeight:I

.field originalWidth:I

.field paintPath:Ljava/lang/String;

.field parts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Stories/recorder/StoryEntry$Part;",
            ">;"
        }
    .end annotation
.end field

.field resultHeight:I

.field resultWidth:I

.field rotationValue:I

.field savedFilterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

.field public soundInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/video/MediaCodecVideoConvertor$MixedSoundInfo;",
            ">;"
        }
    .end annotation
.end field

.field startTime:J

.field videoPath:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1347
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->soundInfos:Ljava/util/ArrayList;

    return-void
.end method

.method public static of(Ljava/lang/String;Ljava/io/File;IZIIIIIIIJJJZJLorg/telegram/messenger/MediaController$SavedFilterState;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZLorg/telegram/messenger/MediaController$CropState;ZLorg/telegram/messenger/MediaController$VideoConvertorListener;Ljava/lang/Integer;Ljava/lang/Integer;ZZLorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;Ljava/util/ArrayList;)Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "IZIIIIIIIJJJZJ",
            "Lorg/telegram/messenger/MediaController$SavedFilterState;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;",
            ">;Z",
            "Lorg/telegram/messenger/MediaController$CropState;",
            "Z",
            "Lorg/telegram/messenger/MediaController$VideoConvertorListener;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "ZZ",
            "Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Stories/recorder/StoryEntry$Part;",
            ">;)",
            "Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;"
        }
    .end annotation

    .line 1370
    new-instance v0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;

    invoke-direct {v0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;-><init>()V

    move-object v1, p0

    .line 1371
    iput-object v1, v0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->videoPath:Ljava/lang/String;

    move-object v1, p1

    .line 1372
    iput-object v1, v0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->cacheFile:Ljava/io/File;

    move v1, p2

    .line 1373
    iput v1, v0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->rotationValue:I

    move v1, p3

    .line 1374
    iput-boolean v1, v0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->isSecret:Z

    move v1, p4

    .line 1375
    iput v1, v0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->originalWidth:I

    move v1, p5

    .line 1376
    iput v1, v0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->originalHeight:I

    move v1, p6

    .line 1377
    iput v1, v0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->resultWidth:I

    move v1, p7

    .line 1378
    iput v1, v0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->resultHeight:I

    move v1, p8

    .line 1379
    iput v1, v0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->framerate:I

    move v1, p9

    .line 1380
    iput v1, v0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->bitrate:I

    move v1, p10

    .line 1381
    iput v1, v0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->originalBitrate:I

    move-wide v1, p11

    .line 1382
    iput-wide v1, v0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->startTime:J

    move-wide/from16 v1, p13

    .line 1383
    iput-wide v1, v0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->endTime:J

    move-wide/from16 v1, p15

    .line 1384
    iput-wide v1, v0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->avatarStartTime:J

    move/from16 v1, p17

    .line 1385
    iput-boolean v1, v0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->needCompress:Z

    move-wide/from16 v1, p18

    .line 1386
    iput-wide v1, v0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->duration:J

    move-object/from16 v1, p20

    .line 1387
    iput-object v1, v0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->savedFilterState:Lorg/telegram/messenger/MediaController$SavedFilterState;

    move-object/from16 v1, p21

    .line 1388
    iput-object v1, v0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->paintPath:Ljava/lang/String;

    move-object/from16 v1, p22

    .line 1389
    iput-object v1, v0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->blurPath:Ljava/lang/String;

    move-object/from16 v1, p23

    .line 1390
    iput-object v1, v0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->mediaEntities:Ljava/util/ArrayList;

    move/from16 v1, p24

    .line 1391
    iput-boolean v1, v0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->isPhoto:Z

    move-object/from16 v1, p25

    .line 1392
    iput-object v1, v0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->cropState:Lorg/telegram/messenger/MediaController$CropState;

    move/from16 v1, p26

    .line 1393
    iput-boolean v1, v0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->isRound:Z

    move-object/from16 v1, p27

    .line 1394
    iput-object v1, v0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->callback:Lorg/telegram/messenger/MediaController$VideoConvertorListener;

    move-object/from16 v1, p28

    .line 1395
    iput-object v1, v0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->gradientTopColor:Ljava/lang/Integer;

    move-object/from16 v1, p29

    .line 1396
    iput-object v1, v0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->gradientBottomColor:Ljava/lang/Integer;

    move/from16 v1, p30

    .line 1397
    iput-boolean v1, v0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->muted:Z

    move/from16 v1, p31

    .line 1398
    iput-boolean v1, v0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->isStory:Z

    move-object/from16 v1, p32

    .line 1399
    iput-object v1, v0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->hdrInfo:Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;

    move-object/from16 v1, p33

    .line 1400
    iput-object v1, v0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConvertVideoParams;->parts:Ljava/util/ArrayList;

    return-object v0
.end method
