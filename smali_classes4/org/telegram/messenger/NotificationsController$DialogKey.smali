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

.field final story:Z

.field final topicId:I


# direct methods
.method private constructor <init>(JIZ)V
    .locals 0

    .line 5701
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5702
    iput-wide p1, p0, Lorg/telegram/messenger/NotificationsController$DialogKey;->dialogId:J

    .line 5703
    iput p3, p0, Lorg/telegram/messenger/NotificationsController$DialogKey;->topicId:I

    .line 5704
    iput-boolean p4, p0, Lorg/telegram/messenger/NotificationsController$DialogKey;->story:Z

    return-void
.end method

.method synthetic constructor <init>(JIZLorg/telegram/messenger/NotificationsController$1;)V
    .locals 0

    .line 5696
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/NotificationsController$DialogKey;-><init>(JIZ)V

    return-void
.end method
