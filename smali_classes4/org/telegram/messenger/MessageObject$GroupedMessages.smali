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

.field public final transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1094
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1098
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    .line 1099
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    .line 1100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->positions:Ljava/util/HashMap;

    const/16 v0, 0x320

    .line 1104
    iput v0, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    .line 1106
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

    .line 1132
    aget v1, p1, p2

    add-float/2addr v0, v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1134
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

    .line 1138
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1139
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->positions:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const/4 v1, 0x0

    .line 1140
    iput-object v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->captionMessage:Lorg/telegram/messenger/MessageObject;

    const/16 v2, 0x320

    .line 1142
    iput v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    .line 1145
    iget-object v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 1147
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    iput-object v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->captionMessage:Lorg/telegram/messenger/MessageObject;

    return-void

    :cond_0
    if-ge v2, v4, :cond_1

    return-void

    .line 1154
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1161
    iput-boolean v3, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->hasSibling:Z

    .line 1163
    iput-boolean v3, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->hasCaption:Z

    move v8, v3

    move v9, v8

    move v11, v9

    move v12, v11

    move v13, v4

    const/high16 v10, 0x3f800000    # 1.0f

    :goto_0
    const v14, 0x3f99999a    # 1.2f

    if-ge v8, v2, :cond_12

    .line 1167
    iget-object v15, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/messenger/MessageObject;

    if-nez v8, :cond_8

    .line 1169
    invoke-virtual {v15}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v12

    if-nez v12, :cond_5

    .line 1170
    iget-object v9, v15, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v9, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    if-eqz v5, :cond_3

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->saved_from_peer:Lorg/telegram/tgnet/TLRPC$Peer;

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    move/from16 v17, v8

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v5, v9, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    if-eqz v5, :cond_5

    iget-object v5, v9, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move/from16 v17, v8

    iget-wide v7, v5, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    const-wide/16 v18, 0x0

    cmp-long v7, v7, v18

    if-nez v7, :cond_4

    iget-wide v7, v5, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    cmp-long v5, v7, v18

    if-nez v5, :cond_4

    .line 1173
    invoke-static {v9}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v5

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-nez v5, :cond_4

    iget-object v5, v15, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v5}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v5

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    if-eqz v5, :cond_6

    :cond_4
    :goto_2
    move v9, v4

    goto :goto_3

    :cond_5
    move/from16 v17, v8

    :cond_6
    move v9, v3

    .line 1175
    :goto_3
    invoke-virtual {v15}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v15}, Lorg/telegram/messenger/MessageObject;->isDocument()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1176
    :cond_7
    iput-boolean v4, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->isDocuments:Z

    goto :goto_4

    :cond_8
    move/from16 v17, v8

    .line 1179
    :cond_9
    :goto_4
    iget-object v5, v15, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v7

    invoke-static {v5, v7}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v5

    .line 1180
    new-instance v7, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    invoke-direct {v7}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;-><init>()V

    add-int/lit8 v8, v2, -0x1

    move/from16 v3, v17

    if-ne v3, v8, :cond_a

    move v8, v4

    goto :goto_5

    :cond_a
    const/4 v8, 0x0

    .line 1181
    :goto_5
    iput-boolean v8, v7, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->last:Z

    if-nez v5, :cond_b

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_6

    .line 1182
    :cond_b
    iget v8, v5, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    int-to-float v8, v8

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    int-to-float v5, v5

    div-float v5, v8, v5

    :goto_6
    iput v5, v7, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    cmpl-float v8, v5, v14

    if-lez v8, :cond_c

    const-string/jumbo v5, "w"

    .line 1185
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_c
    const v8, 0x3f4ccccd    # 0.8f

    cmpg-float v5, v5, v8

    if-gez v5, :cond_d

    const-string/jumbo v5, "n"

    .line 1187
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_d
    const-string/jumbo v5, "q"

    .line 1189
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1192
    :goto_7
    iget v5, v7, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    add-float/2addr v10, v5

    const/high16 v8, 0x40000000    # 2.0f

    cmpl-float v5, v5, v8

    if-lez v5, :cond_e

    move v11, v4

    .line 1198
    :cond_e
    iget-object v5, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->positions:Ljava/util/HashMap;

    invoke-virtual {v5, v15, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1199
    iget-object v5, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1201
    iget-object v5, v15, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    if-eqz v5, :cond_11

    if-eqz v13, :cond_f

    .line 1202
    iget-object v5, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->captionMessage:Lorg/telegram/messenger/MessageObject;

    if-nez v5, :cond_f

    .line 1203
    iput-object v15, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->captionMessage:Lorg/telegram/messenger/MessageObject;

    const/4 v13, 0x0

    goto :goto_8

    .line 1205
    :cond_f
    iget-boolean v5, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->isDocuments:Z

    if-nez v5, :cond_10

    .line 1206
    iput-object v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->captionMessage:Lorg/telegram/messenger/MessageObject;

    .line 1208
    :cond_10
    :goto_8
    iput-boolean v4, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->hasCaption:Z

    :cond_11
    add-int/lit8 v8, v3, 0x1

    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1211
    :cond_12
    iget-boolean v3, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->isDocuments:Z

    const/16 v5, 0x3e8

    const/4 v7, 0x3

    if-eqz v3, :cond_16

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v2, :cond_15

    .line 1213
    iget-object v3, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    .line 1214
    iget v6, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    or-int/2addr v6, v7

    iput v6, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    if-nez v1, :cond_13

    or-int/lit8 v6, v6, 0x4

    .line 1216
    iput v6, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    goto :goto_a

    :cond_13
    add-int/lit8 v8, v2, -0x1

    if-ne v1, v8, :cond_14

    or-int/lit8 v6, v6, 0x8

    .line 1218
    iput v6, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    .line 1219
    iput-boolean v4, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->last:Z

    .line 1221
    :cond_14
    :goto_a
    iput-boolean v4, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->edge:Z

    const/high16 v6, 0x3f800000    # 1.0f

    .line 1222
    iput v6, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    const/4 v6, 0x0

    .line 1223
    iput-byte v6, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minX:B

    .line 1224
    iput-byte v6, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxX:B

    int-to-byte v6, v1

    .line 1225
    iput-byte v6, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    .line 1226
    iput-byte v6, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxY:B

    .line 1227
    iput v5, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    .line 1228
    iget v6, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    iput v6, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->pw:I

    const/high16 v6, 0x42c80000    # 100.0f

    .line 1229
    iput v6, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->ph:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_15
    return-void

    :cond_16
    if-eqz v9, :cond_17

    .line 1235
    iget v3, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    add-int/lit8 v3, v3, -0x32

    iput v3, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    const/16 v3, 0xfa

    goto :goto_b

    :cond_17
    const/16 v3, 0xc8

    :goto_b
    const/16 v8, 0x78

    .line 1239
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    .line 1240
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    sget-object v13, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v15, v13, Landroid/graphics/Point;->x:I

    iget v13, v13, Landroid/graphics/Point;->y:I

    invoke-static {v15, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    int-to-float v13, v13

    iget v15, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    int-to-float v15, v15

    div-float/2addr v13, v15

    div-float/2addr v8, v13

    float-to-int v8, v8

    const/16 v13, 0x28

    .line 1241
    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    sget-object v15, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v15, Landroid/graphics/Point;->x:I

    iget v15, v15, Landroid/graphics/Point;->y:I

    invoke-static {v1, v15}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    iget v15, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    int-to-float v5, v15

    div-float/2addr v1, v5

    div-float/2addr v13, v1

    float-to-int v1, v13

    int-to-float v5, v15

    const v13, 0x444b8000    # 814.0f

    div-float/2addr v5, v13

    int-to-float v15, v2

    div-float/2addr v10, v15

    const/16 v15, 0x64

    .line 1246
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v15, v13

    const/4 v13, 0x4

    const/4 v14, 0x2

    if-nez v11, :cond_26

    if-eq v2, v14, :cond_18

    if-eq v2, v7, :cond_18

    if-ne v2, v13, :cond_26

    :cond_18
    const v11, 0x43cb8000    # 407.0f

    const v13, 0x3ecccccd    # 0.4f

    if-ne v2, v14, :cond_1d

    .line 1250
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    .line 1251
    iget-object v7, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    .line 1252
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v9, "ww"

    .line 1253
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_19

    float-to-double v14, v10

    const-wide v20, 0x3ff6666666666666L    # 1.4

    float-to-double v4, v5

    mul-double v4, v4, v20

    cmpl-double v4, v14, v4

    if-lez v4, :cond_19

    iget v4, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    iget v5, v7, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    sub-float v10, v4, v5

    float-to-double v14, v10

    const-wide v20, 0x3fc999999999999aL    # 0.2

    cmpg-double v10, v14, v20

    if-gez v10, :cond_19

    .line 1254
    iget v6, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    int-to-float v8, v6

    div-float/2addr v8, v4

    int-to-float v4, v6

    div-float/2addr v4, v5

    invoke-static {v4, v11}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v8, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    const v5, 0x444b8000    # 814.0f

    div-float/2addr v4, v5

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    .line 1255
    iget v5, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    const/16 v27, 0x7

    move-object/from16 v20, v1

    move/from16 v25, v5

    move/from16 v26, v4

    invoke-virtual/range {v20 .. v27}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/16 v23, 0x1

    const/16 v24, 0x1

    .line 1256
    iget v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    const/16 v27, 0xb

    move-object/from16 v20, v7

    move/from16 v25, v1

    invoke-virtual/range {v20 .. v27}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/4 v1, 0x0

    goto/16 :goto_29

    .line 1257
    :cond_19
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    const-string/jumbo v4, "qq"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    goto :goto_c

    .line 1264
    :cond_1a
    iget v4, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    int-to-float v5, v4

    mul-float/2addr v5, v13

    int-to-float v4, v4

    iget v6, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v4, v6

    const/high16 v9, 0x3f800000    # 1.0f

    div-float v6, v9, v6

    iget v10, v7, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v9, v10

    add-float/2addr v6, v9

    div-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    float-to-int v4, v4

    .line 1265
    iget v5, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    sub-int/2addr v5, v4

    if-ge v5, v8, :cond_1b

    sub-int v5, v8, v5

    sub-int/2addr v4, v5

    move v5, v8

    :cond_1b
    int-to-float v6, v5

    .line 1272
    iget v8, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v6, v8

    int-to-float v8, v4

    iget v9, v7, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v8, v9

    invoke-static {v6, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    const v8, 0x444b8000    # 814.0f

    invoke-static {v8, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    div-float/2addr v6, v8

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v27, 0xd

    move-object/from16 v20, v1

    move/from16 v25, v5

    move/from16 v26, v6

    .line 1273
    invoke-virtual/range {v20 .. v27}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v27, 0xe

    move-object/from16 v20, v7

    move/from16 v25, v4

    .line 1274
    invoke-virtual/range {v20 .. v27}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    goto/16 :goto_f

    .line 1258
    :cond_1c
    :goto_c
    iget v4, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    const/4 v5, 0x2

    div-int/2addr v4, v5

    int-to-float v5, v4

    .line 1259
    iget v6, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float v6, v5, v6

    iget v8, v7, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v5, v8

    const v8, 0x444b8000    # 814.0f

    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v8

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v27, 0xd

    move-object/from16 v20, v1

    move/from16 v25, v4

    move/from16 v26, v5

    .line 1260
    invoke-virtual/range {v20 .. v27}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v27, 0xe

    move-object/from16 v20, v7

    .line 1261
    invoke-virtual/range {v20 .. v27}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    goto/16 :goto_f

    :cond_1d
    const v4, 0x44064f5d

    if-ne v2, v7, :cond_21

    .line 1278
    iget-object v5, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    .line 1279
    iget-object v9, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    .line 1280
    iget-object v10, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    const/4 v13, 0x2

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    .line 1281
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    const/16 v7, 0x6e

    if-ne v6, v7, :cond_1f

    .line 1282
    iget v4, v9, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    iget v6, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    int-to-float v6, v6

    mul-float/2addr v6, v4

    iget v7, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    add-float/2addr v7, v4

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v11, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const v6, 0x444b8000    # 814.0f

    sub-float v7, v6, v4

    int-to-float v6, v8

    .line 1284
    iget v8, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    int-to-float v8, v8

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v8, v11

    iget v11, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    mul-float/2addr v11, v4

    iget v13, v9, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    mul-float/2addr v13, v7

    invoke-static {v11, v13}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    int-to-float v11, v11

    invoke-static {v8, v11}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    float-to-int v6, v6

    .line 1286
    iget v8, v5, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    const v11, 0x444b8000    # 814.0f

    mul-float/2addr v8, v11

    int-to-float v1, v1

    add-float/2addr v8, v1

    iget v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    sub-int/2addr v1, v6

    int-to-float v1, v1

    invoke-static {v8, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/high16 v26, 0x3f800000    # 1.0f

    const/16 v27, 0xd

    move-object/from16 v20, v5

    move/from16 v25, v1

    .line 1287
    invoke-virtual/range {v20 .. v27}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v24, 0x0

    const v8, 0x444b8000    # 814.0f

    div-float/2addr v7, v8

    const/16 v27, 0x6

    move-object/from16 v20, v9

    move/from16 v25, v6

    move/from16 v26, v7

    .line 1289
    invoke-virtual/range {v20 .. v27}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/16 v21, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x1

    const v8, 0x444b8000    # 814.0f

    div-float/2addr v4, v8

    const/16 v27, 0xa

    move-object/from16 v20, v10

    move/from16 v26, v4

    .line 1291
    invoke-virtual/range {v20 .. v27}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    .line 1292
    iget v8, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    iput v8, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    const/4 v11, 0x2

    new-array v13, v11, [F

    const/4 v11, 0x0

    aput v4, v13, v11

    const/4 v4, 0x1

    aput v7, v13, v4

    .line 1294
    iput-object v13, v5, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->siblingHeights:[F

    if-eqz v12, :cond_1e

    sub-int/2addr v8, v6

    .line 1297
    iput v8, v5, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    goto :goto_d

    :cond_1e
    sub-int/2addr v8, v1

    .line 1299
    iput v8, v9, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    .line 1300
    iput v1, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->leftSpanOffset:I

    .line 1302
    :goto_d
    iput-boolean v4, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->hasSibling:Z

    goto :goto_f

    .line 1305
    :cond_1f
    iget v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    int-to-float v1, v1

    iget v6, v5, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v1, v6

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    const v4, 0x444b8000    # 814.0f

    div-float/2addr v1, v4

    const/16 v21, 0x0

    const/16 v22, 0x1

    const/16 v23, 0x0

    const/16 v24, 0x0

    .line 1306
    iget v4, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    const/16 v27, 0x7

    move-object/from16 v20, v5

    move/from16 v25, v4

    move/from16 v26, v1

    invoke-virtual/range {v20 .. v27}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    .line 1308
    iget v4, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    const/4 v5, 0x2

    div-int/2addr v4, v5

    const v5, 0x444b8000    # 814.0f

    sub-float v1, v5, v1

    int-to-float v6, v4

    .line 1309
    iget v7, v9, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float v7, v6, v7

    iget v8, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v6, v8

    invoke-static {v7, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v1, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    div-float/2addr v1, v5

    cmpg-float v5, v1, v15

    if-gez v5, :cond_20

    goto :goto_e

    :cond_20
    move v15, v1

    :goto_e
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x1

    const/16 v27, 0x9

    move-object/from16 v20, v9

    move/from16 v25, v4

    move/from16 v26, v15

    .line 1313
    invoke-virtual/range {v20 .. v27}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v27, 0xa

    move-object/from16 v20, v10

    .line 1314
    invoke-virtual/range {v20 .. v27}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    :goto_f
    const/4 v1, 0x1

    goto/16 :goto_29

    .line 1318
    :cond_21
    iget-object v5, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    .line 1319
    iget-object v11, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    const/4 v14, 0x1

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    .line 1320
    iget-object v14, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    const/4 v13, 0x2

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    move-object v13, v14

    check-cast v13, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    .line 1321
    iget-object v14, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    .line 1322
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    const/16 v10, 0x77

    const v7, 0x3ea8f5c3    # 0.33f

    if-ne v6, v10, :cond_24

    .line 1323
    iget v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    int-to-float v1, v1

    iget v6, v5, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v1, v6

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

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

    .line 1324
    iget v4, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    const/16 v27, 0x7

    move-object/from16 v20, v5

    move/from16 v25, v4

    move/from16 v26, v1

    invoke-virtual/range {v20 .. v27}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    .line 1326
    iget v4, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    int-to-float v4, v4

    iget v5, v11, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    iget v6, v13, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    add-float/2addr v5, v6

    iget v6, v14, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    add-float/2addr v5, v6

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, v8

    .line 1327
    iget v6, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    int-to-float v6, v6

    const v8, 0x3ecccccd    # 0.4f

    mul-float/2addr v6, v8

    iget v8, v11, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    mul-float/2addr v8, v4

    invoke-static {v6, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    float-to-int v6, v6

    .line 1328
    iget v8, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    int-to-float v8, v8

    mul-float/2addr v8, v7

    invoke-static {v5, v8}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iget v7, v14, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    mul-float/2addr v7, v4

    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    move-result v5

    float-to-int v5, v5

    .line 1329
    iget v7, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    sub-int/2addr v7, v6

    sub-int/2addr v7, v5

    const/16 v8, 0x3a

    .line 1330
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    if-ge v7, v9, :cond_22

    .line 1331
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v9, v7

    .line 1332
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    .line 1333
    div-int/lit8 v8, v9, 0x2

    sub-int/2addr v6, v8

    sub-int/2addr v9, v8

    sub-int/2addr v5, v9

    :cond_22
    move/from16 v25, v6

    const v6, 0x444b8000    # 814.0f

    sub-float v1, v6, v1

    .line 1336
    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    div-float/2addr v1, v6

    cmpg-float v4, v1, v15

    if-gez v4, :cond_23

    goto :goto_10

    :cond_23
    move v15, v1

    :goto_10
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x1

    const/16 v27, 0x9

    move-object/from16 v20, v11

    move/from16 v26, v15

    .line 1341
    invoke-virtual/range {v20 .. v27}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v27, 0x8

    move-object/from16 v20, v13

    move/from16 v25, v7

    .line 1342
    invoke-virtual/range {v20 .. v27}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/16 v21, 0x2

    const/16 v22, 0x2

    const/16 v27, 0xa

    move-object/from16 v20, v14

    move/from16 v25, v5

    .line 1343
    invoke-virtual/range {v20 .. v27}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/4 v1, 0x2

    goto/16 :goto_29

    .line 1346
    :cond_24
    iget v4, v11, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    const/high16 v6, 0x3f800000    # 1.0f

    div-float v4, v6, v4

    iget v10, v13, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float v10, v6, v10

    add-float/2addr v4, v10

    iget v10, v14, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float v10, v6, v10

    add-float/2addr v4, v10

    const v6, 0x444b8000    # 814.0f

    div-float v4, v6, v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v8, v9

    int-to-float v9, v4

    .line 1347
    iget v10, v11, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float v10, v9, v10

    invoke-static {v8, v10}, Ljava/lang/Math;->max(FF)F

    move-result v10

    div-float/2addr v10, v6

    invoke-static {v7, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 1348
    iget v15, v13, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v9, v15

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    div-float/2addr v8, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, v10

    sub-float/2addr v8, v7

    .line 1350
    iget v9, v5, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    mul-float/2addr v6, v9

    int-to-float v1, v1

    add-float/2addr v6, v1

    iget v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    invoke-static {v6, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x2

    add-float v6, v10, v7

    add-float v26, v6, v8

    const/16 v27, 0xd

    move-object/from16 v20, v5

    move/from16 v25, v1

    .line 1352
    invoke-virtual/range {v20 .. v27}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v24, 0x0

    const/16 v27, 0x6

    move-object/from16 v20, v11

    move/from16 v25, v4

    move/from16 v26, v10

    .line 1354
    invoke-virtual/range {v20 .. v27}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/16 v21, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x1

    const/16 v27, 0x2

    move-object/from16 v20, v13

    move/from16 v26, v7

    .line 1356
    invoke-virtual/range {v20 .. v27}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    .line 1357
    iget v6, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    iput v6, v13, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    const/16 v23, 0x2

    const/16 v24, 0x2

    const/16 v27, 0xa

    move-object/from16 v20, v14

    move/from16 v26, v8

    .line 1359
    invoke-virtual/range {v20 .. v27}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    .line 1360
    iget v6, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    iput v6, v14, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    if-eqz v12, :cond_25

    sub-int/2addr v6, v4

    .line 1363
    iput v6, v5, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    goto :goto_11

    :cond_25
    sub-int/2addr v6, v1

    .line 1365
    iput v6, v11, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    .line 1366
    iput v1, v13, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->leftSpanOffset:I

    .line 1367
    iput v1, v14, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->leftSpanOffset:I

    :goto_11
    const/4 v1, 0x3

    new-array v1, v1, [F

    const/4 v4, 0x0

    aput v10, v1, v4

    const/4 v4, 0x1

    aput v7, v1, v4

    const/4 v6, 0x2

    aput v8, v1, v6

    .line 1369
    iput-object v1, v5, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->siblingHeights:[F

    .line 1370
    iput-boolean v4, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->hasSibling:Z

    goto/16 :goto_f

    .line 1375
    :cond_26
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v4, v1, [F

    const/4 v5, 0x0

    :goto_12
    if-ge v5, v2, :cond_28

    const v6, 0x3f8ccccd    # 1.1f

    cmpl-float v6, v10, v6

    if-lez v6, :cond_27

    .line 1378
    iget-object v6, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    iget v6, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    aput v6, v4, v5

    goto :goto_13

    :cond_27
    const/high16 v7, 0x3f800000    # 1.0f

    .line 1380
    iget-object v6, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    iget v6, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    invoke-static {v7, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    aput v6, v4, v5

    :goto_13
    const v6, 0x3f2aaae3

    const v9, 0x3fd9999a    # 1.7f

    .line 1382
    aget v11, v4, v5

    invoke-static {v9, v11}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-static {v6, v9}, Ljava/lang/Math;->max(FF)F

    move-result v6

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    .line 1389
    :cond_28
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x1

    :goto_14
    if-ge v6, v1, :cond_2b

    sub-int v7, v1, v6

    const/4 v9, 0x3

    if-gt v6, v9, :cond_2a

    if-le v7, v9, :cond_29

    goto :goto_15

    .line 1395
    :cond_29
    new-instance v9, Lorg/telegram/messenger/MessageObject$GroupedMessages$MessageGroupedLayoutAttempt;

    const/4 v11, 0x0

    invoke-direct {v0, v4, v11, v6}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->multiHeight([FII)F

    move-result v14

    invoke-direct {v0, v4, v6, v1}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->multiHeight([FII)F

    move-result v11

    invoke-direct {v9, v6, v7, v14, v11}, Lorg/telegram/messenger/MessageObject$GroupedMessages$MessageGroupedLayoutAttempt;-><init>(IIFF)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2a
    :goto_15
    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    :cond_2b
    const/4 v6, 0x1

    :goto_16
    add-int/lit8 v7, v1, -0x1

    if-ge v6, v7, :cond_30

    const/4 v7, 0x1

    :goto_17
    sub-int v9, v1, v6

    if-ge v7, v9, :cond_2f

    sub-int/2addr v9, v7

    const/4 v11, 0x3

    if-gt v6, v11, :cond_2e

    const v14, 0x3f59999a    # 0.85f

    cmpg-float v14, v10, v14

    if-gez v14, :cond_2c

    move v14, v13

    goto :goto_18

    :cond_2c
    move v14, v11

    :goto_18
    if-gt v7, v14, :cond_2e

    if-le v9, v11, :cond_2d

    goto :goto_19

    .line 1404
    :cond_2d
    new-instance v11, Lorg/telegram/messenger/MessageObject$GroupedMessages$MessageGroupedLayoutAttempt;

    const/4 v14, 0x0

    invoke-direct {v0, v4, v14, v6}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->multiHeight([FII)F

    move-result v25

    add-int v14, v6, v7

    invoke-direct {v0, v4, v6, v14}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->multiHeight([FII)F

    move-result v26

    invoke-direct {v0, v4, v14, v1}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->multiHeight([FII)F

    move-result v27

    move-object/from16 v21, v11

    move/from16 v22, v6

    move/from16 v23, v7

    move/from16 v24, v9

    invoke-direct/range {v21 .. v27}, Lorg/telegram/messenger/MessageObject$GroupedMessages$MessageGroupedLayoutAttempt;-><init>(IIIFFF)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2e
    :goto_19
    add-int/lit8 v7, v7, 0x1

    goto :goto_17

    :cond_2f
    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    :cond_30
    const/4 v6, 0x1

    :goto_1a
    add-int/lit8 v7, v1, -0x2

    if-ge v6, v7, :cond_35

    const/4 v7, 0x1

    :goto_1b
    sub-int v9, v1, v6

    if-ge v7, v9, :cond_34

    const/4 v10, 0x1

    :goto_1c
    sub-int v11, v9, v7

    if-ge v10, v11, :cond_33

    sub-int/2addr v11, v10

    const/4 v14, 0x3

    if-gt v6, v14, :cond_32

    if-gt v7, v14, :cond_32

    if-gt v10, v14, :cond_32

    if-le v11, v14, :cond_31

    goto :goto_1d

    .line 1415
    :cond_31
    new-instance v14, Lorg/telegram/messenger/MessageObject$GroupedMessages$MessageGroupedLayoutAttempt;

    const/4 v13, 0x0

    invoke-direct {v0, v4, v13, v6}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->multiHeight([FII)F

    move-result v34

    add-int v13, v6, v7

    invoke-direct {v0, v4, v6, v13}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->multiHeight([FII)F

    move-result v35

    move/from16 v21, v9

    add-int v9, v13, v10

    invoke-direct {v0, v4, v13, v9}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->multiHeight([FII)F

    move-result v36

    invoke-direct {v0, v4, v9, v1}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->multiHeight([FII)F

    move-result v37

    move-object/from16 v29, v14

    move/from16 v30, v6

    move/from16 v31, v7

    move/from16 v32, v10

    move/from16 v33, v11

    invoke-direct/range {v29 .. v37}, Lorg/telegram/messenger/MessageObject$GroupedMessages$MessageGroupedLayoutAttempt;-><init>(IIIIFFFF)V

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_32
    :goto_1d
    move/from16 v21, v9

    :goto_1e
    add-int/lit8 v10, v10, 0x1

    move/from16 v9, v21

    const/4 v13, 0x4

    goto :goto_1c

    :cond_33
    add-int/lit8 v7, v7, 0x1

    const/4 v13, 0x4

    goto :goto_1b

    :cond_34
    add-int/lit8 v6, v6, 0x1

    const/4 v13, 0x4

    goto :goto_1a

    .line 1422
    :cond_35
    iget v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    const/4 v6, 0x3

    div-int/2addr v1, v6

    const/4 v6, 0x4

    mul-int/2addr v1, v6

    int-to-float v1, v1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 1423
    :goto_1f
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v9, v13, :cond_40

    .line 1424
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/messenger/MessageObject$GroupedMessages$MessageGroupedLayoutAttempt;

    const v14, 0x7f7fffff    # Float.MAX_VALUE

    move/from16 v16, v14

    const/4 v14, 0x0

    const/16 v21, 0x0

    .line 1427
    :goto_20
    iget-object v6, v13, Lorg/telegram/messenger/MessageObject$GroupedMessages$MessageGroupedLayoutAttempt;->heights:[F

    array-length v7, v6

    if-ge v14, v7, :cond_37

    .line 1428
    aget v7, v6, v14

    add-float v21, v21, v7

    .line 1429
    aget v7, v6, v14

    cmpg-float v7, v7, v16

    if-gez v7, :cond_36

    .line 1430
    aget v6, v6, v14

    move/from16 v16, v6

    :cond_36
    add-int/lit8 v14, v14, 0x1

    goto :goto_20

    :cond_37
    sub-float v21, v21, v1

    .line 1434
    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 1435
    iget-object v7, v13, Lorg/telegram/messenger/MessageObject$GroupedMessages$MessageGroupedLayoutAttempt;->lineCounts:[I

    array-length v14, v7

    move/from16 v21, v1

    const/4 v1, 0x1

    move-object/from16 v18, v5

    if-le v14, v1, :cond_3c

    const/4 v14, 0x0

    .line 1436
    aget v5, v7, v14

    aget v14, v7, v1

    if-gt v5, v14, :cond_3b

    array-length v5, v7

    const/4 v14, 0x2

    if-le v5, v14, :cond_39

    aget v5, v7, v1

    aget v1, v7, v14

    if-gt v5, v1, :cond_38

    goto :goto_21

    :cond_38
    const v1, 0x3f99999a    # 1.2f

    const/4 v5, 0x3

    goto :goto_23

    :cond_39
    :goto_21
    array-length v1, v7

    const/4 v5, 0x3

    if-le v1, v5, :cond_3a

    aget v1, v7, v14

    aget v7, v7, v5

    if-le v1, v7, :cond_3a

    goto :goto_22

    :cond_3a
    const v1, 0x3f99999a    # 1.2f

    goto :goto_24

    :cond_3b
    const/4 v5, 0x3

    :goto_22
    const v1, 0x3f99999a    # 1.2f

    :goto_23
    mul-float/2addr v6, v1

    goto :goto_24

    :cond_3c
    const v1, 0x3f99999a    # 1.2f

    const/4 v5, 0x3

    :goto_24
    int-to-float v7, v8

    cmpg-float v7, v16, v7

    if-gez v7, :cond_3d

    const/high16 v7, 0x3fc00000    # 1.5f

    mul-float/2addr v6, v7

    :cond_3d
    if-eqz v10, :cond_3e

    cmpg-float v7, v6, v11

    if-gez v7, :cond_3f

    :cond_3e
    move v11, v6

    move-object v10, v13

    :cond_3f
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v5, v18

    move/from16 v1, v21

    const/4 v6, 0x4

    goto/16 :goto_1f

    :cond_40
    if-nez v10, :cond_41

    return-void

    :cond_41
    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1457
    :goto_25
    iget-object v7, v10, Lorg/telegram/messenger/MessageObject$GroupedMessages$MessageGroupedLayoutAttempt;->lineCounts:[I

    array-length v8, v7

    if-ge v6, v8, :cond_47

    .line 1458
    aget v7, v7, v6

    .line 1459
    iget-object v8, v10, Lorg/telegram/messenger/MessageObject$GroupedMessages$MessageGroupedLayoutAttempt;->heights:[F

    aget v8, v8, v6

    .line 1460
    iget v9, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    add-int/lit8 v11, v7, -0x1

    .line 1462
    invoke-static {v1, v11}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v13, v9

    const/4 v9, 0x0

    const/4 v14, 0x0

    :goto_26
    if-ge v9, v7, :cond_46

    .line 1464
    aget v16, v4, v5

    move/from16 v18, v1

    mul-float v1, v16, v8

    float-to-int v1, v1

    sub-int/2addr v13, v1

    move-object/from16 v16, v4

    .line 1467
    iget-object v4, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v28, v4

    check-cast v28, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move/from16 v20, v7

    if-nez v6, :cond_42

    const/4 v4, 0x4

    goto :goto_27

    :cond_42
    const/4 v4, 0x0

    .line 1472
    :goto_27
    iget-object v7, v10, Lorg/telegram/messenger/MessageObject$GroupedMessages$MessageGroupedLayoutAttempt;->lineCounts:[I

    array-length v7, v7

    const/16 v21, 0x1

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_43

    or-int/lit8 v4, v4, 0x8

    :cond_43
    if-nez v9, :cond_44

    or-int/lit8 v4, v4, 0x1

    if-eqz v12, :cond_44

    move-object/from16 v14, v28

    :cond_44
    if-ne v9, v11, :cond_45

    or-int/lit8 v4, v4, 0x2

    if-nez v12, :cond_45

    move/from16 v35, v4

    move-object/from16 v14, v28

    goto :goto_28

    :cond_45
    move/from16 v35, v4

    :goto_28
    const v4, 0x444b8000    # 814.0f

    div-float v7, v8, v4

    .line 1487
    invoke-static {v15, v7}, Ljava/lang/Math;->max(FF)F

    move-result v34

    move/from16 v29, v9

    move/from16 v30, v9

    move/from16 v31, v6

    move/from16 v32, v6

    move/from16 v33, v1

    invoke-virtual/range {v28 .. v35}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v4, v16

    move/from16 v1, v18

    move/from16 v7, v20

    goto :goto_26

    :cond_46
    move/from16 v18, v1

    move-object/from16 v16, v4

    const v4, 0x444b8000    # 814.0f

    .line 1490
    iget v1, v14, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->pw:I

    add-int/2addr v1, v13

    iput v1, v14, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->pw:I

    .line 1491
    iget v1, v14, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    add-int/2addr v1, v13

    iput v1, v14, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v4, v16

    move/from16 v1, v18

    goto/16 :goto_25

    :cond_47
    :goto_29
    const/4 v4, 0x0

    :goto_2a
    if-ge v4, v2, :cond_54

    .line 1497
    iget-object v5, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    if-eqz v12, :cond_4a

    .line 1499
    iget-byte v6, v5, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minX:B

    if-nez v6, :cond_48

    .line 1500
    iget v6, v5, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    add-int/2addr v6, v3

    iput v6, v5, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    .line 1502
    :cond_48
    iget v6, v5, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    const/4 v7, 0x2

    and-int/2addr v6, v7

    if-eqz v6, :cond_49

    const/4 v6, 0x1

    .line 1503
    iput-boolean v6, v5, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->edge:Z

    move v7, v6

    goto :goto_2b

    :cond_49
    const/4 v7, 0x1

    goto :goto_2b

    :cond_4a
    const/4 v7, 0x2

    .line 1506
    iget-byte v6, v5, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxX:B

    if-eq v6, v1, :cond_4b

    iget v6, v5, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/2addr v6, v7

    if-eqz v6, :cond_4c

    .line 1507
    :cond_4b
    iget v6, v5, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    add-int/2addr v6, v3

    iput v6, v5, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    .line 1509
    :cond_4c
    iget v6, v5, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    const/4 v7, 0x1

    and-int/2addr v6, v7

    if-eqz v6, :cond_4d

    .line 1510
    iput-boolean v7, v5, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->edge:Z

    .line 1513
    :cond_4d
    :goto_2b
    iget-object v6, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject;

    if-nez v12, :cond_51

    .line 1514
    invoke-static {v6}, Lorg/telegram/messenger/MessageObject;->access$000(Lorg/telegram/messenger/MessageObject;)Z

    move-result v6

    if-eqz v6, :cond_51

    .line 1515
    iget-boolean v6, v5, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->edge:Z

    if-eqz v6, :cond_4f

    .line 1516
    iget v6, v5, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    const/16 v8, 0x3e8

    if-eq v6, v8, :cond_4e

    add-int/lit8 v6, v6, 0x6c

    .line 1517
    iput v6, v5, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    .line 1519
    :cond_4e
    iget v6, v5, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->pw:I

    add-int/lit8 v6, v6, 0x6c

    iput v6, v5, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->pw:I

    goto :goto_2c

    .line 1520
    :cond_4f
    iget v6, v5, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    const/4 v8, 0x2

    and-int/2addr v6, v8

    if-eqz v6, :cond_52

    .line 1521
    iget v6, v5, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    const/16 v9, 0x3e8

    if-eq v6, v9, :cond_50

    add-int/lit8 v6, v6, -0x6c

    .line 1522
    iput v6, v5, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    goto :goto_2d

    .line 1523
    :cond_50
    iget v6, v5, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->leftSpanOffset:I

    if-eqz v6, :cond_53

    add-int/lit8 v6, v6, 0x6c

    .line 1524
    iput v6, v5, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->leftSpanOffset:I

    goto :goto_2d

    :cond_51
    :goto_2c
    const/4 v8, 0x2

    :cond_52
    const/16 v9, 0x3e8

    :cond_53
    :goto_2d
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    :cond_54
    return-void
.end method

.method public contains(I)Z
    .locals 3

    .line 1601
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    .line 1604
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1605
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_1

    .line 1606
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

    .line 1536
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->positions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1537
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->calculate()V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    .line 1541
    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 1542
    iget-object v3, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    .line 1543
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

    .line 1555
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->positions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1556
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->calculate()V

    :cond_0
    const/4 v0, 0x0

    .line 1558
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1559
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 1560
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->positions:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    if-eqz v2, :cond_1

    .line 1561
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

    .line 1532
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->findMessageWithFlags(I)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    return-object v0
.end method
