.class Lorg/telegram/ui/LaunchActivity$5;
.super Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;
.source "LaunchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LaunchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LaunchActivity;

.field private wasPortrait:Z


# direct methods
.method public static synthetic $r8$lambda$1wF_OJZ8OfaCrxeCKzYdpkIpn-k(Lorg/telegram/ui/LaunchActivity$5;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/LaunchActivity$5;->lambda$onLayout$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/LaunchActivity;Landroid/content/Context;)V
    .locals 0

    .line 775
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$5;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$onLayout$0()V
    .locals 2

    .line 803
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$5;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->access$700(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 804
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$5;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->access$700(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;->dismiss()V

    .line 805
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$5;->this$0:Lorg/telegram/ui/LaunchActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/LaunchActivity;->access$702(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    :cond_0
    return-void
.end method


# virtual methods
.method public closeDrawer()V
    .locals 2

    .line 814
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->closeDrawer()V

    .line 815
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$5;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->access$700(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$5;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->access$700(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;->dismiss()V

    .line 817
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$5;->this$0:Lorg/telegram/ui/LaunchActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/LaunchActivity;->access$702(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    :cond_0
    return-void
.end method

.method public closeDrawer(Z)V
    .locals 1

    .line 823
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->closeDrawer(Z)V

    .line 824
    iget-object p1, p0, Lorg/telegram/ui/LaunchActivity$5;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {p1}, Lorg/telegram/ui/LaunchActivity;->access$700(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 825
    iget-object p1, p0, Lorg/telegram/ui/LaunchActivity$5;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {p1}, Lorg/telegram/ui/LaunchActivity;->access$700(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;->dismiss()V

    .line 826
    iget-object p1, p0, Lorg/telegram/ui/LaunchActivity$5;->this$0:Lorg/telegram/ui/LaunchActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/LaunchActivity;->access$702(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    :cond_0
    return-void
.end method

.method public onDrawerAnimationEnd(Z)V
    .locals 1

    .line 783
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->onDrawerAnimationEnd(Z)V

    if-nez p1, :cond_0

    .line 784
    iget-object p1, p0, Lorg/telegram/ui/LaunchActivity$5;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {p1}, Lorg/telegram/ui/LaunchActivity;->access$600(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/LaunchActivity$5;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {p1}, Lorg/telegram/ui/LaunchActivity;->access$600(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->isCreateGroupExpanded:Z

    if-eqz p1, :cond_0

    .line 785
    iget-object p1, p0, Lorg/telegram/ui/LaunchActivity$5;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {p1}, Lorg/telegram/ui/LaunchActivity;->access$600(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;

    move-result-object p1

    const/4 v0, 0x0

    iput-boolean v0, p1, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->isCreateGroupExpanded:Z

    .line 786
    iget-object p1, p0, Lorg/telegram/ui/LaunchActivity$5;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {p1}, Lorg/telegram/ui/LaunchActivity;->access$600(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 797
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->onLayout(ZIIII)V

    .line 798
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->getDrawerPosition()F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setDrawerPosition(F)V

    sub-int/2addr p5, p3

    sub-int/2addr p4, p2

    if-le p5, p4, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 801
    :goto_0
    iget-boolean p2, p0, Lorg/telegram/ui/LaunchActivity$5;->wasPortrait:Z

    if-eq p1, p2, :cond_1

    .line 802
    new-instance p2, Lorg/telegram/ui/LaunchActivity$5$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/LaunchActivity$5$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/LaunchActivity$5;)V

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 808
    iput-boolean p1, p0, Lorg/telegram/ui/LaunchActivity$5;->wasPortrait:Z

    :cond_1
    return-void
.end method
