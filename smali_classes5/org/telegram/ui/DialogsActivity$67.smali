.class Lorg/telegram/ui/DialogsActivity$67;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DialogsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->showOrUpdateActionMode(JLandroid/view/View;)V
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

    .line 13339
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$67;->this$0:Lorg/telegram/ui/DialogsActivity;

    iput p2, p0, Lorg/telegram/ui/DialogsActivity$67;->val$finalTranslateListHeight:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 13342
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 13343
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$67;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/DialogsActivity;->access$37902(Lorg/telegram/ui/DialogsActivity;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 13344
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$67;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/DialogsActivity;->access$11802(Lorg/telegram/ui/DialogsActivity;I)I

    .line 13345
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$67;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lorg/telegram/ui/DialogsActivity;->access$16902(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 13346
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$67;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean v1, p1, Lorg/telegram/ui/DialogsActivity;->hasStories:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x51

    .line 13347
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/DialogsActivity$67;->val$finalTranslateListHeight:F

    sub-float/2addr v1, v2

    invoke-static {p1, v1}, Lorg/telegram/ui/DialogsActivity;->access$16602(Lorg/telegram/ui/DialogsActivity;F)F

    .line 13348
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$67;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$1000(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    move p1, v0

    .line 13349
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$67;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1000(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v1

    array-length v1, v1

    if-ge p1, v1, :cond_1

    .line 13350
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$67;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1000(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v1

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    .line 13351
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$67;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$1000(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v1

    aget-object v1, v1, p1

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {v1}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->requestLayout()V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 13354
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$67;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity;->dialogStoriesCell:Lorg/telegram/ui/Stories/DialogStoriesCell;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->setProgressToCollapse(FZ)V

    .line 13355
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$67;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_2
    return-void
.end method
