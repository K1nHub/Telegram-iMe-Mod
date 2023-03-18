.class Lorg/telegram/ui/DialogsActivity$56;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DialogsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->updateFilterTabsVisibility(Z)V
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

    .line 9643
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    iput-boolean p2, p0, Lorg/telegram/ui/DialogsActivity$56;->val$visible:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 9646
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/DialogsActivity;->access$7702(Lorg/telegram/ui/DialogsActivity;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 9647
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/16 v0, 0x2c

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$7900(Lorg/telegram/ui/DialogsActivity;)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {p1, v0}, Lorg/telegram/ui/DialogsActivity;->access$16302(Lorg/telegram/ui/DialogsActivity;F)F

    .line 9648
    iget-boolean p1, p0, Lorg/telegram/ui/DialogsActivity$56;->val$visible:Z

    if-nez p1, :cond_0

    .line 9649
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$3200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 9651
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$40400(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 9652
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$40500(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 9654
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$56;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$39900(Lorg/telegram/ui/DialogsActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/NotificationCenter;->onAnimationFinish(I)V

    return-void
.end method
