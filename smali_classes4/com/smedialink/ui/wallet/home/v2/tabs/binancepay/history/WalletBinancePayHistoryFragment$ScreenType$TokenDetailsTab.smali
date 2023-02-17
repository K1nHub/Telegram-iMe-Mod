.class public final Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryFragment$ScreenType$TokenDetailsTab;
.super Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryFragment$ScreenType;
.source "WalletBinancePayHistoryFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryFragment$ScreenType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TokenDetailsTab"
.end annotation


# instance fields
.field private final transactionsGroup:Lcom/smedialink/model/wallet/home/pay/BinanceTransactionsGroup;


# direct methods
.method public constructor <init>(Lcom/smedialink/model/wallet/home/pay/BinanceTransactionsGroup;)V
    .locals 1

    const-string v0, "transactionsGroup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 198
    invoke-direct {p0, v0}, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryFragment$ScreenType;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryFragment$ScreenType$TokenDetailsTab;->transactionsGroup:Lcom/smedialink/model/wallet/home/pay/BinanceTransactionsGroup;

    return-void
.end method


# virtual methods
.method public final getTransactionsGroup()Lcom/smedialink/model/wallet/home/pay/BinanceTransactionsGroup;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/binancepay/history/WalletBinancePayHistoryFragment$ScreenType$TokenDetailsTab;->transactionsGroup:Lcom/smedialink/model/wallet/home/pay/BinanceTransactionsGroup;

    return-object v0
.end method
