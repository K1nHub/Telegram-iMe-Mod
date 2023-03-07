.class public final Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter$validatePin$$inlined$subscribeWithErrorHandle$default$3;
.super Ljava/lang/Object;
.source "RxExt.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


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
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 CreateWalletPinPresenter.kt\ncom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter\n*L\n1#1,111:1\n66#2,9:112\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter$validatePin$$inlined$subscribeWithErrorHandle$default$3;->this$0:Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;

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

    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter$validatePin$$inlined$subscribeWithErrorHandle$default$3;->this$0:Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinView;

    .line 114
    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter$validatePin$$inlined$subscribeWithErrorHandle$default$3;->this$0:Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;

    invoke-static {v1}, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->access$getPassword$p(Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;)Ljava/lang/String;

    move-result-object v1

    .line 115
    iget-object v2, p0, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter$validatePin$$inlined$subscribeWithErrorHandle$default$3;->this$0:Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;

    invoke-static {v2}, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->access$getPin$p(Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;)Ljava/lang/String;

    move-result-object v2

    .line 116
    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 113
    invoke-interface {v0, v1, v2, p1}, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinView;->goToBackUpTutorial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_0
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Error;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter$validatePin$$inlined$subscribeWithErrorHandle$default$3;->this$0:Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter$validatePin$$inlined$subscribeWithErrorHandle$default$3;->this$0:Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;

    invoke-static {v1}, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->access$getResourceManager$p(Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/smedialink/storage/data/network/model/error/ErrorModel;->getMessage(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->access$onPinError(Lcom/smedialink/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
