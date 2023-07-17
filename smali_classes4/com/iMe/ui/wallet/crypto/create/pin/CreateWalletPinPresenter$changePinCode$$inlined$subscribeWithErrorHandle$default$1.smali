.class public final Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter$changePinCode$$inlined$subscribeWithErrorHandle$default$1;
.super Ljava/lang/Object;
.source "RxExt.kt"

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->changePinCode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$5\n+ 2 CreateWalletPinPresenter.kt\ncom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter\n*L\n1#1,111:1\n73#2,3:112\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter$changePinCode$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter$changePinCode$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;->access$savePinEncrypted(Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;)V

    .line 113
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter$changePinCode$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView;

    invoke-interface {v0}, Lcom/iMe/ui/wallet/crypto/create/pin/CreateWalletPinView;->onWalletPinCodeChangeSuccess()V

    return-void
.end method
