.class public final Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryFragment$setupActionBar$1$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "WalletBinancePayHistoryFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryFragment;->setupActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryFragment;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryFragment$setupActionBar$1$1;->this$0:Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryFragment;

    .line 133
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 136
    iget-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryFragment$setupActionBar$1$1;->this$0:Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :cond_0
    return-void
.end method
