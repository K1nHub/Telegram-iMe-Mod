.class public final Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter$loadAvailableProducts$$inlined$subscribeWithErrorHandle$default$1;
.super Ljava/lang/Object;
.source "RxExt.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->loadAvailableProducts()V
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
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 BuyCryptoProductPresenter.kt\ncom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,111:1\n62#2,3:112\n65#2,5:120\n1043#3:115\n37#4:116\n36#4,3:117\n*S KotlinDebug\n*F\n+ 1 BuyCryptoProductPresenter.kt\ncom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter\n*L\n64#1:115\n64#1:116\n64#1:117,3\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter$loadAvailableProducts$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;

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

    .line 114
    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter$loadAvailableProducts$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;

    invoke-static {v0}, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->access$getTokenInfo(Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;)Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/smedialink/mapper/crypto/CryptoQuotesToCryptoBuyItemUiMappingKt;->mapToUI(Ljava/util/List;Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;)Ljava/util/List;

    move-result-object p1

    .line 1043
    new-instance v0, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter$loadAvailableProducts$lambda-3$$inlined$sortedBy$1;

    invoke-direct {v0}, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter$loadAvailableProducts$lambda-3$$inlined$sortedBy$1;-><init>()V

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/smedialink/model/wallet/crypto/buy/CryptoBuyItem;

    .line 38
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 114
    check-cast p1, [Lcom/smedialink/model/wallet/crypto/buy/CryptoBuyItem;

    .line 120
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter$loadAvailableProducts$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;

    invoke-static {v0, p1}, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->access$setupUiItems(Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;[Lcom/smedialink/model/wallet/crypto/buy/CryptoBuyItem;)V

    goto :goto_0

    .line 122
    :cond_0
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Error;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter$loadAvailableProducts$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductView;

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter$loadAvailableProducts$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;

    invoke-static {v1}, Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;->access$getResourceManager$p(Lcom/smedialink/ui/wallet/crypto/buy/BuyCryptoProductPresenter;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/smedialink/storage/data/network/model/error/ErrorModel;->getMessage(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
