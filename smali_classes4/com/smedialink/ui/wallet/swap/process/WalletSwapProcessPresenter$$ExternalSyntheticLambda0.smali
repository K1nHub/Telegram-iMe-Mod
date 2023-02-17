.class public final synthetic Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/ObservableTransformer;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;


# direct methods
.method public synthetic constructor <init>(ZLcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda0;->f$0:Z

    iput-object p2, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda0;->f$1:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;

    return-void
.end method


# virtual methods
.method public final apply(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 2

    iget-boolean v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda0;->f$0:Z

    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda0;->f$1:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;

    invoke-static {v0, v1, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->$r8$lambda$4YzRo-dblwSDc3YGoUHOMD4E5gk(ZLcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
