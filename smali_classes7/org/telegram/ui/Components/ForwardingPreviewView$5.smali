.class Lorg/telegram/ui/Components/ForwardingPreviewView$5;
.super Landroidx/recyclerview/widget/ChatListItemAnimator;
.source "ForwardingPreviewView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ForwardingPreviewView;-><init>(Landroid/content/Context;Lorg/telegram/messenger/ForwardingMessagesParams;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ILorg/telegram/ui/Components/ForwardingPreviewView$ResourcesDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field finishRunnable:Ljava/lang/Runnable;

.field scrollAnimationIndex:I

.field final synthetic this$0:Lorg/telegram/ui/Components/ForwardingPreviewView;

.field final synthetic val$currentAccount:I


# direct methods
.method public static synthetic $r8$lambda$BsbFxYW7yxWXlnFOlkWXqLEhhas(Lorg/telegram/ui/Components/ForwardingPreviewView$5;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ForwardingPreviewView$5;->lambda$endAnimations$2(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$FAgsH4J2dZopHBhrVvn_JaV4eQI(Lorg/telegram/ui/Components/ForwardingPreviewView$5;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ForwardingPreviewView$5;->lambda$onAllAnimationsDone$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$X3YtdzPJrnlsjxd_RmOxUvI9NkI(Lorg/telegram/ui/Components/ForwardingPreviewView$5;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ForwardingPreviewView$5;->lambda$onAllAnimationsDone$0(I)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/ForwardingPreviewView;Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Components/RecyclerListView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V
    .locals 0

    .line 422
    iput-object p1, p0, Lorg/telegram/ui/Components/ForwardingPreviewView$5;->this$0:Lorg/telegram/ui/Components/ForwardingPreviewView;

    iput p5, p0, Lorg/telegram/ui/Components/ForwardingPreviewView$5;->val$currentAccount:I

    invoke-direct {p0, p2, p3, p4}, Landroidx/recyclerview/widget/ChatListItemAnimator;-><init>(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Components/RecyclerListView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 p1, -0x1

    .line 424
    iput p1, p0, Lorg/telegram/ui/Components/ForwardingPreviewView$5;->scrollAnimationIndex:I

    return-void
.end method

.method private synthetic lambda$endAnimations$2(I)V
    .locals 2

    .line 470
    iget v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView$5;->scrollAnimationIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 471
    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView$5;->scrollAnimationIndex:I

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/NotificationCenter;->onAnimationFinish(I)V

    .line 472
    iput v1, p0, Lorg/telegram/ui/Components/ForwardingPreviewView$5;->scrollAnimationIndex:I

    :cond_0
    return-void
.end method

.method private synthetic lambda$onAllAnimationsDone$0(I)V
    .locals 2

    .line 451
    iget v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView$5;->scrollAnimationIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 452
    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView$5;->scrollAnimationIndex:I

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/NotificationCenter;->onAnimationFinish(I)V

    .line 453
    iput v1, p0, Lorg/telegram/ui/Components/ForwardingPreviewView$5;->scrollAnimationIndex:I

    :cond_0
    return-void
.end method

.method private synthetic lambda$onAllAnimationsDone$1()V
    .locals 1

    .line 459
    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView$5;->this$0:Lorg/telegram/ui/Components/ForwardingPreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ForwardingPreviewView;->access$200(Lorg/telegram/ui/Components/ForwardingPreviewView;)V

    return-void
.end method


# virtual methods
.method public endAnimations()V
    .locals 2

    .line 465
    invoke-super {p0}, Landroidx/recyclerview/widget/ChatListItemAnimator;->endAnimations()V

    .line 466
    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView$5;->finishRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 467
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 469
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView$5;->val$currentAccount:I

    new-instance v1, Lorg/telegram/ui/Components/ForwardingPreviewView$5$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Components/ForwardingPreviewView$5$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ForwardingPreviewView$5;I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ForwardingPreviewView$5;->finishRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onAllAnimationsDone()V
    .locals 2

    .line 446
    invoke-super {p0}, Landroidx/recyclerview/widget/ChatListItemAnimator;->onAllAnimationsDone()V

    .line 447
    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView$5;->finishRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 448
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 450
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView$5;->val$currentAccount:I

    new-instance v1, Lorg/telegram/ui/Components/ForwardingPreviewView$5$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Components/ForwardingPreviewView$5$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ForwardingPreviewView$5;I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ForwardingPreviewView$5;->finishRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 457
    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView$5;->this$0:Lorg/telegram/ui/Components/ForwardingPreviewView;

    iget-boolean v1, v0, Lorg/telegram/ui/Components/ForwardingPreviewView;->updateAfterAnimations:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 458
    iput-boolean v1, v0, Lorg/telegram/ui/Components/ForwardingPreviewView;->updateAfterAnimations:Z

    .line 459
    new-instance v0, Lorg/telegram/ui/Components/ForwardingPreviewView$5$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ForwardingPreviewView$5$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ForwardingPreviewView$5;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onAnimationStart()V
    .locals 4

    .line 428
    invoke-super {p0}, Landroidx/recyclerview/widget/ChatListItemAnimator;->onAnimationStart()V

    .line 429
    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView$5;->this$0:Lorg/telegram/ui/Components/ForwardingPreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ForwardingPreviewView;->changeBoundsRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 430
    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView$5;->this$0:Lorg/telegram/ui/Components/ForwardingPreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ForwardingPreviewView;->changeBoundsRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 432
    iget v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView$5;->scrollAnimationIndex:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 433
    iget v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView$5;->val$currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/Components/ForwardingPreviewView$5;->scrollAnimationIndex:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->setAnimationInProgress(I[IZ)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView$5;->scrollAnimationIndex:I

    .line 435
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ForwardingPreviewView$5;->finishRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 436
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 437
    iput-object v1, p0, Lorg/telegram/ui/Components/ForwardingPreviewView$5;->finishRunnable:Ljava/lang/Runnable;

    :cond_1
    return-void
.end method
