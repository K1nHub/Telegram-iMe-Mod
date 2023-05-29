.class public Lorg/telegram/messenger/video/MediaCodecVideoConvertor;
.super Ljava/lang/Object;
.source "MediaCodecVideoConvertor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConversionCanceledException;
    }
.end annotation


# static fields
.field private static final MEDIACODEC_TIMEOUT_DEFAULT:I = 0x9c4

.field private static final MEDIACODEC_TIMEOUT_INCREASED:I = 0x55f0

.field private static final PROCESSOR_TYPE_INTEL:I = 0x2

.field private static final PROCESSOR_TYPE_MTK:I = 0x3

.field private static final PROCESSOR_TYPE_OTHER:I = 0x0

.field private static final PROCESSOR_TYPE_QCOM:I = 0x1

.field private static final PROCESSOR_TYPE_SEC:I = 0x4

.field private static final PROCESSOR_TYPE_TI:I = 0x5


# instance fields
.field private callback:Lorg/telegram/messenger/MediaController$VideoConvertorListener;

.field private endPresentationTime:J

.field private extractor:Landroid/media/MediaExtractor;

.field private mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkConversionCanceled()V
    .locals 1

    .line 1024
    iget-object v0, p0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->callback:Lorg/telegram/messenger/MediaController$VideoConvertorListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/telegram/messenger/MediaController$VideoConvertorListener;->checkConversionCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1025
    :cond_0
    new-instance v0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConversionCanceledException;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor$ConversionCanceledException;-><init>(Lorg/telegram/messenger/video/MediaCodecVideoConvertor;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private convertVideoInternal(Ljava/lang/String;Ljava/io/File;IZIIIIIIIJJJJZZLorg/telegram/messenger/MediaController$SavedFilterState;Ljava/lang/String;Ljava/util/ArrayList;ZLorg/telegram/messenger/MediaController$CropState;Z)Z
    .locals 73
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "IZIIIIIIIJJJJZZ",
            "Lorg/telegram/messenger/MediaController$SavedFilterState;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;",
            ">;Z",
            "Lorg/telegram/messenger/MediaController$CropState;",
            "Z)Z"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move/from16 v13, p3

    move/from16 v12, p5

    move/from16 v11, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v8, p9

    move/from16 v7, p10

    move/from16 v6, p11

    move-wide/from16 v4, p12

    move-wide/from16 v2, p16

    move-wide/from16 v13, p18

    move/from16 v1, p20

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "convertVideoInternal original="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "x"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  result="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-wide/16 v20, -0x1

    .line 93
    :try_start_0
    new-instance v4, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v4}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 94
    new-instance v7, Lorg/telegram/messenger/video/Mp4Movie;

    invoke-direct {v7}, Lorg/telegram/messenger/video/Mp4Movie;-><init>()V

    move-object/from16 v6, p2

    .line 95
    invoke-virtual {v7, v6}, Lorg/telegram/messenger/video/Mp4Movie;->setCacheFile(Ljava/io/File;)V

    const/4 v6, 0x0

    .line 96
    invoke-virtual {v7, v6}, Lorg/telegram/messenger/video/Mp4Movie;->setRotation(I)V

    .line 97
    invoke-virtual {v7, v9, v10}, Lorg/telegram/messenger/video/Mp4Movie;->setSize(II)V

    .line 98
    new-instance v6, Lorg/telegram/messenger/video/MP4Builder;

    invoke-direct {v6}, Lorg/telegram/messenger/video/MP4Builder;-><init>()V

    move/from16 v12, p4

    invoke-virtual {v6, v7, v12}, Lorg/telegram/messenger/video/MP4Builder;->createMovie(Lorg/telegram/messenger/video/Mp4Movie;Z)Lorg/telegram/messenger/video/MP4Builder;

    move-result-object v6

    iput-object v6, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    long-to-float v6, v13

    const/high16 v26, 0x447a0000    # 1000.0f

    div-float v27, v6, v26

    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, v13

    .line 106
    iput-wide v6, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->endPresentationTime:J

    .line 107
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_48

    const-string v7, "csd-0"

    const-string v6, "prepend-sps-pps-to-idr-frames"

    const v2, 0xe1000

    move-object/from16 v29, v6

    move-object/from16 v28, v7

    const-string/jumbo v6, "video/avc"

    if-eqz p25, :cond_2e

    if-eqz v1, :cond_3

    const/high16 v1, 0x44fa0000    # 2000.0f

    cmpg-float v1, v27, v1

    if-gtz v1, :cond_1

    const v1, 0x27ac40

    goto :goto_1

    :cond_1
    const v1, 0x459c4000    # 5000.0f

    cmpg-float v1, v27, v1

    if-gtz v1, :cond_2

    const v1, 0x2191c0

    goto :goto_1

    :cond_2
    const v1, 0x17cdc0

    goto :goto_1

    :cond_3
    move/from16 v1, p10

    if-gtz v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    move v2, v1

    .line 127
    :goto_2
    :try_start_1
    rem-int/lit8 v1, v9, 0x10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_12
    .catchall {:try_start_1 .. :try_end_1} :catchall_e

    const/high16 v18, 0x41800000    # 16.0f

    if-eqz v1, :cond_6

    .line 128
    :try_start_2
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_5

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changing width from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float v3, v9

    div-float v3, v3, v18

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    mul-int/lit8 v3, v3, 0x10

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_5
    int-to-float v1, v9

    div-float v1, v1, v18

    .line 131
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    mul-int/lit8 v1, v1, 0x10

    move v9, v1

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object/from16 v15, p0

    move-wide/from16 v53, p14

    move-wide/from16 v33, p16

    move-object v1, v0

    move v6, v10

    const/4 v4, 0x0

    const/4 v7, -0x5

    const/16 v41, 0x0

    move v10, v8

    move-object v8, v5

    move v5, v2

    goto/16 :goto_c9

    :catch_0
    move-exception v0

    move-object/from16 v7, p0

    move-object v1, v0

    move/from16 v36, v2

    move-object/from16 v40, v5

    goto/16 :goto_2d

    .line 133
    :cond_6
    :goto_3
    :try_start_3
    rem-int/lit8 v1, v10, 0x10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_11
    .catchall {:try_start_3 .. :try_end_3} :catchall_d

    if-eqz v1, :cond_8

    .line 134
    :try_start_4
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_7

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changing height from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float v3, v10

    div-float v3, v3, v18

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    mul-int/lit8 v3, v3, 0x10

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_7
    int-to-float v1, v10

    div-float v1, v1, v18

    .line 137
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    mul-int/lit8 v1, v1, 0x10

    move v10, v1

    .line 140
    :cond_8
    :try_start_5
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_10
    .catchall {:try_start_5 .. :try_end_5} :catchall_c

    if-eqz v1, :cond_9

    .line 141
    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create photo encoder "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " duration = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 144
    :cond_9
    :try_start_7
    invoke-static {v6, v9, v10}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    const-string v3, "color-format"

    const v7, 0x7f000789

    .line 145
    invoke-virtual {v1, v3, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v3, "bitrate"

    .line 146
    invoke-virtual {v1, v3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v3, "frame-rate"

    const/16 v7, 0x1e

    .line 147
    invoke-virtual {v1, v3, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v3, "i-frame-interval"

    const/4 v7, 0x1

    .line 148
    invoke-virtual {v1, v3, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 150
    invoke-static {v6}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v7
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_10
    .catchall {:try_start_7 .. :try_end_7} :catchall_c

    .line 152
    :try_start_8
    invoke-virtual {v7}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_f
    .catchall {:try_start_8 .. :try_end_8} :catchall_c

    .line 153
    :try_start_9
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_e
    .catchall {:try_start_9 .. :try_end_9} :catchall_b

    move/from16 v20, v2

    :try_start_a
    const-string v2, "selected encoder "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v15, 0x0

    .line 155
    invoke-virtual {v7, v1, v15, v15, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 156
    new-instance v1, Lorg/telegram/messenger/video/InputSurface;

    invoke-virtual {v7}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/messenger/video/InputSurface;-><init>(Landroid/view/Surface;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_d
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    .line 157
    :try_start_b
    invoke-virtual {v1}, Lorg/telegram/messenger/video/InputSurface;->makeCurrent()V

    .line 158
    invoke-virtual {v7}, Landroid/media/MediaCodec;->start()V

    .line 160
    new-instance v21, Lorg/telegram/messenger/video/OutputSurface;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_c
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    const/16 v23, 0x0

    int-to-float v2, v8

    const/16 v35, 0x1

    move-object v15, v1

    move-object/from16 v1, v21

    move/from16 v36, v20

    const/16 v22, 0x1

    move/from16 v20, v2

    move-object/from16 v2, p22

    move-object/from16 v19, v3

    move-object/from16 v3, p1

    move-object/from16 v39, v4

    move-object/from16 v4, p23

    move-object/from16 v40, v5

    move-object/from16 v5, p24

    move-object/from16 v43, v6

    move-object/from16 v42, v29

    move-object/from16 v6, v23

    move-object/from16 p7, v7

    move-object/from16 v45, v28

    move v7, v9

    move v8, v10

    move/from16 v46, v9

    move/from16 v9, p5

    move/from16 v47, v10

    move/from16 v10, p6

    move/from16 v11, p3

    move/from16 v12, v20

    move/from16 v14, p3

    move/from16 v13, v35

    :try_start_c
    invoke-direct/range {v1 .. v13}, Lorg/telegram/messenger/video/OutputSurface;-><init>(Lorg/telegram/messenger/MediaController$SavedFilterState;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lorg/telegram/messenger/MediaController$CropState;IIIIIFZ)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_b
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    .line 164
    :try_start_d
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x15

    if-ge v1, v13, :cond_a

    .line 165
    invoke-virtual/range {p7 .. p7}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v4

    goto :goto_4

    :cond_a
    const/4 v4, 0x0

    .line 170
    :goto_4
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x5

    :goto_5
    if-nez v6, :cond_29

    .line 173
    :try_start_e
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_9
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    xor-int/lit8 v8, v2, 0x1

    move v9, v7

    move v7, v6

    move v6, v5

    move-object v5, v4

    const/4 v4, 0x1

    :goto_6
    if-nez v8, :cond_c

    if-eqz v4, :cond_b

    goto :goto_7

    :cond_b
    move-object v4, v5

    move v5, v6

    move v6, v7

    move v7, v9

    goto :goto_5

    .line 178
    :cond_c
    :goto_7
    :try_start_f
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    if-eqz p21, :cond_d

    const-wide/16 v10, 0x55f0

    move-object/from16 v13, p7

    move-object/from16 v12, v39

    goto :goto_8

    :cond_d
    move-object/from16 v13, p7

    move-object/from16 v12, v39

    const-wide/16 v10, 0x9c4

    .line 179
    :goto_8
    :try_start_10
    invoke-virtual {v13, v12, v10, v11}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_e

    move/from16 v20, v1

    move/from16 p10, v8

    move/from16 v18, v9

    move v1, v11

    move-object/from16 v11, v43

    move-object/from16 v14, v45

    const/4 v4, 0x0

    :goto_9
    move v8, v2

    move v9, v7

    move/from16 v2, v47

    move-object/from16 v7, p0

    goto/16 :goto_1a

    :cond_e
    const/4 v11, -0x3

    if-ne v10, v11, :cond_10

    .line 183
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    move/from16 p7, v4

    const/16 v4, 0x15

    if-ge v11, v4, :cond_f

    .line 184
    invoke-virtual {v13}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v5

    :cond_f
    move/from16 v4, p7

    move/from16 v20, v1

    move/from16 p10, v8

    move/from16 v18, v9

    move-object/from16 v11, v43

    move-object/from16 v14, v45

    const/4 v1, -0x1

    goto :goto_9

    :cond_10
    move/from16 p7, v4

    const/4 v4, -0x2

    if-ne v10, v4, :cond_15

    .line 187
    invoke-virtual {v13}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v4

    .line 188
    sget-boolean v11, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v11, :cond_11

    .line 189
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 p8, v7

    const-string v7, "photo encoder new format "

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    goto :goto_a

    :cond_11
    move/from16 p8, v7

    :goto_a
    const/4 v11, -0x5

    if-ne v9, v11, :cond_14

    if-eqz v4, :cond_14

    move-object/from16 v7, p0

    .line 192
    :try_start_11
    iget-object v11, v7, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    const/4 v14, 0x0

    invoke-virtual {v11, v4, v14}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v9

    move-object/from16 v11, v42

    .line 193
    invoke-virtual {v4, v11}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_12

    invoke-virtual {v4, v11}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v42, v11

    const/4 v11, 0x1

    if-ne v14, v11, :cond_13

    move-object/from16 v14, v45

    .line 194
    invoke-virtual {v4, v14}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v3

    const-string v11, "csd-1"

    .line 195
    invoke-virtual {v4, v11}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 196
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_c

    :cond_12
    move-object/from16 v42, v11

    :cond_13
    :goto_b
    move-object/from16 v14, v45

    goto :goto_c

    :cond_14
    move-object/from16 v7, p0

    goto :goto_b

    :goto_c
    move/from16 v4, p7

    move/from16 v20, v1

    move/from16 p10, v8

    move/from16 v18, v9

    move-object/from16 v11, v43

    const/4 v1, -0x1

    move/from16 v9, p8

    move v8, v2

    move/from16 v2, v47

    goto/16 :goto_1a

    :cond_15
    move-object/from16 v7, p0

    move-object/from16 v14, v45

    if-ltz v10, :cond_28

    .line 203
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x15

    if-ge v4, v11, :cond_16

    .line 204
    aget-object v4, v5, v10

    goto :goto_d

    .line 206
    :cond_16
    invoke-virtual {v13, v10}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    :goto_d
    if-eqz v4, :cond_27

    .line 211
    iget v11, v12, Landroid/media/MediaCodec$BufferInfo;->size:I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_6
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    move-object/from16 p8, v5

    const/4 v5, 0x1

    if-le v11, v5, :cond_22

    .line 212
    :try_start_12
    iget v5, v12, Landroid/media/MediaCodec$BufferInfo;->flags:I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    and-int/lit8 v18, v5, 0x2

    if-nez v18, :cond_1d

    if-eqz v3, :cond_17

    and-int/lit8 v18, v5, 0x1

    if-eqz v18, :cond_17

    move/from16 p10, v8

    .line 214
    :try_start_13
    iget v8, v12, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v8, v3

    iput v8, v12, Landroid/media/MediaCodec$BufferInfo;->offset:I

    sub-int/2addr v11, v3

    .line 215
    iput v11, v12, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_e

    :cond_17
    move/from16 p10, v8

    :goto_e
    if-eqz v1, :cond_1b

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1b

    .line 218
    iget v1, v12, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/16 v5, 0x64

    if-le v1, v5, :cond_1a

    .line 219
    iget v1, v12, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v1, 0x64

    new-array v1, v1, [B

    .line 221
    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    const/4 v8, 0x0

    :goto_f
    const/16 v11, 0x60

    if-ge v5, v11, :cond_1a

    .line 224
    aget-byte v11, v1, v5

    if-nez v11, :cond_18

    add-int/lit8 v11, v5, 0x1

    aget-byte v11, v1, v11

    if-nez v11, :cond_18

    add-int/lit8 v11, v5, 0x2

    aget-byte v11, v1, v11

    if-nez v11, :cond_18

    add-int/lit8 v11, v5, 0x3

    aget-byte v11, v1, v11

    move-object/from16 v18, v1

    const/4 v1, 0x1

    if-ne v11, v1, :cond_19

    add-int/lit8 v8, v8, 0x1

    if-le v8, v1, :cond_19

    .line 227
    iget v1, v12, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v1, v5

    iput v1, v12, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 228
    iget v1, v12, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v1, v5

    iput v1, v12, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_10

    :cond_18
    move-object/from16 v18, v1

    :cond_19
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, v18

    goto :goto_f

    :cond_1a
    :goto_10
    const/4 v1, 0x0

    .line 236
    :cond_1b
    iget-object v5, v7, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    const/4 v8, 0x1

    invoke-virtual {v5, v9, v4, v12, v8}, Lorg/telegram/messenger/video/MP4Builder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)J

    move-result-wide v4

    move v11, v1

    move v8, v2

    const-wide/16 v1, 0x0

    cmp-long v18, v4, v1

    if-eqz v18, :cond_1c

    .line 238
    iget-object v1, v7, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->callback:Lorg/telegram/messenger/MediaController$VideoConvertorListener;

    if-eqz v1, :cond_1c

    move/from16 v18, v3

    move/from16 v20, v11

    const-wide/16 v2, 0x0

    long-to-float v11, v2

    div-float v11, v11, v26

    div-float v11, v11, v27

    .line 239
    invoke-interface {v1, v4, v5, v11}, Lorg/telegram/messenger/MediaController$VideoConvertorListener;->didWriteData(JF)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    goto :goto_11

    :cond_1c
    move/from16 v18, v3

    move/from16 v20, v11

    :goto_11
    move-object/from16 v11, v43

    move/from16 v1, v46

    :goto_12
    move/from16 v2, v47

    goto/16 :goto_18

    :cond_1d
    move/from16 v18, v3

    move/from16 p10, v8

    const/4 v5, -0x5

    move v8, v2

    if-ne v9, v5, :cond_21

    .line 243
    :try_start_14
    new-array v2, v11, [B

    .line 244
    iget v3, v12, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v3, v11

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 245
    iget v3, v12, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 246
    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 249
    iget v3, v12, Landroid/media/MediaCodec$BufferInfo;->size:I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_2
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_13
    if-ltz v3, :cond_1f

    const/4 v11, 0x3

    if-le v3, v11, :cond_1f

    .line 251
    :try_start_15
    aget-byte v5, v2, v3

    if-ne v5, v4, :cond_1e

    add-int/lit8 v4, v3, -0x1

    aget-byte v4, v2, v4

    if-nez v4, :cond_1e

    add-int/lit8 v4, v3, -0x2

    aget-byte v4, v2, v4

    if-nez v4, :cond_1e

    add-int/lit8 v4, v3, -0x3

    aget-byte v5, v2, v4

    if-nez v5, :cond_1e

    .line 252
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 253
    iget v5, v12, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v5, v4

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    move/from16 v20, v1

    const/4 v11, 0x0

    .line 254
    invoke-virtual {v3, v2, v11, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 255
    iget v1, v12, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v1, v4

    invoke-virtual {v5, v2, v4, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_6
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    move-object v4, v3

    goto :goto_14

    :cond_1e
    move/from16 v20, v1

    add-int/lit8 v3, v3, -0x1

    move/from16 v1, v20

    const/4 v4, 0x1

    const/4 v5, -0x5

    goto :goto_13

    :cond_1f
    move/from16 v20, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_14
    move-object/from16 v11, v43

    move/from16 v1, v46

    move/from16 v2, v47

    .line 263
    :try_start_16
    invoke-static {v11, v1, v2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v3

    if-eqz v4, :cond_20

    if-eqz v5, :cond_20

    .line 265
    invoke-virtual {v3, v14, v4}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    const-string v4, "csd-1"

    .line 266
    invoke-virtual {v3, v4, v5}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 268
    :cond_20
    iget-object v4, v7, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v3
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_1
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    move v9, v3

    goto :goto_18

    :catchall_1
    move-exception v0

    goto :goto_15

    :catch_1
    move-exception v0

    goto :goto_17

    :cond_21
    move/from16 v20, v1

    goto/16 :goto_11

    :catchall_2
    move-exception v0

    move/from16 v1, v46

    move/from16 v2, v47

    :goto_15
    move/from16 v10, p9

    move-wide/from16 v53, p14

    move-wide/from16 v33, p16

    move v6, v2

    move-object v15, v7

    move v7, v9

    move-object/from16 v4, v19

    move/from16 v5, v36

    move-object/from16 v8, v40

    const/16 v41, 0x0

    move v9, v1

    :goto_16
    move-object v1, v0

    goto/16 :goto_c9

    :catch_2
    move-exception v0

    move/from16 v1, v46

    move/from16 v2, v47

    :goto_17
    move v10, v2

    move/from16 v24, v9

    move-object/from16 v4, v19

    move v9, v1

    move-object v1, v0

    goto/16 :goto_31

    :cond_22
    move/from16 v20, v1

    move/from16 v18, v3

    move/from16 p10, v8

    move-object/from16 v11, v43

    move/from16 v1, v46

    move v8, v2

    goto/16 :goto_12

    .line 271
    :goto_18
    :try_start_17
    iget v3, v12, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_23

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto :goto_19

    :cond_23
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 272
    :goto_19
    invoke-virtual {v13, v10, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_5
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    move-object/from16 v5, p8

    move/from16 v46, v1

    move/from16 v3, v18

    const/4 v1, -0x1

    move/from16 v18, v9

    move v9, v4

    move/from16 v4, p7

    :goto_1a
    if-eq v10, v1, :cond_24

    move/from16 v47, v2

    move v2, v8

    move v7, v9

    move-object/from16 v43, v11

    move-object/from16 v39, v12

    move-object/from16 p7, v13

    move-object/from16 v45, v14

    move/from16 v9, v18

    move/from16 v1, v20

    const/16 v13, 0x15

    move/from16 v14, p3

    move/from16 v8, p10

    goto/16 :goto_6

    :cond_24
    if-nez v8, :cond_25

    .line 279
    :try_start_18
    invoke-virtual/range {v21 .. v21}, Lorg/telegram/messenger/video/OutputSurface;->drawImage()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_4
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    int-to-float v1, v6

    const/high16 v10, 0x41f00000    # 30.0f

    div-float/2addr v1, v10

    mul-float v1, v1, v26

    mul-float v1, v1, v26

    mul-float v1, v1, v26

    move/from16 v47, v2

    float-to-long v1, v1

    .line 281
    :try_start_19
    invoke-virtual {v15, v1, v2}, Lorg/telegram/messenger/video/InputSurface;->setPresentationTime(J)V

    .line 282
    invoke-virtual {v15}, Lorg/telegram/messenger/video/InputSurface;->swapBuffers()Z

    add-int/lit8 v6, v6, 0x1

    int-to-float v1, v6

    const/high16 v2, 0x41f00000    # 30.0f

    mul-float v2, v2, v27

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_26

    .line 288
    invoke-virtual {v13}, Landroid/media/MediaCodec;->signalEndOfInputStream()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_3
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    const/4 v2, 0x1

    const/4 v8, 0x0

    goto :goto_1d

    :catchall_3
    move-exception v0

    goto :goto_1b

    :catch_3
    move-exception v0

    goto :goto_1c

    :catchall_4
    move-exception v0

    move/from16 v47, v2

    :goto_1b
    move/from16 v10, p9

    move-wide/from16 v53, p14

    move-wide/from16 v33, p16

    move-object v1, v0

    move-object v15, v7

    move/from16 v7, v18

    goto/16 :goto_20

    :catch_4
    move-exception v0

    move/from16 v47, v2

    :goto_1c
    move-object v1, v0

    move/from16 v24, v18

    goto/16 :goto_23

    :cond_25
    move/from16 v47, v2

    :cond_26
    move v2, v8

    move/from16 v8, p10

    :goto_1d
    move v7, v9

    move-object/from16 v43, v11

    move-object/from16 v39, v12

    move-object/from16 p7, v13

    move-object/from16 v45, v14

    move/from16 v9, v18

    move/from16 v1, v20

    const/16 v13, 0x15

    move/from16 v14, p3

    goto/16 :goto_6

    :catchall_5
    move-exception v0

    move/from16 v46, v1

    move/from16 v47, v2

    goto :goto_1e

    :catch_5
    move-exception v0

    move/from16 v46, v1

    move/from16 v47, v2

    goto/16 :goto_22

    .line 209
    :cond_27
    :try_start_1a
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encoderOutputBuffer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " was null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_6
    move-exception v0

    :goto_1e
    move/from16 v10, p9

    move-wide/from16 v53, p14

    move-wide/from16 v33, p16

    move-object v1, v0

    move-object v15, v7

    goto :goto_1f

    :catch_6
    move-exception v0

    goto :goto_22

    .line 200
    :cond_28
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected result from encoder.dequeueOutputBuffer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_6
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    :catch_7
    move-exception v0

    goto :goto_21

    :catchall_7
    move-exception v0

    move-object/from16 v15, p0

    move/from16 v10, p9

    move-wide/from16 v53, p14

    move-wide/from16 v33, p16

    move-object v1, v0

    :goto_1f
    move v7, v9

    goto :goto_20

    :catch_8
    move-exception v0

    move-object/from16 v7, p0

    move-object/from16 v13, p7

    goto :goto_22

    :catchall_8
    move-exception v0

    move v9, v7

    move-object/from16 v15, p0

    move/from16 v10, p9

    move-wide/from16 v53, p14

    move-wide/from16 v33, p16

    move-object v1, v0

    :goto_20
    move-object/from16 v4, v19

    move/from16 v5, v36

    move-object/from16 v8, v40

    move/from16 v9, v46

    move/from16 v6, v47

    goto/16 :goto_c8

    :catch_9
    move-exception v0

    move-object/from16 v13, p7

    move v9, v7

    :goto_21
    move-object/from16 v7, p0

    :goto_22
    move-object v1, v0

    move/from16 v24, v9

    :goto_23
    move-object/from16 v4, v19

    move/from16 v9, v46

    move/from16 v10, v47

    goto/16 :goto_31

    :cond_29
    move-object/from16 v13, p7

    move v9, v7

    move-object/from16 v7, p0

    move/from16 v8, p9

    move/from16 v24, v9

    move-object v1, v15

    move/from16 v3, v36

    move-object/from16 v5, v40

    move/from16 v9, v46

    move/from16 v10, v47

    const/4 v4, 0x0

    const/4 v6, 0x0

    goto/16 :goto_33

    :catch_a
    move-exception v0

    move-object/from16 v7, p0

    move-object/from16 v13, p7

    move-object v1, v0

    move-object/from16 v4, v19

    move/from16 v9, v46

    move/from16 v10, v47

    goto/16 :goto_30

    :catchall_9
    move-exception v0

    move-object/from16 v15, p0

    move/from16 v10, p9

    move-wide/from16 v53, p14

    move-wide/from16 v33, p16

    move-object v1, v0

    move-object/from16 v4, v19

    move/from16 v5, v36

    move-object/from16 v8, v40

    move/from16 v9, v46

    goto/16 :goto_25

    :catch_b
    move-exception v0

    move-object/from16 v7, p0

    move-object/from16 v13, p7

    move-object v1, v0

    move-object/from16 v4, v19

    move/from16 v9, v46

    move/from16 v10, v47

    goto/16 :goto_2f

    :catch_c
    move-exception v0

    move-object v15, v1

    move-object/from16 v19, v3

    move-object/from16 v40, v5

    move-object v13, v7

    move/from16 v46, v9

    move/from16 v47, v10

    move/from16 v36, v20

    move-object/from16 v7, p0

    move-object v1, v0

    move-object/from16 v4, v19

    goto/16 :goto_2f

    :catchall_a
    move-exception v0

    move-object/from16 v19, v3

    move/from16 v46, v9

    move/from16 v47, v10

    move/from16 v36, v20

    goto :goto_24

    :catch_d
    move-exception v0

    move-object/from16 v19, v3

    move-object/from16 v40, v5

    move-object v13, v7

    move/from16 v46, v9

    move/from16 v47, v10

    move/from16 v36, v20

    goto :goto_26

    :catchall_b
    move-exception v0

    move/from16 v36, v2

    move-object/from16 v19, v3

    move/from16 v46, v9

    move/from16 v47, v10

    :goto_24
    move-object/from16 v15, p0

    move/from16 v10, p9

    move-wide/from16 v53, p14

    move-wide/from16 v33, p16

    move-object v1, v0

    move-object v8, v5

    move-object/from16 v4, v19

    move/from16 v5, v36

    :goto_25
    move/from16 v6, v47

    goto :goto_28

    :catch_e
    move-exception v0

    move/from16 v36, v2

    move-object/from16 v19, v3

    move-object/from16 v40, v5

    move-object v13, v7

    move/from16 v46, v9

    move/from16 v47, v10

    :goto_26
    move-object/from16 v7, p0

    move-object v1, v0

    move-object/from16 v4, v19

    goto/16 :goto_2e

    :catch_f
    move-exception v0

    move/from16 v36, v2

    move-object/from16 v40, v5

    move-object v13, v7

    move/from16 v46, v9

    move/from16 v47, v10

    move-object/from16 v7, p0

    move-object v1, v0

    const/4 v4, 0x0

    goto/16 :goto_2e

    :catchall_c
    move-exception v0

    move/from16 v36, v2

    move/from16 v46, v9

    move/from16 v47, v10

    move-object/from16 v15, p0

    move/from16 v10, p9

    move-wide/from16 v53, p14

    move-wide/from16 v33, p16

    move-object v1, v0

    move-object v8, v5

    move/from16 v5, v36

    move/from16 v6, v47

    :goto_27
    const/4 v4, 0x0

    :goto_28
    const/4 v7, -0x5

    goto/16 :goto_c8

    :catch_10
    move-exception v0

    move-object/from16 v7, p0

    move/from16 v36, v2

    move-object/from16 v40, v5

    move/from16 v46, v9

    move/from16 v47, v10

    goto :goto_2c

    :catchall_d
    move-exception v0

    move/from16 v36, v2

    move/from16 v46, v9

    goto :goto_29

    :catch_11
    move-exception v0

    move-object/from16 v7, p0

    move/from16 v36, v2

    move-object/from16 v40, v5

    move/from16 v46, v9

    goto :goto_2c

    :catchall_e
    move-exception v0

    move/from16 v36, v2

    :goto_29
    move-object/from16 v15, p0

    move-wide/from16 v53, p14

    move-wide/from16 v33, p16

    move-object v1, v0

    move-object v8, v5

    move v6, v10

    move/from16 v5, v36

    const/4 v4, 0x0

    const/4 v7, -0x5

    :goto_2a
    const/16 v41, 0x0

    :goto_2b
    move/from16 v10, p9

    goto/16 :goto_c9

    :catch_12
    move-exception v0

    move-object/from16 v7, p0

    move/from16 v36, v2

    move-object/from16 v40, v5

    :goto_2c
    move-object v1, v0

    :goto_2d
    const/4 v4, 0x0

    const/4 v13, 0x0

    :goto_2e
    const/4 v15, 0x0

    :goto_2f
    const/16 v21, 0x0

    :goto_30
    const/16 v24, -0x5

    .line 297
    :goto_31
    :try_start_1b
    instance-of v2, v1, Ljava/lang/IllegalStateException;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_14

    if-eqz v2, :cond_2a

    if-nez p21, :cond_2a

    const/16 v41, 0x1

    goto :goto_32

    :cond_2a
    const/16 v41, 0x0

    .line 300
    :goto_32
    :try_start_1c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bitrate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_13

    move/from16 v3, v36

    :try_start_1d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " framerate: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_12

    move/from16 v8, p9

    :try_start_1e
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " size: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_11

    move-object/from16 v5, v40

    :try_start_1f
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 301
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_10

    move-object/from16 v19, v4

    move-object v1, v15

    move/from16 v6, v41

    const/4 v4, 0x1

    :goto_33
    if-eqz v21, :cond_2b

    .line 306
    :try_start_20
    invoke-virtual/range {v21 .. v21}, Lorg/telegram/messenger/video/OutputSurface;->release()V

    goto :goto_34

    :catchall_f
    move-exception v0

    move-wide/from16 v53, p14

    move-wide/from16 v33, p16

    move-object v1, v0

    move/from16 v41, v6

    move-object v15, v7

    move v6, v10

    move-object/from16 v4, v19

    goto :goto_35

    :cond_2b
    :goto_34
    if-eqz v1, :cond_2c

    .line 309
    invoke-virtual {v1}, Lorg/telegram/messenger/video/InputSurface;->release()V

    :cond_2c
    if-eqz v13, :cond_2d

    .line 312
    invoke-virtual {v13}, Landroid/media/MediaCodec;->stop()V

    .line 313
    invoke-virtual {v13}, Landroid/media/MediaCodec;->release()V

    .line 315
    :cond_2d
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_f

    move-wide/from16 v53, p14

    move-wide/from16 v33, p16

    move v5, v3

    move/from16 v41, v6

    move-object v15, v7

    move v6, v10

    move/from16 v7, v24

    move v10, v8

    goto/16 :goto_c4

    :catchall_10
    move-exception v0

    move-wide/from16 v53, p14

    move-wide/from16 v33, p16

    move-object v1, v0

    move-object v15, v7

    move v6, v10

    :goto_35
    move/from16 v7, v24

    move v10, v8

    move-object v8, v5

    move v5, v3

    goto/16 :goto_c9

    :catchall_11
    move-exception v0

    move-wide/from16 v53, p14

    move-wide/from16 v33, p16

    move-object v1, v0

    move v5, v3

    move-object v15, v7

    move v6, v10

    move/from16 v7, v24

    move v10, v8

    move-object/from16 v8, v40

    goto/16 :goto_c9

    :catchall_12
    move-exception v0

    goto :goto_36

    :catchall_13
    move-exception v0

    move/from16 v3, v36

    :goto_36
    move-wide/from16 v53, p14

    move-wide/from16 v33, p16

    move-object v1, v0

    move v5, v3

    move-object v15, v7

    move v6, v10

    move/from16 v7, v24

    move-object/from16 v8, v40

    goto/16 :goto_2b

    :catchall_14
    move-exception v0

    move/from16 v3, v36

    move-wide/from16 v53, p14

    move-wide/from16 v33, p16

    move-object v1, v0

    move v5, v3

    move-object v15, v7

    move v6, v10

    move/from16 v7, v24

    move-object/from16 v8, v40

    goto/16 :goto_2a

    :cond_2e
    move-object/from16 v7, p0

    move/from16 v13, p10

    move-object v12, v4

    move-object v11, v6

    move-object/from16 v14, v28

    move-object/from16 v42, v29

    move v4, v1

    move v1, v2

    .line 317
    :try_start_21
    new-instance v2, Landroid/media/MediaExtractor;

    invoke-direct {v2}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v2, v7, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    move-object/from16 v15, p1

    .line 318
    invoke-virtual {v2, v15}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 320
    iget-object v2, v7, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/telegram/messenger/MediaController;->findTrack(Landroid/media/MediaExtractor;Z)I

    move-result v6
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_47

    const/4 v2, -0x1

    if-eq v13, v2, :cond_2f

    .line 321
    :try_start_22
    iget-object v2, v7, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/telegram/messenger/MediaController;->findTrack(Landroid/media/MediaExtractor;Z)I

    move-result v2
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_15

    goto :goto_37

    :catchall_15
    move-exception v0

    move-wide/from16 v53, p14

    move-wide/from16 v33, p16

    move-object v1, v0

    move-object v15, v7

    move v6, v10

    const/4 v4, 0x0

    const/4 v7, -0x5

    const/16 v41, 0x0

    move v10, v8

    move-object v8, v5

    move v5, v13

    goto/16 :goto_c9

    :cond_2f
    const/4 v2, -0x1

    :goto_37
    const-string v3, "mime"

    if-ltz v6, :cond_30

    .line 323
    :try_start_23
    iget-object v1, v7, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1, v6}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_15

    if-nez v1, :cond_30

    move-object/from16 v45, v14

    const/4 v1, 0x1

    goto :goto_38

    :cond_30
    move-object/from16 v45, v14

    const/4 v1, 0x0

    :goto_38
    move/from16 v14, p20

    if-nez v14, :cond_33

    if-eqz v1, :cond_31

    goto/16 :goto_3a

    .line 830
    :cond_31
    :try_start_24
    iget-object v2, v7, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    iget-object v3, v7, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_16

    const/4 v1, -0x1

    if-eq v13, v1, :cond_32

    const/16 v18, 0x1

    goto :goto_39

    :cond_32
    const/16 v18, 0x0

    :goto_39
    move-object/from16 v1, p0

    const/4 v11, 0x1

    move-object v4, v12

    move-object v12, v5

    const/16 v19, -0x5

    move-wide/from16 v5, p12

    move-object v13, v7

    move v14, v8

    move-wide/from16 v7, p14

    move v15, v10

    move-wide/from16 v9, p18

    move v15, v11

    move-object/from16 v11, p2

    move-object/from16 v49, v12

    move/from16 v12, v18

    :try_start_25
    invoke-direct/range {v1 .. v12}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->readAndWriteTracks(Landroid/media/MediaExtractor;Lorg/telegram/messenger/video/MP4Builder;Landroid/media/MediaCodec$BufferInfo;JJJLjava/io/File;Z)J
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_17

    move/from16 v9, p7

    move/from16 v6, p8

    move/from16 v5, p10

    move-wide/from16 v53, p14

    move-wide/from16 v33, p16

    move-object v15, v13

    move v10, v14

    const/4 v4, 0x0

    const/4 v7, -0x5

    const/16 v19, 0x0

    const/16 v41, 0x0

    goto/16 :goto_c4

    :catchall_16
    move-exception v0

    move/from16 v9, p7

    move/from16 v6, p8

    move-wide/from16 v53, p14

    move-wide/from16 v33, p16

    move-object v1, v0

    move-object v15, v7

    move v10, v8

    const/4 v4, 0x0

    const/4 v7, -0x5

    const/16 v41, 0x0

    move-object v8, v5

    move/from16 v5, p10

    goto/16 :goto_c9

    :cond_33
    :goto_3a
    move-object/from16 v49, v5

    move-object v13, v7

    move v14, v8

    const/4 v1, -0x1

    const/4 v15, 0x1

    if-ltz v6, :cond_a3

    const-wide/32 v22, -0x80000000

    const/16 v5, 0x3e8

    .line 345
    :try_start_26
    div-int v7, v5, v14
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_47
    .catchall {:try_start_26 .. :try_end_26} :catchall_3e

    mul-int/2addr v7, v5

    int-to-long v9, v7

    const/16 v7, 0x1e

    if-ge v14, v7, :cond_34

    add-int/lit8 v7, v14, 0x5

    .line 348
    :try_start_27
    div-int v7, v5, v7
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_13
    .catchall {:try_start_27 .. :try_end_27} :catchall_17

    :goto_3b
    mul-int/2addr v7, v5

    int-to-long v7, v7

    goto :goto_41

    :catchall_17
    move-exception v0

    move/from16 v9, p7

    move/from16 v6, p8

    move/from16 v5, p10

    :goto_3c
    move-wide/from16 v53, p14

    move-wide/from16 v33, p16

    move-object v1, v0

    move-object v15, v13

    move v10, v14

    :goto_3d
    move-object/from16 v8, v49

    goto/16 :goto_27

    :catch_13
    move-exception v0

    move/from16 v5, p10

    move-wide/from16 v53, p14

    move-wide/from16 v33, p16

    move-object v2, v0

    move/from16 v63, v6

    :goto_3e
    move-object v15, v13

    move v10, v14

    :goto_3f
    const/4 v1, 0x0

    :goto_40
    const/4 v4, 0x0

    const/4 v7, -0x5

    goto/16 :goto_ba

    :cond_34
    add-int/lit8 v7, v14, 0x1

    .line 350
    :try_start_28
    div-int v7, v5, v7

    goto :goto_3b

    :goto_41
    move-wide/from16 v24, v7

    .line 353
    iget-object v5, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5, v6}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 354
    iget-object v5, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5, v6}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v8
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_47
    .catchall {:try_start_28 .. :try_end_28} :catchall_3e

    if-eqz v4, :cond_38

    const/high16 v5, 0x44fa0000    # 2000.0f

    cmpg-float v5, v27, v5

    if-gtz v5, :cond_35

    const v5, 0x27ac40

    goto :goto_42

    :cond_35
    const v5, 0x459c4000    # 5000.0f

    cmpg-float v5, v27, v5

    if-gtz v5, :cond_36

    const v5, 0x2191c0

    goto :goto_42

    :cond_36
    const v5, 0x17cdc0

    :goto_42
    const v7, 0xe4e1c0

    move/from16 v15, p11

    if-lt v15, v7, :cond_37

    :try_start_29
    const-string v7, "OMX.google.h264.encoder"
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_14
    .catchall {:try_start_29 .. :try_end_29} :catchall_18

    goto :goto_43

    :catchall_18
    move-exception v0

    move/from16 v9, p7

    move/from16 v6, p8

    move-wide/from16 v53, p14

    move-object v1, v0

    move-object v15, v13

    move v10, v14

    move-object/from16 v8, v49

    const/4 v4, 0x0

    const/4 v7, -0x5

    const-wide/16 v33, 0x0

    goto/16 :goto_c8

    :catch_14
    move-exception v0

    move-wide/from16 v53, p14

    move-object v2, v0

    move/from16 v63, v6

    move-object v15, v13

    move v10, v14

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v7, -0x5

    const/4 v9, 0x0

    const-wide/16 v33, 0x0

    goto/16 :goto_bb

    :cond_37
    const/4 v7, 0x0

    :goto_43
    const-wide/16 v28, 0x0

    goto :goto_45

    :cond_38
    move/from16 v15, p11

    if-gtz p10, :cond_39

    move-wide/from16 v28, p16

    const v5, 0xe1000

    goto :goto_44

    :cond_39
    move/from16 v5, p10

    move-wide/from16 v28, p16

    :goto_44
    const/4 v7, 0x0

    :goto_45
    if-lez v15, :cond_3a

    .line 373
    :try_start_2a
    invoke-static {v15, v5}, Ljava/lang/Math;->min(II)I

    move-result v5
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_15
    .catchall {:try_start_2a .. :try_end_2a} :catchall_19

    goto :goto_46

    :catchall_19
    move-exception v0

    move/from16 v9, p7

    move/from16 v6, p8

    move-wide/from16 v53, p14

    move-object v1, v0

    move-object v15, v13

    move v10, v14

    move-wide/from16 v33, v28

    goto/16 :goto_3d

    :catch_15
    move-exception v0

    move-wide/from16 v53, p14

    move-object v2, v0

    move/from16 v63, v6

    move-object v15, v13

    move v10, v14

    move-wide/from16 v33, v28

    goto/16 :goto_3f

    :cond_3a
    :goto_46
    const-wide/16 v30, 0x0

    cmp-long v19, v28, v30

    move-wide/from16 v34, v9

    if-ltz v19, :cond_3b

    move-wide/from16 v9, v20

    goto :goto_47

    :cond_3b
    move-wide/from16 v9, v28

    :goto_47
    cmp-long v19, v9, v30

    if-ltz v19, :cond_3c

    .line 382
    :try_start_2b
    iget-object v1, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    move/from16 v28, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v9, v10, v2}, Landroid/media/MediaExtractor;->seekTo(JI)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_16
    .catchall {:try_start_2b .. :try_end_2b} :catchall_1a

    move/from16 v29, v6

    move-wide/from16 p16, v9

    const/4 v1, 0x0

    const-wide/16 v9, 0x0

    goto/16 :goto_4a

    :catchall_1a
    move-exception v0

    move/from16 v6, p8

    move-wide/from16 v53, p14

    move-object v1, v0

    move-wide/from16 v33, v9

    move-object v15, v13

    move v10, v14

    move-object/from16 v8, v49

    const/4 v4, 0x0

    const/4 v7, -0x5

    const/16 v41, 0x0

    move/from16 v9, p7

    goto/16 :goto_c9

    :catch_16
    move-exception v0

    move-wide/from16 v53, p14

    move-object v2, v0

    move/from16 v63, v6

    move-wide/from16 v33, v9

    goto/16 :goto_3e

    :cond_3c
    move/from16 v28, v2

    const-wide/16 v29, 0x0

    move-wide/from16 v1, p12

    cmp-long v31, v1, v29

    if-lez v31, :cond_3d

    move/from16 v29, v6

    .line 384
    :try_start_2c
    iget-object v6, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_18
    .catchall {:try_start_2c .. :try_end_2c} :catchall_1c

    move-wide/from16 p16, v9

    const/4 v9, 0x0

    :try_start_2d
    invoke-virtual {v6, v1, v2, v9}, Landroid/media/MediaExtractor;->seekTo(JI)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_17
    .catchall {:try_start_2d .. :try_end_2d} :catchall_1b

    move-object/from16 v6, p26

    const/4 v1, 0x0

    const-wide/16 v9, 0x0

    goto :goto_4b

    :catchall_1b
    move-exception v0

    goto :goto_48

    :catch_17
    move-exception v0

    goto :goto_49

    :catchall_1c
    move-exception v0

    move-wide/from16 p16, v9

    :goto_48
    move/from16 v9, p7

    move/from16 v6, p8

    goto/16 :goto_3c

    :catch_18
    move-exception v0

    move-wide/from16 p16, v9

    :goto_49
    move-wide/from16 v53, p14

    move-wide/from16 v33, p16

    move-object v2, v0

    move-object v15, v13

    move v10, v14

    move/from16 v63, v29

    goto/16 :goto_3f

    :cond_3d
    move/from16 v29, v6

    move-wide/from16 p16, v9

    .line 386
    :try_start_2e
    iget-object v6, v13, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    const/4 v1, 0x0

    const-wide/16 v9, 0x0

    invoke-virtual {v6, v9, v10, v1}, Landroid/media/MediaExtractor;->seekTo(JI)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_46
    .catchall {:try_start_2e .. :try_end_2e} :catchall_3d

    :goto_4a
    move-object/from16 v6, p26

    :goto_4b
    if-eqz v6, :cond_40

    const/16 v2, 0x5a

    move/from16 v1, p3

    if-eq v1, v2, :cond_3f

    const/16 v2, 0x10e

    if-ne v1, v2, :cond_3e

    goto :goto_4c

    .line 396
    :cond_3e
    :try_start_2f
    iget v2, v6, Lorg/telegram/messenger/MediaController$CropState;->transformWidth:I

    .line 397
    iget v9, v6, Lorg/telegram/messenger/MediaController$CropState;->transformHeight:I

    move v10, v2

    goto :goto_4d

    .line 393
    :cond_3f
    :goto_4c
    iget v9, v6, Lorg/telegram/messenger/MediaController$CropState;->transformHeight:I

    .line 394
    iget v10, v6, Lorg/telegram/messenger/MediaController$CropState;->transformWidth:I
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_17
    .catchall {:try_start_2f .. :try_end_2f} :catchall_1b

    move/from16 v71, v10

    move v10, v9

    move/from16 v9, v71

    goto :goto_4d

    :cond_40
    move/from16 v1, p3

    move/from16 v10, p7

    move/from16 v9, p8

    :goto_4d
    if-eqz v7, :cond_41

    .line 406
    :try_start_30
    invoke-static {v7}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_19
    .catchall {:try_start_30 .. :try_end_30} :catchall_1b

    goto :goto_4e

    :catch_19
    :cond_41
    const/4 v2, 0x0

    :goto_4e
    if-nez v2, :cond_42

    .line 412
    :try_start_31
    invoke-static {v11}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_1a
    .catchall {:try_start_31 .. :try_end_31} :catchall_1b

    goto :goto_4f

    :catch_1a
    move-exception v0

    move-wide/from16 v53, p14

    move-wide/from16 v33, p16

    move-object v1, v2

    move-object v15, v13

    move v10, v14

    move/from16 v63, v29

    const/4 v4, 0x0

    const/4 v7, -0x5

    const/4 v9, 0x0

    const/16 v38, 0x0

    const/16 v50, 0x0

    const/16 v60, 0x0

    move-object v2, v0

    goto/16 :goto_bc

    :cond_42
    :goto_4f
    move-object v7, v2

    .line 415
    :try_start_32
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_45
    .catchall {:try_start_32 .. :try_end_32} :catchall_3d

    if-eqz v2, :cond_43

    .line 416
    :try_start_33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create encoder with w = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " h = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bitrate = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_1b
    .catchall {:try_start_33 .. :try_end_33} :catchall_1b

    goto :goto_50

    :catch_1b
    move-exception v0

    move-wide/from16 v53, p14

    move-wide/from16 v33, p16

    move-object v2, v0

    move-object v1, v7

    move-object v15, v13

    move v10, v14

    move/from16 v63, v29

    goto/16 :goto_40

    .line 418
    :cond_43
    :goto_50
    :try_start_34
    invoke-static {v11, v10, v9}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    const-string v2, "color-format"

    const v6, 0x7f000789

    .line 419
    invoke-virtual {v1, v2, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "bitrate"

    .line 420
    invoke-virtual {v1, v2, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_34} :catch_45
    .catchall {:try_start_34 .. :try_end_34} :catchall_3d

    if-eqz v4, :cond_44

    .line 421
    :try_start_35
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v2, v6, :cond_44

    const-string v2, "bitrate-mode"

    const/4 v6, 0x2

    .line 423
    invoke-virtual {v1, v2, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_1b
    .catchall {:try_start_35 .. :try_end_35} :catchall_1b

    :cond_44
    :try_start_36
    const-string v2, "max-bitrate"

    .line 425
    invoke-virtual {v1, v2, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "frame-rate"

    .line 426
    invoke-virtual {v1, v2, v14}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "i-frame-interval"

    const/4 v6, 0x1

    .line 427
    invoke-virtual {v1, v2, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 429
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_36} :catch_45
    .catchall {:try_start_36 .. :try_end_36} :catchall_3d

    const/16 v2, 0x18

    if-lt v6, v2, :cond_48

    :try_start_37
    const-string v2, "color-transfer"

    .line 431
    invoke-virtual {v8, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_45

    const-string v2, "color-transfer"

    move-object/from16 v43, v11

    const-string v11, "color-transfer"

    .line 432
    invoke-virtual {v8, v11}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v1, v2, v11}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_51

    :cond_45
    move-object/from16 v43, v11

    :goto_51
    const-string v2, "color-standard"

    .line 434
    invoke-virtual {v8, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_46

    const-string v2, "color-standard"

    const-string v11, "color-standard"

    .line 435
    invoke-virtual {v8, v11}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v1, v2, v11}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_46
    const-string v2, "color-range"

    .line 437
    invoke-virtual {v8, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_47

    const-string v2, "color-range"

    const-string v11, "color-range"

    .line 438
    invoke-virtual {v8, v11}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v1, v2, v11}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_47
    const-string v2, "hdr-static-info"

    .line 440
    invoke-virtual {v8, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_49

    const-string v2, "hdr-static-info"

    const-string v11, "hdr-static-info"

    .line 441
    invoke-virtual {v8, v11}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v1, v2, v11}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    goto :goto_52

    :cond_48
    move-object/from16 v43, v11

    :cond_49
    :goto_52
    const/16 v2, 0x17

    if-ge v6, v2, :cond_4b

    .line 445
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/16 v11, 0x1e0

    if-gt v2, v11, :cond_4b

    if-nez v4, :cond_4b

    const v2, 0xe1000

    if-le v5, v2, :cond_4a

    move v5, v2

    :cond_4a
    const-string v2, "bitrate"

    .line 449
    invoke-virtual {v1, v2, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_37} :catch_1b
    .catchall {:try_start_37 .. :try_end_37} :catchall_1b

    :cond_4b
    move/from16 v18, v5

    .line 452
    :try_start_38
    invoke-virtual {v7}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object v11
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_38} :catch_44
    .catchall {:try_start_38 .. :try_end_38} :catchall_3c

    .line 453
    :try_start_39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selected encoder "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 454
    invoke-virtual {v7, v1, v5, v5, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 455
    new-instance v2, Lorg/telegram/messenger/video/InputSurface;

    invoke-virtual {v7}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/telegram/messenger/video/InputSurface;-><init>(Landroid/view/Surface;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_39} :catch_43
    .catchall {:try_start_39 .. :try_end_39} :catchall_3b

    .line 456
    :try_start_3a
    invoke-virtual {v2}, Lorg/telegram/messenger/video/InputSurface;->makeCurrent()V

    .line 457
    invoke-virtual {v7}, Landroid/media/MediaCodec;->start()V

    .line 459
    invoke-virtual {v8, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3a} :catch_42
    .catchall {:try_start_3a .. :try_end_3a} :catchall_3b

    .line 460
    :try_start_3b
    new-instance v13, Lorg/telegram/messenger/video/OutputSurface;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3b} :catch_41
    .catchall {:try_start_3b .. :try_end_3b} :catchall_3a

    const/16 v30, 0x0

    move-object/from16 v31, v3

    int-to-float v3, v14

    const/16 v36, 0x0

    move-object/from16 v58, v1

    const/16 v19, -0x1

    move-object v1, v13

    move-object/from16 v60, v2

    move/from16 v59, v28

    move-object/from16 v2, p22

    move/from16 v28, v3

    move-object/from16 v61, v31

    move-object/from16 v3, v30

    move/from16 v30, v4

    move-object/from16 v4, p23

    move-object/from16 v5, p24

    move/from16 v64, v6

    move/from16 v63, v29

    const/16 v29, 0x15

    move-object/from16 v6, p26

    move-object/from16 p10, v7

    move/from16 v7, p7

    move-object/from16 v65, v8

    move/from16 v8, p8

    move/from16 v66, v9

    move-wide/from16 v31, v34

    move-wide/from16 v33, p16

    move/from16 v9, p5

    move/from16 v67, v10

    move/from16 v10, p6

    move-object/from16 v19, v11

    move-object/from16 v68, v42

    move-object/from16 v69, v43

    move/from16 v11, p3

    move-object/from16 v70, v12

    move/from16 v12, v28

    move-object v14, v13

    move/from16 v15, v29

    move/from16 v13, v36

    :try_start_3c
    invoke-direct/range {v1 .. v13}, Lorg/telegram/messenger/video/OutputSurface;-><init>(Lorg/telegram/messenger/MediaController$SavedFilterState;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lorg/telegram/messenger/MediaController$CropState;IIIIIFZ)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3c} :catch_40
    .catchall {:try_start_3c .. :try_end_3c} :catchall_39

    if-nez p27, :cond_4d

    move/from16 v1, p8

    move/from16 v2, v30

    .line 461
    :try_start_3d
    invoke-static {v1, v1}, Ljava/lang/Math;->max(II)I

    move-result v3
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_3d} :catch_1e
    .catchall {:try_start_3d .. :try_end_3d} :catchall_20

    int-to-float v3, v3

    move/from16 v6, p5

    move/from16 v7, p6

    :try_start_3e
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v4
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3e} :catch_1d
    .catchall {:try_start_3e .. :try_end_3e} :catchall_1f

    int-to-float v4, v4

    div-float/2addr v3, v4

    const v4, 0x3f666666    # 0.9f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4c

    move v3, v1

    move/from16 v1, p7

    .line 462
    :try_start_3f
    invoke-static {v6, v7, v1, v3, v2}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->createFragmentShader(IIIIZ)Ljava/lang/String;

    move-result-object v4
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_3f} :catch_1c
    .catchall {:try_start_3f .. :try_end_3f} :catchall_1e

    const/4 v8, 0x0

    :try_start_40
    invoke-static {v6, v7, v1, v3, v8}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->createFragmentShader(IIIIZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Lorg/telegram/messenger/video/OutputSurface;->changeFragmentShader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_40} :catch_1c
    .catchall {:try_start_40 .. :try_end_40} :catchall_1d

    goto/16 :goto_58

    :catchall_1d
    move-exception v0

    goto :goto_54

    :catchall_1e
    move-exception v0

    const/4 v8, 0x0

    goto :goto_54

    :catch_1c
    move-exception v0

    goto :goto_56

    :cond_4c
    move v3, v1

    const/4 v8, 0x0

    move/from16 v1, p7

    goto :goto_58

    :catchall_1f
    move-exception v0

    goto :goto_53

    :catch_1d
    move-exception v0

    goto :goto_55

    :catchall_20
    move-exception v0

    move/from16 v6, p5

    move/from16 v7, p6

    :goto_53
    move v3, v1

    const/4 v8, 0x0

    move/from16 v1, p7

    :goto_54
    move-object/from16 v15, p0

    move/from16 v10, p9

    move-wide/from16 v53, p14

    move v9, v1

    move v6, v3

    move/from16 v41, v8

    move/from16 v5, v18

    move-object/from16 v4, v19

    move-object/from16 v8, v49

    const/4 v7, -0x5

    goto/16 :goto_16

    :catch_1e
    move-exception v0

    move/from16 v6, p5

    move/from16 v7, p6

    :goto_55
    move v3, v1

    move/from16 v1, p7

    :goto_56
    move-object/from16 v15, p0

    move/from16 v10, p9

    move-object/from16 v1, p10

    move-wide/from16 v53, p14

    move-object v2, v0

    move-object/from16 v50, v14

    move/from16 v5, v18

    move-object/from16 v4, v19

    move-object/from16 v9, v58

    :goto_57
    const/4 v7, -0x5

    goto/16 :goto_af

    :cond_4d
    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v1, p7

    move/from16 v3, p8

    move/from16 v2, v30

    const/4 v8, 0x0

    .line 464
    :goto_58
    :try_start_41
    invoke-virtual {v14}, Lorg/telegram/messenger/video/OutputSurface;->getSurface()Landroid/view/Surface;

    move-result-object v4
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_41} :catch_3f
    .catchall {:try_start_41 .. :try_end_41} :catchall_39

    move-object/from16 v9, v58

    move-object/from16 v5, v65

    const/4 v10, 0x0

    :try_start_42
    invoke-virtual {v9, v5, v4, v10, v8}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 465
    invoke-virtual {v9}, Landroid/media/MediaCodec;->start()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_42} :catch_3e
    .catchall {:try_start_42 .. :try_end_42} :catchall_39

    move/from16 v4, v64

    if-ge v4, v15, :cond_4e

    .line 471
    :try_start_43
    invoke-virtual {v9}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 472
    invoke-virtual/range {p10 .. p10}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v5
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_43} :catch_1f
    .catchall {:try_start_43 .. :try_end_43} :catchall_1d

    goto :goto_59

    :catch_1f
    move-exception v0

    move-object/from16 v15, p0

    move-object/from16 v1, p10

    move-wide/from16 v53, p14

    move-object v2, v0

    move-object/from16 v38, v10

    move-object/from16 v50, v14

    move/from16 v5, v18

    move-object/from16 v4, v19

    const/4 v7, -0x5

    move/from16 v10, p9

    goto/16 :goto_bc

    :cond_4e
    move-object v4, v10

    move-object v5, v4

    :goto_59
    move/from16 v11, v59

    if-ltz v11, :cond_57

    move v12, v15

    move-object/from16 v15, p0

    .line 477
    :try_start_44
    iget-object v13, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v13, v11}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v13

    move-object/from16 v10, v61

    .line 478
    invoke-virtual {v13, v10}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v8, "audio/mp4a-latm"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_44} :catch_27
    .catchall {:try_start_44 .. :try_end_44} :catchall_29

    if-nez v8, :cond_50

    :try_start_45
    invoke-virtual {v13, v10}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v12, "audio/mpeg"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_45} :catch_20
    .catchall {:try_start_45 .. :try_end_45} :catchall_21

    if-eqz v8, :cond_4f

    goto :goto_5c

    :cond_4f
    const/4 v8, 0x0

    goto :goto_5d

    :catchall_21
    move-exception v0

    move/from16 v10, p9

    move-wide/from16 v53, p14

    move v9, v1

    move v6, v3

    :goto_5a
    move/from16 v5, v18

    move-object/from16 v4, v19

    move-object/from16 v8, v49

    const/4 v7, -0x5

    const/16 v41, 0x0

    goto/16 :goto_16

    :catch_20
    move-exception v0

    :goto_5b
    move/from16 v10, p9

    move-object/from16 v1, p10

    move-wide/from16 v53, p14

    move-object v2, v0

    goto/16 :goto_68

    :cond_50
    :goto_5c
    move v8, v2

    .line 480
    :goto_5d
    :try_start_46
    invoke-virtual {v13, v10}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v12, "audio/unknown"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_46} :catch_27
    .catchall {:try_start_46 .. :try_end_46} :catchall_29

    if-eqz v10, :cond_51

    const/4 v11, -0x1

    :cond_51
    if-ltz v11, :cond_56

    if-eqz v8, :cond_54

    .line 486
    :try_start_47
    iget-object v10, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    invoke-virtual {v10, v13, v2}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v10

    .line 487
    iget-object v12, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v12, v11}, Landroid/media/MediaExtractor;->selectTrack(I)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_47} :catch_22
    .catchall {:try_start_47 .. :try_end_47} :catchall_24

    :try_start_48
    const-string v12, "max-input-size"

    .line 489
    invoke-virtual {v13, v12}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v12
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_48} :catch_21
    .catchall {:try_start_48 .. :try_end_48} :catchall_21

    goto :goto_5e

    :catch_21
    move-exception v0

    move-object v12, v0

    .line 491
    :try_start_49
    invoke-static {v12}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v12, 0x0

    :goto_5e
    if-gtz v12, :cond_52

    const/high16 v12, 0x10000

    .line 496
    :cond_52
    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v13
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_49} :catch_22
    .catchall {:try_start_49 .. :try_end_49} :catchall_24

    move-wide/from16 v2, p12

    move-object/from16 p16, v5

    const-wide/16 v5, 0x0

    cmp-long v28, v2, v5

    if-lez v28, :cond_53

    .line 499
    :try_start_4a
    iget-object v5, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v3, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4a} :catch_20
    .catchall {:try_start_4a .. :try_end_4a} :catchall_22

    goto :goto_5f

    :catchall_22
    move-exception v0

    move/from16 v6, p8

    move/from16 v10, p9

    move-wide/from16 v53, p14

    move v9, v1

    goto :goto_5a

    .line 501
    :cond_53
    :try_start_4b
    iget-object v5, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    const/4 v1, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7, v1}, Landroid/media/MediaExtractor;->seekTo(JI)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4b} :catch_20
    .catchall {:try_start_4b .. :try_end_4b} :catchall_23

    :goto_5f
    move/from16 v7, p7

    move v6, v12

    move-object v1, v13

    const/4 v5, 0x0

    move-wide/from16 v12, p14

    goto/16 :goto_6a

    :catchall_23
    move-exception v0

    goto :goto_60

    :catchall_24
    move-exception v0

    move-wide/from16 v2, p12

    :goto_60
    move/from16 v9, p7

    move/from16 v6, p8

    move/from16 v10, p9

    move-wide/from16 v53, p14

    move-object v1, v0

    goto/16 :goto_66

    :catch_22
    move-exception v0

    move-wide/from16 v2, p12

    goto :goto_5b

    :cond_54
    move-wide/from16 v2, p12

    move-object/from16 p16, v5

    .line 504
    :try_start_4c
    new-instance v1, Landroid/media/MediaExtractor;

    invoke-direct {v1}, Landroid/media/MediaExtractor;-><init>()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4c} :catch_26
    .catchall {:try_start_4c .. :try_end_4c} :catchall_28

    move-object/from16 v6, p1

    move/from16 v7, p7

    .line 505
    :try_start_4d
    invoke-virtual {v1, v6}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 506
    invoke-virtual {v1, v11}, Landroid/media/MediaExtractor;->selectTrack(I)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_4d} :catch_25
    .catchall {:try_start_4d .. :try_end_4d} :catchall_27

    const-wide/16 v5, 0x0

    cmp-long v10, v2, v5

    if-lez v10, :cond_55

    const/4 v10, 0x0

    .line 509
    :try_start_4e
    invoke-virtual {v1, v2, v3, v10}, Landroid/media/MediaExtractor;->seekTo(JI)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_4e} :catch_20
    .catchall {:try_start_4e .. :try_end_4e} :catchall_25

    goto :goto_61

    :catchall_25
    move-exception v0

    move/from16 v6, p8

    move-wide/from16 v53, p14

    move-object v1, v0

    move v9, v7

    move/from16 v41, v10

    move/from16 v5, v18

    move-object/from16 v4, v19

    move-object/from16 v8, v49

    const/4 v7, -0x5

    goto/16 :goto_2b

    :cond_55
    const/4 v10, 0x0

    .line 511
    :try_start_4f
    invoke-virtual {v1, v5, v6, v10}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 514
    :goto_61
    new-instance v5, Lorg/telegram/messenger/video/AudioRecoder;

    invoke-direct {v5, v13, v1, v11}, Lorg/telegram/messenger/video/AudioRecoder;-><init>(Landroid/media/MediaFormat;Landroid/media/MediaExtractor;I)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_4f} :catch_25
    .catchall {:try_start_4f .. :try_end_4f} :catchall_27

    .line 515
    :try_start_50
    iput-wide v2, v5, Lorg/telegram/messenger/video/AudioRecoder;->startTime:J
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_50} :catch_24
    .catchall {:try_start_50 .. :try_end_50} :catchall_27

    move-wide/from16 v12, p14

    .line 516
    :try_start_51
    iput-wide v12, v5, Lorg/telegram/messenger/video/AudioRecoder;->endTime:J

    .line 517
    iget-object v1, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    iget-object v6, v5, Lorg/telegram/messenger/video/AudioRecoder;->format:Landroid/media/MediaFormat;

    const/4 v10, 0x1

    invoke-virtual {v1, v6, v10}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v1
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_51} :catch_23
    .catchall {:try_start_51 .. :try_end_51} :catchall_26

    move v10, v1

    const/4 v1, 0x0

    const/4 v6, 0x0

    goto/16 :goto_6a

    :catchall_26
    move-exception v0

    goto :goto_65

    :catch_23
    move-exception v0

    goto :goto_62

    :catch_24
    move-exception v0

    move-wide/from16 v12, p14

    :goto_62
    move/from16 v10, p9

    move-object/from16 v1, p10

    move-object v2, v0

    move-object/from16 v38, v5

    move-wide/from16 v53, v12

    move-object/from16 v50, v14

    move/from16 v5, v18

    move-object/from16 v4, v19

    const/4 v7, -0x5

    goto/16 :goto_bc

    :catchall_27
    move-exception v0

    goto :goto_63

    :catch_25
    move-exception v0

    goto :goto_64

    :catchall_28
    move-exception v0

    move/from16 v7, p7

    :goto_63
    move-wide/from16 v12, p14

    goto :goto_65

    :catch_26
    move-exception v0

    move/from16 v7, p7

    :goto_64
    move-wide/from16 v12, p14

    goto :goto_67

    :cond_56
    move-wide/from16 v2, p12

    move-wide/from16 v12, p14

    move v7, v1

    move-object/from16 p16, v5

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    goto :goto_69

    :catchall_29
    move-exception v0

    move-wide/from16 v2, p12

    move-wide/from16 v12, p14

    move v7, v1

    :goto_65
    move/from16 v6, p8

    move/from16 v10, p9

    move-object v1, v0

    move v9, v7

    move-wide/from16 v53, v12

    :goto_66
    move/from16 v5, v18

    move-object/from16 v4, v19

    move-object/from16 v8, v49

    goto/16 :goto_28

    :catch_27
    move-exception v0

    move-wide/from16 v2, p12

    move-wide/from16 v12, p14

    move v7, v1

    :goto_67
    move/from16 v10, p9

    move-object/from16 v1, p10

    move-object v2, v0

    move-wide/from16 v53, v12

    :goto_68
    move-object/from16 v50, v14

    move/from16 v5, v18

    move-object/from16 v4, v19

    goto/16 :goto_57

    :cond_57
    move-object/from16 v15, p0

    move-wide/from16 v2, p12

    move-wide/from16 v12, p14

    move v7, v1

    move-object/from16 p16, v5

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x1

    :goto_69
    const/4 v10, -0x5

    :goto_6a
    if-gez v11, :cond_58

    const/16 v28, 0x1

    goto :goto_6b

    :cond_58
    const/16 v28, 0x0

    .line 526
    :goto_6b
    :try_start_52
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_52} :catch_3d
    .catchall {:try_start_52 .. :try_end_52} :catchall_38

    move-object/from16 p14, v1

    move v1, v6

    move-wide/from16 v46, v20

    move-wide/from16 v61, v46

    move-wide/from16 v42, v22

    move/from16 v44, v28

    const/4 v6, 0x0

    const/16 v22, 0x1

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const-wide/16 v35, 0x0

    const/16 v37, -0x5

    const-wide/16 v39, 0x0

    move-object/from16 v23, p16

    :goto_6c
    if-eqz v28, :cond_5a

    if-nez v8, :cond_59

    if-nez v44, :cond_59

    goto :goto_6d

    :cond_59
    move/from16 v6, p8

    move/from16 v10, p9

    move-object/from16 v2, p10

    move-object/from16 v38, v5

    move v11, v7

    move-object v1, v9

    move-wide/from16 v53, v12

    move-object/from16 v50, v14

    move/from16 v5, v18

    move/from16 v7, v37

    move-object/from16 v8, v49

    const/4 v4, 0x0

    const/16 v55, 0x0

    goto/16 :goto_be

    .line 529
    :cond_5a
    :goto_6d
    :try_start_53
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_53} :catch_3c
    .catchall {:try_start_53 .. :try_end_53} :catchall_37

    if-nez v8, :cond_5b

    if-eqz v5, :cond_5b

    move-object/from16 v50, v14

    .line 532
    :try_start_54
    iget-object v14, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    invoke-virtual {v5, v14, v10}, Lorg/telegram/messenger/video/AudioRecoder;->step(Lorg/telegram/messenger/video/MP4Builder;I)Z

    move-result v14
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_54} :catch_28
    .catchall {:try_start_54 .. :try_end_54} :catchall_2a

    move/from16 v44, v14

    goto :goto_6e

    :catch_28
    move-exception v0

    move/from16 v10, p9

    move-object/from16 v1, p10

    move-object v2, v0

    move-object/from16 v38, v5

    goto/16 :goto_ad

    :cond_5b
    move-object/from16 v50, v14

    :goto_6e
    if-nez v6, :cond_6b

    .line 537
    :try_start_55
    iget-object v14, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v14}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v14
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_55} :catch_2a
    .catchall {:try_start_55 .. :try_end_55} :catchall_2a

    move-object/from16 p16, v5

    move/from16 v5, v63

    if-ne v14, v5, :cond_5f

    move/from16 v63, v5

    move/from16 p15, v6

    const-wide/16 v5, 0x9c4

    .line 539
    :try_start_56
    invoke-virtual {v9, v5, v6}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v14

    if-ltz v14, :cond_5e

    .line 542
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-ge v5, v6, :cond_5c

    .line 543
    aget-object v5, v4, v14

    goto :goto_6f

    .line 545
    :cond_5c
    invoke-virtual {v9, v14}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 547
    :goto_6f
    iget-object v6, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    move-object/from16 p17, v4

    const/4 v4, 0x0

    invoke-virtual {v6, v5, v4}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v54

    if-gez v54, :cond_5d

    const/16 v53, 0x0

    const/16 v54, 0x0

    const-wide/16 v55, 0x0

    const/16 v57, 0x4

    move-object/from16 v51, v9

    move/from16 v52, v14

    .line 549
    invoke-virtual/range {v51 .. v57}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const/4 v4, 0x1

    goto :goto_71

    :cond_5d
    const/16 v53, 0x0

    .line 552
    iget-object v4, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v55

    const/16 v57, 0x0

    move-object/from16 v51, v9

    move/from16 v52, v14

    invoke-virtual/range {v51 .. v57}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 553
    iget-object v4, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_70

    :cond_5e
    move-object/from16 p17, v4

    :goto_70
    move/from16 v4, p15

    :goto_71
    move v6, v4

    move/from16 v59, v10

    move/from16 v58, v11

    move-object/from16 v14, v70

    const/4 v5, 0x0

    move-object/from16 v4, p14

    goto/16 :goto_78

    :catch_29
    move-exception v0

    goto/16 :goto_79

    :cond_5f
    move-object/from16 p17, v4

    move/from16 v63, v5

    move/from16 p15, v6

    if-eqz v8, :cond_69

    const/4 v4, -0x1

    if-eq v11, v4, :cond_69

    if-ne v14, v11, :cond_69

    .line 557
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1c

    if-lt v5, v6, :cond_60

    .line 558
    iget-object v6, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getSampleSize()J

    move-result-wide v51

    move v6, v5

    int-to-long v4, v1

    cmp-long v4, v51, v4

    if-lez v4, :cond_61

    const-wide/16 v4, 0x400

    add-long v4, v51, v4

    long-to-int v1, v4

    .line 561
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    move-object/from16 v71, v4

    move v4, v1

    move-object/from16 v1, v71

    goto :goto_72

    :cond_60
    move v6, v5

    :cond_61
    move v4, v1

    move-object/from16 v1, p14

    .line 564
    :goto_72
    iget-object v5, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    const/4 v14, 0x0

    invoke-virtual {v5, v1, v14}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v5

    move-object/from16 v14, v70

    iput v5, v14, Landroid/media/MediaCodec$BufferInfo;->size:I

    move v5, v6

    const/16 v6, 0x15

    if-ge v5, v6, :cond_62

    const/4 v5, 0x0

    .line 566
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 567
    iget v5, v14, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 569
    :cond_62
    iget v5, v14, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ltz v5, :cond_63

    .line 570
    iget-object v5, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v5

    iput-wide v5, v14, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 571
    iget-object v5, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->advance()Z

    move/from16 v5, p15

    goto :goto_73

    :cond_63
    const/4 v5, 0x0

    .line 573
    iput v5, v14, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v5, 0x1

    .line 576
    :goto_73
    iget v6, v14, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v6, :cond_68

    const-wide/16 v51, 0x0

    cmp-long v6, v12, v51

    if-ltz v6, :cond_65

    move/from16 p14, v4

    move/from16 p15, v5

    iget-wide v4, v14, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v4, v4, v12

    if-gez v4, :cond_64

    goto :goto_74

    :cond_64
    move-object/from16 v51, v1

    goto :goto_75

    :cond_65
    move/from16 p14, v4

    move/from16 p15, v5

    :goto_74
    const/4 v4, 0x0

    .line 577
    iput v4, v14, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 578
    iget-object v5, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v5

    iput v5, v14, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 579
    iget-object v5, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    invoke-virtual {v5, v10, v1, v14, v4}, Lorg/telegram/messenger/video/MP4Builder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)J

    move-result-wide v5

    const-wide/16 v51, 0x0

    cmp-long v4, v5, v51

    if-eqz v4, :cond_67

    .line 581
    iget-object v4, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->callback:Lorg/telegram/messenger/MediaController$VideoConvertorListener;

    if-eqz v4, :cond_67

    move/from16 v59, v10

    move/from16 v58, v11

    .line 582
    iget-wide v10, v14, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long v51, v10, v2

    cmp-long v51, v51, v35

    if-lez v51, :cond_66

    sub-long v35, v10, v2

    :cond_66
    move-wide/from16 v10, v35

    move-object/from16 v51, v1

    long-to-float v1, v10

    div-float v1, v1, v26

    div-float v1, v1, v27

    .line 585
    invoke-interface {v4, v5, v6, v1}, Lorg/telegram/messenger/MediaController$VideoConvertorListener;->didWriteData(JF)V

    move-wide/from16 v35, v10

    goto :goto_76

    :cond_67
    move-object/from16 v51, v1

    goto :goto_75

    :cond_68
    move-object/from16 v51, v1

    move/from16 p14, v4

    move/from16 p15, v5

    :goto_75
    move/from16 v59, v10

    move/from16 v58, v11

    :goto_76
    move/from16 v1, p14

    move/from16 v6, p15

    move-object/from16 v4, v51

    goto :goto_77

    :cond_69
    move/from16 v59, v10

    move/from16 v58, v11

    move v4, v14

    move-object/from16 v14, v70

    const/4 v5, -0x1

    if-ne v4, v5, :cond_6a

    move-object/from16 v4, p14

    move/from16 v6, p15

    const/4 v5, 0x1

    goto :goto_78

    :cond_6a
    move-object/from16 v4, p14

    move/from16 v6, p15

    :goto_77
    const/4 v5, 0x0

    :goto_78
    if-eqz v5, :cond_6c

    const-wide/16 v10, 0x9c4

    .line 593
    invoke-virtual {v9, v10, v11}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v52

    if-ltz v52, :cond_6c

    const/16 v53, 0x0

    const/16 v54, 0x0

    const-wide/16 v55, 0x0

    const/16 v57, 0x4

    move-object/from16 v51, v9

    .line 595
    invoke-virtual/range {v51 .. v57}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_56} :catch_29
    .catchall {:try_start_56 .. :try_end_56} :catchall_2a

    const/4 v6, 0x1

    goto :goto_7a

    :catchall_2a
    move-exception v0

    move/from16 v6, p8

    move/from16 v10, p9

    move-object v1, v0

    move v9, v7

    goto/16 :goto_ab

    :catch_2a
    move-exception v0

    move-object/from16 p16, v5

    :goto_79
    move/from16 v10, p9

    move-object/from16 v1, p10

    goto/16 :goto_ac

    :cond_6b
    move-object/from16 p17, v4

    move-object/from16 p16, v5

    move/from16 p15, v6

    move/from16 v59, v10

    move/from16 v58, v11

    move-object/from16 v14, v70

    move-object/from16 v4, p14

    :cond_6c
    :goto_7a
    xor-int/lit8 v5, v29, 0x1

    move v10, v6

    move/from16 v11, v37

    move v6, v5

    const/4 v5, 0x1

    move-wide/from16 v71, v42

    move/from16 v42, v8

    move-wide/from16 v7, v71

    :goto_7b
    if-nez v6, :cond_6e

    if-eqz v5, :cond_6d

    goto :goto_7c

    :cond_6d
    move-object/from16 v5, p16

    move-object/from16 p14, v4

    move v6, v10

    move/from16 v37, v11

    move-object/from16 v70, v14

    move-object/from16 v14, v50

    move/from16 v11, v58

    move/from16 v10, v59

    move-object/from16 v4, p17

    move-wide/from16 v71, v7

    move/from16 v7, p7

    move/from16 v8, v42

    move-wide/from16 v42, v71

    goto/16 :goto_6c

    .line 604
    :cond_6e
    :goto_7c
    :try_start_57
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_57} :catch_3b
    .catchall {:try_start_57 .. :try_end_57} :catchall_36

    if-eqz p21, :cond_6f

    const-wide/16 v51, 0x55f0

    move-object/from16 p14, v4

    move/from16 p15, v5

    move-wide/from16 v4, v51

    goto :goto_7d

    :cond_6f
    move-object/from16 p14, v4

    move/from16 p15, v5

    const-wide/16 v4, 0x9c4

    :goto_7d
    move/from16 v71, v1

    move-object/from16 v1, p10

    move/from16 p10, v71

    .line 605
    :try_start_58
    invoke-virtual {v1, v14, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v4
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_58} :catch_3a
    .catchall {:try_start_58 .. :try_end_58} :catchall_36

    const/4 v5, -0x1

    if-ne v4, v5, :cond_70

    move/from16 v37, v6

    move-wide/from16 v51, v7

    move/from16 v43, v10

    move-wide/from16 v53, v12

    move-object/from16 v6, v45

    move/from16 v10, v66

    move/from16 v7, v67

    move-object/from16 v8, v69

    move v12, v5

    const/4 v5, 0x0

    goto/16 :goto_8c

    :cond_70
    const/4 v5, -0x3

    if-ne v4, v5, :cond_72

    .line 609
    :try_start_59
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    move/from16 v37, v6

    const/16 v6, 0x15

    if-ge v5, v6, :cond_71

    .line 610
    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v23

    :cond_71
    move/from16 v5, p15

    move-wide/from16 v51, v7

    move/from16 v43, v10

    move-wide/from16 v53, v12

    move-object/from16 v6, v45

    :goto_7e
    move/from16 v10, v66

    move/from16 v7, v67

    move-object/from16 v8, v69

    const/4 v12, -0x1

    goto/16 :goto_8c

    :catchall_2b
    move-exception v0

    move/from16 v9, p7

    move/from16 v6, p8

    move/from16 v10, p9

    move-object v1, v0

    move v7, v11

    move-wide/from16 v53, v12

    goto/16 :goto_a5

    :catch_2b
    move-exception v0

    move/from16 v10, p9

    move-object/from16 v38, p16

    move-object v2, v0

    move v7, v11

    move-wide/from16 v53, v12

    goto/16 :goto_aa

    :cond_72
    move/from16 v37, v6

    const/4 v5, -0x2

    if-ne v4, v5, :cond_76

    .line 613
    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v5

    const/4 v6, -0x5

    if-ne v11, v6, :cond_75

    if-eqz v5, :cond_75

    .line 615
    iget-object v6, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    move/from16 v43, v10

    const/4 v10, 0x0

    invoke-virtual {v6, v5, v10}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v6
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_59} :catch_2b
    .catchall {:try_start_59 .. :try_end_59} :catchall_2b

    move-object/from16 v10, v68

    .line 616
    :try_start_5a
    invoke-virtual {v5, v10}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_73

    invoke-virtual {v5, v10}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v11
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5a} :catch_2d
    .catchall {:try_start_5a .. :try_end_5a} :catchall_2d

    move/from16 v51, v6

    const/4 v6, 0x1

    if-ne v11, v6, :cond_74

    move-object/from16 v6, v45

    .line 617
    :try_start_5b
    invoke-virtual {v5, v6}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v11

    move-object/from16 v68, v10

    const-string v10, "csd-1"

    .line 618
    invoke-virtual {v5, v10}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 619
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->limit()I

    move-result v10

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5b} :catch_2c
    .catchall {:try_start_5b .. :try_end_5b} :catchall_2c

    add-int/2addr v10, v5

    move/from16 v30, v10

    goto :goto_7f

    :catchall_2c
    move-exception v0

    goto :goto_80

    :catch_2c
    move-exception v0

    goto :goto_81

    :cond_73
    move/from16 v51, v6

    :cond_74
    move-object/from16 v68, v10

    move-object/from16 v6, v45

    :goto_7f
    move/from16 v11, v51

    goto :goto_82

    :catchall_2d
    move-exception v0

    move/from16 v51, v6

    :goto_80
    move/from16 v9, p7

    move/from16 v6, p8

    move/from16 v10, p9

    move-object v1, v0

    move-wide/from16 v53, v12

    move/from16 v5, v18

    move-object/from16 v4, v19

    move-object/from16 v8, v49

    move/from16 v7, v51

    goto/16 :goto_c8

    :catch_2d
    move-exception v0

    move/from16 v51, v6

    :goto_81
    move/from16 v10, p9

    move-object/from16 v38, p16

    move-object v2, v0

    move-wide/from16 v53, v12

    move/from16 v5, v18

    move-object/from16 v4, v19

    move/from16 v7, v51

    goto/16 :goto_bc

    :cond_75
    move/from16 v43, v10

    move-object/from16 v6, v45

    :goto_82
    move/from16 v5, p15

    move-wide/from16 v51, v7

    move-wide/from16 v53, v12

    goto/16 :goto_7e

    :cond_76
    move/from16 v43, v10

    move-object/from16 v6, v45

    if-ltz v4, :cond_a0

    .line 626
    :try_start_5c
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5c} :catch_3a
    .catchall {:try_start_5c .. :try_end_5c} :catchall_36

    const/16 v10, 0x15

    if-ge v5, v10, :cond_77

    .line 627
    :try_start_5d
    aget-object v5, v23, v4
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_5d} :catch_2b
    .catchall {:try_start_5d .. :try_end_5d} :catchall_2b

    goto :goto_83

    .line 629
    :cond_77
    :try_start_5e
    invoke-virtual {v1, v4}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    :goto_83
    if-eqz v5, :cond_9f

    .line 634
    iget v10, v14, Landroid/media/MediaCodec$BufferInfo;->size:I
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_5e} :catch_3a
    .catchall {:try_start_5e .. :try_end_5e} :catchall_36

    move-wide/from16 v51, v7

    const/4 v7, 0x1

    if-le v10, v7, :cond_83

    .line 635
    :try_start_5f
    iget v7, v14, Landroid/media/MediaCodec$BufferInfo;->flags:I
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_5f} :catch_2e
    .catchall {:try_start_5f .. :try_end_5f} :catchall_2e

    and-int/lit8 v8, v7, 0x2

    if-nez v8, :cond_7f

    if-eqz v30, :cond_78

    and-int/lit8 v8, v7, 0x1

    if-eqz v8, :cond_78

    .line 637
    :try_start_60
    iget v8, v14, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int v8, v8, v30

    iput v8, v14, Landroid/media/MediaCodec$BufferInfo;->offset:I

    sub-int v10, v10, v30

    .line 638
    iput v10, v14, Landroid/media/MediaCodec$BufferInfo;->size:I
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_60} :catch_2b
    .catchall {:try_start_60 .. :try_end_60} :catchall_2b

    :cond_78
    if-eqz v22, :cond_7c

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_7c

    .line 641
    :try_start_61
    iget v7, v14, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/16 v8, 0x64

    if-le v7, v8, :cond_7a

    .line 642
    iget v7, v14, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v7, 0x64

    new-array v7, v7, [B

    .line 644
    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_61} :catch_2e
    .catchall {:try_start_61 .. :try_end_61} :catchall_2e

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_84
    move-wide/from16 v53, v12

    const/16 v12, 0x60

    if-ge v8, v12, :cond_7b

    .line 647
    :try_start_62
    aget-byte v12, v7, v8

    if-nez v12, :cond_79

    add-int/lit8 v12, v8, 0x1

    aget-byte v12, v7, v12

    if-nez v12, :cond_79

    add-int/lit8 v12, v8, 0x2

    aget-byte v12, v7, v12

    if-nez v12, :cond_79

    add-int/lit8 v12, v8, 0x3

    aget-byte v12, v7, v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_79

    add-int/lit8 v10, v10, 0x1

    if-le v10, v13, :cond_79

    .line 650
    iget v7, v14, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v7, v8

    iput v7, v14, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 651
    iget v7, v14, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v7, v8

    iput v7, v14, Landroid/media/MediaCodec$BufferInfo;->size:I

    goto :goto_85

    :cond_79
    add-int/lit8 v8, v8, 0x1

    move-wide/from16 v12, v53

    goto :goto_84

    :cond_7a
    move-wide/from16 v53, v12

    :cond_7b
    :goto_85
    const/16 v22, 0x0

    goto :goto_86

    :cond_7c
    move-wide/from16 v53, v12

    .line 659
    :goto_86
    iget-object v7, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    const/4 v8, 0x1

    invoke-virtual {v7, v11, v5, v14, v8}, Lorg/telegram/messenger/video/MP4Builder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)J

    move-result-wide v12

    const-wide/16 v7, 0x0

    cmp-long v5, v12, v7

    if-eqz v5, :cond_7e

    .line 661
    iget-object v5, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->callback:Lorg/telegram/messenger/MediaController$VideoConvertorListener;

    if-eqz v5, :cond_7e

    .line 662
    iget-wide v7, v14, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long v55, v7, v2

    cmp-long v10, v55, v35

    if-lez v10, :cond_7d

    sub-long v35, v7, v2

    :cond_7d
    move-wide/from16 v7, v35

    long-to-float v10, v7

    div-float v10, v10, v26

    div-float v10, v10, v27

    .line 665
    invoke-interface {v5, v12, v13, v10}, Lorg/telegram/messenger/MediaController$VideoConvertorListener;->didWriteData(JF)V

    move-wide/from16 v35, v7

    :cond_7e
    :goto_87
    move/from16 v10, v66

    move/from16 v7, v67

    move-object/from16 v8, v69

    goto/16 :goto_8a

    :cond_7f
    move-wide/from16 v53, v12

    const/4 v7, -0x5

    if-ne v11, v7, :cond_7e

    .line 669
    new-array v7, v10, [B

    .line 670
    iget v8, v14, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v8, v10

    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 671
    iget v8, v14, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 672
    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 675
    iget v5, v14, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v8, 0x1

    sub-int/2addr v5, v8

    :goto_88
    if-ltz v5, :cond_81

    const/4 v10, 0x3

    if-le v5, v10, :cond_81

    .line 677
    aget-byte v12, v7, v5

    if-ne v12, v8, :cond_80

    add-int/lit8 v12, v5, -0x1

    aget-byte v12, v7, v12

    if-nez v12, :cond_80

    add-int/lit8 v12, v5, -0x2

    aget-byte v12, v7, v12

    if-nez v12, :cond_80

    add-int/lit8 v12, v5, -0x3

    aget-byte v13, v7, v12

    if-nez v13, :cond_80

    .line 678
    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 679
    iget v13, v14, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v13, v12

    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v13

    const/4 v8, 0x0

    .line 680
    invoke-virtual {v5, v7, v8, v12}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 681
    iget v10, v14, Landroid/media/MediaCodec$BufferInfo;->size:I

    sub-int/2addr v10, v12

    invoke-virtual {v13, v7, v12, v10}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_89

    :cond_80
    add-int/lit8 v5, v5, -0x1

    const/4 v8, 0x1

    goto :goto_88

    :cond_81
    const/4 v5, 0x0

    const/4 v13, 0x0

    :goto_89
    move/from16 v10, v66

    move/from16 v7, v67

    move-object/from16 v8, v69

    .line 689
    invoke-static {v8, v7, v10}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v12

    if-eqz v5, :cond_82

    if-eqz v13, :cond_82

    .line 691
    invoke-virtual {v12, v6, v5}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    const-string v5, "csd-1"

    .line 692
    invoke-virtual {v12, v5, v13}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 694
    :cond_82
    iget-object v5, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    const/4 v13, 0x0

    invoke-virtual {v5, v12, v13}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v5
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_62} :catch_2f
    .catchall {:try_start_62 .. :try_end_62} :catchall_2f

    move v11, v5

    goto :goto_8a

    :catchall_2e
    move-exception v0

    move-wide/from16 v53, v12

    goto/16 :goto_8e

    :catch_2e
    move-exception v0

    move-wide/from16 v53, v12

    goto/16 :goto_8f

    :cond_83
    move-wide/from16 v53, v12

    goto/16 :goto_87

    .line 697
    :goto_8a
    :try_start_63
    iget v5, v14, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_84

    const/4 v5, 0x1

    goto :goto_8b

    :cond_84
    const/4 v5, 0x0

    :goto_8b
    const/4 v12, 0x0

    .line 698
    invoke-virtual {v1, v4, v12}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    move/from16 v28, v5

    const/4 v12, -0x1

    move/from16 v5, p15

    :goto_8c
    if-eq v4, v12, :cond_85

    move-object/from16 v4, p14

    move-object/from16 v45, v6

    move/from16 v67, v7

    move-object/from16 v69, v8

    move/from16 v66, v10

    move/from16 v6, v37

    move/from16 v10, v43

    move-wide/from16 v7, v51

    move-wide/from16 v12, v53

    :goto_8d
    move-object/from16 v71, v1

    move/from16 v1, p10

    move-object/from16 p10, v71

    goto/16 :goto_7b

    :cond_85
    if-nez v29, :cond_9e

    const-wide/16 v12, 0x9c4

    .line 705
    invoke-virtual {v9, v14, v12, v13}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v4
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_63} :catch_38
    .catchall {:try_start_63 .. :try_end_63} :catchall_34

    const/4 v12, -0x1

    if-ne v4, v12, :cond_86

    move/from16 p15, v5

    move-object/from16 v45, v6

    move/from16 v67, v7

    move-object/from16 v69, v8

    move-object v5, v9

    move/from16 v66, v10

    move-wide/from16 v7, v51

    move-wide/from16 v12, v53

    move-object/from16 v6, v60

    const-wide/16 v2, 0x0

    const/16 v37, 0x0

    const/16 v41, -0x5

    move/from16 v10, p9

    goto/16 :goto_a2

    :cond_86
    const/4 v13, -0x3

    if-ne v4, v13, :cond_87

    goto/16 :goto_a0

    :cond_87
    const/4 v13, -0x2

    if-ne v4, v13, :cond_88

    .line 711
    :try_start_64
    invoke-virtual {v9}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v4

    .line 712
    sget-boolean v13, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v13, :cond_9e

    .line 713
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "newFormat = "

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_64} :catch_2f
    .catchall {:try_start_64 .. :try_end_64} :catchall_2f

    goto/16 :goto_a0

    :catchall_2f
    move-exception v0

    :goto_8e
    move/from16 v9, p7

    move/from16 v6, p8

    move/from16 v10, p9

    goto/16 :goto_a4

    :catch_2f
    move-exception v0

    :goto_8f
    move/from16 v10, p9

    goto/16 :goto_a8

    :cond_88
    if-ltz v4, :cond_9d

    .line 718
    :try_start_65
    iget v12, v14, Landroid/media/MediaCodec$BufferInfo;->size:I

    move/from16 p15, v5

    move-object/from16 v45, v6

    if-eqz v12, :cond_89

    const/4 v12, 0x1

    goto :goto_90

    :cond_89
    const/4 v12, 0x0

    .line 719
    :goto_90
    iget-wide v5, v14, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_65} :catch_37
    .catchall {:try_start_65 .. :try_end_65} :catchall_34

    const-wide/16 v55, 0x0

    cmp-long v13, v53, v55

    if-lez v13, :cond_8a

    cmp-long v13, v5, v53

    if-ltz v13, :cond_8a

    .line 724
    :try_start_66
    iget v12, v14, Landroid/media/MediaCodec$BufferInfo;->flags:I

    or-int/lit8 v12, v12, 0x4

    iput v12, v14, Landroid/media/MediaCodec$BufferInfo;->flags:I
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_66} :catch_2f
    .catchall {:try_start_66 .. :try_end_66} :catchall_2f

    const/4 v12, 0x0

    const/16 v29, 0x1

    const/16 v43, 0x1

    :cond_8a
    const-wide/16 v55, 0x0

    cmp-long v13, v33, v55

    if-ltz v13, :cond_8d

    .line 727
    :try_start_67
    iget v13, v14, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v13, v13, 0x4

    if-eqz v13, :cond_8d

    sub-long v55, v33, v2

    invoke-static/range {v55 .. v56}, Ljava/lang/Math;->abs(J)J

    move-result-wide v55
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_67} :catch_2f
    .catchall {:try_start_67 .. :try_end_67} :catchall_33

    const v13, 0xf4240

    move/from16 v66, v10

    move/from16 v10, p9

    :try_start_68
    div-int/2addr v13, v10
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_68} :catch_31
    .catchall {:try_start_68 .. :try_end_68} :catchall_32

    move/from16 v67, v7

    move-object/from16 v69, v8

    int-to-long v7, v13

    cmp-long v7, v55, v7

    if-lez v7, :cond_8c

    const-wide/16 v7, 0x0

    cmp-long v12, v2, v7

    if-lez v12, :cond_8b

    .line 729
    :try_start_69
    iget-object v7, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    const/4 v8, 0x0

    invoke-virtual {v7, v2, v3, v8}, Landroid/media/MediaExtractor;->seekTo(JI)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_69} :catch_31
    .catchall {:try_start_69 .. :try_end_69} :catchall_35

    const/4 v8, 0x0

    goto :goto_91

    .line 731
    :cond_8b
    :try_start_6a
    iget-object v7, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6a} :catch_31
    .catchall {:try_start_6a .. :try_end_6a} :catchall_32

    const/4 v8, 0x0

    const-wide/16 v12, 0x0

    :try_start_6b
    invoke-virtual {v7, v12, v13, v8}, Landroid/media/MediaExtractor;->seekTo(JI)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_6b} :catch_31
    .catchall {:try_start_6b .. :try_end_6b} :catchall_31

    :goto_91
    add-long v39, v51, v31

    .line 739
    :try_start_6c
    iget v7, v14, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/16 v41, -0x5

    and-int/lit8 v7, v7, -0x5

    iput v7, v14, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 740
    invoke-virtual {v9}, Landroid/media/MediaCodec;->flush()V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_6c} :catch_30
    .catchall {:try_start_6c .. :try_end_6c} :catchall_30

    move v12, v8

    move/from16 v29, v12

    move/from16 v43, v29

    move-wide/from16 v53, v33

    const/4 v7, 0x1

    const-wide/16 v55, 0x0

    move-wide/from16 v33, v20

    goto/16 :goto_95

    :catchall_30
    move-exception v0

    move/from16 v9, p7

    move/from16 v6, p8

    move-object v1, v0

    move/from16 v41, v8

    move v7, v11

    move/from16 v5, v18

    move-object/from16 v4, v19

    move-wide/from16 v53, v33

    move-object/from16 v8, v49

    move-wide/from16 v33, v20

    goto/16 :goto_c9

    :catch_30
    move-exception v0

    move-object/from16 v38, p16

    move-object v2, v0

    move v7, v11

    move/from16 v5, v18

    move-object/from16 v4, v19

    move-wide/from16 v53, v33

    move-wide/from16 v33, v20

    goto/16 :goto_bc

    :catchall_31
    move-exception v0

    goto :goto_93

    :cond_8c
    const/4 v8, 0x0

    const/16 v41, -0x5

    goto :goto_94

    :catchall_32
    move-exception v0

    goto :goto_92

    :catch_31
    move-exception v0

    goto/16 :goto_a8

    :catchall_33
    move-exception v0

    move/from16 v10, p9

    :goto_92
    const/4 v8, 0x0

    :goto_93
    move/from16 v9, p7

    move/from16 v6, p8

    move-object v1, v0

    move/from16 v41, v8

    move v7, v11

    move/from16 v5, v18

    move-object/from16 v4, v19

    move-object/from16 v8, v49

    goto/16 :goto_c9

    :cond_8d
    move/from16 v67, v7

    move-object/from16 v69, v8

    move/from16 v66, v10

    const/4 v8, 0x0

    const/16 v41, -0x5

    move/from16 v10, p9

    :goto_94
    move v7, v8

    const-wide/16 v55, 0x0

    :goto_95
    cmp-long v13, v46, v55

    if-lez v13, :cond_8e

    move-object/from16 v48, v9

    .line 743
    :try_start_6d
    iget-wide v8, v14, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long v8, v8, v46

    cmp-long v8, v8, v24

    if-gez v8, :cond_8f

    iget v8, v14, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v8, v8, 0x4

    if-nez v8, :cond_8f

    const-wide/16 v8, 0x0

    const/4 v12, 0x0

    goto :goto_96

    :catch_32
    move-exception v0

    move-object/from16 v38, p16

    move-object v2, v0

    move v7, v11

    move/from16 v5, v18

    move-object/from16 v4, v19

    move-object/from16 v9, v48

    goto/16 :goto_bc

    :cond_8e
    move-object/from16 v48, v9

    :cond_8f
    const-wide/16 v8, 0x0

    :goto_96
    cmp-long v13, v33, v8

    if-ltz v13, :cond_90

    move-wide/from16 v2, v33

    :cond_90
    cmp-long v56, v2, v8

    if-lez v56, :cond_94

    cmp-long v8, v61, v20

    if-nez v8, :cond_94

    cmp-long v5, v5, v2

    if-gez v5, :cond_92

    .line 750
    sget-boolean v5, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v5, :cond_91

    .line 751
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "drop frame startTime = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " present time = "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v14, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_91
    const/4 v6, 0x0

    goto :goto_97

    .line 754
    :cond_92
    iget-wide v2, v14, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/32 v5, -0x80000000

    cmp-long v5, v51, v5

    if-eqz v5, :cond_93

    sub-long v39, v39, v2

    :cond_93
    move-wide/from16 v61, v2

    :cond_94
    move v6, v12

    :goto_97
    if-eqz v7, :cond_95

    move-wide/from16 v61, v20

    move-object/from16 v5, v48

    const-wide/16 v2, 0x0

    goto :goto_99

    :cond_95
    cmp-long v2, v33, v20

    if-nez v2, :cond_96

    const-wide/16 v2, 0x0

    cmp-long v5, v39, v2

    if-eqz v5, :cond_97

    .line 764
    iget-wide v7, v14, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    add-long v7, v7, v39

    iput-wide v7, v14, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_6d} :catch_32
    .catchall {:try_start_6d .. :try_end_6d} :catchall_35

    goto :goto_98

    :cond_96
    const-wide/16 v2, 0x0

    :cond_97
    :goto_98
    move-object/from16 v5, v48

    .line 766
    :try_start_6e
    invoke-virtual {v5, v4, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    :goto_99
    if-eqz v6, :cond_9a

    .line 769
    iget-wide v6, v14, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_6e} :catch_36
    .catchall {:try_start_6e .. :try_end_6e} :catchall_35

    move-wide/from16 v8, v51

    if-ltz v13, :cond_98

    .line 771
    :try_start_6f
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_6f} :catch_33
    .catchall {:try_start_6f .. :try_end_6f} :catchall_35

    goto :goto_9a

    :catch_33
    move-exception v0

    goto :goto_9e

    .line 775
    :cond_98
    :goto_9a
    :try_start_70
    invoke-virtual/range {v50 .. v50}, Lorg/telegram/messenger/video/OutputSurface;->awaitNewImage()V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_70} :catch_34
    .catchall {:try_start_70 .. :try_end_70} :catchall_35

    const/4 v4, 0x0

    goto :goto_9b

    :catch_34
    move-exception v0

    move-object v4, v0

    .line 778
    :try_start_71
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v4, 0x1

    :goto_9b
    if-nez v4, :cond_99

    .line 781
    invoke-virtual/range {v50 .. v50}, Lorg/telegram/messenger/video/OutputSurface;->drawImage()V

    .line 782
    iget-wide v12, v14, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_71} :catch_36
    .catchall {:try_start_71 .. :try_end_71} :catchall_35

    const-wide/16 v46, 0x3e8

    mul-long v12, v12, v46

    move-object/from16 v4, v60

    :try_start_72
    invoke-virtual {v4, v12, v13}, Lorg/telegram/messenger/video/InputSurface;->setPresentationTime(J)V

    .line 783
    invoke-virtual {v4}, Lorg/telegram/messenger/video/InputSurface;->swapBuffers()Z

    goto :goto_9c

    :cond_99
    move-object/from16 v4, v60

    :goto_9c
    move-wide/from16 v46, v6

    goto :goto_9d

    :cond_9a
    move-wide/from16 v8, v51

    move-object/from16 v4, v60

    :goto_9d
    move-wide v7, v8

    .line 786
    iget v6, v14, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_9c

    .line 788
    sget-boolean v6, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v6, :cond_9b

    const-string v6, "decoder stream end"

    .line 789
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 791
    :cond_9b
    invoke-virtual {v1}, Landroid/media/MediaCodec;->signalEndOfInputStream()V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_72} :catch_35
    .catchall {:try_start_72 .. :try_end_72} :catchall_35

    move-object v6, v4

    move-wide/from16 v12, v53

    const/16 v37, 0x0

    goto/16 :goto_a2

    :cond_9c
    move-object v6, v4

    goto/16 :goto_a1

    :catch_35
    move-exception v0

    move-object/from16 v38, p16

    move-object v2, v0

    move-object/from16 v60, v4

    goto :goto_9f

    :catch_36
    move-exception v0

    move-object/from16 v4, v60

    :goto_9e
    move-object/from16 v38, p16

    move-object v2, v0

    :goto_9f
    move-object v9, v5

    goto/16 :goto_a9

    :catch_37
    move-exception v0

    move/from16 v10, p9

    move-object v5, v9

    move-object/from16 v4, v60

    goto/16 :goto_a8

    :cond_9d
    move/from16 v10, p9

    move-object v5, v9

    move-object/from16 v6, v60

    .line 716
    :try_start_73
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unexpected result from decoder.dequeueOutputBuffer: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_34
    move-exception v0

    move/from16 v10, p9

    goto/16 :goto_a3

    :catch_38
    move-exception v0

    move/from16 v10, p9

    move-object v5, v9

    goto/16 :goto_a7

    :cond_9e
    :goto_a0
    move/from16 p15, v5

    move-object/from16 v45, v6

    move/from16 v67, v7

    move-object/from16 v69, v8

    move-object v5, v9

    move/from16 v66, v10

    move-wide/from16 v8, v51

    move-object/from16 v6, v60

    const-wide/16 v2, 0x0

    const/16 v41, -0x5

    move/from16 v10, p9

    move-wide v7, v8

    :goto_a1
    move-wide/from16 v12, v53

    :goto_a2
    move-wide/from16 v2, p12

    move-object/from16 v4, p14

    move-object v9, v5

    move-object/from16 v60, v6

    move/from16 v6, v37

    move/from16 v10, v43

    move/from16 v5, p15

    goto/16 :goto_8d

    :cond_9f
    move/from16 v10, p9

    move-object v5, v9

    move-wide/from16 v53, v12

    move-object/from16 v6, v60

    .line 632
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "encoderOutputBuffer "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " was null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_a0
    move/from16 v10, p9

    move-object v5, v9

    move-wide/from16 v53, v12

    move-object/from16 v6, v60

    .line 623
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unexpected result from encoder.dequeueOutputBuffer: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_73} :catch_39
    .catchall {:try_start_73 .. :try_end_73} :catchall_35

    :catchall_35
    move-exception v0

    goto :goto_a3

    :catch_39
    move-exception v0

    move-object/from16 v38, p16

    move-object v2, v0

    move-object v9, v5

    move-object/from16 v60, v6

    goto :goto_a9

    :catch_3a
    move-exception v0

    move/from16 v10, p9

    goto :goto_a6

    :catchall_36
    move-exception v0

    move/from16 v10, p9

    move-wide/from16 v53, v12

    :goto_a3
    move/from16 v9, p7

    move/from16 v6, p8

    :goto_a4
    move-object v1, v0

    move v7, v11

    :goto_a5
    move/from16 v5, v18

    move-object/from16 v4, v19

    goto/16 :goto_b4

    :catch_3b
    move-exception v0

    move/from16 v10, p9

    move-object/from16 v1, p10

    :goto_a6
    move-object v5, v9

    move-wide/from16 v53, v12

    :goto_a7
    move-object/from16 v6, v60

    :goto_a8
    move-object/from16 v38, p16

    move-object v2, v0

    :goto_a9
    move v7, v11

    :goto_aa
    move/from16 v5, v18

    move-object/from16 v4, v19

    goto/16 :goto_bc

    :catchall_37
    move-exception v0

    move/from16 v10, p9

    move/from16 v9, p7

    move/from16 v6, p8

    move-object v1, v0

    :goto_ab
    move-wide/from16 v53, v12

    move/from16 v5, v18

    move-object/from16 v4, v19

    move/from16 v7, v37

    goto/16 :goto_b4

    :catch_3c
    move-exception v0

    move/from16 v10, p9

    move-object/from16 v1, p10

    move-object/from16 p16, v5

    move-object v5, v9

    move-object/from16 v50, v14

    move-object/from16 v6, v60

    :goto_ac
    move-object/from16 v38, p16

    move-object v2, v0

    :goto_ad
    move-wide/from16 v53, v12

    move/from16 v5, v18

    move-object/from16 v4, v19

    move/from16 v7, v37

    goto/16 :goto_bc

    :catchall_38
    move-exception v0

    move/from16 v10, p9

    const/16 v41, -0x5

    goto/16 :goto_b3

    :catch_3d
    move-exception v0

    move/from16 v10, p9

    move-object/from16 v1, p10

    move-object/from16 p16, v5

    move-object v5, v9

    move-object/from16 v50, v14

    move-object/from16 v6, v60

    const/16 v41, -0x5

    move-object/from16 v38, p16

    move-object v2, v0

    move-wide/from16 v53, v12

    move/from16 v5, v18

    move-object/from16 v4, v19

    move/from16 v7, v41

    goto/16 :goto_bc

    :catch_3e
    move-exception v0

    move-object/from16 v15, p0

    move/from16 v10, p9

    move-object/from16 v1, p10

    move-wide/from16 v12, p14

    move-object v5, v9

    move-object/from16 v50, v14

    move-object/from16 v6, v60

    const/16 v41, -0x5

    move-object v2, v0

    goto :goto_ae

    :catch_3f
    move-exception v0

    move-object/from16 v15, p0

    move/from16 v10, p9

    move-object/from16 v1, p10

    move-wide/from16 v12, p14

    move-object/from16 v50, v14

    move-object/from16 v5, v58

    move-object/from16 v6, v60

    const/16 v41, -0x5

    move-object v2, v0

    move-object v9, v5

    :goto_ae
    move-wide/from16 v53, v12

    move/from16 v5, v18

    move-object/from16 v4, v19

    move/from16 v7, v41

    :goto_af
    const/16 v38, 0x0

    goto/16 :goto_bc

    :catchall_39
    move-exception v0

    const/16 v41, -0x5

    move-object/from16 v15, p0

    move/from16 v10, p9

    goto/16 :goto_b2

    :catch_40
    move-exception v0

    move-object/from16 v15, p0

    move/from16 v10, p9

    move-object/from16 v1, p10

    move-wide/from16 v12, p14

    move-object/from16 v5, v58

    move-object/from16 v6, v60

    const/16 v41, -0x5

    move-object v2, v0

    move-object v9, v5

    goto :goto_b0

    :catchall_3a
    move-exception v0

    const/16 v41, -0x5

    move-object/from16 v15, p0

    move-wide/from16 v12, p14

    move-wide/from16 v33, p16

    move-object/from16 v19, v11

    move v10, v14

    goto/16 :goto_b3

    :catch_41
    move-exception v0

    move-object/from16 v15, p0

    move-wide/from16 v12, p14

    move-wide/from16 v33, p16

    move-object v5, v1

    move-object v6, v2

    move-object v1, v7

    move-object/from16 v19, v11

    move v10, v14

    move/from16 v63, v29

    const/16 v41, -0x5

    move-object v2, v0

    move-object v9, v5

    move-object/from16 v60, v6

    :goto_b0
    move-wide/from16 v53, v12

    move/from16 v5, v18

    move-object/from16 v4, v19

    move/from16 v7, v41

    goto :goto_b1

    :catch_42
    move-exception v0

    move-wide/from16 v33, p16

    move-object v6, v2

    move-object v1, v7

    move-object/from16 v19, v11

    move-object v15, v13

    move v10, v14

    move/from16 v63, v29

    const/16 v41, -0x5

    move-wide/from16 v12, p14

    move-object v2, v0

    move-object/from16 v60, v6

    move-wide/from16 v53, v12

    move/from16 v5, v18

    move-object/from16 v4, v19

    move/from16 v7, v41

    const/4 v9, 0x0

    :goto_b1
    const/16 v38, 0x0

    const/16 v50, 0x0

    goto/16 :goto_bc

    :catchall_3b
    move-exception v0

    move-wide/from16 v33, p16

    move-object/from16 v19, v11

    move-object v15, v13

    move v10, v14

    const/16 v41, -0x5

    :goto_b2
    move-wide/from16 v12, p14

    :goto_b3
    move/from16 v9, p7

    move/from16 v6, p8

    move-object v1, v0

    move-wide/from16 v53, v12

    move/from16 v5, v18

    move-object/from16 v4, v19

    move/from16 v7, v41

    :goto_b4
    move-object/from16 v8, v49

    goto/16 :goto_c8

    :catch_43
    move-exception v0

    move-wide/from16 v33, p16

    move-object v1, v7

    move-object/from16 v19, v11

    move-object v15, v13

    move v10, v14

    move/from16 v63, v29

    const/16 v41, -0x5

    move-wide/from16 v12, p14

    move-object v2, v0

    move-wide/from16 v53, v12

    move/from16 v5, v18

    move-object/from16 v4, v19

    move/from16 v7, v41

    goto/16 :goto_ba

    :catchall_3c
    move-exception v0

    move-wide/from16 v33, p16

    move-object v15, v13

    move v10, v14

    const/16 v41, -0x5

    move-wide/from16 v12, p14

    move/from16 v9, p7

    move/from16 v6, p8

    move-object v1, v0

    move-wide/from16 v53, v12

    move/from16 v5, v18

    goto/16 :goto_b7

    :catch_44
    move-exception v0

    move-wide/from16 v33, p16

    move-object v1, v7

    move-object v15, v13

    move v10, v14

    move/from16 v63, v29

    const/16 v41, -0x5

    move-wide/from16 v12, p14

    move-object v2, v0

    move-wide/from16 v53, v12

    move/from16 v5, v18

    goto :goto_b5

    :catch_45
    move-exception v0

    move-wide/from16 v33, p16

    move-object v1, v7

    move-object v15, v13

    move v10, v14

    move/from16 v63, v29

    const/16 v41, -0x5

    move-wide/from16 v12, p14

    move-object v2, v0

    move-wide/from16 v53, v12

    :goto_b5
    move/from16 v7, v41

    goto :goto_b9

    :catchall_3d
    move-exception v0

    move-wide/from16 v33, p16

    move-object v15, v13

    move v10, v14

    const/16 v41, -0x5

    move-wide/from16 v12, p14

    move/from16 v9, p7

    move/from16 v6, p8

    goto :goto_b6

    :catch_46
    move-exception v0

    move-wide/from16 v33, p16

    move-object v15, v13

    move v10, v14

    move/from16 v63, v29

    const/16 v41, -0x5

    move-wide/from16 v12, p14

    goto :goto_b8

    :catchall_3e
    move-exception v0

    move-object v15, v13

    move v10, v14

    const/16 v41, -0x5

    move-wide/from16 v12, p14

    move/from16 v9, p7

    move/from16 v6, p8

    move/from16 v5, p10

    move-wide/from16 v33, p16

    :goto_b6
    move-object v1, v0

    move-wide/from16 v53, v12

    :goto_b7
    move/from16 v7, v41

    move-object/from16 v8, v49

    goto/16 :goto_c7

    :catch_47
    move-exception v0

    move/from16 v63, v6

    move-object v15, v13

    move v10, v14

    const/16 v41, -0x5

    move-wide/from16 v12, p14

    move/from16 v5, p10

    move-wide/from16 v33, p16

    :goto_b8
    move-object v2, v0

    move-wide/from16 v53, v12

    move/from16 v7, v41

    const/4 v1, 0x0

    :goto_b9
    const/4 v4, 0x0

    :goto_ba
    const/4 v9, 0x0

    :goto_bb
    const/16 v38, 0x0

    const/16 v50, 0x0

    const/16 v60, 0x0

    .line 801
    :goto_bc
    :try_start_74
    instance-of v3, v2, Ljava/lang/IllegalStateException;
    :try_end_74
    .catchall {:try_start_74 .. :try_end_74} :catchall_44

    if-eqz v3, :cond_a1

    if-nez p21, :cond_a1

    const/16 v55, 0x1

    goto :goto_bd

    :cond_a1
    const/16 v55, 0x0

    .line 804
    :goto_bd
    :try_start_75
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bitrate: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " framerate: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " size: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_75
    .catchall {:try_start_75 .. :try_end_75} :catchall_43

    move/from16 v6, p8

    :try_start_76
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_76
    .catchall {:try_start_76 .. :try_end_76} :catchall_42

    move-object/from16 v8, v49

    :try_start_77
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_77
    .catchall {:try_start_77 .. :try_end_77} :catchall_41

    move/from16 v11, p7

    :try_start_78
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 805
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_78
    .catchall {:try_start_78 .. :try_end_78} :catchall_40

    move-object v2, v1

    move-object/from16 v19, v4

    move-object v1, v9

    const/4 v4, 0x1

    .line 809
    :goto_be
    :try_start_79
    iget-object v3, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    move/from16 v9, v63

    invoke-virtual {v3, v9}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    if-eqz v1, :cond_a2

    .line 811
    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    .line 812
    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V
    :try_end_79
    .catchall {:try_start_79 .. :try_end_79} :catchall_3f

    :cond_a2
    move-object/from16 v1, v38

    move/from16 v3, v55

    move-object/from16 v38, v60

    move/from16 v55, v4

    move-object/from16 v4, v50

    goto :goto_c2

    :catchall_3f
    move-exception v0

    move-object v1, v0

    move v9, v11

    move-object/from16 v4, v19

    goto :goto_c1

    :catchall_40
    move-exception v0

    goto :goto_c0

    :catchall_41
    move-exception v0

    move/from16 v11, p7

    goto :goto_c0

    :catchall_42
    move-exception v0

    move/from16 v11, p7

    goto :goto_bf

    :catchall_43
    move-exception v0

    move/from16 v11, p7

    move/from16 v6, p8

    :goto_bf
    move-object/from16 v8, v49

    :goto_c0
    move-object v1, v0

    move v9, v11

    :goto_c1
    move/from16 v41, v55

    goto/16 :goto_c9

    :catchall_44
    move-exception v0

    move/from16 v11, p7

    move/from16 v6, p8

    move-object/from16 v8, v49

    move-object v1, v0

    move v9, v11

    goto/16 :goto_c8

    :cond_a3
    move/from16 v11, p7

    move/from16 v6, p8

    move-object v15, v13

    move v10, v14

    move-object/from16 v8, v49

    const/16 v41, -0x5

    move-wide/from16 v12, p14

    move/from16 v5, p10

    move-wide/from16 v33, p16

    move-wide/from16 v53, v12

    move/from16 v7, v41

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v19, 0x0

    const/16 v38, 0x0

    const/16 v55, 0x0

    :goto_c2
    if-eqz v4, :cond_a4

    .line 816
    :try_start_7a
    invoke-virtual {v4}, Lorg/telegram/messenger/video/OutputSurface;->release()V

    goto :goto_c3

    :catchall_45
    move-exception v0

    move-object v1, v0

    move/from16 v41, v3

    move v9, v11

    move-object/from16 v4, v19

    goto/16 :goto_c9

    :cond_a4
    :goto_c3
    if-eqz v38, :cond_a5

    .line 819
    invoke-virtual/range {v38 .. v38}, Lorg/telegram/messenger/video/InputSurface;->release()V

    :cond_a5
    if-eqz v2, :cond_a6

    .line 822
    invoke-virtual {v2}, Landroid/media/MediaCodec;->stop()V

    .line 823
    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V

    :cond_a6
    if-eqz v1, :cond_a7

    .line 826
    invoke-virtual {v1}, Lorg/telegram/messenger/video/AudioRecoder;->release()V

    .line 828
    :cond_a7
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V
    :try_end_7a
    .catchall {:try_start_7a .. :try_end_7a} :catchall_45

    move/from16 v41, v3

    move v9, v11

    move/from16 v4, v55

    .line 838
    :goto_c4
    iget-object v1, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    if-eqz v1, :cond_a8

    .line 839
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    .line 841
    :cond_a8
    iget-object v1, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    if-eqz v1, :cond_a9

    .line 843
    :try_start_7b
    invoke-virtual {v1}, Lorg/telegram/messenger/video/MP4Builder;->finishMovie()V

    .line 844
    iget-object v1, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    invoke-virtual {v1, v7}, Lorg/telegram/messenger/video/MP4Builder;->getLastFrameTimestamp(I)J

    move-result-wide v1

    iput-wide v1, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->endPresentationTime:J
    :try_end_7b
    .catchall {:try_start_7b .. :try_end_7b} :catchall_46

    goto :goto_c5

    :catchall_46
    move-exception v0

    move-object v1, v0

    .line 846
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_a9
    :goto_c5
    move v11, v5

    move v8, v9

    move-object/from16 v1, v19

    goto/16 :goto_cb

    :catchall_47
    move-exception v0

    move-wide/from16 v12, p14

    move-object v15, v7

    goto :goto_c6

    :catchall_48
    move-exception v0

    move-wide/from16 v12, p14

    :goto_c6
    move v11, v9

    move v6, v10

    const/16 v41, -0x5

    move v10, v8

    move-object v8, v5

    move/from16 v5, p10

    move-wide/from16 v33, p16

    move-object v1, v0

    move-wide/from16 v53, v12

    move/from16 v7, v41

    :goto_c7
    const/4 v4, 0x0

    :goto_c8
    const/16 v41, 0x0

    .line 835
    :goto_c9
    :try_start_7c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bitrate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " framerate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 836
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_7c
    .catchall {:try_start_7c .. :try_end_7c} :catchall_4a

    .line 838
    iget-object v1, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    if-eqz v1, :cond_aa

    .line 839
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    .line 841
    :cond_aa
    iget-object v1, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    if-eqz v1, :cond_ab

    .line 843
    :try_start_7d
    invoke-virtual {v1}, Lorg/telegram/messenger/video/MP4Builder;->finishMovie()V

    .line 844
    iget-object v1, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    invoke-virtual {v1, v7}, Lorg/telegram/messenger/video/MP4Builder;->getLastFrameTimestamp(I)J

    move-result-wide v1

    iput-wide v1, v15, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->endPresentationTime:J
    :try_end_7d
    .catchall {:try_start_7d .. :try_end_7d} :catchall_49

    goto :goto_ca

    :catchall_49
    move-exception v0

    move-object v1, v0

    .line 846
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_ab
    :goto_ca
    move-object v1, v4

    move v11, v5

    move v8, v9

    const/4 v4, 0x1

    :goto_cb
    move v9, v6

    if-eqz v41, :cond_ac

    const/16 v22, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v10, p9

    move/from16 v12, p11

    move-wide/from16 v13, p12

    move-wide/from16 v15, v53

    move-wide/from16 v17, v33

    move-wide/from16 v19, p18

    move/from16 v21, p20

    move-object/from16 v23, p22

    move-object/from16 v24, p23

    move-object/from16 v25, p24

    move/from16 v26, p25

    move-object/from16 v27, p26

    move/from16 v28, p27

    .line 852
    invoke-direct/range {v1 .. v28}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->convertVideoInternal(Ljava/lang/String;Ljava/io/File;IZIIIIIIIJJJJZZLorg/telegram/messenger/MediaController$SavedFilterState;Ljava/lang/String;Ljava/util/ArrayList;ZLorg/telegram/messenger/MediaController$CropState;Z)Z

    move-result v1

    return v1

    .line 859
    :cond_ac
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v16

    .line 860
    sget-boolean v5, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v5, :cond_ad

    .line 861
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "compression completed time="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " needCompress="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p20

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " w="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " h="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bitrate="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " file size="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->formatFileSize(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " encoder_name="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_ad
    return v4

    :catchall_4a
    move-exception v0

    move-object/from16 v1, p0

    move-object v2, v0

    .line 838
    iget-object v3, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->extractor:Landroid/media/MediaExtractor;

    if-eqz v3, :cond_ae

    .line 839
    invoke-virtual {v3}, Landroid/media/MediaExtractor;->release()V

    .line 841
    :cond_ae
    iget-object v3, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    if-eqz v3, :cond_af

    .line 843
    :try_start_7e
    invoke-virtual {v3}, Lorg/telegram/messenger/video/MP4Builder;->finishMovie()V

    .line 844
    iget-object v3, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    invoke-virtual {v3, v7}, Lorg/telegram/messenger/video/MP4Builder;->getLastFrameTimestamp(I)J

    move-result-wide v3

    iput-wide v3, v1, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->endPresentationTime:J
    :try_end_7e
    .catchall {:try_start_7e .. :try_end_7e} :catchall_4b

    goto :goto_cc

    :catchall_4b
    move-exception v0

    move-object v3, v0

    .line 846
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 849
    :cond_af
    :goto_cc
    throw v2
.end method

.method private static createFragmentShader(IIIIZ)Ljava/lang/String;
    .locals 3

    .line 1034
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    float-to-int v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 1036
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->deviceIsAverage()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 1039
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "source size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "    dest size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "   kernelRadius "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    const-string p2, ".0;\nconst float pixelSizeY = 1.0 / "

    const-string p3, ".0;\nconst float pixelSizeX = 1.0 / "

    if-eqz p4, :cond_1

    .line 1042
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nconst float kernel = "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ".0;\nuniform samplerExternalOES sTexture;\nvoid main() {\nvec3 accumulation = vec3(0);\nvec3 weightsum = vec3(0);\nfor (float x = -kernel; x <= kernel; x++){\n   for (float y = -kernel; y <= kernel; y++){\n       accumulation += texture2D(sTexture, vTextureCoord + vec2(x * pixelSizeX, y * pixelSizeY)).xyz;\n       weightsum += 1.0;\n   }\n}\ngl_FragColor = vec4(accumulation / weightsum, 1.0);\n}\n"

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1061
    :cond_1
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "precision mediump float;\nvarying vec2 vTextureCoord;\nconst float kernel = "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ".0;\nuniform sampler2D sTexture;\nvoid main() {\nvec3 accumulation = vec3(0);\nvec3 weightsum = vec3(0);\nfor (float x = -kernel; x <= kernel; x++){\n   for (float y = -kernel; y <= kernel; y++){\n       accumulation += texture2D(sTexture, vTextureCoord + vec2(x * pixelSizeX, y * pixelSizeY)).xyz;\n       weightsum += 1.0;\n   }\n}\ngl_FragColor = vec4(accumulation / weightsum, 1.0);\n}\n"

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isMediatekAvcEncoder(Landroid/media/MediaCodec;)Z
    .locals 1

    .line 868
    invoke-virtual {p1}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "c2.mtk.avc.encoder"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private readAndWriteTracks(Landroid/media/MediaExtractor;Lorg/telegram/messenger/video/MP4Builder;Landroid/media/MediaCodec$BufferInfo;JJJLjava/io/File;Z)J
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    const/4 v6, 0x0

    .line 873
    invoke-static {v1, v6}, Lorg/telegram/messenger/MediaController;->findTrack(Landroid/media/MediaExtractor;Z)I

    move-result v7

    const/4 v9, 0x1

    if-eqz p11, :cond_0

    .line 874
    invoke-static {v1, v9}, Lorg/telegram/messenger/MediaController;->findTrack(Landroid/media/MediaExtractor;Z)I

    move-result v0

    move-wide/from16 v11, p8

    move v10, v0

    goto :goto_0

    :cond_0
    move-wide/from16 v11, p8

    const/4 v10, -0x1

    :goto_0
    long-to-float v0, v11

    const/high16 v11, 0x447a0000    # 1000.0f

    div-float v12, v0, v11

    const-string v13, "max-input-size"

    const-wide/16 v14, 0x0

    if-ltz v7, :cond_2

    .line 884
    invoke-virtual {v1, v7}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 885
    invoke-virtual {v1, v7}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    .line 886
    invoke-virtual {v2, v0, v6}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v16

    .line 888
    :try_start_0
    invoke-virtual {v0, v13}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object/from16 v17, v0

    .line 890
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move v0, v6

    :goto_1
    cmp-long v17, v4, v14

    if-lez v17, :cond_1

    .line 894
    invoke-virtual {v1, v4, v5, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V

    goto :goto_2

    .line 896
    :cond_1
    invoke-virtual {v1, v14, v15, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V

    :goto_2
    move v11, v0

    goto :goto_3

    :cond_2
    move v11, v6

    const/16 v16, -0x1

    :goto_3
    if-ltz v10, :cond_5

    .line 900
    invoke-virtual {v1, v10}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 901
    invoke-virtual {v1, v10}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v8, "mime"

    .line 903
    invoke-virtual {v0, v8}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v6, "audio/unknown"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, -0x1

    const/4 v10, -0x1

    goto :goto_5

    .line 906
    :cond_3
    invoke-virtual {v2, v0, v9}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v6

    .line 908
    :try_start_1
    invoke-virtual {v0, v13}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 910
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_4
    cmp-long v0, v4, v14

    if-lez v0, :cond_4

    const/4 v8, 0x0

    .line 913
    invoke-virtual {v1, v4, v5, v8}, Landroid/media/MediaExtractor;->seekTo(JI)V

    goto :goto_5

    :cond_4
    const/4 v8, 0x0

    .line 915
    invoke-virtual {v1, v14, v15, v8}, Landroid/media/MediaExtractor;->seekTo(JI)V

    goto :goto_5

    :cond_5
    const/4 v6, -0x1

    :goto_5
    if-gtz v11, :cond_6

    const/high16 v11, 0x10000

    .line 922
    :cond_6
    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const-wide/16 v18, -0x1

    if-gez v10, :cond_8

    if-ltz v7, :cond_7

    goto :goto_6

    :cond_7
    return-wide v18

    .line 925
    :cond_8
    :goto_6
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V

    move-wide/from16 v22, v14

    move-wide/from16 v20, v18

    const/4 v8, 0x0

    :goto_7
    if-nez v8, :cond_21

    .line 927
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->checkConversionCanceled()V

    .line 930
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x1c

    if-lt v13, v14, :cond_9

    .line 931
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->getSampleSize()J

    move-result-wide v14

    move/from16 p9, v10

    int-to-long v9, v11

    cmp-long v9, v14, v9

    if-lez v9, :cond_a

    const-wide/16 v9, 0x400

    add-long/2addr v14, v9

    long-to-int v0, v14

    .line 934
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    move v11, v0

    move-object v0, v9

    goto :goto_8

    :cond_9
    move/from16 p9, v10

    :cond_a
    :goto_8
    const/4 v9, 0x0

    .line 937
    invoke-virtual {v1, v0, v9}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v10

    iput v10, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 938
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v10

    if-ne v10, v7, :cond_b

    move/from16 v14, p9

    move/from16 v15, v16

    :goto_9
    const/4 v9, -0x1

    goto :goto_a

    :cond_b
    move/from16 v14, p9

    if-ne v10, v14, :cond_c

    move v15, v6

    goto :goto_9

    :cond_c
    const/4 v9, -0x1

    const/4 v15, -0x1

    :goto_a
    if-eq v15, v9, :cond_1e

    const/16 v9, 0x15

    if-ge v13, v9, :cond_d

    const/4 v9, 0x0

    .line 948
    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 949
    iget v9, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_d
    if-eq v10, v14, :cond_13

    .line 952
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    if-eqz v9, :cond_13

    .line 954
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v13

    .line 955
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v24

    add-int v24, v13, v24

    move/from16 p9, v6

    move v6, v13

    const/4 v13, -0x1

    :goto_b
    const/16 v25, 0x4

    move/from16 p11, v8

    add-int/lit8 v8, v24, -0x4

    if-gt v6, v8, :cond_14

    .line 958
    aget-byte v26, v9, v6

    if-nez v26, :cond_e

    add-int/lit8 v26, v6, 0x1

    aget-byte v26, v9, v26

    if-nez v26, :cond_e

    add-int/lit8 v26, v6, 0x2

    aget-byte v26, v9, v26

    if-nez v26, :cond_e

    add-int/lit8 v26, v6, 0x3

    move/from16 v27, v11

    aget-byte v11, v9, v26

    move/from16 v26, v14

    const/4 v14, 0x1

    if-eq v11, v14, :cond_f

    goto :goto_c

    :cond_e
    move/from16 v27, v11

    move/from16 v26, v14

    const/4 v14, 0x1

    :goto_c
    if-ne v6, v8, :cond_12

    :cond_f
    const/4 v11, -0x1

    if-eq v13, v11, :cond_11

    sub-int v11, v6, v13

    if-eq v6, v8, :cond_10

    goto :goto_d

    :cond_10
    const/16 v25, 0x0

    :goto_d
    sub-int v11, v11, v25

    shr-int/lit8 v8, v11, 0x18

    int-to-byte v8, v8

    .line 961
    aput-byte v8, v9, v13

    add-int/lit8 v8, v13, 0x1

    shr-int/lit8 v14, v11, 0x10

    int-to-byte v14, v14

    .line 962
    aput-byte v14, v9, v8

    add-int/lit8 v8, v13, 0x2

    shr-int/lit8 v14, v11, 0x8

    int-to-byte v14, v14

    .line 963
    aput-byte v14, v9, v8

    add-int/lit8 v13, v13, 0x3

    int-to-byte v8, v11

    .line 964
    aput-byte v8, v9, v13

    :cond_11
    move v13, v6

    :cond_12
    add-int/lit8 v6, v6, 0x1

    move/from16 v8, p11

    move/from16 v14, v26

    move/from16 v11, v27

    goto :goto_b

    :cond_13
    move/from16 p9, v6

    move/from16 p11, v8

    :cond_14
    move/from16 v27, v11

    move/from16 v26, v14

    .line 973
    iget v6, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ltz v6, :cond_15

    .line 974
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    iput-wide v8, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const/4 v8, 0x0

    goto :goto_e

    :cond_15
    const/4 v6, 0x0

    .line 976
    iput v6, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v8, 0x1

    .line 980
    :goto_e
    iget v6, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v6, :cond_19

    if-nez v8, :cond_19

    if-ne v10, v7, :cond_16

    const-wide/16 v9, 0x0

    cmp-long v6, v4, v9

    if-lez v6, :cond_17

    cmp-long v6, v20, v18

    if-nez v6, :cond_17

    .line 982
    iget-wide v13, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-wide/from16 v20, v13

    goto :goto_f

    :cond_16
    const-wide/16 v9, 0x0

    :cond_17
    :goto_f
    cmp-long v6, p6, v9

    if-ltz v6, :cond_1b

    .line 984
    iget-wide v9, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v6, v9, p6

    if-gez v6, :cond_18

    goto :goto_10

    :cond_18
    const/4 v8, 0x1

    :cond_19
    move-object/from16 v11, p0

    :cond_1a
    const/high16 v24, 0x447a0000    # 1000.0f

    goto :goto_12

    :cond_1b
    :goto_10
    const/4 v6, 0x0

    .line 985
    iput v6, v3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 986
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v9

    iput v9, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 987
    invoke-virtual {v2, v15, v0, v3, v6}, Lorg/telegram/messenger/video/MP4Builder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)J

    move-result-wide v9

    const-wide/16 v13, 0x0

    cmp-long v11, v9, v13

    if-eqz v11, :cond_19

    move-object/from16 v11, p0

    .line 989
    iget-object v15, v11, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->callback:Lorg/telegram/messenger/MediaController$VideoConvertorListener;

    if-eqz v15, :cond_1a

    .line 990
    iget-wide v13, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long v24, v13, v20

    cmp-long v17, v24, v22

    if-lez v17, :cond_1c

    sub-long v13, v13, v20

    goto :goto_11

    :cond_1c
    move-wide/from16 v13, v22

    :goto_11
    long-to-float v6, v13

    const/high16 v24, 0x447a0000    # 1000.0f

    div-float v6, v6, v24

    div-float/2addr v6, v12

    .line 993
    invoke-interface {v15, v9, v10, v6}, Lorg/telegram/messenger/MediaController$VideoConvertorListener;->didWriteData(JF)V

    move-wide/from16 v22, v13

    :goto_12
    if-nez v8, :cond_1d

    .line 1001
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->advance()Z

    :cond_1d
    const/4 v6, -0x1

    goto :goto_13

    :cond_1e
    move/from16 p9, v6

    move/from16 p11, v8

    move v6, v9

    move/from16 v27, v11

    move/from16 v26, v14

    const/high16 v24, 0x447a0000    # 1000.0f

    move-object/from16 v11, p0

    if-ne v10, v6, :cond_1f

    const/4 v8, 0x1

    goto :goto_13

    .line 1006
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaExtractor;->advance()Z

    const/4 v8, 0x0

    :goto_13
    if-eqz v8, :cond_20

    const/4 v8, 0x1

    goto :goto_14

    :cond_20
    move/from16 v8, p11

    :goto_14
    move/from16 v6, p9

    move/from16 v10, v26

    move/from16 v11, v27

    const/4 v9, 0x1

    const-wide/16 v14, 0x0

    goto/16 :goto_7

    :cond_21
    move-object/from16 v11, p0

    move/from16 v26, v10

    if-ltz v7, :cond_22

    .line 1013
    invoke-virtual {v1, v7}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    :cond_22
    if-ltz v26, :cond_23

    move/from16 v10, v26

    .line 1016
    invoke-virtual {v1, v10}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    :cond_23
    return-wide v20
.end method


# virtual methods
.method public convertVideo(Ljava/lang/String;Ljava/io/File;IZIIIIIIIJJJZJLorg/telegram/messenger/MediaController$SavedFilterState;Ljava/lang/String;Ljava/util/ArrayList;ZLorg/telegram/messenger/MediaController$CropState;ZLorg/telegram/messenger/MediaController$VideoConvertorListener;)Z
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "IZIIIIIIIJJJZJ",
            "Lorg/telegram/messenger/MediaController$SavedFilterState;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/VideoEditedInfo$MediaEntity;",
            ">;Z",
            "Lorg/telegram/messenger/MediaController$CropState;",
            "Z",
            "Lorg/telegram/messenger/MediaController$VideoConvertorListener;",
            ")Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-wide/from16 v12, p12

    move-wide/from16 v14, p14

    move-wide/from16 v16, p16

    move/from16 v20, p18

    move-wide/from16 v18, p19

    move-object/from16 v22, p21

    move-object/from16 v23, p22

    move-object/from16 v24, p23

    move/from16 v25, p24

    move-object/from16 v26, p25

    move/from16 v27, p26

    move-object/from16 v28, v0

    move-object/from16 v1, p27

    .line 59
    iput-object v1, v0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->callback:Lorg/telegram/messenger/MediaController$VideoConvertorListener;

    const/16 v21, 0x0

    move-object/from16 v1, p1

    .line 60
    invoke-direct/range {v0 .. v27}, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->convertVideoInternal(Ljava/lang/String;Ljava/io/File;IZIIIIIIIJJJJZZLorg/telegram/messenger/MediaController$SavedFilterState;Ljava/lang/String;Ljava/util/ArrayList;ZLorg/telegram/messenger/MediaController$CropState;Z)Z

    move-result v0

    return v0
.end method

.method public getLastFrameTimestamp()J
    .locals 2

    .line 65
    iget-wide v0, p0, Lorg/telegram/messenger/video/MediaCodecVideoConvertor;->endPresentationTime:J

    return-wide v0
.end method
