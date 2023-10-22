.class public final Lcom/iMe/ui/wallet/common/WalletRootFragment$setupActionBar$1$2;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "WalletRootFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/common/WalletRootFragment;->setupActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/common/WalletRootFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/common/WalletRootFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/common/WalletRootFragment$setupActionBar$1$2;->this$0:Lcom/iMe/ui/wallet/common/WalletRootFragment;

    .line 194
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 197
    iget-object p1, p0, Lcom/iMe/ui/wallet/common/WalletRootFragment$setupActionBar$1$2;->this$0:Lcom/iMe/ui/wallet/common/WalletRootFragment;

    invoke-static {p1}, Lcom/iMe/ui/wallet/common/WalletRootFragment;->access$backAction(Lcom/iMe/ui/wallet/common/WalletRootFragment;)V

    goto :goto_0

    .line 198
    :cond_0
    sget v0, Lcom/iMe/common/IdFabric$Menu;->NOTIFICATIONS:I

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/iMe/ui/wallet/common/WalletRootFragment$setupActionBar$1$2;->this$0:Lcom/iMe/ui/wallet/common/WalletRootFragment;

    sget-object v0, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;->Companion:Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment$Companion;

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment$Companion;->newInstance()Lcom/iMe/ui/wallet/notifications/WalletNotificationsFragment;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    .line 199
    :cond_1
    sget v0, Lcom/iMe/common/IdFabric$Menu;->WALLET_CONNECT:I

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/iMe/ui/wallet/common/WalletRootFragment$setupActionBar$1$2;->this$0:Lcom/iMe/ui/wallet/common/WalletRootFragment;

    sget-object v0, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;->Companion:Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment$Companion;

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment$Companion;->newInstance()Lcom/iMe/ui/wallet/crypto/wallet_connect/WalletConnectFragment;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_2
    :goto_0
    return-void
.end method
