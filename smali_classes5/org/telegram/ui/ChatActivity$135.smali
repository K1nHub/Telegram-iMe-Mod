.class Lorg/telegram/ui/ChatActivity$135;
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

.field final synthetic val$previousChat:Lorg/telegram/ui/ChatActivity;


# direct methods
.method public static synthetic $r8$lambda$7LCwIU4U81b1gsiIksFuoqRpK-s(Lorg/telegram/ui/ChatActivity$135;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$135;->lambda$onAnimationEnd$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ChatActivity;Ljava/lang/Runnable;)V
    .locals 0

    .line 34846
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$135;->this$0:Lorg/telegram/ui/ChatActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$135;->val$previousChat:Lorg/telegram/ui/ChatActivity;

    iput-object p3, p0, Lorg/telegram/ui/ChatActivity$135;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private synthetic lambda$onAnimationEnd$0()V
    .locals 2

    .line 34862
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$135;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$60700(Lorg/telegram/ui/ChatActivity;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ChatActivity$135;->index:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/NotificationCenter;->onAnimationFinish(I)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    .line 34858
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$135;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/ui/ChatActivity;->fragmentOpened:Z

    .line 34859
    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$60302(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 34860
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$135;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->access$2002(Lorg/telegram/ui/ChatActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 34861
    new-instance v0, Lorg/telegram/ui/ChatActivity$135$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ChatActivity$135$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatActivity$135;)V

    const-wide/16 v2, 0x20

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 34865
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 34866
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$135;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 34867
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$135;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setSkipBackgroundDrawing(Z)V

    .line 34868
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$135;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->access$20902(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 34869
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$135;->val$previousChat:Lorg/telegram/ui/ChatActivity;

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lorg/telegram/ui/ChatActivity;->access$60400(Lorg/telegram/ui/ChatActivity;F)V

    .line 34870
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$135;->val$previousChat:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/ChatActivity;->access$60500(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ChatActivity;)V

    .line 34871
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$135;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$60600(Lorg/telegram/ui/ChatActivity;)Landroid/view/View;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 34873
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$135;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 34874
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$135;->val$previousChat:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$135;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$4100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    const/4 v4, 0x3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$135;->this$0:Lorg/telegram/ui/ChatActivity;

    iget v5, v5, Lorg/telegram/ui/ChatActivity;->blurredViewBottomOffset:I

    add-int/2addr v4, v5

    invoke-virtual {p1, v0, v3, v0, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 34876
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$135;->val$callback:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 34877
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$135;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$37200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ChatAvatarContainer;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 34878
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$135;->val$previousChat:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$37200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ChatAvatarContainer;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 34879
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$135;->val$previousChat:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$37200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ChatAvatarContainer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getAvatarImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 34880
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$135;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$37200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ChatAvatarContainer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getAvatarImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 34881
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$135;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$37200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ChatAvatarContainer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getAvatarImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 34882
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$135;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$37200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ChatAvatarContainer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getAvatarImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 34883
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$135;->val$previousChat:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$37200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ChatAvatarContainer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getAvatarImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 34884
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$135;->val$previousChat:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$37200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ChatAvatarContainer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getAvatarImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 34885
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$135;->val$previousChat:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$37200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ChatAvatarContainer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getAvatarImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 34887
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$135;->val$previousChat:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$22500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BlurredFrameLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 34888
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$135;->val$previousChat:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$22500(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BlurredFrameLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 34890
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$135;->val$previousChat:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$47000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BlurredFrameLayout;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 34891
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$135;->val$previousChat:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$47000(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/BlurredFrameLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 34852
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 34853
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$135;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$60200(Lorg/telegram/ui/ChatActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    iget v0, p0, Lorg/telegram/ui/ChatActivity$135;->index:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->setAnimationInProgress(I[I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ChatActivity$135;->index:I

    return-void
.end method
