.class Lorg/telegram/ui/ProfileActivity$42;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity;->needLayout(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity;)V
    .locals 0

    .line 6233
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$42;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 6243
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$42;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$20000(Lorg/telegram/ui/ProfileActivity;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 6244
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$42;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$TopView;

    move-result-object p1

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ProfileActivity$TopView;->setBackgroundColor(I)V

    .line 6245
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$42;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$500(Lorg/telegram/ui/ProfileActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 6246
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$42;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$1800(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 6236
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$42;->this$0:Lorg/telegram/ui/ProfileActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/ProfileActivity;->access$7500(Lorg/telegram/ui/ProfileActivity;Z)V

    .line 6237
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$42;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$1800(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$42;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ProfileGalleryView;->setAnimatedFileMaybe(Lorg/telegram/ui/Components/AnimatedFileDrawable;)V

    .line 6238
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$42;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$1800(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ProfileGalleryView;->resetCurrentItem()V

    return-void
.end method
