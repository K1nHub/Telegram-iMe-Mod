.class Lorg/telegram/ui/DialogsActivity$51;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DialogsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->lambda$updateAuthHintCellVisibility$68(ZIILandroid/animation/ValueAnimator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;Z)V
    .locals 0

    .line 8497
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    iput-boolean p2, p0, Lorg/telegram/ui/DialogsActivity$51;->val$visible:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 8500
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$37300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/messenger/AnimationNotificationsLocker;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/AnimationNotificationsLocker;->unlock()V

    .line 8501
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/DialogsActivity;->access$17102(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 8502
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v1, p0, Lorg/telegram/ui/DialogsActivity$51;->val$visible:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {p1, v1}, Lorg/telegram/ui/DialogsActivity;->access$17002(Lorg/telegram/ui/DialogsActivity;F)F

    .line 8503
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 8504
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 8506
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$1000(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v0

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {p1}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->requestLayout()V

    .line 8507
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$1000(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v0

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 8508
    iget-boolean p1, p0, Lorg/telegram/ui/DialogsActivity$51;->val$visible:Z

    if-nez p1, :cond_2

    .line 8509
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$6600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Cells/UnconfirmedAuthHintCell;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2
    return-void
.end method
