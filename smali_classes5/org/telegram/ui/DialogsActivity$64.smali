.class Lorg/telegram/ui/DialogsActivity$64;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DialogsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->hideActionMode(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;

.field final synthetic val$finalTranslateListHeight:F


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;F)V
    .locals 0

    .line 12048
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$64;->this$0:Lorg/telegram/ui/DialogsActivity;

    iput p2, p0, Lorg/telegram/ui/DialogsActivity$64;->val$finalTranslateListHeight:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 12051
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 12052
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$64;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/DialogsActivity;->access$40302(Lorg/telegram/ui/DialogsActivity;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 12053
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$64;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/DialogsActivity;->access$17202(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 12054
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$64;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v1, p1, Lorg/telegram/ui/DialogsActivity;->hasStories:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 12055
    invoke-static {p1, v1}, Lorg/telegram/ui/DialogsActivity;->access$3902(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 12056
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$64;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/DialogsActivity;->access$7602(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 12057
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$64;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$40400(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 12058
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$64;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/16 v1, 0x51

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/DialogsActivity$64;->val$finalTranslateListHeight:F

    sub-float/2addr v1, v2

    neg-float v1, v1

    invoke-static {p1, v1}, Lorg/telegram/ui/DialogsActivity;->access$16902(Lorg/telegram/ui/DialogsActivity;F)F

    .line 12059
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$64;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 12060
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$64;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    array-length p1, p1

    if-ge v0, p1, :cond_1

    .line 12061
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$64;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v0

    if-eqz p1, :cond_0

    .line 12062
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$64;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v0

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {p1}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->requestLayout()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 12065
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$64;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$40500(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_2
    return-void
.end method
