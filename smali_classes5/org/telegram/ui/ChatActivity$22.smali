.class Lorg/telegram/ui/ChatActivity$22;
.super Landroidx/recyclerview/widget/ChatListItemAnimator;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field finishRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method public static synthetic $r8$lambda$fMpuTsX6_0k5sFDWJ4fQ2RaRKEM(Lorg/telegram/ui/ChatActivity$22;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$22;->lambda$endAnimations$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$pH8QH8OaWUphdHYM0Tmk0QlGNjE(Lorg/telegram/ui/ChatActivity$22;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$22;->lambda$onAllAnimationsDone$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Components/RecyclerListView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 7196
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0, p2, p3, p4}, Landroidx/recyclerview/widget/ChatListItemAnimator;-><init>(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Components/RecyclerListView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method private synthetic lambda$endAnimations$1()V
    .locals 3

    const/4 v0, 0x0

    .line 7248
    iput-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->finishRunnable:Ljava/lang/Runnable;

    .line 7249
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$21500(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 7250
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$21500(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/NotificationCenter;->onAnimationFinish(I)V

    .line 7251
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$21502(Lorg/telegram/ui/ChatActivity;I)I

    .line 7253
    :cond_0
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_1

    const-string v0, "chatItemAnimator enable notifications"

    .line 7254
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onAllAnimationsDone$0()V
    .locals 3

    const/4 v0, 0x0

    .line 7229
    iput-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->finishRunnable:Ljava/lang/Runnable;

    .line 7230
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$21500(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 7231
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$21500(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/NotificationCenter;->onAnimationFinish(I)V

    .line 7232
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$21502(Lorg/telegram/ui/ChatActivity;I)I

    .line 7234
    :cond_0
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_1

    const-string v0, "chatItemAnimator enable notifications"

    .line 7235
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public checkIsRunning()V
    .locals 5

    .line 7202
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$21500(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 7203
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$21500(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    invoke-static {}, Lorg/telegram/ui/ChatActivity;->access$21600()[I

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->setAnimationInProgress(I[IZ)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$21502(Lorg/telegram/ui/ChatActivity;I)I

    :cond_0
    return-void
.end method

.method public endAnimations()V
    .locals 1

    .line 7243
    invoke-super {p0}, Landroidx/recyclerview/widget/ChatListItemAnimator;->endAnimations()V

    .line 7244
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->finishRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 7245
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 7247
    :cond_0
    new-instance v0, Lorg/telegram/ui/ChatActivity$22$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ChatActivity$22$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatActivity$22;)V

    iput-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->finishRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onAllAnimationsDone()V
    .locals 1

    .line 7223
    invoke-super {p0}, Landroidx/recyclerview/widget/ChatListItemAnimator;->onAllAnimationsDone()V

    .line 7224
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->finishRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 7225
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 7226
    iput-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->finishRunnable:Ljava/lang/Runnable;

    .line 7228
    :cond_0
    new-instance v0, Lorg/telegram/ui/ChatActivity$22$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ChatActivity$22$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChatActivity$22;)V

    iput-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->finishRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAnimationStart()V
    .locals 5

    .line 7209
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatActivity;->access$21500(Lorg/telegram/ui/ChatActivity;)I

    move-result v2

    invoke-static {}, Lorg/telegram/ui/ChatActivity;->access$21600()[I

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->setAnimationInProgress(I[IZ)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$21502(Lorg/telegram/ui/ChatActivity;I)I

    .line 7210
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->finishRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 7211
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 7212
    iput-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->finishRunnable:Ljava/lang/Runnable;

    .line 7214
    :cond_0
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_1

    const-string v0, "chatItemAnimator disable notifications"

    .line 7215
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 7217
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getAdjustPanLayoutHelper()Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->runDelayedAnimation()V

    .line 7218
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->chatActivityEnterView:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->runEmojiPanelAnimation()V

    return-void
.end method
