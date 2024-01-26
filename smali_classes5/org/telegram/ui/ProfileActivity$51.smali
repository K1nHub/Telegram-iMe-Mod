.class Lorg/telegram/ui/ProfileActivity$51;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity;->searchExpandTransition(Z)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;

.field final synthetic val$enter:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity;Z)V
    .locals 0

    .line 10438
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$51;->this$0:Lorg/telegram/ui/ProfileActivity;

    iput-boolean p2, p0, Lorg/telegram/ui/ProfileActivity$51;->val$enter:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 10441
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$51;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-boolean v0, p0, Lorg/telegram/ui/ProfileActivity$51;->val$enter:Z

    invoke-static {p1, v0}, Lorg/telegram/ui/ProfileActivity;->access$23600(Lorg/telegram/ui/ProfileActivity;Z)V

    .line 10442
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$51;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$600(Lorg/telegram/ui/ProfileActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 10443
    iget-boolean p1, p0, Lorg/telegram/ui/ProfileActivity$51;->val$enter:Z

    if-eqz p1, :cond_0

    .line 10444
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$51;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$3500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->requestFocusOnSearchView()V

    .line 10446
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$51;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/ProfileActivity;->access$22700(Lorg/telegram/ui/ProfileActivity;Z)V

    .line 10447
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$51;->this$0:Lorg/telegram/ui/ProfileActivity;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/telegram/ui/ProfileActivity;->access$23702(Lorg/telegram/ui/ProfileActivity;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 10448
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$51;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 10450
    iget-boolean p1, p0, Lorg/telegram/ui/ProfileActivity$51;->val$enter:Z

    if-eqz p1, :cond_1

    .line 10451
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$51;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/ProfileActivity;->access$12502(Lorg/telegram/ui/ProfileActivity;Z)Z

    .line 10452
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$51;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$23800(Lorg/telegram/ui/ProfileActivity;)V

    .line 10453
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$51;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$51;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$23900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    .line 10454
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$51;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$10400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/StickerEmptyView;->setPreventMoving(Z)V

    :cond_1
    return-void
.end method
