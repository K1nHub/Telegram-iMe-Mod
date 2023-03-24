.class Lorg/telegram/ui/DialogsActivity$4$1;
.super Lorg/telegram/ui/ChatActivity;
.source "DialogsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity$4;->lambda$onTransitionAnimationEnd$0(Lorg/telegram/ui/LaunchActivity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$accountNumberFinal:I

.field final synthetic val$launchActivity:Lorg/telegram/ui/LaunchActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity$4;Landroid/os/Bundle;Lorg/telegram/ui/LaunchActivity;I)V
    .locals 0

    .line 1155
    iput-object p3, p0, Lorg/telegram/ui/DialogsActivity$4$1;->val$launchActivity:Lorg/telegram/ui/LaunchActivity;

    iput p4, p0, Lorg/telegram/ui/DialogsActivity$4$1;->val$accountNumberFinal:I

    invoke-direct {p0, p2}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public onPreviewOpenAnimationEnd()V
    .locals 4

    .line 1158
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPreviewOpenAnimationEnd()V

    .line 1159
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$4$1;->val$launchActivity:Lorg/telegram/ui/LaunchActivity;

    iget v1, p0, Lorg/telegram/ui/DialogsActivity$4$1;->val$accountNumberFinal:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p0, v3}, Lorg/telegram/ui/LaunchActivity;->switchToAccount(IZLorg/telegram/ui/ChatActivity;Z)V

    return-void
.end method
