.class public final Lcom/smedialink/utils/helper/wallet/CryptoHelper;
.super Ljava/lang/Object;
.source "CryptoHelper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCryptoHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CryptoHelper.kt\ncom/smedialink/utils/helper/wallet/CryptoHelper\n+ 2 ObservableExt.kt\ncom/smedialink/storage/domain/utils/extentions/ObservableExtKt\n+ 3 ResultExt.kt\ncom/smedialink/storage/domain/utils/extentions/ResultExtKt\n+ 4 RxExt.kt\ncom/smedialink/storage/data/utils/extentions/RxExtKt\n*L\n1#1,46:1\n27#2:47\n11#3:48\n18#4:49\n*S KotlinDebug\n*F\n+ 1 CryptoHelper.kt\ncom/smedialink/utils/helper/wallet/CryptoHelper\n*L\n35#1:47\n41#1:48\n41#1:49\n*E\n"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/utils/helper/wallet/CryptoHelper;

    invoke-direct {v0}, Lcom/smedialink/utils/helper/wallet/CryptoHelper;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final extractAddress(Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/BlockchainType;Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/smedialink/storage/domain/model/crypto/BlockchainType;",
            "Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockchainType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoWalletInteractor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sget-object v0, Lcom/smedialink/model/wallet/crypto/BlockchainAddressData;->Companion:Lcom/smedialink/model/wallet/crypto/BlockchainAddressData$Companion;

    invoke-virtual {v0, p1}, Lcom/smedialink/model/wallet/crypto/BlockchainAddressData$Companion;->mapByBlockchainType(Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Lcom/smedialink/model/wallet/crypto/BlockchainAddressData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/crypto/BlockchainAddressData;->getRegex()Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 29
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 30
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p0

    const-string v0, "group"

    .line 32
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 34
    invoke-virtual {p2, p0, p1}, Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;->isValidAddress(Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;

    move-result-object p1

    .line 27
    new-instance p2, Lcom/smedialink/utils/helper/wallet/CryptoHelper$extractAddress$$inlined$mapSuccess$1;

    invoke-direct {p2, p0}, Lcom/smedialink/utils/helper/wallet/CryptoHelper$extractAddress$$inlined$mapSuccess$1;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcom/smedialink/utils/helper/wallet/CryptoHelper$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p0, p2}, Lcom/smedialink/utils/helper/wallet/CryptoHelper$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    const-string p1, "crossinline body: (T) ->\u2026ult as? R\n        }\n    }"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 11
    :cond_1
    sget-object p0, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    const-string p1, ""

    invoke-virtual {p0, p1}, Lcom/smedialink/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p0

    .line 18
    invoke-static {p0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    const-string p1, "just(this)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final formatAddressQR(Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Ljava/lang/String;
    .locals 2

    const-string v0, "address"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockchainType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/smedialink/model/wallet/crypto/BlockchainAddressData;->Companion:Lcom/smedialink/model/wallet/crypto/BlockchainAddressData$Companion;

    invoke-virtual {v1, p1}, Lcom/smedialink/model/wallet/crypto/BlockchainAddressData$Companion;->mapByBlockchainType(Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Lcom/smedialink/model/wallet/crypto/BlockchainAddressData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/crypto/BlockchainAddressData;->getPrefix()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final isWithEthereumPrefix(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "address"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget-object v0, Lcom/smedialink/model/wallet/crypto/BlockchainAddressData;->EVM:Lcom/smedialink/model/wallet/crypto/BlockchainAddressData;

    invoke-virtual {v0}, Lcom/smedialink/model/wallet/crypto/BlockchainAddressData;->getPrefix()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    return p0
.end method
