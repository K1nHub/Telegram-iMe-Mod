.class Lorg/telegram/ui/LaunchActivity$10;
.super Lorg/telegram/ui/DialogsActivity;
.source "LaunchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LaunchActivity;->lambda$onCreate$13(Landroidx/recyclerview/widget/ItemTouchHelper;Landroid/view/View;IFF)Z
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
.method public static synthetic $r8$lambda$GKslMkMkTtQ-mPJTUWtz9QOyq7g(Lorg/telegram/ui/LaunchActivity$10;Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/LaunchActivity$10;->lambda$onTransitionAnimationEnd$0(Lorg/telegram/ui/ChatActivity;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/LaunchActivity;Landroid/os/Bundle;I)V
    .locals 0

    .line 1175
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$10;->this$0:Lorg/telegram/ui/LaunchActivity;

    iput p3, p0, Lorg/telegram/ui/LaunchActivity$10;->val$accountNumber:I

    invoke-direct {p0, p2}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method private synthetic lambda$onTransitionAnimationEnd$0(Lorg/telegram/ui/ChatActivity;)V
    .locals 4

    .line 1220
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1222
    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$10;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v1}, Lorg/telegram/ui/LaunchActivity;->access$200(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    new-instance v2, Lcom/iMe/fork/ui/view/FragmentPreviewMenu;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, v3}, Lcom/iMe/fork/ui/view/FragmentPreviewMenu;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-interface {v1, p1, v2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->presentFragmentAsPreviewWithMenu(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected onPreviewChatOpened(Landroid/os/Bundle;)V
    .locals 0

    .line 1186
    invoke-super {p0, p1}, Lorg/telegram/ui/DialogsActivity;->onPreviewChatOpened(Landroid/os/Bundle;)V

    .line 1187
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$10;->chatArgs:Landroid/os/Bundle;

    .line 1188
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishPreviewFragment()V

    return-void
.end method

.method public onPreviewOpenAnimationEnd()V
    .locals 3

    .line 1233
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPreviewOpenAnimationEnd()V

    .line 1234
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$10;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 1235
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$10;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setDrawCurrentPreviewFragmentAbove(Z)V

    .line 1236
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$10;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget v1, p0, Lorg/telegram/ui/LaunchActivity$10;->val$accountNumber:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/LaunchActivity;->switchToAccount(IZ)V

    .line 1237
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$10;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {v0}, Lorg/telegram/ui/LaunchActivity;->access$200(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 2

    .line 1197
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/DialogsActivity;->onTransitionAnimationEnd(ZZ)V

    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    .line 1200
    iget-object p1, p0, Lorg/telegram/ui/LaunchActivity$10;->chatArgs:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    .line 1201
    new-instance p1, Lorg/telegram/ui/LaunchActivity$10$1;

    iget-object p2, p0, Lorg/telegram/ui/LaunchActivity$10;->chatArgs:Landroid/os/Bundle;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/LaunchActivity$10$1;-><init>(Lorg/telegram/ui/LaunchActivity$10;Landroid/os/Bundle;)V

    .line 1218
    iget p2, p0, Lorg/telegram/ui/LaunchActivity$10;->val$accountNumber:I

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->setCurrentAccount(I)V

    .line 1219
    new-instance p2, Lorg/telegram/ui/LaunchActivity$10$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/LaunchActivity$10$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/LaunchActivity$10;Lorg/telegram/ui/ChatActivity;)V

    const-wide/16 v0, 0x96

    invoke-static {p2, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 1226
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/LaunchActivity$10;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object p1, p1, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setDrawCurrentPreviewFragmentAbove(Z)V

    .line 1227
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/LaunchActivity$10;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-static {p1}, Lorg/telegram/ui/LaunchActivity;->access$200(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getView()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    :cond_1
    return-void
.end method
