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

    .line 863
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 867
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    .line 868
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    .line 869
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->positions:Ljava/util/HashMap;

    const/16 v0, 0x320

    .line 872
    iput v0, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    .line 874
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

    .line 900
    aget v1, p1, p2

    add-float/2addr v0, v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 902
    :cond_0
    iget p1, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    int-to-float p1, p1

    div-float/2addr p1, v0

    return p1
.end method


# virtual methods
.method public calculate()V
    .locals 39

    move-object/from16 v0, p0

    .line 906
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 907
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->positions:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const/16 v1, 0x320

    .line 909
    iput v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    .line 912
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    return-void

    :cond_0
    const v3, 0x444b8000    # 814.0f

    .line 918
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    .line 925
    iput-boolean v5, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->hasSibling:Z

    .line 927
    iput-boolean v5, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->hasCaption:Z

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    const v12, 0x3f99999a    # 1.2f

    if-ge v7, v1, :cond_c

    .line 930
    iget-object v13, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/messenger/MessageObject;

    if-nez v7, :cond_5

    .line 932
    invoke-virtual {v13}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v11

    if-nez v11, :cond_3

    .line 933
    iget-object v8, v13, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v14, v8, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    if-eqz v14, :cond_1

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->saved_from_peer:Lorg/telegram/tgnet/TLRPC$Peer;

    if-nez v14, :cond_2

    :cond_1
    iget-object v14, v8, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v14, v14, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    if-eqz v14, :cond_3

    iget-object v14, v8, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v5, v14, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    const-wide/16 v17, 0x0

    cmp-long v19, v5, v17

    if-nez v19, :cond_2

    iget-wide v5, v14, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    cmp-long v14, v5, v17

    if-nez v14, :cond_2

    .line 936
    invoke-static {v8}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v5

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-nez v5, :cond_2

    iget-object v5, v13, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v5}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v5

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    if-eqz v5, :cond_3

    :cond_2
    const/4 v8, 0x1

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    .line 938
    :goto_1
    invoke-virtual {v13}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v13}, Lorg/telegram/messenger/MessageObject;->isDocument()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 939
    :cond_4
    iput-boolean v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->isDocuments:Z

    .line 942
    :cond_5
    iget-object v5, v13, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v6

    invoke-static {v5, v6}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v5

    .line 943
    new-instance v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    invoke-direct {v6}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;-><init>()V

    add-int/lit8 v14, v1, -0x1

    if-ne v7, v14, :cond_6

    const/4 v14, 0x1

    goto :goto_2

    :cond_6
    const/4 v14, 0x0

    .line 944
    :goto_2
    iput-boolean v14, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->last:Z

    if-nez v5, :cond_7

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_3

    .line 945
    :cond_7
    iget v14, v5, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    int-to-float v14, v14

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    int-to-float v5, v5

    div-float v5, v14, v5

    :goto_3
    iput v5, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    cmpl-float v12, v5, v12

    if-lez v12, :cond_8

    const-string/jumbo v5, "w"

    .line 948
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_8
    const v12, 0x3f4ccccd    # 0.8f

    cmpg-float v5, v5, v12

    if-gez v5, :cond_9

    const-string v5, "n"

    .line 950
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_9
    const-string v5, "q"

    .line 952
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 955
    :goto_4
    iget v5, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    add-float/2addr v9, v5

    const/high16 v12, 0x40000000    # 2.0f

    cmpl-float v5, v5, v12

    if-lez v5, :cond_a

    const/4 v10, 0x1

    .line 961
    :cond_a
    iget-object v5, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->positions:Ljava/util/HashMap;

    invoke-virtual {v5, v13, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    iget-object v5, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 964
    iget-object v5, v13, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    if-eqz v5, :cond_b

    .line 965
    iput-boolean v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->hasCaption:Z

    :cond_b
    add-int/lit8 v7, v7, 0x1

    const/4 v5, 0x0

    goto/16 :goto_0

    .line 968
    :cond_c
    iget-boolean v5, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->isDocuments:Z

    const/16 v6, 0x3e8

    const/4 v7, 0x3

    if-eqz v5, :cond_10

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_f

    .line 970
    iget-object v4, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    .line 971
    iget v5, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    or-int/2addr v5, v7

    iput v5, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    if-nez v3, :cond_d

    or-int/lit8 v5, v5, 0x4

    .line 973
    iput v5, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    goto :goto_6

    :cond_d
    add-int/lit8 v8, v1, -0x1

    if-ne v3, v8, :cond_e

    or-int/lit8 v5, v5, 0x8

    .line 975
    iput v5, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    .line 976
    iput-boolean v2, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->last:Z

    .line 978
    :cond_e
    :goto_6
    iput-boolean v2, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->edge:Z

    const/high16 v5, 0x3f800000    # 1.0f

    .line 979
    iput v5, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    const/4 v5, 0x0

    .line 980
    iput-byte v5, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minX:B

    .line 981
    iput-byte v5, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxX:B

    int-to-byte v5, v3

    .line 982
    iput-byte v5, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    .line 983
    iput-byte v5, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxY:B

    .line 984
    iput v6, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    .line 985
    iget v5, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    iput v5, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->pw:I

    const/high16 v5, 0x42c80000    # 100.0f

    .line 986
    iput v5, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->ph:F

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_f
    return-void

    :cond_10
    if-eqz v8, :cond_11

    .line 992
    iget v5, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    add-int/lit8 v5, v5, -0x32

    iput v5, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    const/16 v5, 0xfa

    goto :goto_7

    :cond_11
    const/16 v5, 0xc8

    :goto_7
    const/16 v8, 0x78

    .line 996
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    .line 997
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    int-to-float v8, v8

    sget-object v14, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v15, v14, Landroid/graphics/Point;->x:I

    iget v14, v14, Landroid/graphics/Point;->y:I

    invoke-static {v15, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    int-to-float v14, v14

    iget v15, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    int-to-float v15, v15

    div-float/2addr v14, v15

    div-float/2addr v8, v14

    float-to-int v8, v8

    const/16 v14, 0x28

    .line 998
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    int-to-float v14, v14

    sget-object v15, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v6, v15, Landroid/graphics/Point;->x:I

    iget v15, v15, Landroid/graphics/Point;->y:I

    invoke-static {v6, v15}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v6, v6

    iget v15, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    int-to-float v12, v15

    div-float/2addr v6, v12

    div-float/2addr v14, v6

    float-to-int v6, v14

    int-to-float v12, v15

    div-float/2addr v12, v3

    int-to-float v14, v1

    div-float/2addr v9, v14

    const/16 v14, 0x64

    .line 1003
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v14, v3

    const/4 v15, 0x4

    const/4 v3, 0x2

    if-nez v10, :cond_21

    if-eq v1, v3, :cond_12

    if-eq v1, v7, :cond_12

    if-ne v1, v15, :cond_21

    :cond_12
    const v19, 0x3ecccccd    # 0.4f

    if-ne v1, v3, :cond_18

    .line 1007
    iget-object v6, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    .line 1008
    iget-object v7, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    .line 1009
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v13, "ww"

    .line 1010
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_13

    float-to-double v2, v9

    const-wide v20, 0x3ff6666666666666L    # 1.4

    move/from16 v28, v11

    float-to-double v10, v12

    mul-double v10, v10, v20

    cmpl-double v9, v2, v10

    if-lez v9, :cond_14

    iget v2, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    iget v3, v7, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    sub-float v9, v2, v3

    float-to-double v9, v9

    const-wide v11, 0x3fc999999999999aL    # 0.2

    cmpg-double v14, v9, v11

    if-gez v14, :cond_14

    .line 1011
    iget v4, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    int-to-float v8, v4

    div-float/2addr v8, v2

    int-to-float v2, v4

    div-float/2addr v2, v3

    const v3, 0x43cb8000    # 407.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v8, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x444b8000    # 814.0f

    div-float/2addr v2, v3

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    .line 1012
    iget v3, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    const/16 v27, 0x7

    move-object/from16 v20, v6

    move/from16 v25, v3

    move/from16 v26, v2

    invoke-virtual/range {v20 .. v27}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/16 v23, 0x1

    const/16 v24, 0x1

    .line 1013
    iget v3, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    const/16 v27, 0xb

    move-object/from16 v20, v7

    move/from16 v25, v3

    invoke-virtual/range {v20 .. v27}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/4 v2, 0x0

    goto/16 :goto_22

    :cond_13
    move/from16 v28, v11

    .line 1014
    :cond_14
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    const-string v2, "qq"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    goto :goto_8

    .line 1021
    :cond_15
    iget v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    int-to-float v3, v2

    mul-float v3, v3, v19

    int-to-float v2, v2

    iget v4, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v2, v4

    const/high16 v9, 0x3f800000    # 1.0f

    div-float v4, v9, v4

    iget v10, v7, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v9, v10

    add-float/2addr v4, v9

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    .line 1022
    iget v3, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    sub-int/2addr v3, v2

    if-ge v3, v8, :cond_16

    sub-int v3, v8, v3

    sub-int/2addr v2, v3

    move v3, v8

    :cond_16
    int-to-float v4, v3

    .line 1029
    iget v8, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v4, v8

    int-to-float v8, v2

    iget v9, v7, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v8, v9

    invoke-static {v4, v8}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    const v8, 0x444b8000    # 814.0f

    invoke-static {v8, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    div-float/2addr v4, v8

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v27, 0xd

    move-object/from16 v20, v6

    move/from16 v25, v3

    move/from16 v26, v4

    .line 1030
    invoke-virtual/range {v20 .. v27}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v27, 0xe

    move-object/from16 v20, v7

    move/from16 v25, v2

    .line 1031
    invoke-virtual/range {v20 .. v27}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    goto/16 :goto_a

    .line 1015
    :cond_17
    :goto_8
    iget v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    const/4 v3, 0x2

    div-int/2addr v2, v3

    int-to-float v3, v2

    .line 1016
    iget v4, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float v4, v3, v4

    iget v8, v7, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v3, v8

    const v8, 0x444b8000    # 814.0f

    invoke-static {v3, v8}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v8

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v27, 0xd

    move-object/from16 v20, v6

    move/from16 v25, v2

    move/from16 v26, v3

    .line 1017
    invoke-virtual/range {v20 .. v27}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v27, 0xe

    move-object/from16 v20, v7

    .line 1018
    invoke-virtual/range {v20 .. v27}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    goto/16 :goto_a

    :cond_18
    move/from16 v28, v11

    const v2, 0x44064f5d

    if-ne v1, v7, :cond_1c

    .line 1035
    iget-object v3, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    .line 1036
    iget-object v9, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    .line 1037
    iget-object v10, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    .line 1038
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v7, 0x6e

    if-ne v4, v7, :cond_1a

    .line 1039
    iget v2, v9, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    iget v4, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    int-to-float v4, v4

    mul-float v4, v4, v2

    iget v7, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    add-float/2addr v7, v2

    div-float/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    const v4, 0x43cb8000    # 407.0f

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const v4, 0x444b8000    # 814.0f

    sub-float v7, v4, v2

    int-to-float v4, v8

    .line 1041
    iget v8, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    int-to-float v8, v8

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float v8, v8, v11

    iget v11, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    mul-float v11, v11, v2

    iget v12, v9, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    mul-float v12, v12, v7

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    int-to-float v11, v11

    invoke-static {v8, v11}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-static {v4, v8}, Ljava/lang/Math;->max(FF)F

    move-result v4

    float-to-int v4, v4

    .line 1043
    iget v8, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    const v11, 0x444b8000    # 814.0f

    mul-float v8, v8, v11

    int-to-float v6, v6

    add-float/2addr v8, v6

    iget v6, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    sub-int/2addr v6, v4

    int-to-float v6, v6

    invoke-static {v8, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x1

    const/high16 v35, 0x3f800000    # 1.0f

    const/16 v36, 0xd

    move-object/from16 v29, v3

    move/from16 v34, v6

    .line 1044
    invoke-virtual/range {v29 .. v36}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/16 v30, 0x1

    const/16 v31, 0x1

    const/16 v33, 0x0

    const v8, 0x444b8000    # 814.0f

    div-float/2addr v7, v8

    const/16 v36, 0x6

    move-object/from16 v29, v9

    move/from16 v34, v4

    move/from16 v35, v7

    .line 1046
    invoke-virtual/range {v29 .. v36}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/16 v30, 0x0

    const/16 v32, 0x1

    const/16 v33, 0x1

    const v8, 0x444b8000    # 814.0f

    div-float/2addr v2, v8

    const/16 v36, 0xa

    move-object/from16 v29, v10

    move/from16 v35, v2

    .line 1048
    invoke-virtual/range {v29 .. v36}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    .line 1049
    iget v8, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    iput v8, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    const/4 v11, 0x2

    new-array v12, v11, [F

    const/4 v11, 0x0

    aput v2, v12, v11

    const/4 v2, 0x1

    aput v7, v12, v2

    .line 1051
    iput-object v12, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->siblingHeights:[F

    if-eqz v28, :cond_19

    sub-int/2addr v8, v4

    .line 1054
    iput v8, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    goto :goto_9

    :cond_19
    sub-int/2addr v8, v6

    .line 1056
    iput v8, v9, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    .line 1057
    iput v6, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->leftSpanOffset:I

    .line 1059
    :goto_9
    iput-boolean v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->hasSibling:Z

    goto :goto_a

    .line 1062
    :cond_1a
    iget v4, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    int-to-float v4, v4

    iget v6, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v4, v6

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    const v4, 0x444b8000    # 814.0f

    div-float/2addr v2, v4

    const/16 v30, 0x0

    const/16 v31, 0x1

    const/16 v32, 0x0

    const/16 v33, 0x0

    .line 1063
    iget v4, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    const/16 v36, 0x7

    move-object/from16 v29, v3

    move/from16 v34, v4

    move/from16 v35, v2

    invoke-virtual/range {v29 .. v36}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    .line 1065
    iget v3, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    const/4 v4, 0x2

    div-int/2addr v3, v4

    const v4, 0x444b8000    # 814.0f

    sub-float v2, v4, v2

    int-to-float v6, v3

    .line 1066
    iget v7, v9, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float v7, v6, v7

    iget v8, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v6, v8

    invoke-static {v7, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    div-float/2addr v2, v4

    cmpg-float v4, v2, v14

    if-gez v4, :cond_1b

    move v2, v14

    :cond_1b
    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x1

    const/16 v33, 0x1

    const/16 v36, 0x9

    move-object/from16 v29, v9

    move/from16 v34, v3

    move/from16 v35, v2

    .line 1070
    invoke-virtual/range {v29 .. v36}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/16 v30, 0x1

    const/16 v31, 0x1

    const/16 v36, 0xa

    move-object/from16 v29, v10

    .line 1071
    invoke-virtual/range {v29 .. v36}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    :goto_a
    const/4 v2, 0x1

    goto/16 :goto_22

    .line 1075
    :cond_1c
    iget-object v3, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    .line 1076
    iget-object v10, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    .line 1077
    iget-object v11, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    .line 1078
    iget-object v12, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    .line 1079
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v9, 0x77

    const v15, 0x3ea8f5c3    # 0.33f

    if-ne v4, v9, :cond_1f

    .line 1080
    iget v4, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    int-to-float v4, v4

    iget v6, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v4, v6

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    const v4, 0x444b8000    # 814.0f

    div-float/2addr v2, v4

    const/16 v21, 0x0

    const/16 v22, 0x2

    const/16 v23, 0x0

    const/16 v24, 0x0

    .line 1081
    iget v4, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    const/16 v27, 0x7

    move-object/from16 v20, v3

    move/from16 v25, v4

    move/from16 v26, v2

    invoke-virtual/range {v20 .. v27}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    .line 1083
    iget v3, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    int-to-float v3, v3

    iget v4, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    iget v6, v11, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    add-float/2addr v4, v6

    iget v6, v12, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    add-float/2addr v4, v6

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v8

    .line 1084
    iget v6, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    int-to-float v6, v6

    mul-float v6, v6, v19

    iget v7, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    mul-float v7, v7, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    float-to-int v6, v6

    .line 1085
    iget v7, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    int-to-float v7, v7

    mul-float v7, v7, v15

    invoke-static {v4, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget v7, v12, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    mul-float v7, v7, v3

    invoke-static {v4, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    float-to-int v4, v4

    .line 1086
    iget v7, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    sub-int/2addr v7, v6

    sub-int/2addr v7, v4

    const/16 v8, 0x3a

    .line 1087
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    if-ge v7, v9, :cond_1d

    .line 1088
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    sub-int/2addr v9, v7

    .line 1089
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    .line 1090
    div-int/lit8 v8, v9, 0x2

    sub-int/2addr v6, v8

    sub-int/2addr v9, v8

    sub-int/2addr v4, v9

    :cond_1d
    move/from16 v25, v6

    const v6, 0x444b8000    # 814.0f

    sub-float v2, v6, v2

    .line 1093
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    div-float/2addr v2, v6

    cmpg-float v3, v2, v14

    if-gez v3, :cond_1e

    move v2, v14

    :cond_1e
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x1

    const/16 v27, 0x9

    move-object/from16 v20, v10

    move/from16 v26, v2

    .line 1098
    invoke-virtual/range {v20 .. v27}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v27, 0x8

    move-object/from16 v20, v11

    move/from16 v25, v7

    .line 1099
    invoke-virtual/range {v20 .. v27}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/16 v21, 0x2

    const/16 v22, 0x2

    const/16 v27, 0xa

    move-object/from16 v20, v12

    move/from16 v25, v4

    .line 1100
    invoke-virtual/range {v20 .. v27}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/4 v2, 0x2

    goto/16 :goto_22

    .line 1103
    :cond_1f
    iget v2, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v2, v4, v2

    iget v9, v11, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float v9, v4, v9

    add-float/2addr v2, v9

    iget v9, v12, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float v9, v4, v9

    add-float/2addr v2, v9

    const v4, 0x444b8000    # 814.0f

    div-float v2, v4, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v8, v13

    int-to-float v9, v2

    .line 1104
    iget v13, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float v13, v9, v13

    invoke-static {v8, v13}, Ljava/lang/Math;->max(FF)F

    move-result v13

    div-float/2addr v13, v4

    invoke-static {v15, v13}, Ljava/lang/Math;->min(FF)F

    move-result v13

    .line 1105
    iget v14, v11, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v9, v14

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    div-float/2addr v8, v4

    invoke-static {v15, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v9, v13

    sub-float/2addr v9, v8

    .line 1107
    iget v14, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    mul-float v4, v4, v14

    int-to-float v6, v6

    add-float/2addr v4, v6

    iget v6, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    sub-int/2addr v6, v2

    int-to-float v6, v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x2

    add-float v6, v13, v8

    add-float v26, v6, v9

    const/16 v27, 0xd

    move-object/from16 v20, v3

    move/from16 v25, v4

    .line 1109
    invoke-virtual/range {v20 .. v27}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v24, 0x0

    const/16 v27, 0x6

    move-object/from16 v20, v10

    move/from16 v25, v2

    move/from16 v26, v13

    .line 1111
    invoke-virtual/range {v20 .. v27}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/16 v21, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x1

    const/16 v27, 0x2

    move-object/from16 v20, v11

    move/from16 v26, v8

    .line 1113
    invoke-virtual/range {v20 .. v27}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    .line 1114
    iget v6, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    iput v6, v11, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    const/16 v23, 0x2

    const/16 v24, 0x2

    const/16 v27, 0xa

    move-object/from16 v20, v12

    move/from16 v26, v9

    .line 1116
    invoke-virtual/range {v20 .. v27}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    .line 1117
    iget v6, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    iput v6, v12, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    if-eqz v28, :cond_20

    sub-int/2addr v6, v2

    .line 1120
    iput v6, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    goto :goto_b

    :cond_20
    sub-int/2addr v6, v4

    .line 1122
    iput v6, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    .line 1123
    iput v4, v11, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->leftSpanOffset:I

    .line 1124
    iput v4, v12, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->leftSpanOffset:I

    :goto_b
    new-array v2, v7, [F

    const/4 v4, 0x0

    aput v13, v2, v4

    const/4 v4, 0x1

    aput v8, v2, v4

    const/4 v6, 0x2

    aput v9, v2, v6

    .line 1126
    iput-object v2, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->siblingHeights:[F

    .line 1127
    iput-boolean v4, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->hasSibling:Z

    goto/16 :goto_a

    :cond_21
    move/from16 v28, v11

    const/4 v2, 0x4

    .line 1132
    iget-object v3, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v4, v3, [F

    const/4 v6, 0x0

    :goto_c
    if-ge v6, v1, :cond_23

    const v10, 0x3f8ccccd    # 1.1f

    cmpl-float v10, v9, v10

    if-lez v10, :cond_22

    .line 1135
    iget-object v10, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    iget v10, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v11, v10}, Ljava/lang/Math;->max(FF)F

    move-result v10

    aput v10, v4, v6

    goto :goto_d

    :cond_22
    const/high16 v11, 0x3f800000    # 1.0f

    .line 1137
    iget-object v10, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    iget v10, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    invoke-static {v11, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    aput v10, v4, v6

    :goto_d
    const v10, 0x3f2aaae3

    const v12, 0x3fd9999a    # 1.7f

    .line 1139
    aget v13, v4, v6

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v12

    invoke-static {v10, v12}, Ljava/lang/Math;->max(FF)F

    move-result v10

    aput v10, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 1146
    :cond_23
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x1

    :goto_e
    if-ge v10, v3, :cond_26

    sub-int v11, v3, v10

    if-gt v10, v7, :cond_25

    if-le v11, v7, :cond_24

    goto :goto_f

    .line 1152
    :cond_24
    new-instance v12, Lorg/telegram/messenger/MessageObject$GroupedMessages$MessageGroupedLayoutAttempt;

    const/4 v13, 0x0

    invoke-direct {v0, v4, v13, v10}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->multiHeight([FII)F

    move-result v15

    move v13, v15

    invoke-direct {v0, v4, v10, v3}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->multiHeight([FII)F

    move-result v15

    invoke-direct {v12, v10, v11, v13, v15}, Lorg/telegram/messenger/MessageObject$GroupedMessages$MessageGroupedLayoutAttempt;-><init>(IIFF)V

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25
    :goto_f
    add-int/lit8 v10, v10, 0x1

    goto :goto_e

    :cond_26
    const/4 v10, 0x1

    :goto_10
    add-int/lit8 v11, v3, -0x1

    if-ge v10, v11, :cond_2b

    const/4 v11, 0x1

    :goto_11
    sub-int v12, v3, v10

    if-ge v11, v12, :cond_2a

    sub-int/2addr v12, v11

    if-gt v10, v7, :cond_29

    const v13, 0x3f59999a    # 0.85f

    cmpg-float v13, v9, v13

    if-gez v13, :cond_27

    const/4 v15, 0x4

    goto :goto_12

    :cond_27
    const/4 v15, 0x3

    :goto_12
    if-gt v11, v15, :cond_29

    if-le v12, v7, :cond_28

    goto :goto_13

    .line 1161
    :cond_28
    new-instance v13, Lorg/telegram/messenger/MessageObject$GroupedMessages$MessageGroupedLayoutAttempt;

    const/4 v15, 0x0

    invoke-direct {v0, v4, v15, v10}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->multiHeight([FII)F

    move-result v24

    add-int v15, v10, v11

    invoke-direct {v0, v4, v10, v15}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->multiHeight([FII)F

    move-result v25

    invoke-direct {v0, v4, v15, v3}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->multiHeight([FII)F

    move-result v26

    move-object/from16 v20, v13

    move/from16 v21, v10

    move/from16 v22, v11

    move/from16 v23, v12

    invoke-direct/range {v20 .. v26}, Lorg/telegram/messenger/MessageObject$GroupedMessages$MessageGroupedLayoutAttempt;-><init>(IIIFFF)V

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_29
    :goto_13
    add-int/lit8 v11, v11, 0x1

    goto :goto_11

    :cond_2a
    add-int/lit8 v10, v10, 0x1

    goto :goto_10

    :cond_2b
    const/4 v9, 0x1

    :goto_14
    add-int/lit8 v10, v3, -0x2

    if-ge v9, v10, :cond_30

    const/4 v10, 0x1

    :goto_15
    sub-int v11, v3, v9

    if-ge v10, v11, :cond_2f

    const/4 v12, 0x1

    :goto_16
    sub-int v13, v11, v10

    if-ge v12, v13, :cond_2e

    sub-int/2addr v13, v12

    if-gt v9, v7, :cond_2d

    if-gt v10, v7, :cond_2d

    if-gt v12, v7, :cond_2d

    if-le v13, v7, :cond_2c

    goto :goto_17

    .line 1172
    :cond_2c
    new-instance v15, Lorg/telegram/messenger/MessageObject$GroupedMessages$MessageGroupedLayoutAttempt;

    const/4 v2, 0x0

    invoke-direct {v0, v4, v2, v9}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->multiHeight([FII)F

    move-result v35

    move-object v2, v15

    add-int v15, v9, v10

    invoke-direct {v0, v4, v9, v15}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->multiHeight([FII)F

    move-result v36

    add-int v7, v15, v12

    invoke-direct {v0, v4, v15, v7}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->multiHeight([FII)F

    move-result v37

    invoke-direct {v0, v4, v7, v3}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->multiHeight([FII)F

    move-result v38

    move-object/from16 v30, v2

    move/from16 v31, v9

    move/from16 v32, v10

    move/from16 v33, v12

    move/from16 v34, v13

    invoke-direct/range {v30 .. v38}, Lorg/telegram/messenger/MessageObject$GroupedMessages$MessageGroupedLayoutAttempt;-><init>(IIIIFFFF)V

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2d
    :goto_17
    add-int/lit8 v12, v12, 0x1

    const/4 v2, 0x4

    const/4 v7, 0x3

    goto :goto_16

    :cond_2e
    add-int/lit8 v10, v10, 0x1

    const/4 v2, 0x4

    const/4 v7, 0x3

    goto :goto_15

    :cond_2f
    add-int/lit8 v9, v9, 0x1

    const/4 v2, 0x4

    const/4 v7, 0x3

    goto :goto_14

    .line 1179
    :cond_30
    iget v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    const/4 v3, 0x3

    div-int/2addr v2, v3

    const/4 v3, 0x4

    mul-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 1180
    :goto_18
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v10, v13, :cond_3b

    .line 1181
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/messenger/MessageObject$GroupedMessages$MessageGroupedLayoutAttempt;

    const v15, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v15, 0x0

    const v16, 0x7f7fffff    # Float.MAX_VALUE

    const/16 v21, 0x0

    .line 1184
    :goto_19
    iget-object v3, v13, Lorg/telegram/messenger/MessageObject$GroupedMessages$MessageGroupedLayoutAttempt;->heights:[F

    array-length v7, v3

    if-ge v15, v7, :cond_32

    .line 1185
    aget v7, v3, v15

    add-float v21, v21, v7

    .line 1186
    aget v7, v3, v15

    cmpg-float v7, v7, v16

    if-gez v7, :cond_31

    .line 1187
    aget v3, v3, v15

    move/from16 v16, v3

    :cond_31
    add-int/lit8 v15, v15, 0x1

    goto :goto_19

    :cond_32
    sub-float v21, v21, v2

    .line 1191
    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 1192
    iget-object v7, v13, Lorg/telegram/messenger/MessageObject$GroupedMessages$MessageGroupedLayoutAttempt;->lineCounts:[I

    array-length v15, v7

    const/4 v9, 0x1

    move/from16 v24, v2

    if-le v15, v9, :cond_37

    const/4 v15, 0x0

    .line 1193
    aget v2, v7, v15

    aget v15, v7, v9

    if-gt v2, v15, :cond_36

    array-length v2, v7

    const/4 v15, 0x2

    if-le v2, v15, :cond_34

    aget v2, v7, v9

    aget v9, v7, v15

    if-gt v2, v9, :cond_33

    goto :goto_1a

    :cond_33
    const v2, 0x3f99999a    # 1.2f

    const/4 v9, 0x3

    goto :goto_1c

    :cond_34
    :goto_1a
    array-length v2, v7

    const/4 v9, 0x3

    if-le v2, v9, :cond_35

    aget v2, v7, v15

    aget v7, v7, v9

    if-le v2, v7, :cond_35

    goto :goto_1b

    :cond_35
    const v2, 0x3f99999a    # 1.2f

    goto :goto_1d

    :cond_36
    const/4 v9, 0x3

    :goto_1b
    const v2, 0x3f99999a    # 1.2f

    :goto_1c
    mul-float v3, v3, v2

    goto :goto_1d

    :cond_37
    const v2, 0x3f99999a    # 1.2f

    const/4 v9, 0x3

    :goto_1d
    int-to-float v7, v8

    cmpg-float v7, v16, v7

    if-gez v7, :cond_38

    const/high16 v7, 0x3fc00000    # 1.5f

    mul-float v3, v3, v7

    :cond_38
    if-eqz v11, :cond_39

    cmpg-float v7, v3, v12

    if-gez v7, :cond_3a

    :cond_39
    move v12, v3

    move-object v11, v13

    :cond_3a
    add-int/lit8 v10, v10, 0x1

    move/from16 v2, v24

    const/4 v3, 0x4

    goto/16 :goto_18

    :cond_3b
    if-nez v11, :cond_3c

    return-void

    :cond_3c
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 1214
    :goto_1e
    iget-object v7, v11, Lorg/telegram/messenger/MessageObject$GroupedMessages$MessageGroupedLayoutAttempt;->lineCounts:[I

    array-length v8, v7

    if-ge v2, v8, :cond_42

    .line 1215
    aget v7, v7, v2

    .line 1216
    iget-object v8, v11, Lorg/telegram/messenger/MessageObject$GroupedMessages$MessageGroupedLayoutAttempt;->heights:[F

    aget v8, v8, v2

    .line 1217
    iget v9, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    add-int/lit8 v10, v7, -0x1

    .line 1219
    invoke-static {v3, v10}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v12, v9

    const/4 v13, 0x0

    move v9, v6

    const/4 v6, 0x0

    :goto_1f
    if-ge v6, v7, :cond_41

    .line 1221
    aget v15, v4, v9

    mul-float v15, v15, v8

    float-to-int v15, v15

    sub-int/2addr v12, v15

    move/from16 v16, v3

    .line 1224
    iget-object v3, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v30, v3

    check-cast v30, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move-object/from16 v19, v4

    if-nez v2, :cond_3d

    const/4 v3, 0x4

    goto :goto_20

    :cond_3d
    const/4 v3, 0x0

    .line 1229
    :goto_20
    iget-object v4, v11, Lorg/telegram/messenger/MessageObject$GroupedMessages$MessageGroupedLayoutAttempt;->lineCounts:[I

    array-length v4, v4

    const/16 v17, 0x1

    add-int/lit8 v4, v4, -0x1

    if-ne v2, v4, :cond_3e

    or-int/lit8 v3, v3, 0x8

    :cond_3e
    if-nez v6, :cond_3f

    or-int/lit8 v3, v3, 0x1

    if-eqz v28, :cond_3f

    move-object/from16 v13, v30

    :cond_3f
    if-ne v6, v10, :cond_40

    or-int/lit8 v3, v3, 0x2

    if-nez v28, :cond_40

    move/from16 v37, v3

    move-object/from16 v13, v30

    goto :goto_21

    :cond_40
    move/from16 v37, v3

    :goto_21
    const v4, 0x444b8000    # 814.0f

    div-float v3, v8, v4

    .line 1244
    invoke-static {v14, v3}, Ljava/lang/Math;->max(FF)F

    move-result v36

    move/from16 v31, v6

    move/from16 v32, v6

    move/from16 v33, v2

    move/from16 v34, v2

    move/from16 v35, v15

    invoke-virtual/range {v30 .. v37}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v6, v6, 0x1

    move/from16 v3, v16

    move-object/from16 v4, v19

    goto :goto_1f

    :cond_41
    move/from16 v16, v3

    move-object/from16 v19, v4

    const v4, 0x444b8000    # 814.0f

    .line 1247
    iget v3, v13, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->pw:I

    add-int/2addr v3, v12

    iput v3, v13, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->pw:I

    .line 1248
    iget v3, v13, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    add-int/2addr v3, v12

    iput v3, v13, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    add-int/lit8 v2, v2, 0x1

    move v6, v9

    move/from16 v3, v16

    move-object/from16 v4, v19

    goto/16 :goto_1e

    :cond_42
    move v2, v3

    :goto_22
    const/4 v3, 0x0

    :goto_23
    if-ge v3, v1, :cond_4f

    .line 1254
    iget-object v4, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    if-eqz v28, :cond_45

    .line 1256
    iget-byte v6, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minX:B

    if-nez v6, :cond_43

    .line 1257
    iget v6, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    add-int/2addr v6, v5

    iput v6, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    .line 1259
    :cond_43
    iget v6, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    const/4 v7, 0x2

    and-int/2addr v6, v7

    if-eqz v6, :cond_44

    const/4 v6, 0x1

    .line 1260
    iput-boolean v6, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->edge:Z

    :cond_44
    const/4 v7, 0x1

    goto :goto_24

    :cond_45
    const/4 v7, 0x2

    .line 1263
    iget-byte v6, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxX:B

    if-eq v6, v2, :cond_46

    iget v6, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/2addr v6, v7

    if-eqz v6, :cond_47

    .line 1264
    :cond_46
    iget v6, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    add-int/2addr v6, v5

    iput v6, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    .line 1266
    :cond_47
    iget v6, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    const/4 v7, 0x1

    and-int/2addr v6, v7

    if-eqz v6, :cond_48

    .line 1267
    iput-boolean v7, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->edge:Z

    .line 1270
    :cond_48
    :goto_24
    iget-object v6, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject;

    if-nez v28, :cond_4c

    .line 1271
    invoke-static {v6}, Lorg/telegram/messenger/MessageObject;->access$000(Lorg/telegram/messenger/MessageObject;)Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 1272
    iget-boolean v6, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->edge:Z

    if-eqz v6, :cond_4a

    .line 1273
    iget v6, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    const/16 v8, 0x3e8

    if-eq v6, v8, :cond_49

    add-int/lit8 v6, v6, 0x6c

    .line 1274
    iput v6, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    .line 1276
    :cond_49
    iget v6, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->pw:I

    add-int/lit8 v6, v6, 0x6c

    iput v6, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->pw:I

    goto :goto_25

    .line 1277
    :cond_4a
    iget v6, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    const/4 v8, 0x2

    and-int/2addr v6, v8

    if-eqz v6, :cond_4d

    .line 1278
    iget v6, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    const/16 v9, 0x3e8

    if-eq v6, v9, :cond_4b

    add-int/lit8 v6, v6, -0x6c

    .line 1279
    iput v6, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    goto :goto_26

    .line 1280
    :cond_4b
    iget v6, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->leftSpanOffset:I

    if-eqz v6, :cond_4e

    add-int/lit8 v6, v6, 0x6c

    .line 1281
    iput v6, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->leftSpanOffset:I

    goto :goto_26

    :cond_4c
    :goto_25
    const/4 v8, 0x2

    :cond_4d
    const/16 v9, 0x3e8

    :cond_4e
    :goto_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    :cond_4f
    return-void
.end method

.method public findMessageWithFlags(I)Lorg/telegram/messenger/MessageObject;
    .locals 3

    .line 1293
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->positions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1294
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->calculate()V

    :cond_0
    const/4 v0, 0x0

    .line 1296
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1297
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 1298
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->positions:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    if-eqz v2, :cond_1

    .line 1299
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

    .line 1289
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->findMessageWithFlags(I)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    return-object v0
.end method
