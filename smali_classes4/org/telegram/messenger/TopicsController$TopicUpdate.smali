.class public Lorg/telegram/messenger/TopicsController$TopicUpdate;
.super Ljava/lang/Object;
.source "TopicsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/TopicsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TopicUpdate"
.end annotation


# instance fields
.field dialogId:J

.field groupedMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field onlyCounters:Z

.field reloadTopic:Z

.field topMessage:Lorg/telegram/tgnet/TLRPC$Message;

.field topMessageId:I

.field topicId:I

.field public totalMessagesCount:I

.field unreadCount:I

.field unreadMentions:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1020
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 1021
    iput v0, p0, Lorg/telegram/messenger/TopicsController$TopicUpdate;->totalMessagesCount:I

    return-void
.end method
