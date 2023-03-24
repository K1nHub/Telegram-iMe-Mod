.class public final Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter$validatePin$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->validatePin(Ljava/lang/String;)V
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
        "Lcom/smedialink/storage/domain/model/crypto/Wallet;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 CreateWalletPinPresenter.kt\ncom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter\n*L\n1#1,111:1\n49#2,9:112\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter$validatePin$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter$validatePin$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/Result<",
            "+",
            "Lcom/smedialink/storage/domain/model/crypto/Wallet;",
            ">;)V"
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
    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter$validatePin$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;

    invoke-static {p1}, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->access$savePinEncrypted(Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;)V

    .line 115
    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter$validatePin$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinView;

    invoke-interface {p1}, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinView;->onSuccessCreateWallet()V

    goto :goto_0

    .line 117
    :cond_0
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Error;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter$validatePin$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter$validatePin$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;

    invoke-static {v1}, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->access$getResourceManager$p(Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/smedialink/storage/data/network/model/error/ErrorModel;->getMessage(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->access$onPinError(Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
