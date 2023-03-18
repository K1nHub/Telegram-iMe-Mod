.class public final Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter$validatePassword$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;->validatePassword(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/smedialink/storage/domain/model/Result<",
        "+",
        "Ljava/lang/Boolean;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 EnterWalletPasswordPresenter.kt\ncom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter\n*L\n1#1,111:1\n51#2,14:112\n*E\n"
.end annotation


# instance fields
.field final synthetic $password$inlined:Ljava/lang/String;

.field final synthetic this$0:Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter$validatePassword$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;

    iput-object p2, p0, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter$validatePassword$$inlined$subscribeWithErrorHandle$default$1;->$password$inlined:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter$validatePassword$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/Result<",
            "+",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 45
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/smedialink/storage/domain/model/Result;

    .line 113
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Success;

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter$validatePassword$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView;

    .line 115
    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter$validatePassword$$inlined$subscribeWithErrorHandle$default$1;->$password$inlined:Ljava/lang/String;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter$validatePassword$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;

    invoke-static {v1}, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;->access$getCryptoAccessManager$p(Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;)Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;

    move-result-object v1

    iget-object v2, p0, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter$validatePassword$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;

    invoke-static {v2}, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;->access$getCryptoPreferenceHelper$p(Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;)Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    move-result-object v2

    invoke-interface {v2}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getCurrentBlockchainType()Lcom/smedialink/storage/domain/model/crypto/BlockchainType;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;->getLastLoggedInAddress(Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView;->onSuccessUnlockWallet(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_0
    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter$validatePassword$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;

    invoke-static {p1}, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;->access$getResourceManager$p(Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/R$string;->wallet_enter_eth_password_validation_error:I

    invoke-interface {p1, v1}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    .line 118
    invoke-interface {v0}, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView;->onCodeErrorShake()V

    goto :goto_0

    .line 122
    :cond_1
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Error;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter$validatePassword$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordView;

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter$validatePassword$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;

    invoke-static {v1}, Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;->access$getResourceManager$p(Lcom/smedialink/ui/wallet/crypto/enter/password/EnterWalletPasswordPresenter;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/smedialink/storage/data/network/model/error/ErrorModel;->getMessage(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
