.class Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$3$1$1;
.super Landroid/app/Dialog;
.source "PhotoViewerCaptionEnterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$3$1;->getVisibleDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$3$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$3$1;Landroid/content/Context;)V
    .locals 0

    .line 680
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$3$1$1;->this$2:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$3$1;

    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 683
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$3$1$1;->this$2:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$3$1;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$3$1;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/LaunchActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$3$1$1;->this$2:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$3$1;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$3$1;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/LaunchActivity;->getActionBarLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 684
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$3$1$1;->this$2:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$3$1;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$3$1;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/LaunchActivity;->getActionBarLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$3$1;->access$1502(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$3$1;Lorg/telegram/ui/ActionBar/INavigationLayout;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    .line 685
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$3$1$1;->this$2:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$3$1;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$3$1;->access$1600(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$3$1;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$3$1$1;->this$2:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$3$1;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$3$1;->access$1700(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$3$1;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$3$1$1;->this$2:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$3$1;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$3$1;->access$1800(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$3$1;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getVisibleDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 686
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$3$1$1;->this$2:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$3$1;

    invoke-static {v0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$3$1;->access$1900(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$3$1;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getVisibleDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 687
    instance-of v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;

    if-eqz v1, :cond_0

    .line 688
    check-cast v0, Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss(Z)V

    goto :goto_0

    .line 690
    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 694
    :cond_1
    :goto_0
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/PhotoViewer;->closePhoto(ZZ)V

    return-void
.end method
