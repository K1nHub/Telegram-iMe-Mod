.class public final Lorg/fork/ui/dialog/SettingsHelpBottomSheet$initSocialNetworksRowView$1$1;
.super Ljava/lang/Object;
.source "SettingsHelpBottomSheet.kt"

# interfaces
.implements Lorg/fork/ui/view/SocialNetworksRowView$OnSocialNetworkClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fork/ui/dialog/SettingsHelpBottomSheet;->initSocialNetworksRowView()Lorg/fork/ui/view/SocialNetworksRowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $this_apply:Lorg/fork/ui/view/SocialNetworksRowView;

.field final synthetic this$0:Lorg/fork/ui/dialog/SettingsHelpBottomSheet;


# direct methods
.method constructor <init>(Lorg/fork/ui/dialog/SettingsHelpBottomSheet;Lorg/fork/ui/view/SocialNetworksRowView;)V
    .locals 0

    iput-object p1, p0, Lorg/fork/ui/dialog/SettingsHelpBottomSheet$initSocialNetworksRowView$1$1;->this$0:Lorg/fork/ui/dialog/SettingsHelpBottomSheet;

    iput-object p2, p0, Lorg/fork/ui/dialog/SettingsHelpBottomSheet$initSocialNetworksRowView$1$1;->$this_apply:Lorg/fork/ui/view/SocialNetworksRowView;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSocialNetworkClick(Lorg/fork/enums/DrawerSocialNetwork;Z)V
    .locals 1

    const-string/jumbo v0, "socialNetwork"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lorg/fork/ui/dialog/SettingsHelpBottomSheet$initSocialNetworksRowView$1$1;->this$0:Lorg/fork/ui/dialog/SettingsHelpBottomSheet;

    invoke-static {v0}, Lorg/fork/ui/dialog/SettingsHelpBottomSheet;->access$getFragment$p(Lorg/fork/ui/dialog/SettingsHelpBottomSheet;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->dismissCurrentDialog()V

    if-eqz p2, :cond_0

    .line 100
    iget-object p2, p0, Lorg/fork/ui/dialog/SettingsHelpBottomSheet$initSocialNetworksRowView$1$1;->this$0:Lorg/fork/ui/dialog/SettingsHelpBottomSheet;

    invoke-static {p2}, Lorg/fork/ui/dialog/SettingsHelpBottomSheet;->access$getFragment$p(Lorg/fork/ui/dialog/SettingsHelpBottomSheet;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p2

    iget-object v0, p0, Lorg/fork/ui/dialog/SettingsHelpBottomSheet$initSocialNetworksRowView$1$1;->this$0:Lorg/fork/ui/dialog/SettingsHelpBottomSheet;

    invoke-static {v0, p1}, Lorg/fork/ui/dialog/SettingsHelpBottomSheet;->access$createSocialNetworkAlert(Lorg/fork/ui/dialog/SettingsHelpBottomSheet;Lorg/fork/enums/DrawerSocialNetwork;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 102
    :cond_0
    iget-object p2, p0, Lorg/fork/ui/dialog/SettingsHelpBottomSheet$initSocialNetworksRowView$1$1;->$this_apply:Lorg/fork/ui/view/SocialNetworksRowView;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1}, Lorg/fork/enums/DrawerSocialNetwork;->url()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
