.class final Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor$getSupportedNetworksWithUpdateCheck$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletInteractor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;->getSupportedNetworksWithUpdateCheck()Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Ljava/util/List<",
        "+",
        "Lcom/iMe/storage/domain/model/crypto/Network;",
        ">;>;",
        "Lio/reactivex/ObservableSource<",
        "+",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Ljava/util/List<",
        "+",
        "Lcom/iMe/storage/domain/model/crypto/Network;",
        ">;>;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletInteractor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletInteractor.kt\ncom/iMe/storage/domain/interactor/wallet/WalletInteractor$getSupportedNetworksWithUpdateCheck$1\n+ 2 ResultExt.kt\ncom/iMe/storage/domain/utils/extentions/ResultExtKt\n+ 3 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n*L\n1#1,213:1\n13#2:214\n13#2:216\n18#3:215\n18#3:217\n18#3:218\n*S KotlinDebug\n*F\n+ 1 WalletInteractor.kt\ncom/iMe/storage/domain/interactor/wallet/WalletInteractor$getSupportedNetworksWithUpdateCheck$1\n*L\n167#1:214\n172#1:216\n167#1:215\n172#1:217\n175#1:218\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;


# direct methods
.method constructor <init>(Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor$getSupportedNetworksWithUpdateCheck$1;->this$0:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/iMe/storage/domain/model/Result;)Lio/reactivex/ObservableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/Network;",
            ">;>;)",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/Network;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    const-string v1, "just(this)"

    if-eqz v0, :cond_0

    .line 166
    iget-object p1, p0, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor$getSupportedNetworksWithUpdateCheck$1;->this$0:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    invoke-static {p1}, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;->access$updateEnabledNetworks(Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;)V

    .line 167
    iget-object p1, p0, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor$getSupportedNetworksWithUpdateCheck$1;->this$0:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    invoke-static {p1}, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;->access$getCryptoPreferenceHelper$p(Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;)Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    move-result-object p1

    invoke-interface {p1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getSupportedNetworks()Ljava/util/List;

    move-result-object p1

    .line 13
    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    invoke-virtual {v0, p1}, Lcom/iMe/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    .line 18
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 170
    :cond_0
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor$getSupportedNetworksWithUpdateCheck$1;->this$0:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;->access$onNetworksUpdateSuccess(Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;Ljava/util/List;)V

    .line 172
    iget-object p1, p0, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor$getSupportedNetworksWithUpdateCheck$1;->this$0:Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;

    invoke-static {p1}, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;->access$getCryptoPreferenceHelper$p(Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;)Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    move-result-object p1

    invoke-interface {p1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getSupportedNetworks()Ljava/util/List;

    move-result-object p1

    .line 13
    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    invoke-virtual {v0, p1}, Lcom/iMe/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    .line 18
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_1
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 163
    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor$getSupportedNetworksWithUpdateCheck$1;->invoke(Lcom/iMe/storage/domain/model/Result;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
