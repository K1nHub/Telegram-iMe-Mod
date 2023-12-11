.class Lorg/telegram/ui/ProfileActivity$48;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity;->onCustomTransitionAnimation(ZLjava/lang/Runnable;)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;

.field final synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity;Ljava/lang/Runnable;)V
    .locals 0

    .line 8188
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$48;->this$0:Lorg/telegram/ui/ProfileActivity;

    iput-object p2, p0, Lorg/telegram/ui/ProfileActivity$48;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 8191
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$48;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$22800(Lorg/telegram/ui/ProfileActivity;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    .line 8192
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$48;->val$callback:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 8195
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$48;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->setProgressToExpand(F)V

    .line 8196
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$48;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$2300(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 8197
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$48;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$22900(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8198
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$48;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$23000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object p1

    .line 8199
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->clearItems()V

    .line 8200
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$48;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/ProfileActivity;->access$22902(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 8202
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$48;->val$callback:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 8203
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$48;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$6300(Lorg/telegram/ui/ProfileActivity;)I

    move-result p1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 8204
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$48;->this$0:Lorg/telegram/ui/ProfileActivity;

    const/4 v2, 0x1

    invoke-static {p1, v2}, Lorg/telegram/ui/ProfileActivity;->access$6302(Lorg/telegram/ui/ProfileActivity;I)I

    .line 8205
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$48;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    move-result-object p1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2}, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->setForegroundAlpha(F)V

    .line 8206
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$48;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$700(Lorg/telegram/ui/ProfileActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 8207
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$48;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ProfileGalleryView;->resetCurrentItem()V

    .line 8208
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$48;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 8210
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$48;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/ProfileActivity;->access$16902(Lorg/telegram/ui/ProfileActivity;Landroid/view/View;)Landroid/view/View;

    .line 8211
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$48;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$13400(Lorg/telegram/ui/ProfileActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 8212
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$48;->this$0:Lorg/telegram/ui/ProfileActivity;

    iput-boolean v0, p1, Lorg/telegram/ui/ProfileActivity;->profileTransitionInProgress:Z

    .line 8213
    iput-object v1, p1, Lorg/telegram/ui/ProfileActivity;->previousTransitionFragment:Lorg/telegram/ui/Components/ChatActivityInterface;

    .line 8215
    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$23100(Lorg/telegram/ui/ProfileActivity;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 8216
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$48;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$23200(Lorg/telegram/ui/ProfileActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_3
    return-void
.end method
