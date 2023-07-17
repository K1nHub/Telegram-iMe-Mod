.class public final Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter$validatePin$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;->validatePin(Ljava/lang/String;Z)V
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
        "Ljava/lang/String;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 EnterWalletPinPresenter.kt\ncom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter\n*L\n1#1,111:1\n46#2,24:112\n*E\n"
.end annotation


# instance fields
.field final synthetic $pin$inlined:Ljava/lang/String;

.field final synthetic this$0:Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter$validatePin$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;

    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter$validatePin$$inlined$subscribeWithErrorHandle$default$1;->$pin$inlined:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter$validatePin$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 48
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    .line 113
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter$validatePin$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;

    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter$validatePin$$inlined$subscribeWithErrorHandle$default$1;->$pin$inlined:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;->access$savePinEncryptedIfNeeded(Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter$validatePin$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;->access$getCryptoPreferenceHelper$p(Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;)Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->setWalletPinCodeBadTriesCount(I)V

    .line 116
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter$validatePin$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter$validatePin$$inlined$subscribeWithErrorHandle$default$1;->$pin$inlined:Ljava/lang/String;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinView;->onSuccessEnterPinCode(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_0
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_3

    .line 120
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter$validatePin$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;->access$getCryptoPreferenceHelper$p(Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;)Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->isLocalEncryptionCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter$validatePin$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;->access$onPinCodeError(Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;)V

    goto :goto_0

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter$validatePin$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinView;

    .line 124
    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/error/ErrorModel;->getStatus()Lcom/iMe/storage/data/network/model/error/IErrorStatus;

    move-result-object v1

    sget-object v2, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;->PIN_CODE_MAX_ATTEMPTS:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler$CryptoErrorStatus;

    if-ne v1, v2, :cond_2

    .line 125
    invoke-interface {v0}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinView;->openPasswordEnterScreen()V

    .line 127
    :cond_2
    invoke-interface {v0}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinView;->onPinCodeErrorShake()V

    .line 128
    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter$validatePin$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;

    invoke-static {v1}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;->access$getResourceManager$p(Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    :cond_3
    :goto_0
    return-void
.end method
