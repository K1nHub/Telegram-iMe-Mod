.class Lorg/telegram/ui/ChatActivity$140;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->onCustomTransitionAnimation(ZLjava/lang/Runnable;)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field index:I

.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field final synthetic val$callback:Ljava/lang/Runnable;

.field final synthetic val$isOpen:Z


# direct methods
.method public static synthetic $r8$lambda$OD8grV_IbhSjxl-EOPFGZNKyVyQ(Lorg/telegram/ui/ChatActivity$140;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$140;->lambda$onAnimationEnd$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ChatActivity;ZLjava/lang/Runnable;)V
    .locals 0

    .line 34296
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$140;->this$0:Lorg/telegram/ui/ChatActivity;

    iput-boolean p2, p0, Lorg/telegram/ui/ChatActivity$140;->val$isOpen:Z

    iput-object p3, p0, Lorg/telegram/ui/ChatActivity$140;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private synthetic lambda$onAnimationEnd$0()V
    .locals 2

    .line 34317
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$140;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$59900(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ChatActivity$140;->index:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/NotificationCenter;->onAnimationFinish(I)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 34308
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$140;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/telegram/ui/ChatActivity;->fragmentOpened:Z

    .line 34309
    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->access$59702(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 34310
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$140;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->access$2102(Lorg/telegram/ui/ChatActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 34311
    iget-boolean p1, p0, Lorg/telegram/ui/ChatActivity$140;->val$isOpen:Z

    if-eqz p1, :cond_0

    .line 34312
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$140;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->access$16402(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 34314
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$140;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$59800(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 34315
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$140;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 34316
    new-instance p1, Lorg/telegram/ui/ChatActivity$140$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ChatActivity$140$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatActivity$140;)V

    const-wide/16 v0, 0x20

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 34319
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$140;->val$callback:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 34302
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 34303
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$140;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$59600(Lorg/telegram/ui/ChatActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/ChatActivity$140;->index:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->setAnimationInProgress(I[I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ChatActivity$140;->index:I

    return-void
.end method
