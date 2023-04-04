.class public final Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment$setupActionBar$1$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "WalletSwapFeeFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->setupActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment$setupActionBar$1$1;->this$0:Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;

    .line 109
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 113
    iget-object p1, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment$setupActionBar$1$1;->this$0:Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    .line 114
    iget-object p1, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment$setupActionBar$1$1;->this$0:Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;

    invoke-static {p1}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;->access$invokeResultListener(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeFragment;)V

    :cond_0
    return-void
.end method
