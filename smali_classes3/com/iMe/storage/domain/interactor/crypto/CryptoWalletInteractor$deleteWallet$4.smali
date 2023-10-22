.class final Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$deleteWallet$4;
.super Lkotlin/jvm/internal/Lambda;
.source "CryptoWalletInteractor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->deleteWallet(Lcom/iMe/storage/domain/model/crypto/BlockchainType;ZZ)Lio/reactivex/Observable;
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
        "Ljava/lang/Boolean;",
        ">;",
        "Lio/reactivex/ObservableSource<",
        "+",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Ljava/lang/Boolean;",
        ">;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCryptoWalletInteractor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CryptoWalletInteractor.kt\ncom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$deleteWallet$4\n+ 2 ObservableExt.kt\ncom/iMe/storage/domain/utils/extensions/ObservableExtKt\n+ 3 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n*L\n1#1,312:1\n42#2,5:313\n18#3:318\n*S KotlinDebug\n*F\n+ 1 CryptoWalletInteractor.kt\ncom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$deleteWallet$4\n*L\n159#1:313,5\n165#1:318\n*E\n"
.end annotation


# instance fields
.field final synthetic $blockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

.field final synthetic $shouldSendRxEvent:Z

.field final synthetic $withUnlink:Z

.field final synthetic this$0:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;


# direct methods
.method constructor <init>(ZLcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;Lcom/iMe/storage/domain/model/crypto/BlockchainType;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$deleteWallet$4;->$withUnlink:Z

    iput-object p2, p0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$deleteWallet$4;->this$0:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

    iput-object p3, p0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$deleteWallet$4;->$blockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    iput-boolean p4, p0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$deleteWallet$4;->$shouldSendRxEvent:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/iMe/storage/domain/model/Result;)Lio/reactivex/ObservableSource;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    iget-boolean v0, p0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$deleteWallet$4;->$withUnlink:Z

    if-eqz v0, :cond_0

    .line 157
    iget-object p1, p0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$deleteWallet$4;->this$0:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

    invoke-static {p1}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->access$getCryptoWalletRepository$p(Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;)Lcom/iMe/storage/domain/repository/crypto/CryptoWalletRepository;

    move-result-object p1

    .line 158
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$deleteWallet$4;->$blockchainType:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    invoke-interface {p1, v0}, Lcom/iMe/storage/domain/repository/crypto/CryptoWalletRepository;->unlinkWallet(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;

    move-result-object p1

    .line 159
    iget-boolean v0, p0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$deleteWallet$4;->$shouldSendRxEvent:Z

    iget-object v1, p0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$deleteWallet$4;->this$0:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;

    .line 42
    new-instance v2, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$deleteWallet$4$invoke$$inlined$doOnSuccessNext$1;

    invoke-direct {v2, v0, v1}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$deleteWallet$4$invoke$$inlined$doOnSuccessNext$1;-><init>(ZLcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;)V

    new-instance v0, Lcom/iMe/storage/domain/utils/extensions/ObservableExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v0, v2}, Lcom/iMe/storage/domain/utils/extensions/ObservableExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "crossinline body: (T) ->\u2026ult as T)\n        }\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_0
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "just(this)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 155
    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$deleteWallet$4;->invoke(Lcom/iMe/storage/domain/model/Result;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
