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

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/messenger/video/Track;->samplingFrequencyIndexMap:Ljava/util/Map;

    const v1, 0x17700

    .line 72
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lorg/telegram/messenger/video/Track;->samplingFrequencyIndexMap:Ljava/util/Map;

    const v1, 0x15888

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lorg/telegram/messenger/video/Track;->samplingFrequencyIndexMap:Ljava/util/Map;

    const v1, 0xfa00

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lorg/telegram/messenger/video/Track;->samplingFrequencyIndexMap:Ljava/util/Map;

    const v1, 0xbb80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lorg/telegram/messenger/video/Track;->samplingFrequencyIndexMap:Ljava/util/Map;

    const v1, 0xac44

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lorg/telegram/messenger/video/Track;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v1, 0x7d00

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lorg/telegram/messenger/video/Track;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v1, 0x5dc0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lorg/telegram/messenger/video/Track;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v1, 0x5622

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lorg/telegram/messenger/video/Track;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v1, 0x3e80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lorg/telegram/messenger/video/Track;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v1, 0x2ee0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lorg/telegram/messenger/video/Track;->samplingFrequencyIndexMap:Ljava/util/Map;

    const/16 v1, 0x2b11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
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

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move/from16 v2, p3

    .line 86
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lorg/telegram/messenger/video/Track;->samples:Ljava/util/ArrayList;

    const-wide/16 v3, 0x0

    .line 54
    iput-wide v3, v1, Lorg/telegram/messenger/video/Track;->duration:J

    const/4 v3, 0x0

    .line 59
    iput-object v3, v1, Lorg/telegram/messenger/video/Track;->syncSamples:Ljava/util/LinkedList;

    .line 61
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    iput-object v3, v1, Lorg/telegram/messenger/video/Track;->creationTime:Ljava/util/Date;

    const/4 v3, 0x0

    .line 64
    iput v3, v1, Lorg/telegram/messenger/video/Track;->volume:F

    .line 66
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lorg/telegram/messenger/video/Track;->samplePresentationTimes:Ljava/util/ArrayList;

    const/4 v3, 0x1

    .line 69
    iput-boolean v3, v1, Lorg/telegram/messenger/video/Track;->first:Z

    move/from16 v4, p1

    int-to-long v4, v4

    .line 87
    iput-wide v4, v1, Lorg/telegram/messenger/video/Track;->trackId:J

    .line 88
    iput-boolean v2, v1, Lorg/telegram/messenger/video/Track;->isAudio:Z

    const/4 v4, 0x5

    const/16 v5, 0x40

    const-string v6, "mime"

    const/16 v7, 0x10

    const/4 v8, 0x2

    if-nez v2, :cond_27

    const-string/jumbo v2, "width"

    .line 90
    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lorg/telegram/messenger/video/Track;->width:I

    const-string v2, "height"

    .line 91
    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lorg/telegram/messenger/video/Track;->height:I

    const v2, 0x15f90

    .line 92
    iput v2, v1, Lorg/telegram/messenger/video/Track;->timeScale:I

    .line 93
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, v1, Lorg/telegram/messenger/video/Track;->syncSamples:Ljava/util/LinkedList;

    const-string/jumbo v2, "vide"

    .line 94
    iput-object v2, v1, Lorg/telegram/messenger/video/Track;->handler:Ljava/lang/String;

    .line 95
    new-instance v2, Lcom/coremedia/iso/boxes/VideoMediaHeaderBox;

    invoke-direct {v2}, Lcom/coremedia/iso/boxes/VideoMediaHeaderBox;-><init>()V

    iput-object v2, v1, Lorg/telegram/messenger/video/Track;->headerBox:Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;

    .line 96
    new-instance v2, Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-direct {v2}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;-><init>()V

    iput-object v2, v1, Lorg/telegram/messenger/video/Track;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    .line 97
    invoke-virtual {v0, v6}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v6, "video/avc"

    .line 98
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/16 v10, 0x18

    const-string v11, "csd-0"

    const-wide/high16 v12, 0x4052000000000000L    # 72.0

    const/4 v14, 0x3

    const/4 v9, 0x4

    if-eqz v6, :cond_1b

    .line 99
    new-instance v2, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;

    const-string v6, "avc1"

    invoke-direct {v2, v6}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v2, v3}, Lcom/coremedia/iso/boxes/sampleentry/AbstractSampleEntry;->setDataReferenceIndex(I)V

    .line 101
    invoke-virtual {v2, v10}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setDepth(I)V

    .line 102
    invoke-virtual {v2, v3}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setFrameCount(I)V

    .line 103
    invoke-virtual {v2, v12, v13}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setHorizresolution(D)V

    .line 104
    invoke-virtual {v2, v12, v13}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setVertresolution(D)V

    .line 105
    iget v6, v1, Lorg/telegram/messenger/video/Track;->width:I

    invoke-virtual {v2, v6}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setWidth(I)V

    .line 106
    iget v6, v1, Lorg/telegram/messenger/video/Track;->height:I

    invoke-virtual {v2, v6}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setHeight(I)V

    .line 108
    new-instance v6, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;

    invoke-direct {v6}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;-><init>()V

    .line 110
    invoke-virtual {v0, v11}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 111
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 112
    invoke-virtual {v0, v11}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 113
    invoke-virtual {v11, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 114
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v12

    new-array v12, v12, [B

    .line 115
    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 116
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const-string v12, "csd-1"

    .line 119
    invoke-virtual {v0, v12}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 120
    invoke-virtual {v12, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 121
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v13

    new-array v13, v13, [B

    .line 122
    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 123
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-virtual {v6, v10}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setSequenceParameterSets(Ljava/util/List;)V

    .line 125
    invoke-virtual {v6, v11}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setPictureParameterSets(Ljava/util/List;)V

    :cond_0
    const-string v10, "level"

    .line 128
    invoke-virtual {v0, v10}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v11

    const/16 v12, 0x8

    const/16 v13, 0xd

    const/16 v15, 0x20

    if-eqz v11, :cond_11

    .line 129
    invoke-virtual {v0, v10}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v10

    if-ne v10, v3, :cond_1

    .line 131
    invoke-virtual {v6, v3}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    goto/16 :goto_0

    :cond_1
    if-ne v10, v15, :cond_2

    .line 133
    invoke-virtual {v6, v8}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    goto/16 :goto_0

    :cond_2
    if-ne v10, v9, :cond_3

    const/16 v4, 0xb

    .line 135
    invoke-virtual {v6, v4}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    goto/16 :goto_0

    :cond_3
    if-ne v10, v12, :cond_4

    const/16 v4, 0xc

    .line 137
    invoke-virtual {v6, v4}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    goto/16 :goto_0

    :cond_4
    if-ne v10, v7, :cond_5

    .line 139
    invoke-virtual {v6, v13}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    goto/16 :goto_0

    :cond_5
    if-ne v10, v5, :cond_6

    const/16 v4, 0x15

    .line 141
    invoke-virtual {v6, v4}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    goto/16 :goto_0

    :cond_6
    const/16 v11, 0x80

    if-ne v10, v11, :cond_7

    const/16 v4, 0x16

    .line 143
    invoke-virtual {v6, v4}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    goto :goto_0

    :cond_7
    const/16 v11, 0x100

    if-ne v10, v11, :cond_8

    .line 145
    invoke-virtual {v6, v14}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    goto :goto_0

    :cond_8
    const/16 v11, 0x200

    if-ne v10, v11, :cond_9

    const/16 v4, 0x1f

    .line 147
    invoke-virtual {v6, v4}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    goto :goto_0

    :cond_9
    const/16 v11, 0x400

    if-ne v10, v11, :cond_a

    .line 149
    invoke-virtual {v6, v15}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    goto :goto_0

    :cond_a
    const/16 v11, 0x800

    if-ne v10, v11, :cond_b

    .line 151
    invoke-virtual {v6, v9}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    goto :goto_0

    :cond_b
    const/16 v11, 0x1000

    if-ne v10, v11, :cond_c

    const/16 v4, 0x29

    .line 153
    invoke-virtual {v6, v4}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    goto :goto_0

    :cond_c
    const/16 v11, 0x2000

    if-ne v10, v11, :cond_d

    const/16 v4, 0x2a

    .line 155
    invoke-virtual {v6, v4}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    goto :goto_0

    :cond_d
    const/16 v11, 0x4000

    if-ne v10, v11, :cond_e

    .line 157
    invoke-virtual {v6, v4}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    goto :goto_0

    :cond_e
    const v4, 0x8000

    if-ne v10, v4, :cond_f

    const/16 v4, 0x33

    .line 159
    invoke-virtual {v6, v4}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    goto :goto_0

    :cond_f
    const/high16 v4, 0x10000

    if-ne v10, v4, :cond_10

    const/16 v4, 0x34

    .line 161
    invoke-virtual {v6, v4}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    goto :goto_0

    :cond_10
    if-ne v10, v8, :cond_12

    const/16 v4, 0x1b

    .line 163
    invoke-virtual {v6, v4}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    goto :goto_0

    .line 166
    :cond_11
    invoke-virtual {v6, v13}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcLevelIndication(I)V

    :cond_12
    :goto_0
    const-string/jumbo v4, "profile"

    .line 168
    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v10

    const/16 v11, 0x64

    if-eqz v10, :cond_19

    .line 169
    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_13

    const/16 v0, 0x42

    .line 171
    invoke-virtual {v6, v0}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcProfileIndication(I)V

    goto :goto_1

    :cond_13
    if-ne v0, v8, :cond_14

    const/16 v0, 0x4d

    .line 173
    invoke-virtual {v6, v0}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcProfileIndication(I)V

    goto :goto_1

    :cond_14
    if-ne v0, v9, :cond_15

    const/16 v0, 0x58

    .line 175
    invoke-virtual {v6, v0}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcProfileIndication(I)V

    goto :goto_1

    :cond_15
    if-ne v0, v12, :cond_16

    .line 177
    invoke-virtual {v6, v11}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcProfileIndication(I)V

    goto :goto_1

    :cond_16
    if-ne v0, v7, :cond_17

    const/16 v0, 0x6e

    .line 179
    invoke-virtual {v6, v0}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcProfileIndication(I)V

    goto :goto_1

    :cond_17
    if-ne v0, v15, :cond_18

    const/16 v0, 0x7a

    .line 181
    invoke-virtual {v6, v0}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcProfileIndication(I)V

    goto :goto_1

    :cond_18
    if-ne v0, v5, :cond_1a

    const/16 v0, 0xf4

    .line 183
    invoke-virtual {v6, v0}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcProfileIndication(I)V

    goto :goto_1

    .line 186
    :cond_19
    invoke-virtual {v6, v11}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setAvcProfileIndication(I)V

    :cond_1a
    :goto_1
    const/4 v0, -0x1

    .line 188
    invoke-virtual {v6, v0}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setBitDepthLumaMinus8(I)V

    .line 189
    invoke-virtual {v6, v0}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setBitDepthChromaMinus8(I)V

    .line 190
    invoke-virtual {v6, v0}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setChromaFormat(I)V

    .line 191
    invoke-virtual {v6, v3}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setConfigurationVersion(I)V

    .line 192
    invoke-virtual {v6, v14}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setLengthSizeMinusOne(I)V

    const/4 v0, 0x0

    .line 193
    invoke-virtual {v6, v0}, Lcom/mp4parser/iso14496/part15/AvcConfigurationBox;->setProfileCompatibility(I)V

    .line 195
    invoke-virtual {v2, v6}, Lcom/googlecode/mp4parser/BasicContainer;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 196
    iget-object v0, v1, Lorg/telegram/messenger/video/Track;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/BasicContainer;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    goto/16 :goto_a

    :cond_1b
    const-string/jumbo v4, "video/mp4v"

    .line 197
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 198
    new-instance v0, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;

    const-string v2, "mp4v"

    invoke-direct {v0, v2}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v0, v3}, Lcom/coremedia/iso/boxes/sampleentry/AbstractSampleEntry;->setDataReferenceIndex(I)V

    .line 200
    invoke-virtual {v0, v10}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setDepth(I)V

    .line 201
    invoke-virtual {v0, v3}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setFrameCount(I)V

    .line 202
    invoke-virtual {v0, v12, v13}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setHorizresolution(D)V

    .line 203
    invoke-virtual {v0, v12, v13}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setVertresolution(D)V

    .line 204
    iget v2, v1, Lorg/telegram/messenger/video/Track;->width:I

    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setWidth(I)V

    .line 205
    iget v2, v1, Lorg/telegram/messenger/video/Track;->height:I

    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setHeight(I)V

    .line 207
    iget-object v2, v1, Lorg/telegram/messenger/video/Track;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-virtual {v2, v0}, Lcom/googlecode/mp4parser/BasicContainer;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    goto/16 :goto_a

    :cond_1c
    const-string/jumbo v4, "video/hevc"

    .line 208
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 209
    invoke-virtual {v0, v11}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v2

    if-eqz v2, :cond_2b

    .line 210
    invoke-virtual {v0, v11}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    .line 216
    :goto_2
    array-length v10, v0

    if-ge v2, v10, :cond_22

    if-ne v4, v14, :cond_1f

    .line 217
    aget-byte v10, v0, v2

    if-ne v10, v3, :cond_1f

    const/4 v10, -0x1

    if-ne v7, v10, :cond_1d

    add-int/lit8 v7, v2, -0x3

    goto :goto_3

    :cond_1d
    if-ne v5, v10, :cond_1e

    add-int/lit8 v5, v2, -0x3

    goto :goto_3

    :cond_1e
    if-ne v6, v10, :cond_20

    add-int/lit8 v6, v2, -0x3

    goto :goto_3

    :cond_1f
    const/4 v10, -0x1

    .line 226
    :cond_20
    :goto_3
    aget-byte v11, v0, v2

    if-nez v11, :cond_21

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_21
    const/4 v4, 0x0

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_22
    add-int/lit8 v2, v5, -0x4

    .line 232
    new-array v2, v2, [B

    sub-int v4, v6, v5

    sub-int/2addr v4, v9

    .line 233
    new-array v4, v4, [B

    .line 234
    array-length v7, v0

    sub-int/2addr v7, v6

    sub-int/2addr v7, v9

    new-array v7, v7, [B

    const/4 v10, 0x0

    .line 235
    :goto_5
    array-length v11, v0

    if-ge v10, v11, :cond_26

    if-ge v10, v5, :cond_23

    add-int/lit8 v11, v10, -0x4

    if-ltz v11, :cond_25

    .line 238
    aget-byte v12, v0, v10

    aput-byte v12, v2, v11

    goto :goto_6

    :cond_23
    if-ge v10, v6, :cond_24

    sub-int v11, v10, v5

    sub-int/2addr v11, v9

    if-ltz v11, :cond_25

    .line 242
    aget-byte v12, v0, v10

    aput-byte v12, v4, v11

    goto :goto_6

    :cond_24
    sub-int v11, v10, v6

    sub-int/2addr v11, v9

    if-ltz v11, :cond_25

    .line 246
    aget-byte v12, v0, v10

    aput-byte v12, v7, v11

    :cond_25
    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_26
    :try_start_0
    new-array v0, v14, [Ljava/nio/ByteBuffer;

    .line 252
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v5, 0x0

    aput-object v2, v0, v5

    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    aput-object v2, v0, v8

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/video/HevcDecoderConfigurationRecord;->parseFromCsd(Ljava/util/List;)Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;

    move-result-object v0

    .line 253
    iget v2, v1, Lorg/telegram/messenger/video/Track;->width:I

    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setWidth(I)V

    .line 254
    iget v2, v1, Lorg/telegram/messenger/video/Track;->height:I

    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/sampleentry/VisualSampleEntry;->setHeight(I)V

    .line 255
    iget-object v2, v1, Lorg/telegram/messenger/video/Track;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-virtual {v2, v0}, Lcom/googlecode/mp4parser/BasicContainer;->addBox(Lcom/coremedia/iso/boxes/Box;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_a

    :catch_0
    move-exception v0

    .line 257
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_a

    :cond_27
    const/high16 v2, 0x3f800000    # 1.0f

    .line 262
    iput v2, v1, Lorg/telegram/messenger/video/Track;->volume:F

    const-string/jumbo v2, "sample-rate"

    .line 263
    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v9

    iput v9, v1, Lorg/telegram/messenger/video/Track;->timeScale:I

    const-string/jumbo v9, "soun"

    .line 264
    iput-object v9, v1, Lorg/telegram/messenger/video/Track;->handler:Ljava/lang/String;

    .line 265
    new-instance v9, Lcom/coremedia/iso/boxes/SoundMediaHeaderBox;

    invoke-direct {v9}, Lcom/coremedia/iso/boxes/SoundMediaHeaderBox;-><init>()V

    iput-object v9, v1, Lorg/telegram/messenger/video/Track;->headerBox:Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;

    .line 266
    new-instance v9, Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-direct {v9}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;-><init>()V

    iput-object v9, v1, Lorg/telegram/messenger/video/Track;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    .line 267
    new-instance v9, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;

    const-string v10, "mp4a"

    invoke-direct {v9, v10}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;-><init>(Ljava/lang/String;)V

    const-string v10, "channel-count"

    .line 268
    invoke-virtual {v0, v10}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setChannelCount(I)V

    .line 269
    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    int-to-long v10, v2

    invoke-virtual {v9, v10, v11}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setSampleRate(J)V

    .line 270
    invoke-virtual {v9, v3}, Lcom/coremedia/iso/boxes/sampleentry/AbstractSampleEntry;->setDataReferenceIndex(I)V

    .line 271
    invoke-virtual {v9, v7}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->setSampleSize(I)V

    .line 273
    new-instance v2, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;

    invoke-direct {v2}, Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;-><init>()V

    .line 274
    new-instance v3, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;

    invoke-direct {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;-><init>()V

    const/4 v7, 0x0

    .line 275
    invoke-virtual {v3, v7}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->setEsId(I)V

    .line 277
    new-instance v7, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;

    invoke-direct {v7}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;-><init>()V

    .line 278
    invoke-virtual {v7, v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;->setPredefined(I)V

    .line 279
    invoke-virtual {v3, v7}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->setSlConfigDescriptor(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/SLConfigDescriptor;)V

    .line 282
    invoke-virtual {v0, v6}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_28

    .line 283
    invoke-virtual {v0, v6}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    :cond_28
    const-string v6, "audio/mp4-latm"

    .line 288
    :goto_7
    new-instance v7, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;

    invoke-direct {v7}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;-><init>()V

    const-string v10, "audio/mpeg"

    .line 289
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_29

    const/16 v5, 0x69

    .line 290
    invoke-virtual {v7, v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->setObjectTypeIndication(I)V

    goto :goto_8

    .line 292
    :cond_29
    invoke-virtual {v7, v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->setObjectTypeIndication(I)V

    .line 294
    :goto_8
    invoke-virtual {v7, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->setStreamType(I)V

    const/16 v4, 0x600

    .line 295
    invoke-virtual {v7, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->setBufferSizeDB(I)V

    const-string v4, "max-bitrate"

    .line 296
    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 297
    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {v7, v4, v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->setMaxBitRate(J)V

    goto :goto_9

    :cond_2a
    const-wide/32 v4, 0x17700

    .line 299
    invoke-virtual {v7, v4, v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->setMaxBitRate(J)V

    .line 301
    :goto_9
    iget v0, v1, Lorg/telegram/messenger/video/Track;->timeScale:I

    int-to-long v4, v0

    invoke-virtual {v7, v4, v5}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->setAvgBitRate(J)V

    .line 303
    new-instance v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;-><init>()V

    .line 304
    invoke-virtual {v0, v8}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->setAudioObjectType(I)V

    .line 305
    sget-object v4, Lorg/telegram/messenger/video/Track;->samplingFrequencyIndexMap:Ljava/util/Map;

    invoke-virtual {v9}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getSampleRate()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->setSamplingFrequencyIndex(I)V

    .line 306
    invoke-virtual {v9}, Lcom/coremedia/iso/boxes/sampleentry/AudioSampleEntry;->getChannelCount()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;->setChannelConfiguration(I)V

    .line 307
    invoke-virtual {v7, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;->setAudioSpecificInfo(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/AudioSpecificConfig;)V

    .line 309
    invoke-virtual {v3, v7}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->setDecoderConfigDescriptor(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/DecoderConfigDescriptor;)V

    .line 311
    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;->serialize()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 313
    invoke-virtual {v2, v0}, Lcom/googlecode/mp4parser/boxes/mp4/AbstractDescriptorBox;->setData(Ljava/nio/ByteBuffer;)V

    .line 314
    invoke-virtual {v9, v2}, Lcom/googlecode/mp4parser/BasicContainer;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 315
    iget-object v0, v1, Lorg/telegram/messenger/video/Track;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-virtual {v0, v9}, Lcom/googlecode/mp4parser/BasicContainer;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    :cond_2b
    :goto_a
    return-void
.end method

.method private static synthetic lambda$prepare$0(Lorg/telegram/messenger/video/Track$SamplePresentationTime;Lorg/telegram/messenger/video/Track$SamplePresentationTime;)I
    .locals 4

    .line 335
    invoke-static {p0}, Lorg/telegram/messenger/video/Track$SamplePresentationTime;->access$000(Lorg/telegram/messenger/video/Track$SamplePresentationTime;)J

    move-result-wide v0

    invoke-static {p1}, Lorg/telegram/messenger/video/Track$SamplePresentationTime;->access$000(Lorg/telegram/messenger/video/Track$SamplePresentationTime;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 337
    :cond_0
    invoke-static {p0}, Lorg/telegram/messenger/video/Track$SamplePresentationTime;->access$000(Lorg/telegram/messenger/video/Track$SamplePresentationTime;)J

    move-result-wide v0

    invoke-static {p1}, Lorg/telegram/messenger/video/Track$SamplePresentationTime;->access$000(Lorg/telegram/messenger/video/Track$SamplePresentationTime;)J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-gez p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public addSample(JLandroid/media/MediaCodec$BufferInfo;)V
    .locals 5

    .line 324
    iget-boolean v0, p0, Lorg/telegram/messenger/video/Track;->isAudio:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 325
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/video/Track;->samples:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/messenger/video/Sample;

    iget v3, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    int-to-long v3, v3

    invoke-direct {v2, p1, p2, v3, v4}, Lorg/telegram/messenger/video/Sample;-><init>(JJ)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    iget-object p1, p0, Lorg/telegram/messenger/video/Track;->syncSamples:Ljava/util/LinkedList;

    if-eqz p1, :cond_1

    if-eqz v1, :cond_1

    .line 327
    iget-object p2, p0, Lorg/telegram/messenger/video/Track;->samples:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 329
    :cond_1
    iget-object p1, p0, Lorg/telegram/messenger/video/Track;->samplePresentationTimes:Ljava/util/ArrayList;

    new-instance p2, Lorg/telegram/messenger/video/Track$SamplePresentationTime;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-wide v1, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget p3, p0, Lorg/telegram/messenger/video/Track;->timeScale:I

    int-to-long v3, p3

    mul-long/2addr v1, v3

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

    .line 425
    iget-object v0, p0, Lorg/telegram/messenger/video/Track;->creationTime:Ljava/util/Date;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 390
    iget-wide v0, p0, Lorg/telegram/messenger/video/Track;->duration:J

    return-wide v0
.end method

.method public getHandler()Ljava/lang/String;
    .locals 1

    .line 394
    iget-object v0, p0, Lorg/telegram/messenger/video/Track;->handler:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 433
    iget v0, p0, Lorg/telegram/messenger/video/Track;->height:I

    return v0
.end method

.method public getLastFrameTimestamp()J
    .locals 5

    .line 386
    iget-wide v0, p0, Lorg/telegram/messenger/video/Track;->duration:J

    iget-object v2, p0, Lorg/telegram/messenger/video/Track;->sampleDurations:[J

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-wide v3, v2, v3

    sub-long/2addr v0, v3

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    const-wide/32 v2, 0x7a120

    sub-long/2addr v0, v2

    iget v2, p0, Lorg/telegram/messenger/video/Track;->timeScale:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getMediaHeaderBox()Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;
    .locals 1

    .line 398
    iget-object v0, p0, Lorg/telegram/messenger/video/Track;->headerBox:Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;

    return-object v0
.end method

.method public getSampleCompositions()[I
    .locals 1

    .line 402
    iget-object v0, p0, Lorg/telegram/messenger/video/Track;->sampleCompositions:[I

    return-object v0
.end method

.method public getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    .locals 1

    .line 406
    iget-object v0, p0, Lorg/telegram/messenger/video/Track;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    return-object v0
.end method

.method public getSampleDurations()[J
    .locals 1

    .line 441
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

    .line 382
    iget-object v0, p0, Lorg/telegram/messenger/video/Track;->samples:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSyncSamples()[J
    .locals 4

    .line 410
    iget-object v0, p0, Lorg/telegram/messenger/video/Track;->syncSamples:Ljava/util/LinkedList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 413
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/video/Track;->syncSamples:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    new-array v0, v0, [J

    const/4 v1, 0x0

    .line 414
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/video/Track;->syncSamples:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 415
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

    .line 421
    iget v0, p0, Lorg/telegram/messenger/video/Track;->timeScale:I

    return v0
.end method

.method public getTrackId()J
    .locals 2

    .line 320
    iget-wide v0, p0, Lorg/telegram/messenger/video/Track;->trackId:J

    return-wide v0
.end method

.method public getVolume()F
    .locals 1

    .line 437
    iget v0, p0, Lorg/telegram/messenger/video/Track;->volume:F

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 429
    iget v0, p0, Lorg/telegram/messenger/video/Track;->width:I

    return v0
.end method

.method public isAudio()Z
    .locals 1

    .line 445
    iget-boolean v0, p0, Lorg/telegram/messenger/video/Track;->isAudio:Z

    return v0
.end method

.method public prepare()V
    .locals 18

    move-object/from16 v0, p0

    .line 333
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lorg/telegram/messenger/video/Track;->samplePresentationTimes:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 334
    iget-object v2, v0, Lorg/telegram/messenger/video/Track;->samplePresentationTimes:Ljava/util/ArrayList;

    sget-object v3, Lorg/telegram/messenger/video/Track$$ExternalSyntheticLambda0;->INSTANCE:Lorg/telegram/messenger/video/Track$$ExternalSyntheticLambda0;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 343
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

    .line 346
    :goto_0
    iget-object v11, v0, Lorg/telegram/messenger/video/Track;->samplePresentationTimes:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ge v7, v11, :cond_3

    .line 347
    iget-object v11, v0, Lorg/telegram/messenger/video/Track;->samplePresentationTimes:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/messenger/video/Track$SamplePresentationTime;

    .line 348
    invoke-static {v11}, Lorg/telegram/messenger/video/Track$SamplePresentationTime;->access$000(Lorg/telegram/messenger/video/Track$SamplePresentationTime;)J

    move-result-wide v13

    sub-long/2addr v13, v8

    .line 349
    invoke-static {v11}, Lorg/telegram/messenger/video/Track$SamplePresentationTime;->access$000(Lorg/telegram/messenger/video/Track$SamplePresentationTime;)J

    move-result-wide v8

    .line 350
    iget-object v15, v0, Lorg/telegram/messenger/video/Track;->sampleDurations:[J

    invoke-static {v11}, Lorg/telegram/messenger/video/Track$SamplePresentationTime;->access$100(Lorg/telegram/messenger/video/Track$SamplePresentationTime;)I

    move-result v16

    aput-wide v13, v15, v16

    .line 351
    invoke-static {v11}, Lorg/telegram/messenger/video/Track$SamplePresentationTime;->access$100(Lorg/telegram/messenger/video/Track$SamplePresentationTime;)I

    move-result v15

    move-wide/from16 v16, v5

    if-eqz v15, :cond_0

    .line 352
    iget-wide v4, v0, Lorg/telegram/messenger/video/Track;->duration:J

    add-long/2addr v4, v13

    iput-wide v4, v0, Lorg/telegram/messenger/video/Track;->duration:J

    :cond_0
    cmp-long v4, v13, v2

    if-lez v4, :cond_1

    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v13, v4

    if-gez v4, :cond_1

    move-wide/from16 v5, v16

    .line 355
    invoke-static {v5, v6, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-wide v5, v4

    goto :goto_1

    :cond_1
    move-wide/from16 v5, v16

    .line 357
    :goto_1
    invoke-static {v11}, Lorg/telegram/messenger/video/Track$SamplePresentationTime;->access$100(Lorg/telegram/messenger/video/Track$SamplePresentationTime;)I

    move-result v4

    if-eq v4, v7, :cond_2

    move v10, v12

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 361
    :cond_3
    iget-object v2, v0, Lorg/telegram/messenger/video/Track;->sampleDurations:[J

    array-length v3, v2

    if-lez v3, :cond_4

    const/4 v3, 0x0

    .line 362
    aput-wide v5, v2, v3

    .line 363
    iget-wide v7, v0, Lorg/telegram/messenger/video/Track;->duration:J

    add-long/2addr v7, v5

    iput-wide v7, v0, Lorg/telegram/messenger/video/Track;->duration:J

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .line 365
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v12, v2, :cond_5

    .line 366
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

    .line 369
    iget-object v1, v0, Lorg/telegram/messenger/video/Track;->samplePresentationTimes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, v0, Lorg/telegram/messenger/video/Track;->sampleCompositions:[I

    move v4, v3

    .line 370
    :goto_3
    iget-object v1, v0, Lorg/telegram/messenger/video/Track;->samplePresentationTimes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v4, v1, :cond_6

    .line 371
    iget-object v1, v0, Lorg/telegram/messenger/video/Track;->samplePresentationTimes:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/video/Track$SamplePresentationTime;

    .line 372
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
