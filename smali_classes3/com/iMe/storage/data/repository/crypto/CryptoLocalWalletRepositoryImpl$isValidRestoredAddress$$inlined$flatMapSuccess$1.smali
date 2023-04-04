.class public final Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl$isValidRestoredAddress$$inlined$flatMapSuccess$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ObservableExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;->isValidRestoredAddress(Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;
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
        "Lio/reactivex/ObservableSource<",
        "+",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Ljava/lang/Boolean;",
        ">;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObservableExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObservableExt.kt\ncom/iMe/storage/domain/utils/extentions/ObservableExtKt$flatMapSuccess$1\n+ 2 CryptoLocalWalletRepositoryImpl.kt\ncom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl\n+ 3 ObservableExt.kt\ncom/iMe/storage/domain/utils/extentions/ObservableExtKt\n*L\n1#1,80:1\n110#2,3:81\n26#3:84\n*S KotlinDebug\n*F\n+ 1 CryptoLocalWalletRepositoryImpl.kt\ncom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl\n*L\n112#1:84\n*E\n"
.end annotation


# instance fields
.field final synthetic $blockchainType$inlined:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

.field final synthetic $linkedAddress$inlined:Ljava/lang/String;

.field final synthetic $seed$inlined:Ljava/lang/String;

.field final synthetic this$0:Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl$isValidRestoredAddress$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;

    iput-object p2, p0, Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl$isValidRestoredAddress$$inlined$flatMapSuccess$1;->$seed$inlined:Ljava/lang/String;

    iput-object p3, p0, Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl$isValidRestoredAddress$$inlined$flatMapSuccess$1;->$blockchainType$inlined:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    iput-object p4, p0, Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl$isValidRestoredAddress$$inlined$flatMapSuccess$1;->$linkedAddress$inlined:Ljava/lang/String;

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
            "+",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_0

    .line 81
    iget-object p1, p0, Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl$isValidRestoredAddress$$inlined$flatMapSuccess$1;->this$0:Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;

    invoke-static {p1}, Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;->access$getWalletManager$p(Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl;)Lcom/iMe/storage/domain/manager/crypto/CryptoWalletsManager;

    move-result-object p1

    .line 82
    iget-object v0, p0, Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl$isValidRestoredAddress$$inlined$flatMapSuccess$1;->$seed$inlined:Ljava/lang/String;

    iget-object v1, p0, Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl$isValidRestoredAddress$$inlined$flatMapSuccess$1;->$blockchainType$inlined:Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    invoke-interface {p1, v0, v1}, Lcom/iMe/storage/domain/manager/crypto/CryptoWalletsManager;->generateAddressByMnemonic(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;

    move-result-object p1

    .line 26
    new-instance v0, Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl$isValidRestoredAddress$lambda$10$$inlined$mapSuccess$1;

    iget-object v1, p0, Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl$isValidRestoredAddress$$inlined$flatMapSuccess$1;->$linkedAddress$inlined:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl$isValidRestoredAddress$lambda$10$$inlined$mapSuccess$1;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/iMe/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v0}, Lcom/iMe/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "crossinline body: (T) ->\u2026ult as? R\n        }\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :cond_0
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lcom/iMe/storage/domain/model/Result$Companion;->error$default(Lcom/iMe/storage/domain/model/Result$Companion;Lcom/iMe/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_0

    .line 18
    :cond_1
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/repository/crypto/CryptoLocalWalletRepositoryImpl$isValidRestoredAddress$$inlined$flatMapSuccess$1;->invoke(Lcom/iMe/storage/domain/model/Result;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
