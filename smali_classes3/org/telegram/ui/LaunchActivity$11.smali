.class Lorg/telegram/ui/LaunchActivity$11;
.super Lorg/telegram/ui/DialogsActivity;
.source "LaunchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LaunchActivity;->lambda$onCreate$10(Landroidx/recyclerview/widget/ItemTouchHelper;Landroid/view/View;IFF)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private chatArgs:Landroid/os/Bundle;

.field final synthetic this$0:Lorg/telegram/ui/LaunchActivity;

.field final synthetic val$accountNumber:I


# direct methods
.method public static synthetic $r8$lambda$-6MBs04yTggWBEkP5jO6xjYSAD4(Lorg/telegram/ui/LaunchActivity$11;Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LaunchActivity$11;->lambda$onTransitionAnimationEnd$0(Lorg/telegram/ui/ChatActivity;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/LaunchActivity;Landroid/os/Bundle;I)V
    .locals 0

    .line 1344
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    iput p3, p0, Lorg/telegram/ui/LaunchActivity$11;->val$accountNumber:I

    invoke-direct {p0, p2}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method private synthetic lambda$onTransitionAnimationEnd$0(Lorg/telegram/ui/ChatActivity;)V
    .locals 4

    .line 1388
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->access$300(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    new-instance v1, Lorg/fork/ui/view/FragmentPreviewMenu;

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v2, v2, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->getParentActionBarLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Lorg/fork/ui/view/FragmentPreviewMenu;-><init>(Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-interface {v0, p1, v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->presentFragmentAsPreviewWithMenu(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)Z

    return-void
.end method


# virtual methods
.method protected onPreviewChatOpened(Landroid/os/Bundle;)V
    .locals 0

    .line 1355
    invoke-super {p0, p1}, Lorg/telegram/ui/DialogsActivity;->onPreviewChatOpened(Landroid/os/Bundle;)V

    .line 1356
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$11;->chatArgs:Landroid/os/Bundle;

    .line 1357
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishPreviewFragment()V

    return-void
.end method

.method public onPreviewOpenAnimationEnd()V
    .locals 3

    .line 1397
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPreviewOpenAnimationEnd()V

    .line 1398
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 1399
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setDrawCurrentPreviewFragmentAbove(Z)V

    .line 1400
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget v1, p0, Lorg/telegram/ui/LaunchActivity$11;->val$accountNumber:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/LaunchActivity;->switchToAccount(IZ)V

    .line 1401
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->access$300(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 2

    .line 1366
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/DialogsActivity;->onTransitionAnimationEnd(ZZ)V

    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    .line 1369
    iget-object p1, p0, Lorg/telegram/ui/LaunchActivity$11;->chatArgs:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    .line 1370
    new-instance p1, Lorg/telegram/ui/LaunchActivity$11$1;

    iget-object p2, p0, Lorg/telegram/ui/LaunchActivity$11;->chatArgs:Landroid/os/Bundle;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/LaunchActivity$11$1;-><init>(Lorg/telegram/ui/LaunchActivity$11;Landroid/os/Bundle;)V

    .line 1387
    iget p2, p0, Lorg/telegram/ui/LaunchActivity$11;->val$accountNumber:I

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->setCurrentAccount(I)V

    .line 1388
    new-instance p2, Lorg/telegram/ui/LaunchActivity$11$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/LaunchActivity$11$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/LaunchActivity$11;Lorg/telegram/ui/ChatActivity;)V

    const-wide/16 v0, 0x96

    invoke-static {p2, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 1390
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object p1, p1, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setDrawCurrentPreviewFragmentAbove(Z)V

    .line 1391
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {p1}, Lorg/telegram/ui/LaunchActivity;->access$300(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    :cond_1
    return-void
.end method
