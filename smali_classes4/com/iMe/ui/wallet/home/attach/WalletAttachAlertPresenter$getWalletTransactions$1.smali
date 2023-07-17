.class final Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter$getWalletTransactions$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletAttachAlertPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;->getWalletTransactions(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lio/reactivex/ObservableSource<",
        "+",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Ljava/util/List<",
        "+",
        "Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;",
        ">;>;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletAttachAlertPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletAttachAlertPresenter.kt\ncom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter$getWalletTransactions$1\n+ 2 ResultExt.kt\ncom/iMe/storage/domain/utils/extentions/ResultExtKt\n+ 3 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n*L\n1#1,198:1\n9#2:199\n18#3:200\n*S KotlinDebug\n*F\n+ 1 WalletAttachAlertPresenter.kt\ncom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter$getWalletTransactions$1\n*L\n137#1:199\n137#1:200\n*E\n"
.end annotation


# instance fields
.field final synthetic $selectedToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

.field final synthetic this$0:Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter$getWalletTransactions$1;->this$0:Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;

    iput-object p2, p0, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter$getWalletTransactions$1;->$selectedToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Boolean;)Lio/reactivex/ObservableSource;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    iget-object p1, p0, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter$getWalletTransactions$1;->this$0:Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;->access$getCachedTransactions$p(Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;)Ljava/util/HashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter$getWalletTransactions$1;->$selectedToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getTicker()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    .line 9
    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    invoke-virtual {v0, p1}, Lcom/iMe/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 18
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "just(this)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    iget-object p1, p0, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter$getWalletTransactions$1;->this$0:Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;->access$getWalletInteractor$p(Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter;)Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 139
    new-instance v3, Lcom/iMe/storage/domain/model/wallet/token/Token;

    .line 140
    iget-object p1, p0, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter$getWalletTransactions$1;->$selectedToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 141
    iget-object v4, p0, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter$getWalletTransactions$1;->$selectedToken:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getNetworkId()Ljava/lang/String;

    move-result-object v4

    .line 139
    invoke-direct {v3, p1, v4}, Lcom/iMe/storage/domain/model/wallet/token/Token;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1b

    const/4 v7, 0x0

    .line 138
    invoke-static/range {v0 .. v7}, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;->getWalletTransactions$default(Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;ZLjava/lang/String;Lcom/iMe/storage/domain/model/wallet/token/Token;ILjava/lang/String;ILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 136
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/attach/WalletAttachAlertPresenter$getWalletTransactions$1;->invoke(Ljava/lang/Boolean;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
