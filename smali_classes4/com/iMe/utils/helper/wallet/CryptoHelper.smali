.class public final Lcom/iMe/utils/helper/wallet/CryptoHelper;
.super Ljava/lang/Object;
.source "CryptoHelper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCryptoHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CryptoHelper.kt\ncom/iMe/utils/helper/wallet/CryptoHelper\n+ 2 ResultExt.kt\ncom/iMe/storage/domain/utils/extensions/ResultExtKt\n+ 3 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n+ 4 ObservableExt.kt\ncom/iMe/storage/domain/utils/extensions/ObservableExtKt\n*L\n1#1,62:1\n18#2:63\n18#3:64\n29#4,7:65\n*S KotlinDebug\n*F\n+ 1 CryptoHelper.kt\ncom/iMe/utils/helper/wallet/CryptoHelper\n*L\n41#1:63\n41#1:64\n54#1:65,7\n*E\n"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/utils/helper/wallet/CryptoHelper;

    invoke-direct {v0}, Lcom/iMe/utils/helper/wallet/CryptoHelper;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final extractAddressAndAmount(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;)Lio/reactivex/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/domain/model/crypto/BlockchainType;",
            "Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/wallet/SendCryptoQRData;",
            ">;>;"
        }
    .end annotation

    const-string/jumbo v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockchainType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoWalletInteractor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget-object v0, Lcom/iMe/model/wallet/crypto/BlockchainAddressData;->Companion:Lcom/iMe/model/wallet/crypto/BlockchainAddressData$Companion;

    invoke-virtual {v0, p1}, Lcom/iMe/model/wallet/crypto/BlockchainAddressData$Companion;->mapByBlockchainType(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lcom/iMe/model/wallet/crypto/BlockchainAddressData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/model/wallet/crypto/BlockchainAddressData;->getRegex()Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 35
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "amount=[0-9]*(\\.[0-9]+)?"

    .line 36
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 38
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const-string v2, ""

    iput-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 40
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "matcherAddress.group()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-eqz v2, :cond_1

    goto :goto_2

    .line 44
    :cond_1
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    const-string v5, "group"

    if-eqz v2, :cond_3

    .line 45
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p0

    .line 46
    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    if-eqz v3, :cond_3

    const-string v2, "amount="

    .line 47
    invoke-static {p0, v2}, Lkotlin/text/StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 51
    :cond_3
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p0

    .line 53
    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p0, p1}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->isValidAddress(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;

    move-result-object p1

    .line 29
    new-instance p2, Lcom/iMe/utils/helper/wallet/CryptoHelper$extractAddressAndAmount$$inlined$mapSuccess$1;

    invoke-direct {p2, p0, v1}, Lcom/iMe/utils/helper/wallet/CryptoHelper$extractAddressAndAmount$$inlined$mapSuccess$1;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    new-instance p0, Lcom/iMe/utils/helper/wallet/CryptoHelper$inlined$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p0, p2}, Lcom/iMe/utils/helper/wallet/CryptoHelper$inlined$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p0}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    const-string p1, "crossinline body: (T) ->\u2026ult as? R\n        }\n    }"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 41
    :cond_4
    :goto_2
    new-instance p0, Lcom/iMe/storage/domain/model/wallet/SendCryptoQRData;

    const/4 p1, 0x3

    const/4 p2, 0x0

    invoke-direct {p0, p2, p2, p1, p2}, Lcom/iMe/storage/domain/model/wallet/SendCryptoQRData;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 18
    sget-object p1, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    invoke-virtual {p1, p0}, Lcom/iMe/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p0

    .line 18
    invoke-static {p0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    const-string p1, "just(this)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final formatAddressQR(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Ljava/lang/String;
    .locals 2

    const-string v0, "address"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockchainType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/iMe/model/wallet/crypto/BlockchainAddressData;->Companion:Lcom/iMe/model/wallet/crypto/BlockchainAddressData$Companion;

    invoke-virtual {v1, p1}, Lcom/iMe/model/wallet/crypto/BlockchainAddressData$Companion;->mapByBlockchainType(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lcom/iMe/model/wallet/crypto/BlockchainAddressData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/model/wallet/crypto/BlockchainAddressData;->getPrefix()Ljava/lang/String;

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

    .line 21
    sget-object v0, Lcom/iMe/model/wallet/crypto/BlockchainAddressData;->EVM:Lcom/iMe/model/wallet/crypto/BlockchainAddressData;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/crypto/BlockchainAddressData;->getPrefix()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    return p0
.end method
