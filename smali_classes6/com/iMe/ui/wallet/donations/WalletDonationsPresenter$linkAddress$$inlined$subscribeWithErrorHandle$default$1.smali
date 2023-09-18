.class public final Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$linkAddress$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->linkAddress(Ljava/lang/String;)V
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
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 WalletDonationsPresenter.kt\ncom/iMe/ui/wallet/donations/WalletDonationsPresenter\n*L\n1#1,132:1\n105#2,13:133\n*E\n"
.end annotation


# instance fields
.field final synthetic $address$inlined:Ljava/lang/String;

.field final synthetic this$0:Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$linkAddress$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;

    iput-object p2, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$linkAddress$$inlined$subscribeWithErrorHandle$default$1;->$address$inlined:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$linkAddress$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 4
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

    .line 134
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 135
    iget-object p1, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$linkAddress$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/donations/WalletDonationsView;

    iget-object v0, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$linkAddress$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;

    iget-object v1, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$linkAddress$$inlined$subscribeWithErrorHandle$default$1;->$address$inlined:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->access$getLinkAddressDialogModel(Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;Ljava/lang/String;Z)Lcom/iMe/model/dialog/DialogModel;

    move-result-object v0

    new-instance v1, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$linkAddress$1$1;

    iget-object v2, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$linkAddress$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;

    iget-object v3, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$linkAddress$$inlined$subscribeWithErrorHandle$default$1;->$address$inlined:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$linkAddress$1$1;-><init>(Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;Ljava/lang/String;)V

    invoke-interface {p1, v0, v1}, Lcom/iMe/ui/wallet/donations/WalletDonationsView;->showConfirmDialog(Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    goto :goto_0

    .line 139
    :cond_0
    iget-object p1, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$linkAddress$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/donations/WalletDonationsView;

    iget-object v0, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$linkAddress$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->access$getResourceManager$p(Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->channel_donations_incorrect_address_error:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :cond_1
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$linkAddress$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/donations/WalletDonationsView;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    iget-object v1, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter$linkAddress$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;

    invoke-static {v1}, Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;->access$getResourceManager$p(Lcom/iMe/ui/wallet/donations/WalletDonationsPresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    :cond_2
    :goto_0
    return-void
.end method
