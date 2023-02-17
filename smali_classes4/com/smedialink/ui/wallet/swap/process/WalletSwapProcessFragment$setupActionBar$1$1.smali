.class public final Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$setupActionBar$1$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "WalletSwapProcessFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment;->setupActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$setupActionBar$1$1;->this$0:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment;

    .line 361
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 364
    iget-object p1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$setupActionBar$1$1;->this$0:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    goto :goto_0

    .line 365
    :cond_0
    sget v0, Lcom/smedialink/common/IdFabric$Menu;->NETWORK_SWITCH:I

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$setupActionBar$1$1;->this$0:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment;

    invoke-static {p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment;->access$getPresenter(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment;)Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->startChooseNetworkDialog$default(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/swap/SwapSide;ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
