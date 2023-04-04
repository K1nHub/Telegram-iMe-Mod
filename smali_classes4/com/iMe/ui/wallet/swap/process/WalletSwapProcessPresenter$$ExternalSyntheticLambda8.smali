.class public final synthetic Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/ObservableTransformer;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda8;->f$0:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final apply(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 1

    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$$ExternalSyntheticLambda8;->f$0:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->$r8$lambda$B1SGGhsvLIazf9QnNR-X7EuJVUc(Lkotlin/jvm/functions/Function1;Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
