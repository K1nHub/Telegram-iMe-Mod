.class public final synthetic Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;


# direct methods
.method public synthetic constructor <init>(Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter$$ExternalSyntheticLambda0;->f$0:Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter$$ExternalSyntheticLambda0;->f$0:Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;

    check-cast p1, Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;

    invoke-static {v0, p1}, Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;->$r8$lambda$o1NP4Wz1R4R7lcgmaSmfvDwJtB0(Lcom/smedialink/ui/wallet/swap/fee/WalletSwapFeePresenter;Lcom/smedialink/storage/domain/model/wallet/swap/SwapSlippage;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
