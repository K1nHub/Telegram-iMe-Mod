.class Lorg/telegram/ui/ContactsActivity$17;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ContactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ContactsActivity;->lambda$onCustomTransitionAnimation$17(Landroid/animation/AnimatorSet;ZZLandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ContactsActivity;

.field final synthetic val$previousFabContainer:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ContactsActivity;Landroid/view/View;)V
    .locals 0

    .line 1895
    iput-object p1, p0, Lorg/telegram/ui/ContactsActivity$17;->this$0:Lorg/telegram/ui/ContactsActivity;

    iput-object p2, p0, Lorg/telegram/ui/ContactsActivity$17;->val$previousFabContainer:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1898
    iget-object p1, p0, Lorg/telegram/ui/ContactsActivity$17;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {p1}, Lorg/telegram/ui/ContactsActivity;->access$3500(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 1899
    iget-object p1, p0, Lorg/telegram/ui/ContactsActivity$17;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {p1}, Lorg/telegram/ui/ContactsActivity;->access$3500(Lorg/telegram/ui/ContactsActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 1900
    iget-object p1, p0, Lorg/telegram/ui/ContactsActivity$17;->val$previousFabContainer:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 1901
    iget-object p1, p0, Lorg/telegram/ui/ContactsActivity$17;->val$previousFabContainer:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 1902
    iget-object p1, p0, Lorg/telegram/ui/ContactsActivity$17;->this$0:Lorg/telegram/ui/ContactsActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/ContactsActivity;->access$3602(Lorg/telegram/ui/ContactsActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 1903
    iget-object p1, p0, Lorg/telegram/ui/ContactsActivity$17;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ContactsActivity$17;->this$0:Lorg/telegram/ui/ContactsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ContactsActivity;->access$3700(Lorg/telegram/ui/ContactsActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/NotificationCenter;->onAnimationFinish(I)V

    return-void
.end method
