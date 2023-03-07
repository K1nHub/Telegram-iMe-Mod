.class public final Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableSwapTokensCrypto$$inlined$subscribeWithErrorHandle$default$1;
.super Ljava/lang/Object;
.source "RxExt.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->loadAvailableSwapTokensCrypto(Lcom/smedialink/model/wallet/swap/SwapSide;ZLorg/fork/utils/Callbacks$Callback;)V
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
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 WalletSwapProcessPresenter.kt\ncom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter\n*L\n1#1,111:1\n570#2,8:112\n*E\n"
.end annotation


# instance fields
.field final synthetic $action$inlined:Lorg/fork/utils/Callbacks$Callback;

.field final synthetic $selectedNetwork$inlined:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

.field final synthetic this$0:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lorg/fork/utils/Callbacks$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableSwapTokensCrypto$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;

    iput-object p2, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableSwapTokensCrypto$$inlined$subscribeWithErrorHandle$default$1;->$selectedNetwork$inlined:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    iput-object p3, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableSwapTokensCrypto$$inlined$subscribeWithErrorHandle$default$1;->$action$inlined:Lorg/fork/utils/Callbacks$Callback;

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

    .line 113
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Success;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableSwapTokensCrypto$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;

    invoke-static {v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->access$getSelectableSupportedSwapTokens$p(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;)Ljava/util/HashMap;

    move-result-object v0

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableSwapTokensCrypto$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;

    invoke-static {v1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->access$getResourceManager$p(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableSwapTokensCrypto$$inlined$subscribeWithErrorHandle$default$1;->$selectedNetwork$inlined:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    invoke-static {p1, v1, v2}, Lcom/smedialink/mapper/wallet/select/SelectableMappingKt;->mapToSelectable(Ljava/util/List;Lcom/smedialink/storage/domain/utils/system/ResourceManager;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableSwapTokensCrypto$$inlined$subscribeWithErrorHandle$default$1;->$selectedNetwork$inlined:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object p1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableSwapTokensCrypto$$inlined$subscribeWithErrorHandle$default$1;->$action$inlined:Lorg/fork/utils/Callbacks$Callback;

    invoke-interface {p1}, Lorg/fork/utils/Callbacks$Callback;->invoke()V

    goto :goto_0

    .line 117
    :cond_0
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Error;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableSwapTokensCrypto$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$loadAvailableSwapTokensCrypto$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;

    invoke-static {v1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->access$getResourceManager$p(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/smedialink/storage/data/network/model/error/ErrorModel;->getMessage(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
