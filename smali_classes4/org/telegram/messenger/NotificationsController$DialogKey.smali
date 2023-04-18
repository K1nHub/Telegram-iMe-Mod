.class Lorg/telegram/messenger/NotificationsController$DialogKey;
.super Ljava/lang/Object;
.source "NotificationsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/NotificationsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DialogKey"
.end annotation


# instance fields
.field final dialogId:J

.field final topicId:I


# direct methods
.method private constructor <init>(JI)V
    .locals 0

    .line 5131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5132
    iput-wide p1, p0, Lorg/telegram/messenger/NotificationsController$DialogKey;->dialogId:J

    .line 5133
    iput p3, p0, Lorg/telegram/messenger/NotificationsController$DialogKey;->topicId:I

    return-void
.end method

.method synthetic constructor <init>(JILorg/telegram/messenger/NotificationsController$1;)V
    .locals 0

    .line 5127
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/NotificationsController$DialogKey;-><init>(JI)V

    return-void
.end method
