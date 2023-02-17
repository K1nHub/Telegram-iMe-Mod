.class public final Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter$loadInternal$$inlined$subscribeWithErrorHandle$default$1;
.super Ljava/lang/Object;
.source "RxExt.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;->loadInternal(ZZLio/reactivex/Observable;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 WalletTransactionsPresenter.kt\ncom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter\n*L\n1#1,111:1\n202#2,6:112\n*E\n"
.end annotation


# instance fields
.field final synthetic $forceUpdate$inlined:Z

.field final synthetic $isLoadMore$inlined:Z

.field final synthetic $onSuccess$inlined:Lkotlin/jvm/functions/Function1;

.field final synthetic this$0:Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;ZLcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;Z)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter$loadInternal$$inlined$subscribeWithErrorHandle$default$1;->$onSuccess$inlined:Lkotlin/jvm/functions/Function1;

    iput-boolean p2, p0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter$loadInternal$$inlined$subscribeWithErrorHandle$default$1;->$isLoadMore$inlined:Z

    iput-object p3, p0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter$loadInternal$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;

    iput-boolean p4, p0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter$loadInternal$$inlined$subscribeWithErrorHandle$default$1;->$forceUpdate$inlined:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 45
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/smedialink/storage/domain/model/Result;

    .line 113
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Success;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter$loadInternal$$inlined$subscribeWithErrorHandle$default$1;->$onSuccess$inlined:Lkotlin/jvm/functions/Function1;

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 114
    :cond_0
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Loading;

    if-eqz v0, :cond_1

    iget-boolean p1, p0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter$loadInternal$$inlined$subscribeWithErrorHandle$default$1;->$isLoadMore$inlined:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter$loadInternal$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;

    iget-boolean v0, p0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter$loadInternal$$inlined$subscribeWithErrorHandle$default$1;->$forceUpdate$inlined:Z

    invoke-static {p1, v0}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;->access$onLoading(Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;Z)V

    goto :goto_0

    .line 115
    :cond_1
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Error;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter$loadInternal$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    iget-boolean v1, p0, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter$loadInternal$$inlined$subscribeWithErrorHandle$default$1;->$isLoadMore$inlined:Z

    invoke-static {v0, p1, v1}, Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;->access$onError(Lcom/smedialink/ui/wallet/transaction/WalletTransactionsPresenter;Lcom/smedialink/storage/data/network/model/error/ErrorModel;Z)V

    :cond_2
    :goto_0
    return-void
.end method
