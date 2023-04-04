.class public final Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$onSecretWordsCheckCompleted$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->onSecretWordsCheckCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Lcom/iMe/storage/domain/model/crypto/Wallet;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 CreateWalletPresenter.kt\ncom/iMe/ui/wallet/crypto/create/CreateWalletPresenter\n*L\n1#1,111:1\n59#2,6:112\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$onSecretWordsCheckCompleted$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$onSecretWordsCheckCompleted$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Lcom/iMe/storage/domain/model/crypto/Wallet;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 45
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    .line 113
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$onSecretWordsCheckCompleted$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->access$confirmBackUpCreated(Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;)V

    goto :goto_0

    .line 114
    :cond_0
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$onSecretWordsCheckCompleted$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$onSecretWordsCheckCompleted$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;

    invoke-static {v1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->access$getResourceManager$p(Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/iMe/storage/data/network/model/error/ErrorModel;->getMessage(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
