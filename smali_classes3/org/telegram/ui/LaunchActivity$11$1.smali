.class Lorg/telegram/ui/LaunchActivity$11$1;
.super Lorg/telegram/ui/ChatActivity;
.source "LaunchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LaunchActivity$11;->onTransitionAnimationEnd(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/LaunchActivity$11;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LaunchActivity$11;Landroid/os/Bundle;)V
    .locals 0

    .line 1370
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$11$1;->this$1:Lorg/telegram/ui/LaunchActivity$11;

    invoke-direct {p0, p2}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public onPreviewOpenAnimationEnd()V
    .locals 4

    .line 1381
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPreviewOpenAnimationEnd()V

    .line 1382
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$11$1;->this$1:Lorg/telegram/ui/LaunchActivity$11;

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowOpenDrawer(ZZ)V

    .line 1383
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$11$1;->this$1:Lorg/telegram/ui/LaunchActivity$11;

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setDrawCurrentPreviewFragmentAbove(Z)V

    .line 1384
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$11$1;->this$1:Lorg/telegram/ui/LaunchActivity$11;

    iget-object v2, v0, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget v0, v0, Lorg/telegram/ui/LaunchActivity$11;->val$accountNumber:I

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3, p0, v1}, Lorg/telegram/ui/LaunchActivity;->switchToAccount(IZLorg/telegram/ui/ChatActivity;Z)V

    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 0

    .line 1373
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/ChatActivity;->onTransitionAnimationEnd(ZZ)V

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 1375
    iget-object p1, p0, Lorg/telegram/ui/LaunchActivity$11$1;->this$1:Lorg/telegram/ui/LaunchActivity$11;

    iget-object p1, p1, Lorg/telegram/ui/LaunchActivity$11;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object p1, p1, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setDrawCurrentPreviewFragmentAbove(Z)V

    :cond_0
    return-void
.end method
