.class Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$3$1;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "PhotoViewerCaptionEnterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$3;->onAnimatedEmojiUnlockClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$3;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$3;)V
    .locals 0

    .line 656
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$3$1;->this$1:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$3;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$1502(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$3$1;Lorg/telegram/ui/ActionBar/INavigationLayout;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 656
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p1
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$3$1;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 656
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$3$1;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 656
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$3$1;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 656
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$3$1;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 656
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 664
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$3$1;->this$1:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$3;

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$3;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentAccount()I
    .locals 1

    .line 659
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return v0
.end method

.method public getParentActivity()Landroid/app/Activity;
    .locals 2

    .line 669
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$3$1;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 670
    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    .line 671
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 672
    check-cast v0, Landroid/app/Activity;

    return-object v0

    .line 674
    :cond_0
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVisibleDialog()Landroid/app/Dialog;
    .locals 2

    .line 681
    new-instance v0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$3$1$1;

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$3$1;->this$1:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$3;

    iget-object v1, v1, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$3;->this$0:Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$3$1$1;-><init>(Lorg/telegram/ui/Components/PhotoViewerCaptionEnterView$3$1;Landroid/content/Context;)V

    return-object v0
.end method
