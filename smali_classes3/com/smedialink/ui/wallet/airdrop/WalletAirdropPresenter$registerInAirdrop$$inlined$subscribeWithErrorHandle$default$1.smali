.class public final Lcom/smedialink/ui/wallet/airdrop/WalletAirdropPresenter$registerInAirdrop$$inlined$subscribeWithErrorHandle$default$1;
.super Ljava/lang/Object;
.source "RxExt.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/airdrop/WalletAirdropPresenter;->registerInAirdrop()V
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
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 WalletAirdropPresenter.kt\ncom/smedialink/ui/wallet/airdrop/WalletAirdropPresenter\n*L\n1#1,111:1\n99#2,9:112\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/wallet/airdrop/WalletAirdropPresenter;


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/wallet/airdrop/WalletAirdropPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/airdrop/WalletAirdropPresenter$registerInAirdrop$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/airdrop/WalletAirdropPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1
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
    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropInfo;

    .line 115
    instance-of p1, p1, Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropInfo$Ready;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/smedialink/ui/wallet/airdrop/WalletAirdropPresenter$registerInAirdrop$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/airdrop/WalletAirdropPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/airdrop/WalletAirdropView;

    invoke-interface {p1}, Lcom/smedialink/ui/wallet/airdrop/WalletAirdropView;->showAirdropDialog()V

    goto :goto_0

    .line 118
    :cond_0
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Error;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smedialink/ui/wallet/airdrop/WalletAirdropPresenter$registerInAirdrop$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/airdrop/WalletAirdropPresenter;

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/smedialink/ui/wallet/airdrop/WalletAirdropPresenter;->access$handleErrors(Lcom/smedialink/ui/wallet/airdrop/WalletAirdropPresenter;Lcom/smedialink/storage/data/network/model/error/ErrorModel;)V

    :cond_1
    :goto_0
    return-void
.end method
