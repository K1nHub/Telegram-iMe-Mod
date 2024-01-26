.class public final Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$validateSeed$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->validateSeed(Ljava/lang/String;)V
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
        "Ljava/lang/Boolean;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 CreateWalletPresenter.kt\ncom/iMe/ui/wallet/crypto/create/CreateWalletPresenter\n*L\n1#1,132:1\n155#2,18:133\n*E\n"
.end annotation


# instance fields
.field final synthetic $isPasscodeCreated$inlined:Z

.field final synthetic $seed$inlined:Ljava/lang/String;

.field final synthetic this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$validateSeed$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;

    iput-boolean p2, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$validateSeed$$inlined$subscribeWithErrorHandle$default$1;->$isPasscodeCreated$inlined:Z

    iput-object p3, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$validateSeed$$inlined$subscribeWithErrorHandle$default$1;->$seed$inlined:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$validateSeed$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

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
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 69
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    .line 133
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$validateSeed$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;

    .line 135
    instance-of v1, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v1, :cond_2

    .line 137
    check-cast p1, Lcom/iMe/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$validateSeed$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->access$getResourceManager$p(Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/R$string;->wallet_restore_eth_error_info:I

    invoke-interface {p1, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;->showActionError(Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :cond_0
    iget-boolean p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$validateSeed$$inlined$subscribeWithErrorHandle$default$1;->$isPasscodeCreated$inlined:Z

    if-eqz p1, :cond_1

    invoke-interface {v0}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;->onSuccessConfirmBackUp()V

    goto :goto_0

    .line 139
    :cond_1
    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$validateSeed$$inlined$subscribeWithErrorHandle$default$1;->$seed$inlined:Ljava/lang/String;

    invoke-static {}, Lcom/iMe/storage/data/utils/extentions/CryptoExtKt;->randomString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletView;->onSuccessEnterSeed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :cond_2
    instance-of v1, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v1, :cond_3

    .line 144
    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    iget-object v1, p0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter$validateSeed$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;

    invoke-static {v1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;->access$getResourceManager$p(Lcom/iMe/ui/wallet/crypto/create/CreateWalletPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    :cond_3
    :goto_0
    return-void
.end method
