.class public final synthetic Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/ObservableTransformer;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;


# direct methods
.method public synthetic constructor <init>(ZLcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$$ExternalSyntheticLambda0;->f$0:Z

    iput-object p2, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$$ExternalSyntheticLambda0;->f$1:Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;

    return-void
.end method


# virtual methods
.method public final apply(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 2

    iget-boolean v0, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$$ExternalSyntheticLambda0;->f$0:Z

    iget-object v1, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$$ExternalSyntheticLambda0;->f$1:Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;

    invoke-static {v0, v1, p1}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->$r8$lambda$OnxX_TpgZUFNpGr0ygz0VytC1tI(ZLcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
