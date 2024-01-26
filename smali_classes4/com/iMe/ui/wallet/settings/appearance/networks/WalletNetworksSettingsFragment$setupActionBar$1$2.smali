.class public final Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment$setupActionBar$1$2;
.super Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;
.source "WalletNetworksSettingsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment;->setupActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment$setupActionBar$1$2;->this$0:Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment;

    .line 94
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearchCollapse()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment$setupActionBar$1$2;->this$0:Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment;

    invoke-static {v0}, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment;->access$getPresenter(Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment;)Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;->onQueryUpdate(Ljava/lang/String;)V

    return-void
.end method

.method public onTextChanged(Landroid/widget/EditText;)V
    .locals 1

    const-string v0, "editText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment$setupActionBar$1$2;->this$0:Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment;

    invoke-static {v0}, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment;->access$getPresenter(Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsFragment;)Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsPresenter;->onQueryUpdate(Ljava/lang/String;)V

    return-void
.end method
