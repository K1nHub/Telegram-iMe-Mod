.class Lorg/telegram/ui/DialogsActivity$4;
.super Lorg/telegram/ui/DialogsActivity;
.source "DialogsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->lambda$updateAccountSwitchItems$15(ILandroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private chatArgs:Landroid/os/Bundle;

.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;

.field final synthetic val$accountNumberFinal:I

.field final synthetic val$launchActivity:Lorg/telegram/ui/LaunchActivity;


# direct methods
.method public static synthetic $r8$lambda$r9FkhUpByrj9lUdn6cFDhSe-_lw(Lorg/telegram/ui/DialogsActivity$4;Lorg/telegram/ui/LaunchActivity;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/DialogsActivity$4;->lambda$onTransitionAnimationEnd$0(Lorg/telegram/ui/LaunchActivity;I)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/DialogsActivity;Landroid/os/Bundle;Lorg/telegram/ui/LaunchActivity;I)V
    .locals 0

    .line 1049
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$4;->this$0:Lorg/telegram/ui/DialogsActivity;

    iput-object p3, p0, Lorg/telegram/ui/DialogsActivity$4;->val$launchActivity:Lorg/telegram/ui/LaunchActivity;

    iput p4, p0, Lorg/telegram/ui/DialogsActivity$4;->val$accountNumberFinal:I

    invoke-direct {p0, p2}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method private synthetic lambda$onTransitionAnimationEnd$0(Lorg/telegram/ui/LaunchActivity;I)V
    .locals 3

    .line 1067
    new-instance v0, Lorg/telegram/ui/DialogsActivity$4$1;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$4;->chatArgs:Landroid/os/Bundle;

    invoke-direct {v0, p0, v1, p1, p2}, Lorg/telegram/ui/DialogsActivity$4$1;-><init>(Lorg/telegram/ui/DialogsActivity$4;Landroid/os/Bundle;Lorg/telegram/ui/LaunchActivity;I)V

    .line 1074
    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->setCurrentAccount(I)V

    .line 1075
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$4;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$29200(Lorg/telegram/ui/DialogsActivity;)V

    .line 1076
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$4;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$38800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->setHighlightActionButtons(Z)V

    .line 1077
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$4;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance p2, Lcom/iMe/fork/ui/view/FragmentPreviewMenu;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$4;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v2, 0x0

    invoke-direct {p2, v1, v0, v2}, Lcom/iMe/fork/ui/view/FragmentPreviewMenu;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p1, v0, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragmentAsPreviewWithMenu(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)Z

    return-void
.end method


# virtual methods
.method protected onPreviewChatOpened(Landroid/os/Bundle;)V
    .locals 0

    .line 1055
    invoke-super {p0, p1}, Lorg/telegram/ui/DialogsActivity;->onPreviewChatOpened(Landroid/os/Bundle;)V

    .line 1056
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$4;->chatArgs:Landroid/os/Bundle;

    .line 1057
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishPreviewFragment()V

    return-void
.end method

.method public onPreviewOpenAnimationEnd()V
    .locals 3

    .line 1083
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPreviewOpenAnimationEnd()V

    .line 1084
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$4;->val$launchActivity:Lorg/telegram/ui/LaunchActivity;

    iget v1, p0, Lorg/telegram/ui/DialogsActivity$4;->val$accountNumberFinal:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/LaunchActivity;->switchToAccount(IZ)V

    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 1

    .line 1062
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/DialogsActivity;->onTransitionAnimationEnd(ZZ)V

    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    .line 1063
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$4;->chatArgs:Landroid/os/Bundle;

    if-nez p1, :cond_0

    goto :goto_0

    .line 1066
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$4;->val$launchActivity:Lorg/telegram/ui/LaunchActivity;

    iget p2, p0, Lorg/telegram/ui/DialogsActivity$4;->val$accountNumberFinal:I

    new-instance v0, Lorg/telegram/ui/DialogsActivity$4$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/DialogsActivity$4$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/DialogsActivity$4;Lorg/telegram/ui/LaunchActivity;I)V

    const-wide/16 p1, 0x96

    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_1
    :goto_0
    return-void
.end method
