.class Lorg/telegram/ui/DialogsActivity$81;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DialogsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->updateStoriesVisibility(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;

.field final synthetic val$newVisibility:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;Z)V
    .locals 0

    .line 16428
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$81;->this$0:Lorg/telegram/ui/DialogsActivity;

    iput-boolean p2, p0, Lorg/telegram/ui/DialogsActivity$81;->val$newVisibility:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 16431
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$81;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/telegram/ui/DialogsActivity;->storiesVisibilityAnimator:Landroid/animation/ValueAnimator;

    .line 16432
    iget-boolean v0, p0, Lorg/telegram/ui/DialogsActivity$81;->val$newVisibility:Z

    iput-boolean v0, p1, Lorg/telegram/ui/DialogsActivity;->hasStories:Z

    if-nez v0, :cond_0

    .line 16433
    iget-boolean v0, p1, Lorg/telegram/ui/DialogsActivity;->hasOnlySlefStories:Z

    if-nez v0, :cond_0

    .line 16434
    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity;->dialogStoriesCell:Lorg/telegram/ui/Stories/DialogStoriesCell;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 16436
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/DialogsActivity$81;->val$newVisibility:Z

    const/16 v0, 0x51

    if-nez p1, :cond_1

    .line 16437
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$81;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/telegram/ui/DialogsActivity;->access$3800(Lorg/telegram/ui/DialogsActivity;F)V

    .line 16438
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$81;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lorg/telegram/ui/DialogsActivity;->access$16602(Lorg/telegram/ui/DialogsActivity;F)F

    goto :goto_0

    .line 16440
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$81;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lorg/telegram/ui/DialogsActivity;->access$16602(Lorg/telegram/ui/DialogsActivity;F)F

    .line 16441
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$81;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$7400(Lorg/telegram/ui/DialogsActivity;)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lorg/telegram/ui/DialogsActivity;->access$3800(Lorg/telegram/ui/DialogsActivity;F)V

    :goto_0
    const/4 p1, 0x0

    .line 16443
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$81;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1000(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_3

    .line 16444
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$81;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1000(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v0

    aget-object v0, v0, p1

    if-eqz v0, :cond_2

    .line 16445
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$81;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1000(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v0

    aget-object v0, v0, p1

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$ViewPage;->listView:Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->requestLayout()V

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 16448
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$81;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object p1, p1, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz p1, :cond_4

    .line 16449
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_4
    return-void
.end method
