.class public final Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter$checkAirdropStart$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter;->checkAirdropStart(Ljava/lang/String;)V
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
        "Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropInfo;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 WalletAirdropPresenter.kt\ncom/iMe/ui/wallet/airdrop/WalletAirdropPresenter\n*L\n1#1,111:1\n78#2,14:112\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter$checkAirdropStart$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter$checkAirdropStart$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 45
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    .line 113
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_1

    .line 114
    check-cast p1, Lcom/iMe/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropInfo;

    .line 115
    instance-of p1, p1, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropInfo$Ready;

    if-eqz p1, :cond_2

    .line 116
    iget-object p1, p0, Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter$checkAirdropStart$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter;

    invoke-virtual {p1}, Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter;->isCryptoWalletCreated()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter$checkAirdropStart$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter;

    invoke-virtual {p1}, Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter;->isBotActivated()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter$checkAirdropStart$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/airdrop/WalletAirdropView;

    invoke-interface {p1}, Lcom/iMe/ui/wallet/airdrop/WalletAirdropView;->checkNeedToShowAirdropDialog()V

    goto :goto_0

    .line 117
    :cond_0
    iget-object p1, p0, Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter$checkAirdropStart$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/airdrop/WalletAirdropView;

    invoke-interface {p1}, Lcom/iMe/ui/wallet/airdrop/WalletAirdropView;->showAirdropDialog()V

    goto :goto_0

    .line 122
    :cond_1
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter$checkAirdropStart$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter;->access$handleErrors(Lcom/iMe/ui/wallet/airdrop/WalletAirdropPresenter;Lcom/iMe/storage/data/network/model/error/ErrorModel;)V

    :cond_2
    :goto_0
    return-void
.end method
