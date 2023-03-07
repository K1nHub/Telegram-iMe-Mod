.class public final Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter$subscribeToEvents$$inlined$subscribeWithErrorHandle$default$1;
.super Ljava/lang/Object;
.source "RxExt.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;->subscribeToEvents()V
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
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 WalletConnectPresenter.kt\ncom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter\n*L\n1#1,111:1\n99#2,2:112\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter$subscribeToEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;

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

    check-cast p1, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$NetworkUpdated;

    .line 112
    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter$subscribeToEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectView;

    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter$subscribeToEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;

    invoke-static {v0}, Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;->access$getCryptoPreferenceHelper$p(Lcom/smedialink/ui/wallet/crypto/wallet_connect/WalletConnectPresenter;)Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getNetworkType()Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/smedialink/ui/base/mvp/SwitchNetworkView;->setupNetworkType(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    return-void
.end method
