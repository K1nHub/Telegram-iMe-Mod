.class public final Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$setupActionBar$1$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "WalletSwapProcessFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->setupActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$setupActionBar$1$1;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;

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
    iget-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$setupActionBar$1$1;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    goto :goto_0

    .line 365
    :cond_0
    sget v0, Lcom/iMe/common/IdFabric$Menu;->NETWORK_SWITCH:I

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$setupActionBar$1$1;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;

    invoke-static {p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;->access$getPresenter(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;)Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->startChooseNetworkDialog$default(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/swap/SwapSide;ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method