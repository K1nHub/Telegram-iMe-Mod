.class final Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor$getWalletBalance$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletInteractor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;->getWalletBalance(ZLjava/lang/String;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Ljava/lang/Boolean;",
        ">;",
        "Lio/reactivex/ObservableSource<",
        "+",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Ljava/util/List<",
        "+",
        "Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;",
        ">;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic $force:Z

.field final synthetic $networkId:Ljava/lang/String;

.field final synthetic this$0:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;


# direct methods
.method constructor <init>(Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor$getWalletBalance$1$1;->this$0:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    iput-boolean p2, p0, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor$getWalletBalance$1$1;->$force:Z

    iput-object p3, p0, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor$getWalletBalance$1$1;->$networkId:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/iMe/storage/domain/model/Result;)Lio/reactivex/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    iget-object p1, p0, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor$getWalletBalance$1$1;->this$0:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    invoke-static {p1}, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;->access$getWalletRepository$p(Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;)Lcom/iMe/storage/domain/repository/wallet/WalletRepository;

    move-result-object p1

    iget-boolean v0, p0, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor$getWalletBalance$1$1;->$force:Z

    iget-object v1, p0, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor$getWalletBalance$1$1;->$networkId:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/iMe/storage/domain/repository/wallet/WalletRepository;->getWalletBalance(ZLjava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor$getWalletBalance$1$1;->this$0:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    invoke-static {v0}, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;->access$getSchedulersProvider$p(Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;)Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 105
    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor$getWalletBalance$1$1;->invoke(Lcom/iMe/storage/domain/model/Result;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
