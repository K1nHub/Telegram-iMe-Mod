.class final Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter$getWalletTransactions$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletAttachAlertPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;->getWalletTransactions(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)V
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
        "Lcom/smedialink/storage/domain/model/Result<",
        "+",
        "Ljava/util/List<",
        "+",
        "Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;",
        ">;>;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletAttachAlertPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletAttachAlertPresenter.kt\ncom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter$getWalletTransactions$1\n+ 2 ResultExt.kt\ncom/smedialink/storage/domain/utils/extentions/ResultExtKt\n+ 3 RxExt.kt\ncom/smedialink/storage/data/utils/extentions/RxExtKt\n*L\n1#1,188:1\n8#2:189\n18#3:190\n*S KotlinDebug\n*F\n+ 1 WalletAttachAlertPresenter.kt\ncom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter$getWalletTransactions$1\n*L\n135#1:189\n135#1:190\n*E\n"
.end annotation


# instance fields
.field final synthetic $selectedTokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

.field final synthetic this$0:Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter$getWalletTransactions$1;->this$0:Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;

    iput-object p2, p0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter$getWalletTransactions$1;->$selectedTokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

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
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    iget-object p1, p0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter$getWalletTransactions$1;->this$0:Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;

    invoke-static {p1}, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;->access$getCachedTransactions$p(Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;)Ljava/util/HashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter$getWalletTransactions$1;->$selectedTokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    .line 8
    sget-object v0, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    invoke-virtual {v0, p1}, Lcom/smedialink/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 18
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "just(this)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    iget-object p1, p0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter$getWalletTransactions$1;->this$0:Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;

    invoke-static {p1}, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;->access$getWalletInteractor$p(Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter;)Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter$getWalletTransactions$1;->$selectedTokenCode:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1b

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;->getWalletTransactions$default(Lcom/smedialink/storage/domain/interactor/wallet/WalletInteractor;ZLjava/lang/String;Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;ILcom/smedialink/storage/domain/model/crypto/NetworkType;ILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 134
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/home/old/WalletAttachAlertPresenter$getWalletTransactions$1;->invoke(Ljava/lang/Boolean;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
