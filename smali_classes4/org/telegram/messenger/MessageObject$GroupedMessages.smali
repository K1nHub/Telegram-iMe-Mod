.class public Lorg/telegram/messenger/MessageObject$GroupedMessages;
.super Ljava/lang/Object;
.source "MessageObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MessageObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupedMessages"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;,
        Lorg/telegram/messenger/MessageObject$GroupedMessages$MessageGroupedLayoutAttempt;
    }
.end annotation


# instance fields
.field public captionMessage:Lorg/telegram/messenger/MessageObject;

.field public groupId:J

.field public hasCaption:Z

.field public hasSibling:Z

.field public isDocuments:Z

.field private maxSizeWidth:I

.field public messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field public posArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;",
            ">;"
        }
    .end annotation
.end field

.field public positions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;",
            ">;"
        }
    .end annotation
.end field

.field public reversed:Z

.field public final transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    .line 1157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    .line 1158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->positions:Ljava/util/HashMap;

    const/16 v0, 0x320

    .line 1162
    iput v0, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    .line 1164
    new-instance v0, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    invoke-direct {v0}, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    return-void
.end method

.method private multiHeight([FII)F
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge p2, p3, :cond_0

    .line 1190
    aget v1, p1, p2

    add-float/2addr v0, v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1192
    :cond_0
    iget p1, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    int-to-float p1, p1

    div-float/2addr p1, v0

    return p1
.end method


# virtual methods
.method public calculate()V
    .locals 38

    move-object/from16 v0, p0

    .line 1198
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1199
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->positions:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const/4 v1, 0x0

    .line 1200
    iput-object v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->captionMessage:Lorg/telegram/messenger/MessageObject;

    const/16 v2, 0x320

    .line 1202
    iput v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    .line 1205
    iget-object v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 1207
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    iput-object v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->captionMessage:Lorg/telegram/messenger/MessageObject;

    return-void

    :cond_0
    if-ge v2, v4, :cond_1

    return-void

    .line 1214
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1221
    iput-boolean v3, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->hasSibling:Z

    .line 1223
    iput-boolean v3, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->hasCaption:Z

    .line 1226
    iget-boolean v7, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->reversed:Z

    if-eqz v7, :cond_2

    add-int/lit8 v7, v2, -0x1

    goto :goto_0

    :cond_2
    move v7, v3

    :goto_0
    const/high16 v8, 0x3f800000    # 1.0f

    move v9, v3

    move v11, v9

    move v12, v11

    move v13, v4

    move v10, v8

    :goto_1
    iget-boolean v14, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->reversed:Z

    const v15, 0x3f99999a    # 1.2f

    if-eqz v14, :cond_3

    if-ltz v7, :cond_17

    goto :goto_2

    :cond_3
    if-ge v7, v2, :cond_17

    .line 1227
    :goto_2
    iget-object v14, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/messenger/MessageObject;

    .line 1228
    iget-boolean v5, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->reversed:Z

    if-eqz v5, :cond_4

    add-int/lit8 v5, v2, -0x1

    goto :goto_3

    :cond_4
    move v5, v3

    :goto_3
    if-ne v7, v5, :cond_b

    .line 1229
    invoke-virtual {v14}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v12

    if-nez v12, :cond_8

    .line 1230
    iget-object v5, v14, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v9, v5, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    if-eqz v9, :cond_6

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->saved_from_peer:Lorg/telegram/tgnet/TLRPC$Peer;

    if-nez v9, :cond_5

    goto :goto_4

    :cond_5
    move/from16 v16, v2

    goto :goto_5

    :cond_6
    :goto_4
    iget-object v9, v5, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v9, v9, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    if-eqz v9, :cond_8

    iget-object v9, v5, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move/from16 v16, v2

    iget-wide v1, v9, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    const-wide/16 v17, 0x0

    cmp-long v1, v1, v17

    if-nez v1, :cond_7

    iget-wide v1, v9, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    cmp-long v1, v1, v17

    if-nez v1, :cond_7

    .line 1233
    invoke-static {v5}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-nez v1, :cond_7

    iget-object v1, v14, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v1}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    if-eqz v1, :cond_9

    :cond_7
    :goto_5
    move v9, v4

    goto :goto_6

    :cond_8
    move/from16 v16, v2

    :cond_9
    move v9, v3

    .line 1235
    :goto_6
    invoke-virtual {v14}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v14}, Lorg/telegram/messenger/MessageObject;->isDocument()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1236
    :cond_a
    iput-boolean v4, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->isDocuments:Z

    goto :goto_7

    :cond_b
    move/from16 v16, v2

    .line 1239
    :cond_c
    :goto_7
    iget-object v1, v14, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    .line 1240
    new-instance v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    invoke-direct {v2}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;-><init>()V

    .line 1241
    iget-boolean v5, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->reversed:Z

    if-eqz v5, :cond_d

    if-nez v7, :cond_e

    goto :goto_8

    :cond_d
    add-int/lit8 v5, v16, -0x1

    if-ne v7, v5, :cond_e

    :goto_8
    move v5, v4

    goto :goto_9

    :cond_e
    move v5, v3

    :goto_9
    iput-boolean v5, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->last:Z

    if-nez v1, :cond_f

    move v5, v8

    goto :goto_a

    .line 1242
    :cond_f
    iget v5, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    int-to-float v5, v5

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    int-to-float v1, v1

    div-float/2addr v5, v1

    :goto_a
    iput v5, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    cmpl-float v1, v5, v15

    if-lez v1, :cond_10

    const-string/jumbo v1, "w"

    .line 1245
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_10
    const v1, 0x3f4ccccd    # 0.8f

    cmpg-float v1, v5, v1

    if-gez v1, :cond_11

    const-string/jumbo v1, "n"

    .line 1247
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_11
    const-string/jumbo v1, "q"

    .line 1249
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1252
    :goto_b
    iget v1, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    add-float/2addr v10, v1

    const/high16 v5, 0x40000000    # 2.0f

    cmpl-float v1, v1, v5

    if-lez v1, :cond_12

    move v11, v4

    .line 1258
    :cond_12
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->positions:Ljava/util/HashMap;

    invoke-virtual {v1, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1259
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1261
    iget-object v1, v14, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    if-eqz v1, :cond_15

    if-eqz v13, :cond_14

    .line 1262
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->captionMessage:Lorg/telegram/messenger/MessageObject;

    if-nez v1, :cond_14

    .line 1263
    iput-object v14, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->captionMessage:Lorg/telegram/messenger/MessageObject;

    move v13, v3

    :cond_13
    const/4 v1, 0x0

    goto :goto_c

    .line 1265
    :cond_14
    iget-boolean v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->isDocuments:Z

    if-nez v1, :cond_13

    const/4 v1, 0x0

    .line 1266
    iput-object v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->captionMessage:Lorg/telegram/messenger/MessageObject;

    .line 1268
    :goto_c
    iput-boolean v4, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->hasCaption:Z

    goto :goto_d

    :cond_15
    const/4 v1, 0x0

    .line 1271
    :goto_d
    iget-boolean v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->reversed:Z

    if-eqz v2, :cond_16

    add-int/lit8 v7, v7, -0x1

    goto :goto_e

    :cond_16
    add-int/lit8 v7, v7, 0x1

    :goto_e
    move/from16 v2, v16

    goto/16 :goto_1

    :cond_17
    move/from16 v16, v2

    .line 1277
    iget-boolean v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->isDocuments:Z

    const/16 v5, 0x3e8

    const/4 v7, 0x4

    const/4 v13, 0x3

    if-eqz v2, :cond_21

    move v1, v3

    move/from16 v2, v16

    :goto_f
    if-ge v1, v2, :cond_20

    .line 1279
    iget-object v6, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    .line 1280
    iput v13, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    .line 1281
    iget-boolean v9, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->reversed:Z

    if-nez v9, :cond_18

    if-eqz v1, :cond_19

    :cond_18
    if-eqz v9, :cond_1a

    add-int/lit8 v10, v2, -0x1

    if-ne v1, v10, :cond_1a

    :cond_19
    or-int/lit8 v10, v13, 0x4

    .line 1282
    iput v10, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    .line 1283
    iput-boolean v3, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->last:Z

    goto :goto_10

    :cond_1a
    if-eqz v9, :cond_1b

    if-eqz v1, :cond_1c

    :cond_1b
    if-nez v9, :cond_1d

    add-int/lit8 v10, v2, -0x1

    if-ne v1, v10, :cond_1d

    :cond_1c
    or-int/lit8 v10, v13, 0x8

    .line 1285
    iput v10, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    .line 1286
    iput-boolean v4, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->last:Z

    .line 1288
    :cond_1d
    :goto_10
    iput-boolean v4, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->edge:Z

    .line 1289
    iput v8, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    .line 1290
    iput-byte v3, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minX:B

    .line 1291
    iput-byte v3, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxX:B

    if-eqz v9, :cond_1e

    add-int/lit8 v10, v2, -0x1

    sub-int/2addr v10, v1

    goto :goto_11

    :cond_1e
    move v10, v1

    :goto_11
    int-to-byte v10, v10

    .line 1292
    iput-byte v10, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    if-eqz v9, :cond_1f

    add-int/lit8 v9, v2, -0x1

    sub-int/2addr v9, v1

    goto :goto_12

    :cond_1f
    move v9, v1

    :goto_12
    int-to-byte v9, v9

    .line 1293
    iput-byte v9, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxY:B

    .line 1294
    iput v5, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    .line 1295
    iget v9, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    iput v9, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->pw:I

    const/high16 v9, 0x42c80000    # 100.0f

    .line 1296
    iput v9, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->ph:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_20
    return-void

    :cond_21
    move/from16 v2, v16

    if-eqz v9, :cond_22

    .line 1302
    iget v9, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    add-int/lit8 v9, v9, -0x32

    iput v9, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    const/16 v9, 0xfa

    goto :goto_13

    :cond_22
    const/16 v9, 0xc8

    :goto_13
    const/16 v14, 0x78

    .line 1306
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    .line 1307
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    int-to-float v14, v14

    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v15, v5, Landroid/graphics/Point;->x:I

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-static {v15, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    iget v15, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    int-to-float v15, v15

    div-float/2addr v5, v15

    div-float/2addr v14, v5

    float-to-int v5, v14

    const/16 v14, 0x28

    .line 1308
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    int-to-float v14, v14

    sget-object v15, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v8, v15, Landroid/graphics/Point;->x:I

    iget v15, v15, Landroid/graphics/Point;->y:I

    invoke-static {v8, v15}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-float v8, v8

    iget v15, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    int-to-float v4, v15

    div-float/2addr v8, v4

    div-float/2addr v14, v8

    float-to-int v4, v14

    int-to-float v8, v15

    const v14, 0x444b8000    # 814.0f

    div-float/2addr v8, v14

    int-to-float v15, v2

    div-float/2addr v10, v15

    const/16 v15, 0x64

    .line 1313
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v15, v14

    const/4 v14, 0x2

    if-nez v11, :cond_32

    if-eq v2, v14, :cond_23

    if-eq v2, v13, :cond_23

    if-ne v2, v7, :cond_32

    :cond_23
    const v7, 0x43cb8000    # 407.0f

    if-ne v2, v14, :cond_29

    .line 1317
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    .line 1318
    iget-object v4, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    const/4 v13, 0x1

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    .line 1319
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v13, "ww"

    .line 1320
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_24

    float-to-double v14, v10

    const-wide v20, 0x3ff6666666666666L    # 1.4

    move/from16 v28, v12

    float-to-double v11, v8

    mul-double v11, v11, v20

    cmpl-double v8, v14, v11

    if-lez v8, :cond_25

    iget v8, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    iget v10, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    sub-float v11, v8, v10

    float-to-double v11, v11

    const-wide v14, 0x3fc999999999999aL    # 0.2

    cmpg-double v11, v11, v14

    if-gez v11, :cond_25

    .line 1321
    iget v5, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    int-to-float v6, v5

    div-float/2addr v6, v8

    int-to-float v5, v5

    div-float/2addr v5, v10

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    const v6, 0x444b8000    # 814.0f

    div-float/2addr v5, v6

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    .line 1322
    iget v6, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    const/16 v27, 0x7

    move-object/from16 v20, v1

    move/from16 v25, v6

    move/from16 v26, v5

    invoke-virtual/range {v20 .. v27}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/16 v23, 0x1

    const/16 v24, 0x1

    .line 1323
    iget v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    const/16 v27, 0xb

    move-object/from16 v20, v4

    move/from16 v25, v1

    invoke-virtual/range {v20 .. v27}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    move v1, v3

    goto/16 :goto_17

    :cond_24
    move/from16 v28, v12

    .line 1324
    :cond_25
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_28

    const-string/jumbo v7, "qq"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_26

    goto :goto_15

    .line 1331
    :cond_26
    iget v6, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    int-to-float v7, v6

    const v8, 0x3ecccccd    # 0.4f

    mul-float/2addr v7, v8

    int-to-float v6, v6

    iget v8, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v6, v8

    const/high16 v10, 0x3f800000    # 1.0f

    div-float v8, v10, v8

    iget v11, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v10, v11

    add-float/2addr v8, v10

    div-float/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    float-to-int v6, v6

    .line 1332
    iget v7, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    sub-int/2addr v7, v6

    if-ge v7, v5, :cond_27

    sub-int v7, v5, v7

    sub-int/2addr v6, v7

    goto :goto_14

    :cond_27
    move v5, v7

    :goto_14
    int-to-float v7, v5

    .line 1339
    iget v8, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v7, v8

    int-to-float v8, v6

    iget v10, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v8, v10

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    const v8, 0x444b8000    # 814.0f

    invoke-static {v8, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    div-float/2addr v7, v8

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v27, 0xd

    move-object/from16 v20, v1

    move/from16 v25, v5

    move/from16 v26, v7

    .line 1340
    invoke-virtual/range {v20 .. v27}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v27, 0xe

    move-object/from16 v20, v4

    move/from16 v25, v6

    .line 1341
    invoke-virtual/range {v20 .. v27}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    goto :goto_16

    .line 1325
    :cond_28
    :goto_15
    iget v5, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    const/4 v6, 0x2

    div-int/2addr v5, v6

    int-to-float v6, v5

    .line 1326
    iget v7, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float v7, v6, v7

    iget v8, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v6, v8

    const v8, 0x444b8000    # 814.0f

    invoke-static {v6, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v7, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v8

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v27, 0xd

    move-object/from16 v20, v1

    move/from16 v25, v5

    move/from16 v26, v6

    .line 1327
    invoke-virtual/range {v20 .. v27}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v27, 0xe

    move-object/from16 v20, v4

    .line 1328
    invoke-virtual/range {v20 .. v27}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    :goto_16
    const/4 v1, 0x1

    :goto_17
    move v13, v1

    goto/16 :goto_33

    :cond_29
    move/from16 v28, v12

    const v8, 0x44064f5d

    if-ne v2, v13, :cond_2d

    .line 1345
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    .line 1346
    iget-object v10, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    .line 1347
    iget-object v11, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    .line 1348
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    const/16 v12, 0x6e

    if-ne v6, v12, :cond_2b

    .line 1349
    iget v6, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    iget v8, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    int-to-float v8, v8

    mul-float/2addr v8, v6

    iget v12, v11, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    add-float/2addr v12, v6

    div-float/2addr v8, v12

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v7, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    const v7, 0x444b8000    # 814.0f

    sub-float v8, v7, v6

    int-to-float v5, v5

    .line 1351
    iget v7, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    int-to-float v7, v7

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float/2addr v7, v12

    iget v12, v11, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    mul-float/2addr v12, v6

    iget v13, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    mul-float/2addr v13, v8

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v12

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    int-to-float v12, v12

    invoke-static {v7, v12}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    move-result v5

    float-to-int v5, v5

    .line 1353
    iget v7, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    const v12, 0x444b8000    # 814.0f

    mul-float/2addr v7, v12

    int-to-float v4, v4

    add-float/2addr v7, v4

    iget v4, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-static {v7, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/high16 v26, 0x3f800000    # 1.0f

    const/16 v27, 0xd

    move-object/from16 v20, v1

    move/from16 v25, v4

    .line 1354
    invoke-virtual/range {v20 .. v27}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v24, 0x0

    const v7, 0x444b8000    # 814.0f

    div-float/2addr v8, v7

    const/16 v27, 0x6

    move-object/from16 v20, v10

    move/from16 v25, v5

    move/from16 v26, v8

    .line 1356
    invoke-virtual/range {v20 .. v27}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/16 v21, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x1

    const v7, 0x444b8000    # 814.0f

    div-float/2addr v6, v7

    const/16 v27, 0xa

    move-object/from16 v20, v11

    move/from16 v26, v6

    .line 1358
    invoke-virtual/range {v20 .. v27}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    .line 1359
    iget v7, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    iput v7, v11, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    const/4 v12, 0x2

    new-array v13, v12, [F

    aput v6, v13, v3

    const/4 v6, 0x1

    aput v8, v13, v6

    .line 1361
    iput-object v13, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->siblingHeights:[F

    if-eqz v28, :cond_2a

    sub-int/2addr v7, v5

    .line 1364
    iput v7, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    goto :goto_18

    :cond_2a
    sub-int/2addr v7, v4

    .line 1366
    iput v7, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    .line 1367
    iput v4, v11, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->leftSpanOffset:I

    .line 1369
    :goto_18
    iput-boolean v6, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->hasSibling:Z

    goto :goto_1a

    .line 1372
    :cond_2b
    iget v4, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    int-to-float v4, v4

    iget v5, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v4, v5

    invoke-static {v4, v8}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    const v5, 0x444b8000    # 814.0f

    div-float/2addr v4, v5

    const/16 v21, 0x0

    const/16 v22, 0x1

    const/16 v23, 0x0

    const/16 v24, 0x0

    .line 1373
    iget v5, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    const/16 v27, 0x7

    move-object/from16 v20, v1

    move/from16 v25, v5

    move/from16 v26, v4

    invoke-virtual/range {v20 .. v27}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    .line 1375
    iget v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    const/4 v5, 0x2

    div-int/2addr v1, v5

    const v5, 0x444b8000    # 814.0f

    sub-float v4, v5, v4

    int-to-float v6, v1

    .line 1376
    iget v7, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float v7, v6, v7

    iget v8, v11, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v6, v8

    invoke-static {v7, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    div-float/2addr v4, v5

    cmpg-float v5, v4, v15

    if-gez v5, :cond_2c

    goto :goto_19

    :cond_2c
    move v15, v4

    :goto_19
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x1

    const/16 v27, 0x9

    move-object/from16 v20, v10

    move/from16 v25, v1

    move/from16 v26, v15

    .line 1380
    invoke-virtual/range {v20 .. v27}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v27, 0xa

    move-object/from16 v20, v11

    .line 1381
    invoke-virtual/range {v20 .. v27}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    :goto_1a
    const/4 v13, 0x1

    goto/16 :goto_33

    .line 1385
    :cond_2d
    iget-object v7, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    .line 1386
    iget-object v10, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    .line 1387
    iget-object v11, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    .line 1388
    iget-object v12, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    .line 1389
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    const/16 v14, 0x77

    const v3, 0x3ea8f5c3    # 0.33f

    if-ne v6, v14, :cond_30

    .line 1390
    iget v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    int-to-float v1, v1

    iget v4, v7, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v1, v4

    invoke-static {v1, v8}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    const v4, 0x444b8000    # 814.0f

    div-float/2addr v1, v4

    const/16 v21, 0x0

    const/16 v22, 0x2

    const/16 v23, 0x0

    const/16 v24, 0x0

    .line 1391
    iget v4, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    const/16 v27, 0x7

    move-object/from16 v20, v7

    move/from16 v25, v4

    move/from16 v26, v1

    invoke-virtual/range {v20 .. v27}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    .line 1393
    iget v4, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    int-to-float v4, v4

    iget v6, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    iget v7, v11, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    add-float/2addr v6, v7

    iget v7, v12, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    add-float/2addr v6, v7

    div-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, v5

    .line 1394
    iget v6, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    int-to-float v6, v6

    const v7, 0x3ecccccd    # 0.4f

    mul-float/2addr v6, v7

    iget v7, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    mul-float/2addr v7, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    float-to-int v6, v6

    .line 1395
    iget v7, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget v5, v12, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    mul-float/2addr v5, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-int v3, v3

    .line 1396
    iget v5, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v3

    const/16 v7, 0x3a

    .line 1397
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    if-ge v5, v8, :cond_2e

    .line 1398
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    sub-int/2addr v8, v5

    .line 1399
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    .line 1400
    div-int/lit8 v7, v8, 0x2

    sub-int/2addr v6, v7

    sub-int/2addr v8, v7

    sub-int/2addr v3, v8

    :cond_2e
    move/from16 v25, v6

    const v6, 0x444b8000    # 814.0f

    sub-float v1, v6, v1

    .line 1403
    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    div-float/2addr v1, v6

    cmpg-float v4, v1, v15

    if-gez v4, :cond_2f

    goto :goto_1b

    :cond_2f
    move v15, v1

    :goto_1b
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x1

    const/16 v27, 0x9

    move-object/from16 v20, v10

    move/from16 v26, v15

    .line 1408
    invoke-virtual/range {v20 .. v27}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v27, 0x8

    move-object/from16 v20, v11

    move/from16 v25, v5

    .line 1409
    invoke-virtual/range {v20 .. v27}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/16 v21, 0x2

    const/16 v22, 0x2

    const/16 v27, 0xa

    move-object/from16 v20, v12

    move/from16 v25, v3

    .line 1410
    invoke-virtual/range {v20 .. v27}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/4 v1, 0x2

    goto/16 :goto_17

    .line 1413
    :cond_30
    iget v6, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    const/high16 v8, 0x3f800000    # 1.0f

    div-float v6, v8, v6

    iget v14, v11, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float v14, v8, v14

    add-float/2addr v6, v14

    iget v14, v12, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float v14, v8, v14

    add-float/2addr v6, v14

    const v8, 0x444b8000    # 814.0f

    div-float v6, v8, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v1, v1

    int-to-float v6, v5

    .line 1414
    iget v14, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float v14, v6, v14

    invoke-static {v1, v14}, Ljava/lang/Math;->max(FF)F

    move-result v14

    div-float/2addr v14, v8

    invoke-static {v3, v14}, Ljava/lang/Math;->min(FF)F

    move-result v14

    .line 1415
    iget v15, v11, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v6, v15

    invoke-static {v1, v6}, Ljava/lang/Math;->max(FF)F

    move-result v1

    div-float/2addr v1, v8

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v14

    sub-float/2addr v3, v1

    .line 1417
    iget v6, v7, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    mul-float/2addr v6, v8

    int-to-float v4, v4

    add-float/2addr v6, v4

    iget v4, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x2

    add-float v6, v14, v1

    add-float v26, v6, v3

    const/16 v27, 0xd

    move-object/from16 v20, v7

    move/from16 v25, v4

    .line 1419
    invoke-virtual/range {v20 .. v27}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v24, 0x0

    const/16 v27, 0x6

    move-object/from16 v20, v10

    move/from16 v25, v5

    move/from16 v26, v14

    .line 1421
    invoke-virtual/range {v20 .. v27}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/16 v21, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x1

    const/16 v27, 0x2

    move-object/from16 v20, v11

    move/from16 v26, v1

    .line 1423
    invoke-virtual/range {v20 .. v27}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    .line 1424
    iget v6, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    iput v6, v11, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    const/16 v23, 0x2

    const/16 v24, 0x2

    const/16 v27, 0xa

    move-object/from16 v20, v12

    move/from16 v26, v3

    .line 1426
    invoke-virtual/range {v20 .. v27}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    .line 1427
    iget v6, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    iput v6, v12, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    if-eqz v28, :cond_31

    sub-int/2addr v6, v5

    .line 1430
    iput v6, v7, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    goto :goto_1c

    :cond_31
    sub-int/2addr v6, v4

    .line 1432
    iput v6, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    .line 1433
    iput v4, v11, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->leftSpanOffset:I

    .line 1434
    iput v4, v12, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->leftSpanOffset:I

    :goto_1c
    new-array v4, v13, [F

    const/4 v5, 0x0

    aput v14, v4, v5

    const/4 v5, 0x1

    aput v1, v4, v5

    const/4 v1, 0x2

    aput v3, v4, v1

    .line 1436
    iput-object v4, v7, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->siblingHeights:[F

    .line 1437
    iput-boolean v5, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->hasSibling:Z

    goto/16 :goto_16

    :cond_32
    move/from16 v28, v12

    .line 1442
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v3, v1, [F

    const/4 v4, 0x0

    :goto_1d
    if-ge v4, v2, :cond_34

    const v6, 0x3f8ccccd    # 1.1f

    cmpl-float v6, v10, v6

    if-lez v6, :cond_33

    .line 1445
    iget-object v6, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    iget v6, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v8, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    aput v6, v3, v4

    goto :goto_1e

    :cond_33
    const/high16 v8, 0x3f800000    # 1.0f

    .line 1447
    iget-object v6, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    iget v6, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    invoke-static {v8, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    aput v6, v3, v4

    :goto_1e
    const v6, 0x3f2aaae3

    const v11, 0x3fd9999a    # 1.7f

    .line 1449
    aget v12, v3, v4

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v6, v11}, Ljava/lang/Math;->max(FF)F

    move-result v6

    aput v6, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 1456
    :cond_34
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x1

    :goto_1f
    if-ge v6, v1, :cond_37

    sub-int v8, v1, v6

    if-gt v6, v13, :cond_36

    if-le v8, v13, :cond_35

    goto :goto_20

    .line 1462
    :cond_35
    new-instance v11, Lorg/telegram/messenger/MessageObject$GroupedMessages$MessageGroupedLayoutAttempt;

    const/4 v12, 0x0

    invoke-direct {v0, v3, v12, v6}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->multiHeight([FII)F

    move-result v14

    invoke-direct {v0, v3, v6, v1}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->multiHeight([FII)F

    move-result v12

    invoke-direct {v11, v6, v8, v14, v12}, Lorg/telegram/messenger/MessageObject$GroupedMessages$MessageGroupedLayoutAttempt;-><init>(IIFF)V

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_36
    :goto_20
    add-int/lit8 v6, v6, 0x1

    goto :goto_1f

    :cond_37
    const/4 v6, 0x1

    :goto_21
    add-int/lit8 v8, v1, -0x1

    if-ge v6, v8, :cond_3c

    const/4 v8, 0x1

    :goto_22
    sub-int v11, v1, v6

    if-ge v8, v11, :cond_3b

    sub-int/2addr v11, v8

    if-gt v6, v13, :cond_3a

    const v12, 0x3f59999a    # 0.85f

    cmpg-float v12, v10, v12

    if-gez v12, :cond_38

    move v12, v7

    goto :goto_23

    :cond_38
    move v12, v13

    :goto_23
    if-gt v8, v12, :cond_3a

    if-le v11, v13, :cond_39

    goto :goto_24

    .line 1471
    :cond_39
    new-instance v12, Lorg/telegram/messenger/MessageObject$GroupedMessages$MessageGroupedLayoutAttempt;

    const/4 v14, 0x0

    invoke-direct {v0, v3, v14, v6}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->multiHeight([FII)F

    move-result v24

    add-int v14, v6, v8

    invoke-direct {v0, v3, v6, v14}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->multiHeight([FII)F

    move-result v25

    invoke-direct {v0, v3, v14, v1}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->multiHeight([FII)F

    move-result v26

    move-object/from16 v20, v12

    move/from16 v21, v6

    move/from16 v22, v8

    move/from16 v23, v11

    invoke-direct/range {v20 .. v26}, Lorg/telegram/messenger/MessageObject$GroupedMessages$MessageGroupedLayoutAttempt;-><init>(IIIFFF)V

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3a
    :goto_24
    add-int/lit8 v8, v8, 0x1

    goto :goto_22

    :cond_3b
    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    :cond_3c
    const/4 v6, 0x1

    :goto_25
    add-int/lit8 v8, v1, -0x2

    if-ge v6, v8, :cond_41

    const/4 v8, 0x1

    :goto_26
    sub-int v10, v1, v6

    if-ge v8, v10, :cond_40

    const/4 v11, 0x1

    :goto_27
    sub-int v12, v10, v8

    if-ge v11, v12, :cond_3f

    sub-int/2addr v12, v11

    if-gt v6, v13, :cond_3e

    if-gt v8, v13, :cond_3e

    if-gt v11, v13, :cond_3e

    if-le v12, v13, :cond_3d

    goto :goto_28

    .line 1482
    :cond_3d
    new-instance v14, Lorg/telegram/messenger/MessageObject$GroupedMessages$MessageGroupedLayoutAttempt;

    const/4 v7, 0x0

    invoke-direct {v0, v3, v7, v6}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->multiHeight([FII)F

    move-result v34

    add-int v7, v6, v8

    invoke-direct {v0, v3, v6, v7}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->multiHeight([FII)F

    move-result v35

    add-int v13, v7, v11

    invoke-direct {v0, v3, v7, v13}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->multiHeight([FII)F

    move-result v36

    invoke-direct {v0, v3, v13, v1}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->multiHeight([FII)F

    move-result v37

    move-object/from16 v29, v14

    move/from16 v30, v6

    move/from16 v31, v8

    move/from16 v32, v11

    move/from16 v33, v12

    invoke-direct/range {v29 .. v37}, Lorg/telegram/messenger/MessageObject$GroupedMessages$MessageGroupedLayoutAttempt;-><init>(IIIIFFFF)V

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3e
    :goto_28
    add-int/lit8 v11, v11, 0x1

    const/4 v7, 0x4

    const/4 v13, 0x3

    goto :goto_27

    :cond_3f
    add-int/lit8 v8, v8, 0x1

    const/4 v7, 0x4

    const/4 v13, 0x3

    goto :goto_26

    :cond_40
    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x4

    const/4 v13, 0x3

    goto :goto_25

    .line 1489
    :cond_41
    iget v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    const/4 v6, 0x3

    div-int/2addr v1, v6

    const/4 v6, 0x4

    mul-int/2addr v1, v6

    int-to-float v1, v1

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 1490
    :goto_29
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v8, v12, :cond_4c

    .line 1491
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/messenger/MessageObject$GroupedMessages$MessageGroupedLayoutAttempt;

    const v13, 0x7f7fffff    # Float.MAX_VALUE

    move v14, v13

    const/4 v13, 0x0

    const/16 v18, 0x0

    .line 1494
    :goto_2a
    iget-object v6, v12, Lorg/telegram/messenger/MessageObject$GroupedMessages$MessageGroupedLayoutAttempt;->heights:[F

    array-length v7, v6

    if-ge v13, v7, :cond_43

    .line 1495
    aget v7, v6, v13

    add-float v18, v18, v7

    .line 1496
    aget v7, v6, v13

    cmpg-float v7, v7, v14

    if-gez v7, :cond_42

    .line 1497
    aget v6, v6, v13

    move v14, v6

    :cond_42
    add-int/lit8 v13, v13, 0x1

    goto :goto_2a

    :cond_43
    sub-float v18, v18, v1

    .line 1501
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 1502
    iget-object v7, v12, Lorg/telegram/messenger/MessageObject$GroupedMessages$MessageGroupedLayoutAttempt;->lineCounts:[I

    array-length v13, v7

    move/from16 v18, v1

    const/4 v1, 0x1

    move-object/from16 v23, v4

    if-le v13, v1, :cond_48

    const/4 v13, 0x0

    .line 1503
    aget v4, v7, v13

    aget v13, v7, v1

    if-gt v4, v13, :cond_47

    array-length v4, v7

    const/4 v13, 0x2

    if-le v4, v13, :cond_45

    aget v4, v7, v1

    aget v1, v7, v13

    if-gt v4, v1, :cond_44

    goto :goto_2b

    :cond_44
    const v1, 0x3f99999a    # 1.2f

    const/4 v4, 0x3

    goto :goto_2d

    :cond_45
    :goto_2b
    array-length v1, v7

    const/4 v4, 0x3

    if-le v1, v4, :cond_46

    aget v1, v7, v13

    aget v7, v7, v4

    if-le v1, v7, :cond_46

    goto :goto_2c

    :cond_46
    const v1, 0x3f99999a    # 1.2f

    goto :goto_2e

    :cond_47
    const/4 v4, 0x3

    :goto_2c
    const v1, 0x3f99999a    # 1.2f

    :goto_2d
    mul-float/2addr v6, v1

    goto :goto_2e

    :cond_48
    const v1, 0x3f99999a    # 1.2f

    const/4 v4, 0x3

    :goto_2e
    int-to-float v7, v5

    cmpg-float v7, v14, v7

    if-gez v7, :cond_49

    const/high16 v7, 0x3fc00000    # 1.5f

    mul-float/2addr v6, v7

    :cond_49
    if-eqz v10, :cond_4a

    cmpg-float v7, v6, v11

    if-gez v7, :cond_4b

    :cond_4a
    move v11, v6

    move-object v10, v12

    :cond_4b
    add-int/lit8 v8, v8, 0x1

    move/from16 v1, v18

    move-object/from16 v4, v23

    const/4 v6, 0x4

    goto :goto_29

    :cond_4c
    if-nez v10, :cond_4d

    return-void

    :cond_4d
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1524
    :goto_2f
    iget-object v6, v10, Lorg/telegram/messenger/MessageObject$GroupedMessages$MessageGroupedLayoutAttempt;->lineCounts:[I

    array-length v7, v6

    if-ge v5, v7, :cond_53

    .line 1525
    aget v6, v6, v5

    .line 1526
    iget-object v7, v10, Lorg/telegram/messenger/MessageObject$GroupedMessages$MessageGroupedLayoutAttempt;->heights:[F

    aget v7, v7, v5

    .line 1527
    iget v8, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    add-int/lit8 v11, v6, -0x1

    .line 1529
    invoke-static {v4, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v12, v8

    const/4 v8, 0x0

    const/4 v13, 0x0

    :goto_30
    if-ge v8, v6, :cond_52

    .line 1531
    aget v14, v3, v1

    mul-float/2addr v14, v7

    float-to-int v14, v14

    sub-int/2addr v12, v14

    move-object/from16 v17, v3

    .line 1534
    iget-object v3, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v29, v3

    check-cast v29, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move/from16 v18, v4

    if-nez v5, :cond_4e

    const/4 v3, 0x4

    goto :goto_31

    :cond_4e
    const/4 v3, 0x0

    .line 1539
    :goto_31
    iget-object v4, v10, Lorg/telegram/messenger/MessageObject$GroupedMessages$MessageGroupedLayoutAttempt;->lineCounts:[I

    array-length v4, v4

    const/16 v19, 0x1

    add-int/lit8 v4, v4, -0x1

    if-ne v5, v4, :cond_4f

    or-int/lit8 v3, v3, 0x8

    :cond_4f
    if-nez v8, :cond_50

    or-int/lit8 v3, v3, 0x1

    if-eqz v28, :cond_50

    move-object/from16 v13, v29

    :cond_50
    if-ne v8, v11, :cond_51

    or-int/lit8 v3, v3, 0x2

    if-nez v28, :cond_51

    move/from16 v36, v3

    move-object/from16 v13, v29

    goto :goto_32

    :cond_51
    move/from16 v36, v3

    :goto_32
    const v3, 0x444b8000    # 814.0f

    div-float v4, v7, v3

    .line 1554
    invoke-static {v15, v4}, Ljava/lang/Math;->max(FF)F

    move-result v35

    move/from16 v30, v8

    move/from16 v31, v8

    move/from16 v32, v5

    move/from16 v33, v5

    move/from16 v34, v14

    invoke-virtual/range {v29 .. v36}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v3, v17

    move/from16 v4, v18

    goto :goto_30

    :cond_52
    move-object/from16 v17, v3

    move/from16 v18, v4

    const v3, 0x444b8000    # 814.0f

    .line 1557
    iget v4, v13, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->pw:I

    add-int/2addr v4, v12

    iput v4, v13, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->pw:I

    .line 1558
    iget v4, v13, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    add-int/2addr v4, v12

    iput v4, v13, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v3, v17

    move/from16 v4, v18

    goto/16 :goto_2f

    :cond_53
    move v13, v4

    :goto_33
    const/4 v3, 0x0

    :goto_34
    if-ge v3, v2, :cond_60

    .line 1564
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    if-eqz v28, :cond_56

    .line 1566
    iget-byte v4, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minX:B

    if-nez v4, :cond_54

    .line 1567
    iget v4, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    add-int/2addr v4, v9

    iput v4, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    .line 1569
    :cond_54
    iget v4, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    const/4 v5, 0x2

    and-int/2addr v4, v5

    if-eqz v4, :cond_55

    const/4 v4, 0x1

    .line 1570
    iput-boolean v4, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->edge:Z

    move v5, v4

    goto :goto_35

    :cond_55
    const/4 v5, 0x1

    goto :goto_35

    :cond_56
    const/4 v5, 0x2

    .line 1573
    iget-byte v4, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxX:B

    if-eq v4, v13, :cond_57

    iget v4, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_58

    .line 1574
    :cond_57
    iget v4, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    add-int/2addr v4, v9

    iput v4, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    .line 1576
    :cond_58
    iget v4, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-eqz v4, :cond_59

    .line 1577
    iput-boolean v5, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->edge:Z

    .line 1580
    :cond_59
    :goto_35
    iget-object v4, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    if-nez v28, :cond_5d

    .line 1581
    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->access$000(Lorg/telegram/messenger/MessageObject;)Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 1582
    iget-boolean v4, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->edge:Z

    if-eqz v4, :cond_5b

    .line 1583
    iget v4, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    const/16 v6, 0x3e8

    if-eq v4, v6, :cond_5a

    add-int/lit8 v4, v4, 0x6c

    .line 1584
    iput v4, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    .line 1586
    :cond_5a
    iget v4, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->pw:I

    add-int/lit8 v4, v4, 0x6c

    iput v4, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->pw:I

    goto :goto_36

    .line 1587
    :cond_5b
    iget v4, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    const/4 v6, 0x2

    and-int/2addr v4, v6

    if-eqz v4, :cond_5e

    .line 1588
    iget v4, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    const/16 v7, 0x3e8

    if-eq v4, v7, :cond_5c

    add-int/lit8 v4, v4, -0x6c

    .line 1589
    iput v4, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    goto :goto_37

    .line 1590
    :cond_5c
    iget v4, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->leftSpanOffset:I

    if-eqz v4, :cond_5f

    add-int/lit8 v4, v4, 0x6c

    .line 1591
    iput v4, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->leftSpanOffset:I

    goto :goto_37

    :cond_5d
    :goto_36
    const/4 v6, 0x2

    :cond_5e
    const/16 v7, 0x3e8

    :cond_5f
    :goto_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    :cond_60
    return-void
.end method

.method public contains(I)Z
    .locals 3

    .line 1668
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    .line 1671
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1672
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_1

    .line 1673
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    if-ne v2, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public findCaptionMessageObject()Lorg/telegram/messenger/MessageObject;
    .locals 5

    .line 1603
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->positions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1604
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->calculate()V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    .line 1608
    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 1609
    iget-object v3, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    .line 1610
    iget-object v4, v3, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    move-object v2, v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method public findMessageWithFlags(I)Lorg/telegram/messenger/MessageObject;
    .locals 3

    .line 1622
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->positions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1623
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->calculate()V

    :cond_0
    const/4 v0, 0x0

    .line 1625
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1626
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 1627
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->positions:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    if-eqz v2, :cond_1

    .line 1628
    iget v2, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/2addr v2, p1

    if-ne v2, p1, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public findPrimaryMessageObject()Lorg/telegram/messenger/MessageObject;
    .locals 1

    const/4 v0, 0x5

    .line 1599
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->findMessageWithFlags(I)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    return-object v0
.end method
