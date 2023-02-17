.class public Lorg/telegram/messenger/video/Track;
.super Ljava/lang/Object;
.source "Track.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/video/Track$SamplePresentationTime;
    }
.end annotation


# static fields
.field private static samplingFrequencyIndexMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private creationTime:Ljava/util/Date;

.field private duration:J

.field private first:Z

.field private handler:Ljava/lang/String;

.field private headerBox:Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;

.field private height:I

.field private isAudio:Z

.field private sampleCompositions:[I

.field private sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

.field private sampleDurations:[J

.field private samplePresentationTimes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/video/Track$SamplePresentationTime;",
            ">;"
        }
    .end annotation
.end field

.field private samples:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/video/Sample;",
            ">;"
        }
    .end annotation
.end field

.field private syncSamples:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private timeScale:I

.field private trackId:J

.field private volume:F

.field private width:I


# direct methods
.method public static synthetic $r8$lambda$8mSIxxOe3niqfdOUWm68l4l5AUI(Lorg/telegram/messenger/video/Track$SamplePresentationTime;Lorg/telegram/messenger/video/Track$SamplePresentationTime;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/messenger/video/Track;->lambda$prepare$0(Lorg/telegram/messenger/video/Track$SamplePresentationTime;Lorg/telegram/messenger/video/Track$SamplePresentationTime;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/messenger/video/Track;->samplingFrequencyIndexMap:Ljava/util/Map;

    const v1, 0x17700

    .line 70
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lorg/telegram/messenger/video/Track;->samplingFrequencyIndexMap:Ljava/util/Map;

    const v1, 0x15888

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lorg/telegram/messenger/video/Track;->samplingFrequencyIndexMap:Ljava/util/Map;

    const v1, 0xfa00

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lorg/telegram/messenger/video/Track;->samplingFrequencyIndexMap:Ljava/util/Map;

    const v1, 0xbb80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lorg/telegram/messenger/video/Track;->samplingFrequencyIndexMap:Ljava/util/Map;

    const v1, 0xac44

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lorg/telegram/messenger/video/Track;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v1, 0x7d00

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lorg/telegram/messenger/video/Track;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v1, 0x5dc0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lorg/telegram/messenger/video/Track;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v1, 0x5622

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lorg/telegram/messenger/video/Track;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v1, 0x3e80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lorg/telegram/messenger/video/Track;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v1, 0x2ee0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lorg/telegram/messenger/video/Track;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v1, 0x2b11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lorg/telegram/messenger/video/Track;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v1, 0x1f40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ILandroid/media/MediaFormat;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    .line 84
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lorg/telegram/messenger/video/Track;->samples:Ljava/util/ArrayList;

    const-wide/16 v3, 0x0

    .line 52
    iput-wide v3, v0, Lorg/telegram/messenger/video/Track;->duration:J

    const/4 v3, 0x0

    .line 57
    iput-object v3, v0, Lorg/telegram/messenger/video/Track;->syncSamples:Ljava/util/LinkedList;

    .line 59
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    iput-object v3, v0, Lorg/telegram/messenger/video/Track;->creationTime:Ljava/util/Date;

    const/4 v3, 0x0

    .line 62
    iput v3, v0, Lorg/telegram/messenger/video/Track;->volume:F

    .line 64
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lorg/telegram/messenger/video/Track;->samplePresentationTimes:Ljava/util/ArrayList;

    const/4 v3, 0x1

    .line 67
    iput-boolean v3, v0, Lorg/telegram/messenger/video/Track;->first:Z

    move/from16 v4, p1

    int-to-long v4, v4

    .line 85
    iput-wide v4, v0, Lorg/telegram/messenger/video/Track;->trackId:J

    .line 86
    iput-boolean v2, v0, Lorg/telegram/messenger/video/Track;->isAudio:Z

    const/4 v4, 0x5

    const/16 v6, 0x40

    const-string v7, "mime"

    const/16 v8, 0x10

    const/4 v9, 0x2

    if-nez v2, :cond_1c

    const-string/jumbo v2, "width"

    .line 88
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lorg/telegram/messenger/video/Track;->width:I

    const-string v2, "height"

    .line 89
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lorg/telegram/messenger/video/Track;->height:I

    const v2, 0x15f90

    .line 90
    iput v2, v0, Lorg/telegram/messenger/video/Track;->timeScale:I

    .line 91
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, v0, Lorg/telegram/messenger/video/Track;->syncSamples:Ljava/util/LinkedList;

    const-string/jumbo v2, "vide"

    .line 92
    iput-object v2, v0, Lorg/telegram/messenger/video/Track;->handler:Ljava/lang/String;

    .line 93
    new-instance v2, Lcom/coremedia/iso/boxes/VideoMediaHeaderBox;

    invoke-direct {v2}, Lcom/coremedia/iso/boxes/VideoMediaHeaderBox;-><init>()V

    iput-object v2, v0, Lorg/telegram/messenger/video/Track;->headerBox:Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;

    .line 94
    new-instance v2, Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-direct {v2}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;-><init>()V

    iput-object v2, v0, Lorg/telegram/messenger/video/Track;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    .line 95
    invoke-virtual {v1, v7}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v7, "video/avc"

    .line 96
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/16 v10, 0x18

    const-wide/high16 v11, 0x4052000000000000L    # 72.0

    if-eqz v7, :cond_1b

    .line 97
    new-instance v2, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;

    const-string v7, "avc1"

    invoke-direct {v2, v7}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v2, v3}, Lcom/coremedia/iso/boxes/sampleentry/AbstractSampleEntry;->setDataReferenceIndex(I)V

    .line 99
    invoke-virtual {v2, v10}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setDepth(I)V

    .line 100
    invoke-virtual {v2, v3}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setFrameCount(I)V

    .line 101
    invoke-virtual {v2, v11, v12}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setHorizresolution(D)V

    .line 102
    invoke-virtual {v2, v11, v12}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setVertresolution(D)V

    .line 103
    iget v7, v0, Lorg/telegram/messenger/video/Track;->width:I

    invoke-virtual {v2, v7}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setWidth(I)V

    .line 104
    iget v7, v0, Lorg/telegram/messenger/video/Track;->height:I

    invoke-virtual {v2, v7}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setHeight(I)V

    .line 106
    new-instance v7, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;

    invoke-direct {v7}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;-><init>()V

    const-string v10, "csd-0"

    .line 108
    invoke-virtual {v1, v10}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v11

    const/4 v12, 0x4

    if-eqz v11, :cond_0

    .line 109
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 110
    invoke-virtual {v1, v10}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 111
    invoke-virtual {v10, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 112
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v13

    new-array v13, v13, [B

    .line 113
    invoke-virtual {v10, v13}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 114
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const-string v13, "csd-1"

    .line 117
    invoke-virtual {v1, v13}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 118
    invoke-virtual {v13, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 119
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v14

    new-array v14, v14, [B

    .line 120
    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 121
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-virtual {v7, v11}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setSequenceParameterSets(Ljava/util/List;)V

    .line 123
    invoke-virtual {v7, v10}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setPictureParameterSets(Ljava/util/List;)V

    :cond_0
    const-string v10, "level"

    .line 126
    invoke-virtual {v1, v10}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v11

    const/16 v13, 0x8

    const/4 v14, 0x3

    const/16 v15, 0xd

    const/16 v5, 0x20

    if-eqz v11, :cond_11

    .line 127
    invoke-virtual {v1, v10}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v10

    if-ne v10, v3, :cond_1

    .line 129
    invoke-virtual {v7, v3}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    goto/16 :goto_0

    :cond_1
    if-ne v10, v5, :cond_2

    .line 131
    invoke-virtual {v7, v9}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    goto/16 :goto_0

    :cond_2
    if-ne v10, v12, :cond_3

    const/16 v4, 0xb

    .line 133
    invoke-virtual {v7, v4}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    goto/16 :goto_0

    :cond_3
    if-ne v10, v13, :cond_4

    const/16 v4, 0xc

    .line 135
    invoke-virtual {v7, v4}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    goto/16 :goto_0

    :cond_4
    if-ne v10, v8, :cond_5

    .line 137
    invoke-virtual {v7, v15}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    goto/16 :goto_0

    :cond_5
    if-ne v10, v6, :cond_6

    const/16 v4, 0x15

    .line 139
    invoke-virtual {v7, v4}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    goto/16 :goto_0

    :cond_6
    const/16 v11, 0x80

    if-ne v10, v11, :cond_7

    const/16 v4, 0x16

    .line 141
    invoke-virtual {v7, v4}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    goto :goto_0

    :cond_7
    const/16 v11, 0x100

    if-ne v10, v11, :cond_8

    .line 143
    invoke-virtual {v7, v14}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    goto :goto_0

    :cond_8
    const/16 v11, 0x200

    if-ne v10, v11, :cond_9

    const/16 v4, 0x1f

    .line 145
    invoke-virtual {v7, v4}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    goto :goto_0

    :cond_9
    const/16 v11, 0x400

    if-ne v10, v11, :cond_a

    .line 147
    invoke-virtual {v7, v5}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    goto :goto_0

    :cond_a
    const/16 v11, 0x800

    if-ne v10, v11, :cond_b

    .line 149
    invoke-virtual {v7, v12}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    goto :goto_0

    :cond_b
    const/16 v11, 0x1000

    if-ne v10, v11, :cond_c

    const/16 v4, 0x29

    .line 151
    invoke-virtual {v7, v4}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    goto :goto_0

    :cond_c
    const/16 v11, 0x2000

    if-ne v10, v11, :cond_d

    const/16 v4, 0x2a

    .line 153
    invoke-virtual {v7, v4}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    goto :goto_0

    :cond_d
    const/16 v11, 0x4000

    if-ne v10, v11, :cond_e

    .line 155
    invoke-virtual {v7, v4}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    goto :goto_0

    :cond_e
    const v4, 0x8000

    if-ne v10, v4, :cond_f

    const/16 v4, 0x33

    .line 157
    invoke-virtual {v7, v4}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    goto :goto_0

    :cond_f
    const/high16 v4, 0x10000

    if-ne v10, v4, :cond_10

    const/16 v4, 0x34

    .line 159
    invoke-virtual {v7, v4}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    goto :goto_0

    :cond_10
    if-ne v10, v9, :cond_12

    const/16 v4, 0x1b

    .line 161
    invoke-virtual {v7, v4}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    goto :goto_0

    .line 164
    :cond_11
    invoke-virtual {v7, v15}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    :cond_12
    :goto_0
    const-string v4, "profile"

    .line 166
    invoke-virtual {v1, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v10

    const/16 v11, 0x64

    if-eqz v10, :cond_19

    .line 167
    invoke-virtual {v1, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_13

    const/16 v1, 0x42

    .line 169
    invoke-virtual {v7, v1}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcProfileIndication(I)V

    goto :goto_1

    :cond_13
    if-ne v1, v9, :cond_14

    const/16 v1, 0x4d

    .line 171
    invoke-virtual {v7, v1}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcProfileIndication(I)V

    goto :goto_1

    :cond_14
    if-ne v1, v12, :cond_15

    const/16 v1, 0x58

    .line 173
    invoke-virtual {v7, v1}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcProfileIndication(I)V

    goto :goto_1

    :cond_15
    if-ne v1, v13, :cond_16

    .line 175
    invoke-virtual {v7, v11}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcProfileIndication(I)V

    goto :goto_1

    :cond_16
    if-ne v1, v8, :cond_17

    const/16 v1, 0x6e

    .line 177
    invoke-virtual {v7, v1}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcProfileIndication(I)V

    goto :goto_1

    :cond_17
    if-ne v1, v5, :cond_18

    const/16 v1, 0x7a

    .line 179
    invoke-virtual {v7, v1}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcProfileIndication(I)V

    goto :goto_1

    :cond_18
    if-ne v1, v6, :cond_1a

    const/16 v1, 0xf4

    .line 181
    invoke-virtual {v7, v1}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcProfileIndication(I)V

    goto :goto_1

    .line 184
    :cond_19
    invoke-virtual {v7, v11}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcProfileIndication(I)V

    :cond_1a
    :goto_1
    const/4 v1, -0x1

    .line 186
    invoke-virtual {v7, v1}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setBitDepthLumaMinus8(I)V

    .line 187
    invoke-virtual {v7, v1}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setBitDepthChromaMinus8(I)V

    .line 188
    invoke-virtual {v7, v1}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setChromaFormat(I)V

    .line 189
    invoke-virtual {v7, v3}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setConfigurationVersion(I)V

    .line 190
    invoke-virtual {v7, v14}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setLengthSizeMinusOne(I)V

    const/4 v1, 0x0

    .line 191
    invoke-virtual {v7, v1}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setProfileCompatibility(I)V

    .line 193
    invoke-virtual {v2, v7}, Lcom/googlecode/mp4parser/BasicContainer;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 194
    iget-object v1, v0, Lorg/telegram/messenger/video/Track;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/BasicContainer;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    goto/16 :goto_5

    :cond_1b
    const-string/jumbo v1, "video/mp4v"

    .line 195
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 196
    new-instance v1, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;

    const-string v2, "mp4v"

    invoke-direct {v1, v2}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;-><init>(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v1, v3}, Lcom/coremedia/iso/boxes/sampleentry/AbstractSampleEntry;->setDataReferenceIndex(I)V

    .line 198
    invoke-virtual {v1, v10}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setDepth(I)V

    .line 199
    invoke-virtual {v1, v3}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setFrameCount(I)V

    .line 200
    invoke-virtual {v1, v11, v12}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setHorizresolution(D)V

    .line 201
    invoke-virtual {v1, v11, v12}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setVertresolution(D)V

    .line 202
    iget v2, v0, Lorg/telegram/messenger/video/Track;->width:I

    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setWidth(I)V

    .line 203
    iget v2, v0, Lorg/telegram/messenger/video/Track;->height:I

    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setHeight(I)V

    .line 205
    iget-object v2, v0, Lorg/telegram/messenger/video/Track;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-virtual {v2, v1}, Lcom/googlecode/mp4parser/BasicContainer;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    goto/16 :goto_5

    :cond_1c
    const/high16 v2, 0x3f800000    # 1.0f

    .line 208
    iput v2, v0, Lorg/telegram/messenger/video/Track;->volume:F

    const-string/jumbo v2, "sample-rate"

    .line 209
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lorg/telegram/messenger/video/Track;->timeScale:I

    const-string/jumbo v5, "soun"

    .line 210
    iput-object v5, v0, Lorg/telegram/messenger/video/Track;->handler:Ljava/lang/String;

    .line 211
    new-instance v5, Lcom/coremedia/iso/boxes/SoundMediaHeaderBox;

    invoke-direct {v5}, Lcom/coremedia/iso/boxes/SoundMediaHeaderBox;-><init>()V

    iput-object v5, v0, Lorg/telegram/messenger/video/Track;->headerBox:Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;

    .line 212
    new-instance v5, Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-direct {v5}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;-><init>()V

    iput-object v5, v0, Lorg/telegram/messenger/video/Track;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    .line 213
    new-instance v5, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;

    const-string v10, "mp4a"

    invoke-direct {v5, v10}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;-><init>(Ljava/lang/String;)V

    const-string v10, "channel-count"

    .line 214
    invoke-virtual {v1, v10}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v5, v10}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setChannelCount(I)V

    .line 215
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    int-to-long v10, v2

    invoke-virtual {v5, v10, v11}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setSampleRate(J)V

    .line 216
    invoke-virtual {v5, v3}, Lcom/coremedia/iso/boxes/sampleentry/AbstractSampleEntry;->setDataReferenceIndex(I)V

    .line 217
    invoke-virtual {v5, v8}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setSampleSize(I)V

    .line 219
    new-instance v2, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;

    invoke-direct {v2}, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;-><init>()V

    .line 220
    new-instance v3, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;

    invoke-direct {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;-><init>()V

    const/4 v8, 0x0

    .line 221
    invoke-virtual {v3, v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->setEsId(I)V

    .line 223
    new-instance v8, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;

    invoke-direct {v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;-><init>()V

    .line 224
    invoke-virtual {v8, v9}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;->setPredefined(I)V

    .line 225
    invoke-virtual {v3, v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->setSlConfigDescriptor(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;)V

    .line 228
    invoke-virtual {v1, v7}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 229
    invoke-virtual {v1, v7}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_1d
    const-string v7, "audio/mp4-latm"

    .line 234
    :goto_2
    new-instance v8, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;

    invoke-direct {v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;-><init>()V

    const-string v10, "audio/mpeg"

    .line 235
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    const/16 v6, 0x69

    .line 236
    invoke-virtual {v8, v6}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->setObjectTypeIndication(I)V

    goto :goto_3

    .line 238
    :cond_1e
    invoke-virtual {v8, v6}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->setObjectTypeIndication(I)V

    .line 240
    :goto_3
    invoke-virtual {v8, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->setStreamType(I)V

    const/16 v4, 0x600

    .line 241
    invoke-virtual {v8, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->setBufferSizeDB(I)V

    const-string v4, "max-bitrate"

    .line 242
    invoke-virtual {v1, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 243
    invoke-virtual {v1, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {v8, v6, v7}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->setMaxBitRate(J)V

    goto :goto_4

    :cond_1f
    const-wide/32 v6, 0x17700

    .line 245
    invoke-virtual {v8, v6, v7}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->setMaxBitRate(J)V

    .line 247
    :goto_4
    iget v1, v0, Lorg/telegram/messenger/video/Track;->timeScale:I

    int-to-long v6, v1

    invoke-virtual {v8, v6, v7}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->setAvgBitRate(J)V

    .line 249
    new-instance v1, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;

    invoke-direct {v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;-><init>()V

    .line 250
    invoke-virtual {v1, v9}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->setAudioObjectType(I)V

    .line 251
    sget-object v4, Lorg/telegram/messenger/video/Track;->samplingFrequencyIndexMap:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSampleRate()J

    move-result-wide v6

    long-to-int v7, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->setSamplingFrequencyIndex(I)V

    .line 252
    invoke-virtual {v5}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getChannelCount()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->setChannelConfiguration(I)V

    .line 253
    invoke-virtual {v8, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->setAudioSpecificInfo(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;)V

    .line 255
    invoke-virtual {v3, v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->setDecoderConfigDescriptor(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;)V

    .line 257
    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->serialize()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 258
    invoke-virtual {v2, v3}, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;->setEsDescriptor(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;)V

    .line 259
    invoke-virtual {v2, v1}, Lcom/googlecode/mp4parser/boxes/mp4/AbstractDescriptorBox;->setData(Ljava/nio/ByteBuffer;)V

    .line 260
    invoke-virtual {v5, v2}, Lcom/googlecode/mp4parser/BasicContainer;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 261
    iget-object v1, v0, Lorg/telegram/messenger/video/Track;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-virtual {v1, v5}, Lcom/googlecode/mp4parser/BasicContainer;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    :cond_20
    :goto_5
    return-void
.end method

.method private static synthetic lambda$prepare$0(Lorg/telegram/messenger/video/Track$SamplePresentationTime;Lorg/telegram/messenger/video/Track$SamplePresentationTime;)I
    .locals 5

    .line 281
    invoke-static {p0}, Lorg/telegram/messenger/video/Track$SamplePresentationTime;->access$000(Lorg/telegram/messenger/video/Track$SamplePresentationTime;)J

    move-result-wide v0

    invoke-static {p1}, Lorg/telegram/messenger/video/Track$SamplePresentationTime;->access$000(Lorg/telegram/messenger/video/Track$SamplePresentationTime;)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 p0, 0x1

    return p0

    .line 283
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/video/Track$SamplePresentationTime;->access$000(Lorg/telegram/messenger/video/Track$SamplePresentationTime;)J

    move-result-wide v0

    invoke-static {p1}, Lorg/telegram/messenger/video/Track$SamplePresentationTime;->access$000(Lorg/telegram/messenger/video/Track$SamplePresentationTime;)J

    move-result-wide p0

    cmp-long v2, v0, p0

    if-gez v2, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public addSample(JLandroid/media/MediaCodec$BufferInfo;)V
    .locals 5

    .line 270
    iget-boolean v0, p0, Lorg/telegram/messenger/video/Track;->isAudio:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 271
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/video/Track;->samples:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/messenger/video/Sample;

    iget v3, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    int-to-long v3, v3

    invoke-direct {v2, p1, p2, v3, v4}, Lorg/telegram/messenger/video/Sample;-><init>(JJ)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    iget-object p1, p0, Lorg/telegram/messenger/video/Track;->syncSamples:Ljava/util/LinkedList;

    if-eqz p1, :cond_1

    if-eqz v1, :cond_1

    .line 273
    iget-object p2, p0, Lorg/telegram/messenger/video/Track;->samples:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 275
    :cond_1
    iget-object p1, p0, Lorg/telegram/messenger/video/Track;->samplePresentationTimes:Ljava/util/ArrayList;

    new-instance p2, Lorg/telegram/messenger/video/Track$SamplePresentationTime;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-wide v1, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget p3, p0, Lorg/telegram/messenger/video/Track;->timeScale:I

    int-to-long v3, p3

    mul-long v1, v1, v3

    const-wide/32 v3, 0x7a120

    add-long/2addr v1, v3

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    invoke-direct {p2, v0, v1, v2}, Lorg/telegram/messenger/video/Track$SamplePresentationTime;-><init>(IJ)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCreationTime()Ljava/util/Date;
    .locals 1

    .line 371
    iget-object v0, p0, Lorg/telegram/messenger/video/Track;->creationTime:Ljava/util/Date;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 336
    iget-wide v0, p0, Lorg/telegram/messenger/video/Track;->duration:J

    return-wide v0
.end method

.method public getHandler()Ljava/lang/String;
    .locals 1

    .line 340
    iget-object v0, p0, Lorg/telegram/messenger/video/Track;->handler:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 379
    iget v0, p0, Lorg/telegram/messenger/video/Track;->height:I

    return v0
.end method

.method public getLastFrameTimestamp()J
    .locals 5

    .line 332
    iget-wide v0, p0, Lorg/telegram/messenger/video/Track;->duration:J

    iget-object v2, p0, Lorg/telegram/messenger/video/Track;->sampleDurations:[J

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-wide v3, v2, v3

    sub-long/2addr v0, v3

    const-wide/32 v2, 0xf4240

    mul-long v0, v0, v2

    const-wide/32 v2, 0x7a120

    sub-long/2addr v0, v2

    iget v2, p0, Lorg/telegram/messenger/video/Track;->timeScale:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getMediaHeaderBox()Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;
    .locals 1

    .line 344
    iget-object v0, p0, Lorg/telegram/messenger/video/Track;->headerBox:Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;

    return-object v0
.end method

.method public getSampleCompositions()[I
    .locals 1

    .line 348
    iget-object v0, p0, Lorg/telegram/messenger/video/Track;->sampleCompositions:[I

    return-object v0
.end method

.method public getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    .locals 1

    .line 352
    iget-object v0, p0, Lorg/telegram/messenger/video/Track;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    return-object v0
.end method

.method public getSampleDurations()[J
    .locals 1

    .line 387
    iget-object v0, p0, Lorg/telegram/messenger/video/Track;->sampleDurations:[J

    return-object v0
.end method

.method public getSamples()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/video/Sample;",
            ">;"
        }
    .end annotation

    .line 328
    iget-object v0, p0, Lorg/telegram/messenger/video/Track;->samples:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSyncSamples()[J
    .locals 4

    .line 356
    iget-object v0, p0, Lorg/telegram/messenger/video/Track;->syncSamples:Ljava/util/LinkedList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 359
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/video/Track;->syncSamples:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    new-array v0, v0, [J

    const/4 v1, 0x0

    .line 360
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/video/Track;->syncSamples:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 361
    iget-object v2, p0, Lorg/telegram/messenger/video/Track;->syncSamples:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTimeScale()I
    .locals 1

    .line 367
    iget v0, p0, Lorg/telegram/messenger/video/Track;->timeScale:I

    return v0
.end method

.method public getTrackId()J
    .locals 2

    .line 266
    iget-wide v0, p0, Lorg/telegram/messenger/video/Track;->trackId:J

    return-wide v0
.end method

.method public getVolume()F
    .locals 1

    .line 383
    iget v0, p0, Lorg/telegram/messenger/video/Track;->volume:F

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 375
    iget v0, p0, Lorg/telegram/messenger/video/Track;->width:I

    return v0
.end method

.method public isAudio()Z
    .locals 1

    .line 391
    iget-boolean v0, p0, Lorg/telegram/messenger/video/Track;->isAudio:Z

    return v0
.end method

.method public prepare()V
    .locals 18

    move-object/from16 v0, p0

    .line 279
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lorg/telegram/messenger/video/Track;->samplePresentationTimes:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 280
    iget-object v2, v0, Lorg/telegram/messenger/video/Track;->samplePresentationTimes:Ljava/util/ArrayList;

    sget-object v3, Lorg/telegram/messenger/video/Track$$ExternalSyntheticLambda0;->INSTANCE:Lorg/telegram/messenger/video/Track$$ExternalSyntheticLambda0;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 289
    iget-object v2, v0, Lorg/telegram/messenger/video/Track;->samplePresentationTimes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [J

    iput-object v2, v0, Lorg/telegram/messenger/video/Track;->sampleDurations:[J

    const-wide/16 v2, 0x0

    const-wide v5, 0x7fffffffffffffffL

    move-wide v8, v2

    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 292
    :goto_0
    iget-object v11, v0, Lorg/telegram/messenger/video/Track;->samplePresentationTimes:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ge v7, v11, :cond_3

    .line 293
    iget-object v11, v0, Lorg/telegram/messenger/video/Track;->samplePresentationTimes:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/messenger/video/Track$SamplePresentationTime;

    .line 294
    invoke-static {v11}, Lorg/telegram/messenger/video/Track$SamplePresentationTime;->access$000(Lorg/telegram/messenger/video/Track$SamplePresentationTime;)J

    move-result-wide v13

    sub-long/2addr v13, v8

    .line 295
    invoke-static {v11}, Lorg/telegram/messenger/video/Track$SamplePresentationTime;->access$000(Lorg/telegram/messenger/video/Track$SamplePresentationTime;)J

    move-result-wide v8

    .line 296
    iget-object v15, v0, Lorg/telegram/messenger/video/Track;->sampleDurations:[J

    invoke-static {v11}, Lorg/telegram/messenger/video/Track$SamplePresentationTime;->access$100(Lorg/telegram/messenger/video/Track$SamplePresentationTime;)I

    move-result v16

    aput-wide v13, v15, v16

    .line 297
    invoke-static {v11}, Lorg/telegram/messenger/video/Track$SamplePresentationTime;->access$100(Lorg/telegram/messenger/video/Track$SamplePresentationTime;)I

    move-result v15

    move-wide/from16 v16, v5

    if-eqz v15, :cond_0

    .line 298
    iget-wide v4, v0, Lorg/telegram/messenger/video/Track;->duration:J

    add-long/2addr v4, v13

    iput-wide v4, v0, Lorg/telegram/messenger/video/Track;->duration:J

    :cond_0
    cmp-long v4, v13, v2

    if-lez v4, :cond_1

    const-wide/32 v4, 0x7fffffff

    cmp-long v6, v13, v4

    if-gez v6, :cond_1

    move-wide/from16 v5, v16

    .line 301
    invoke-static {v5, v6, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-wide v5, v4

    goto :goto_1

    :cond_1
    move-wide/from16 v5, v16

    .line 303
    :goto_1
    invoke-static {v11}, Lorg/telegram/messenger/video/Track$SamplePresentationTime;->access$100(Lorg/telegram/messenger/video/Track$SamplePresentationTime;)I

    move-result v4

    if-eq v4, v7, :cond_2

    const/4 v10, 0x1

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 307
    :cond_3
    iget-object v2, v0, Lorg/telegram/messenger/video/Track;->sampleDurations:[J

    array-length v3, v2

    if-lez v3, :cond_4

    const/4 v3, 0x0

    .line 308
    aput-wide v5, v2, v3

    .line 309
    iget-wide v7, v0, Lorg/telegram/messenger/video/Track;->duration:J

    add-long/2addr v7, v5

    iput-wide v7, v0, Lorg/telegram/messenger/video/Track;->duration:J

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .line 311
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v12, v2, :cond_5

    .line 312
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/video/Track$SamplePresentationTime;

    iget-object v4, v0, Lorg/telegram/messenger/video/Track;->sampleDurations:[J

    aget-wide v5, v4, v12

    add-int/lit8 v4, v12, -0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/video/Track$SamplePresentationTime;

    invoke-static {v4}, Lorg/telegram/messenger/video/Track$SamplePresentationTime;->access$200(Lorg/telegram/messenger/video/Track$SamplePresentationTime;)J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-static {v2, v5, v6}, Lorg/telegram/messenger/video/Track$SamplePresentationTime;->access$202(Lorg/telegram/messenger/video/Track$SamplePresentationTime;J)J

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_5
    if-eqz v10, :cond_6

    .line 315
    iget-object v1, v0, Lorg/telegram/messenger/video/Track;->samplePresentationTimes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, v0, Lorg/telegram/messenger/video/Track;->sampleCompositions:[I

    const/4 v4, 0x0

    .line 316
    :goto_3
    iget-object v1, v0, Lorg/telegram/messenger/video/Track;->samplePresentationTimes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v4, v1, :cond_6

    .line 317
    iget-object v1, v0, Lorg/telegram/messenger/video/Track;->samplePresentationTimes:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/video/Track$SamplePresentationTime;

    .line 318
    iget-object v2, v0, Lorg/telegram/messenger/video/Track;->sampleCompositions:[I

    invoke-static {v1}, Lorg/telegram/messenger/video/Track$SamplePresentationTime;->access$100(Lorg/telegram/messenger/video/Track$SamplePresentationTime;)I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/video/Track$SamplePresentationTime;->access$000(Lorg/telegram/messenger/video/Track$SamplePresentationTime;)J

    move-result-wide v5

    invoke-static {v1}, Lorg/telegram/messenger/video/Track$SamplePresentationTime;->access$200(Lorg/telegram/messenger/video/Track$SamplePresentationTime;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-int v1, v5

    aput v1, v2, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method
