.class abstract Lorg/telegram/messenger/support/JobIntentService$WorkEnqueuer;
.super Ljava/lang/Object;
.source "JobIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/JobIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "WorkEnqueuer"
.end annotation


# instance fields
.field final mComponentName:Landroid/content/ComponentName;

.field mHasJobId:Z

.field mJobId:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p2, p0, Lorg/telegram/messenger/support/JobIntentService$WorkEnqueuer;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method abstract enqueueWork(Landroid/content/Intent;)V
.end method

.method ensureJobId(I)V
    .locals 3

    .line 74
    iget-boolean v0, p0, Lorg/telegram/messenger/support/JobIntentService$WorkEnqueuer;->mHasJobId:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lorg/telegram/messenger/support/JobIntentService$WorkEnqueuer;->mHasJobId:Z

    .line 76
    iput p1, p0, Lorg/telegram/messenger/support/JobIntentService$WorkEnqueuer;->mJobId:I

    goto :goto_0

    .line 77
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/support/JobIntentService$WorkEnqueuer;->mJobId:I

    if-ne v0, p1, :cond_1

    :goto_0
    return-void

    .line 78
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given job ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is different than previous "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lorg/telegram/messenger/support/JobIntentService$WorkEnqueuer;->mJobId:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public serviceProcessingFinished()V
    .locals 0

    return-void
.end method

.method public serviceProcessingStarted()V
    .locals 0

    return-void
.end method

.method public serviceStartReceived()V
    .locals 0

    return-void
.end method
