.class Lorg/telegram/ui/DialogsActivity$63;
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

    .line 11869
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$63;->this$0:Lorg/telegram/ui/DialogsActivity;

    iput p2, p0, Lorg/telegram/ui/DialogsActivity$63;->val$finalTranslateListHeight:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 11872
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 11873
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$63;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/DialogsActivity;->access$40002(Lorg/telegram/ui/DialogsActivity;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 11874
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$63;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/DialogsActivity;->access$16602(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 11875
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$63;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v1, p1, Lorg/telegram/ui/DialogsActivity;->hasStories:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x51

    .line 11876
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/DialogsActivity$63;->val$finalTranslateListHeight:F

    sub-float/2addr v1, v2

    neg-float v1, v1

    invoke-static {p1, v1}, Lorg/telegram/ui/DialogsActivity;->access$16302(Lorg/telegram/ui/DialogsActivity;F)F

    .line 11878
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$63;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 11879
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$63;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    array-length p1, p1

    if-ge v0, p1, :cond_1

    .line 11880
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$63;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v0

    if-eqz p1, :cond_0

    .line 11881
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$63;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$1400(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v0

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {p1}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->requestLayout()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11884
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$63;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$40100(Lorg/telegram/ui/DialogsActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_2
    return-void
.end method
