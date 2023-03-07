.class public final Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter$loadDonationTransactions$$inlined$subscribeWithErrorHandle$default$1;
.super Ljava/lang/Object;
.source "RxExt.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter;->loadDonationTransactions()V
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
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 WalletDonationsPresenter.kt\ncom/smedialink/ui/wallet/donations/WalletDonationsPresenter\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,111:1\n173#2,4:112\n177#2,9:120\n1547#3:116\n1618#3,3:117\n*S KotlinDebug\n*F\n+ 1 WalletDonationsPresenter.kt\ncom/smedialink/ui/wallet/donations/WalletDonationsPresenter\n*L\n176#1:116\n176#1:117,3\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter;


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter$loadDonationTransactions$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 45
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/smedialink/storage/domain/model/Result;

    .line 112
    iget-object v0, p0, Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter$loadDonationTransactions$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter;

    invoke-static {v0, p1}, Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter;->access$setTransactionsResultState$p(Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter;Lcom/smedialink/storage/domain/model/Result;)V

    .line 114
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Success;

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter$loadDonationTransactions$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter;

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 1547
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1618
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1619
    check-cast v2, Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;

    .line 115
    invoke-static {v2}, Lcom/smedialink/mapper/transaction/TransactionUiMappingKt;->mapToUI(Lcom/smedialink/storage/domain/model/wallet/transaction/Transaction;)Lcom/smedialink/model/wallet/transaction/TransactionItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter;->access$setTransactions$p(Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter;Ljava/util/List;)V

    .line 120
    iget-object p1, p0, Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter$loadDonationTransactions$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/donations/WalletDonationsView;

    iget-object v0, p0, Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter$loadDonationTransactions$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter;

    invoke-static {v0}, Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter;->access$getTransactions$p(Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/smedialink/ui/wallet/donations/WalletDonationsView;->onDonationsTransactionsLoaded(Ljava/util/List;)V

    goto :goto_1

    .line 122
    :cond_1
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Error;

    if-eqz v0, :cond_2

    .line 123
    iget-object v0, p0, Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter$loadDonationTransactions$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/donations/WalletDonationsView;

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    iget-object v1, p0, Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter$loadDonationTransactions$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter;

    invoke-static {v1}, Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter;->access$getResourceManager$p(Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/smedialink/storage/data/network/model/error/ErrorModel;->getMessage(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    .line 124
    iget-object p1, p0, Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter$loadDonationTransactions$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/donations/WalletDonationsView;

    invoke-interface {p1}, Lcom/smedialink/ui/wallet/donations/WalletDonationsView;->updateScreenAfterLoad()V

    goto :goto_1

    .line 126
    :cond_2
    instance-of p1, p1, Lcom/smedialink/storage/domain/model/Result$Loading;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter$loadDonationTransactions$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/donations/WalletDonationsPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/donations/WalletDonationsView;

    invoke-interface {p1}, Lcom/smedialink/ui/wallet/donations/WalletDonationsView;->updateScreenAfterLoad()V

    :cond_3
    :goto_1
    return-void
.end method
