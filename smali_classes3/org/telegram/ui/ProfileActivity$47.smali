.class Lorg/telegram/ui/ProfileActivity$47;
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

    .line 8906
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$47;->this$0:Lorg/telegram/ui/ProfileActivity;

    iput-boolean p2, p0, Lorg/telegram/ui/ProfileActivity$47;->val$enter:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 8909
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$47;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-boolean v0, p0, Lorg/telegram/ui/ProfileActivity$47;->val$enter:Z

    invoke-static {p1, v0}, Lorg/telegram/ui/ProfileActivity;->access$21500(Lorg/telegram/ui/ProfileActivity;Z)V

    .line 8910
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$47;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$500(Lorg/telegram/ui/ProfileActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 8911
    iget-boolean p1, p0, Lorg/telegram/ui/ProfileActivity$47;->val$enter:Z

    if-eqz p1, :cond_0

    .line 8912
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$47;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$3100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->requestFocusOnSearchView()V

    .line 8914
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$47;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/ProfileActivity;->access$20300(Lorg/telegram/ui/ProfileActivity;Z)V

    .line 8915
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$47;->this$0:Lorg/telegram/ui/ProfileActivity;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/telegram/ui/ProfileActivity;->access$21602(Lorg/telegram/ui/ProfileActivity;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 8916
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$47;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$21700(Lorg/telegram/ui/ProfileActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 8918
    iget-boolean p1, p0, Lorg/telegram/ui/ProfileActivity$47;->val$enter:Z

    if-eqz p1, :cond_1

    .line 8919
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$47;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/ProfileActivity;->access$10902(Lorg/telegram/ui/ProfileActivity;Z)Z

    .line 8920
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$47;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$21800(Lorg/telegram/ui/ProfileActivity;)V

    .line 8921
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$47;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$47;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$21900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    .line 8922
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$47;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$9000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/StickerEmptyView;->setPreventMoving(Z)V

    :cond_1
    return-void
.end method
