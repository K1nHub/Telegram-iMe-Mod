.class public Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/SendMessagesHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SendMessageParams"
.end annotation


# instance fields
.field public caption:Ljava/lang/String;

.field public document:Lorg/telegram/tgnet/TLRPC$TL_document;

.field public entities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$MessageEntity;",
            ">;"
        }
    .end annotation
.end field

.field public game:Lorg/telegram/tgnet/TLRPC$TL_game;

.field public hasMediaSpoilers:Z

.field public invert_media:Z

.field public invoice:Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

.field public location:Lorg/telegram/tgnet/TLRPC$MessageMedia;

.field public mediaWebPage:Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

.field public message:Ljava/lang/String;

.field public notify:Z

.field public params:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public parentObject:Ljava/lang/Object;

.field public path:Ljava/lang/String;

.field public peer:J

.field public photo:Lorg/telegram/tgnet/TLRPC$TL_photo;

.field public poll:Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

.field public replyMarkup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

.field public replyQuote:Lorg/telegram/ui/ChatActivity$ReplyQuote;

.field public replyToMsg:Lorg/telegram/messenger/MessageObject;

.field public replyToStoryItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

.field public replyToTopMsg:Lorg/telegram/messenger/MessageObject;

.field public retryMessageObject:Lorg/telegram/messenger/MessageObject;

.field public scheduleDate:I

.field public searchLinks:Z

.field public sendAnimationData:Lorg/telegram/messenger/MessageObject$SendAnimationData;

.field public sendingStory:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

.field public templateName:Ljava/lang/String;

.field public ttl:I

.field public updateStickersOrder:Z

.field public user:Lorg/telegram/tgnet/TLRPC$User;

.field public videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

.field public webPage:Lorg/telegram/tgnet/TLRPC$WebPage;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9023
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 9048
    iput-boolean v0, p0, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->searchLinks:Z

    return-void
.end method

.method public static of(Ljava/lang/String;JLjava/lang/String;)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;
    .locals 28

    move-object/from16 v0, p0

    move-wide/from16 v10, p1

    move-object/from16 v27, p3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    .line 9066
    invoke-static/range {v0 .. v27}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/tgnet/TLRPC$TL_game;Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;JLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZIILjava/lang/Object;Lorg/telegram/messenger/MessageObject$SendAnimationData;ZLjava/lang/String;)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZILorg/telegram/messenger/MessageObject$SendAnimationData;ZLjava/lang/String;)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/tgnet/TLRPC$WebPage;",
            "Z",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$MessageEntity;",
            ">;",
            "Lorg/telegram/tgnet/TLRPC$ReplyMarkup;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZI",
            "Lorg/telegram/messenger/MessageObject$SendAnimationData;",
            "Z",
            "Ljava/lang/String;",
            ")",
            "Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v10, p1

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move/from16 v16, p6

    move-object/from16 v18, p7

    move-object/from16 v19, p8

    move-object/from16 v20, p9

    move/from16 v21, p10

    move/from16 v22, p11

    move-object/from16 v25, p12

    move/from16 v26, p13

    move-object/from16 v27, p14

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/16 v17, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    .line 9090
    invoke-static/range {v0 .. v27}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/tgnet/TLRPC$TL_game;Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;JLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZIILjava/lang/Object;Lorg/telegram/messenger/MessageObject$SendAnimationData;ZLjava/lang/String;)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v0

    return-object v0
.end method

.method private static of(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/tgnet/TLRPC$TL_game;Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;JLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZIILjava/lang/Object;Lorg/telegram/messenger/MessageObject$SendAnimationData;ZLjava/lang/String;)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/telegram/tgnet/TLRPC$MessageMedia;",
            "Lorg/telegram/tgnet/TLRPC$TL_photo;",
            "Lorg/telegram/messenger/VideoEditedInfo;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            "Lorg/telegram/tgnet/TLRPC$TL_document;",
            "Lorg/telegram/tgnet/TLRPC$TL_game;",
            "Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;",
            "Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;",
            "J",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/tgnet/TLRPC$WebPage;",
            "Z",
            "Lorg/telegram/messenger/MessageObject;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$MessageEntity;",
            ">;",
            "Lorg/telegram/tgnet/TLRPC$ReplyMarkup;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZII",
            "Ljava/lang/Object;",
            "Lorg/telegram/messenger/MessageObject$SendAnimationData;",
            "Z",
            "Ljava/lang/String;",
            ")",
            "Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-wide/from16 v10, p10

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move/from16 v21, p21

    move/from16 v22, p22

    move/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    move/from16 v26, p26

    move-object/from16 v28, p27

    const/16 v27, 0x0

    .line 9114
    invoke-static/range {v0 .. v28}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/tgnet/TLRPC$TL_game;Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;JLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZIILjava/lang/Object;Lorg/telegram/messenger/MessageObject$SendAnimationData;ZZLjava/lang/String;)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/tgnet/TLRPC$TL_game;Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;JLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZIILjava/lang/Object;Lorg/telegram/messenger/MessageObject$SendAnimationData;ZZLjava/lang/String;)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/telegram/tgnet/TLRPC$MessageMedia;",
            "Lorg/telegram/tgnet/TLRPC$TL_photo;",
            "Lorg/telegram/messenger/VideoEditedInfo;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            "Lorg/telegram/tgnet/TLRPC$TL_document;",
            "Lorg/telegram/tgnet/TLRPC$TL_game;",
            "Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;",
            "Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;",
            "J",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/tgnet/TLRPC$WebPage;",
            "Z",
            "Lorg/telegram/messenger/MessageObject;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$MessageEntity;",
            ">;",
            "Lorg/telegram/tgnet/TLRPC$ReplyMarkup;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZII",
            "Ljava/lang/Object;",
            "Lorg/telegram/messenger/MessageObject$SendAnimationData;",
            "ZZ",
            "Ljava/lang/String;",
            ")",
            "Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;"
        }
    .end annotation

    .line 9118
    new-instance v0, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    invoke-direct {v0}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;-><init>()V

    move-object v1, p0

    .line 9119
    iput-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->message:Ljava/lang/String;

    move-object v1, p1

    .line 9120
    iput-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->caption:Ljava/lang/String;

    move-object v1, p2

    .line 9121
    iput-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->location:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object v1, p3

    .line 9122
    iput-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->photo:Lorg/telegram/tgnet/TLRPC$TL_photo;

    move-object v1, p4

    .line 9123
    iput-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    move-object v1, p5

    .line 9124
    iput-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->user:Lorg/telegram/tgnet/TLRPC$User;

    move-object v1, p6

    .line 9125
    iput-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->document:Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object v1, p7

    .line 9126
    iput-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    move-object v1, p8

    .line 9127
    iput-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->poll:Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;

    move-object v1, p9

    .line 9128
    iput-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->invoice:Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    move-wide v1, p10

    .line 9129
    iput-wide v1, v0, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->peer:J

    move-object v1, p12

    .line 9130
    iput-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->path:Ljava/lang/String;

    move-object/from16 v1, p13

    .line 9131
    iput-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->replyToMsg:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v1, p14

    .line 9132
    iput-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->replyToTopMsg:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v1, p15

    .line 9133
    iput-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->webPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    move/from16 v1, p16

    .line 9134
    iput-boolean v1, v0, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->searchLinks:Z

    move-object/from16 v1, p17

    .line 9135
    iput-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->retryMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v1, p18

    .line 9136
    iput-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->entities:Ljava/util/ArrayList;

    move-object/from16 v1, p19

    .line 9137
    iput-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->replyMarkup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    move-object/from16 v1, p20

    .line 9138
    iput-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->params:Ljava/util/HashMap;

    move/from16 v1, p21

    .line 9139
    iput-boolean v1, v0, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->notify:Z

    move/from16 v1, p22

    .line 9140
    iput v1, v0, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->scheduleDate:I

    move/from16 v1, p23

    .line 9141
    iput v1, v0, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->ttl:I

    move-object/from16 v1, p24

    .line 9142
    iput-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->parentObject:Ljava/lang/Object;

    move-object/from16 v1, p25

    .line 9143
    iput-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->sendAnimationData:Lorg/telegram/messenger/MessageObject$SendAnimationData;

    move/from16 v1, p26

    .line 9144
    iput-boolean v1, v0, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->updateStickersOrder:Z

    move/from16 v1, p27

    .line 9145
    iput-boolean v1, v0, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->hasMediaSpoilers:Z

    move-object/from16 v1, p28

    .line 9146
    iput-object v1, v0, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->templateName:Ljava/lang/String;

    return-object v0
.end method

.method public static of(Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;
    .locals 28

    move-object/from16 v12, p0

    .line 9070
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v10

    iget-object v0, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v15, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->params:Ljava/util/HashMap;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->silent:Z

    xor-int/lit8 v21, v1, 0x1

    iget-boolean v1, v12, Lorg/telegram/messenger/MessageObject;->scheduled:Z

    if-eqz v1, :cond_0

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v16, 0x0

    move-object/from16 v20, v13

    move-object/from16 v13, v16

    move-object/from16 v19, v14

    move-object/from16 v14, v16

    move-object/from16 v17, v15

    move-object/from16 v15, v16

    const/16 v16, 0x1

    const/16 v18, 0x0

    move-object/from16 v12, v17

    move-object/from16 v17, p0

    move-object/from16 v27, p1

    invoke-static/range {v0 .. v27}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/tgnet/TLRPC$TL_game;Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;JLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZIILjava/lang/Object;Lorg/telegram/messenger/MessageObject$SendAnimationData;ZLjava/lang/String;)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v0

    return-object v0
.end method

.method public static of(Lorg/telegram/tgnet/TLRPC$MessageMedia;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZILjava/lang/String;)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$MessageMedia;",
            "J",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/tgnet/TLRPC$ReplyMarkup;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZI",
            "Ljava/lang/String;",
            ")",
            "Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;"
        }
    .end annotation

    move-object/from16 v2, p0

    move-wide/from16 v10, p1

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v19, p5

    move-object/from16 v20, p6

    move/from16 v21, p7

    move/from16 v22, p8

    move-object/from16 v27, p9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    .line 9094
    invoke-static/range {v0 .. v27}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/tgnet/TLRPC$TL_game;Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;JLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZIILjava/lang/Object;Lorg/telegram/messenger/MessageObject$SendAnimationData;ZLjava/lang/String;)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v0

    return-object v0
.end method

.method public static of(Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/messenger/VideoEditedInfo;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZIILjava/lang/Object;Lorg/telegram/messenger/MessageObject$SendAnimationData;ZLjava/lang/String;)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$TL_document;",
            "Lorg/telegram/messenger/VideoEditedInfo;",
            "Ljava/lang/String;",
            "J",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/messenger/MessageObject;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$MessageEntity;",
            ">;",
            "Lorg/telegram/tgnet/TLRPC$ReplyMarkup;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZII",
            "Ljava/lang/Object;",
            "Lorg/telegram/messenger/MessageObject$SendAnimationData;",
            "Z",
            "Ljava/lang/String;",
            ")",
            "Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v4, p1

    move-object/from16 v12, p2

    move-wide/from16 v10, p3

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move-object/from16 v1, p7

    move-object/from16 v18, p8

    move-object/from16 v19, p9

    move-object/from16 v20, p10

    move/from16 v21, p11

    move/from16 v22, p12

    move/from16 v23, p13

    move-object/from16 v24, p14

    move-object/from16 v25, p15

    move/from16 v26, p16

    move-object/from16 v27, p17

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    .line 9082
    invoke-static/range {v0 .. v27}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/tgnet/TLRPC$TL_game;Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;JLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZIILjava/lang/Object;Lorg/telegram/messenger/MessageObject$SendAnimationData;ZLjava/lang/String;)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v0

    return-object v0
.end method

.method public static of(Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/messenger/VideoEditedInfo;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZIILjava/lang/Object;Lorg/telegram/messenger/MessageObject$SendAnimationData;ZZLjava/lang/String;)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$TL_document;",
            "Lorg/telegram/messenger/VideoEditedInfo;",
            "Ljava/lang/String;",
            "J",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/messenger/MessageObject;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$MessageEntity;",
            ">;",
            "Lorg/telegram/tgnet/TLRPC$ReplyMarkup;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZII",
            "Ljava/lang/Object;",
            "Lorg/telegram/messenger/MessageObject$SendAnimationData;",
            "ZZ",
            "Ljava/lang/String;",
            ")",
            "Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v4, p1

    move-object/from16 v12, p2

    move-wide/from16 v10, p3

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move-object/from16 v1, p7

    move-object/from16 v18, p8

    move-object/from16 v19, p9

    move-object/from16 v20, p10

    move/from16 v21, p11

    move/from16 v22, p12

    move/from16 v23, p13

    move-object/from16 v24, p14

    move-object/from16 v25, p15

    move/from16 v26, p16

    move/from16 v27, p17

    move-object/from16 v28, p18

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    .line 9086
    invoke-static/range {v0 .. v28}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/tgnet/TLRPC$TL_game;Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;JLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZIILjava/lang/Object;Lorg/telegram/messenger/MessageObject$SendAnimationData;ZZLjava/lang/String;)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v0

    return-object v0
.end method

.method public static of(Lorg/telegram/tgnet/TLRPC$TL_game;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZILjava/lang/String;)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$TL_game;",
            "J",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/tgnet/TLRPC$ReplyMarkup;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZI",
            "Ljava/lang/String;",
            ")",
            "Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-wide/from16 v10, p1

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v19, p5

    move-object/from16 v20, p6

    move/from16 v21, p7

    move/from16 v22, p8

    move-object/from16 v27, p9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    .line 9102
    invoke-static/range {v0 .. v27}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/tgnet/TLRPC$TL_game;Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;JLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZIILjava/lang/Object;Lorg/telegram/messenger/MessageObject$SendAnimationData;ZLjava/lang/String;)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v0

    return-object v0
.end method

.method public static of(Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZILjava/lang/String;)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;",
            "J",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/tgnet/TLRPC$ReplyMarkup;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZI",
            "Ljava/lang/String;",
            ")",
            "Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;"
        }
    .end annotation

    move-object/from16 v9, p0

    move-wide/from16 v10, p1

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v19, p5

    move-object/from16 v20, p6

    move/from16 v21, p7

    move/from16 v22, p8

    move-object/from16 v27, p9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    .line 9078
    invoke-static/range {v0 .. v27}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/tgnet/TLRPC$TL_game;Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;JLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZIILjava/lang/Object;Lorg/telegram/messenger/MessageObject$SendAnimationData;ZLjava/lang/String;)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v0

    return-object v0
.end method

.method public static of(Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZILjava/lang/String;)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;",
            "J",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/tgnet/TLRPC$ReplyMarkup;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZI",
            "Ljava/lang/String;",
            ")",
            "Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;"
        }
    .end annotation

    move-object/from16 v8, p0

    move-wide/from16 v10, p1

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v19, p5

    move-object/from16 v20, p6

    move/from16 v21, p7

    move/from16 v22, p8

    move-object/from16 v27, p9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    .line 9098
    invoke-static/range {v0 .. v27}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/tgnet/TLRPC$TL_game;Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;JLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZIILjava/lang/Object;Lorg/telegram/messenger/MessageObject$SendAnimationData;ZLjava/lang/String;)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v0

    return-object v0
.end method

.method public static of(Lorg/telegram/tgnet/TLRPC$TL_photo;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZIILjava/lang/Object;ZLjava/lang/String;)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$TL_photo;",
            "Ljava/lang/String;",
            "J",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/messenger/MessageObject;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$MessageEntity;",
            ">;",
            "Lorg/telegram/tgnet/TLRPC$ReplyMarkup;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZII",
            "Ljava/lang/Object;",
            "Z",
            "Ljava/lang/String;",
            ")",
            "Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;"
        }
    .end annotation

    move-object/from16 v3, p0

    move-object/from16 v12, p1

    move-wide/from16 v10, p2

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v1, p6

    move-object/from16 v18, p7

    move-object/from16 v19, p8

    move-object/from16 v20, p9

    move/from16 v21, p10

    move/from16 v22, p11

    move/from16 v23, p12

    move-object/from16 v24, p13

    move/from16 v26, p14

    move-object/from16 v27, p15

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v25, 0x0

    .line 9110
    invoke-static/range {v0 .. v27}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/tgnet/TLRPC$TL_game;Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;JLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZIILjava/lang/Object;Lorg/telegram/messenger/MessageObject$SendAnimationData;ZLjava/lang/String;)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v0

    return-object v0
.end method

.method public static of(Lorg/telegram/tgnet/TLRPC$TL_photo;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZIILjava/lang/Object;ZZLjava/lang/String;)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$TL_photo;",
            "Ljava/lang/String;",
            "J",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/messenger/MessageObject;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$MessageEntity;",
            ">;",
            "Lorg/telegram/tgnet/TLRPC$ReplyMarkup;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZII",
            "Ljava/lang/Object;",
            "ZZ",
            "Ljava/lang/String;",
            ")",
            "Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;"
        }
    .end annotation

    move-object/from16 v3, p0

    move-object/from16 v12, p1

    move-wide/from16 v10, p2

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v1, p6

    move-object/from16 v18, p7

    move-object/from16 v19, p8

    move-object/from16 v20, p9

    move/from16 v21, p10

    move/from16 v22, p11

    move/from16 v23, p12

    move-object/from16 v24, p13

    move/from16 v26, p14

    move/from16 v27, p15

    move-object/from16 v28, p16

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v25, 0x0

    .line 9106
    invoke-static/range {v0 .. v28}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/tgnet/TLRPC$TL_game;Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;JLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZIILjava/lang/Object;Lorg/telegram/messenger/MessageObject$SendAnimationData;ZZLjava/lang/String;)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v0

    return-object v0
.end method

.method public static of(Lorg/telegram/tgnet/TLRPC$User;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZILjava/lang/String;)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$User;",
            "J",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/tgnet/TLRPC$ReplyMarkup;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZI",
            "Ljava/lang/String;",
            ")",
            "Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;"
        }
    .end annotation

    move-object/from16 v5, p0

    move-wide/from16 v10, p1

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v19, p5

    move-object/from16 v20, p6

    move/from16 v21, p7

    move/from16 v22, p8

    move-object/from16 v27, p9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    .line 9074
    invoke-static/range {v0 .. v27}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/tgnet/TLRPC$TL_game;Lorg/telegram/tgnet/TLRPC$TL_messageMediaPoll;Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;JLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZIILjava/lang/Object;Lorg/telegram/messenger/MessageObject$SendAnimationData;ZLjava/lang/String;)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v0

    return-object v0
.end method
