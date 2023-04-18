.class public final Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;
.super Ljava/lang/Object;
.source "CryptoWalletInteractor.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCryptoWalletInteractor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CryptoWalletInteractor.kt\ncom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor\n+ 2 ObservableExt.kt\ncom/iMe/storage/domain/utils/extentions/ObservableExtKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 ResultExt.kt\ncom/iMe/storage/domain/utils/extentions/ResultExtKt\n+ 5 RxExt.kt\ncom/iMe/storage/data/utils/extentions/RxExtKt\n+ 6 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,293:1\n14#2:294\n38#2:295\n26#2:296\n38#2:297\n14#2:298\n14#2:299\n26#2:300\n14#2:305\n38#2:306\n38#2:314\n14#2:318\n14#2:320\n14#2:321\n26#2:322\n14#2:325\n1109#3,2:301\n3792#3:307\n4307#3,2:308\n11#4:303\n11#4:323\n18#5:304\n18#5:324\n1549#6:310\n1620#6,3:311\n1549#6:315\n1620#6,2:316\n1622#6:319\n*S KotlinDebug\n*F\n+ 1 CryptoWalletInteractor.kt\ncom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor\n*L\n48#1:294\n57#1:295\n68#1:296\n81#1:297\n89#1:298\n98#1:299\n104#1:300\n149#1:305\n154#1:306\n192#1:314\n217#1:318\n242#1:320\n246#1:321\n265#1:322\n281#1:325\n142#1:301,2\n167#1:307\n167#1:308,2\n145#1:303\n275#1:323\n145#1:304\n275#1:324\n170#1:310\n170#1:311,3\n209#1:315\n209#1:316,2\n209#1:319\n*E\n"
.end annotation


# instance fields
.field private final cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

.field private final cryptoLocalWalletRepository:Lcom/iMe/storage/domain/repository/crypto/CryptoLocalWalletRepository;

.field private final cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

.field private final cryptoWalletRepository:Lcom/iMe/storage/domain/repository/crypto/CryptoWalletRepository;

.field private final pinCodeInteractor:Lcom/iMe/storage/domain/interactor/crypto/pin/PinCodeInteractor;

.field private final rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;


# direct methods
.method public static synthetic $r8$lambda$3HwW22bgbon9SYA1DcOAvaUiIj8(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->deleteAllWallets$lambda$14(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$FcHe_hxIdm9Hu3uFQMHxBmKoeI8(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->importBib39BasedWallets$lambda$18(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$gsfsSCtq4eppc04EAKUtNfq3_V8(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->getMnemonicWordsSuggestions$lambda$8(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/iMe/storage/domain/repository/crypto/CryptoLocalWalletRepository;Lcom/iMe/storage/domain/repository/crypto/CryptoWalletRepository;Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/interactor/crypto/pin/PinCodeInteractor;Lcom/iMe/storage/domain/utils/rx/RxEventBus;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;)V
    .locals 1

    const-string v0, "cryptoLocalWalletRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoWalletRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoAccessManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoPreferenceHelper"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pinCodeInteractor"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rxEventBus"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->cryptoLocalWalletRepository:Lcom/iMe/storage/domain/repository/crypto/CryptoLocalWalletRepository;

    .line 26
    iput-object p2, p0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->cryptoWalletRepository:Lcom/iMe/storage/domain/repository/crypto/CryptoWalletRepository;

    .line 27
    iput-object p3, p0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    .line 28
    iput-object p4, p0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    .line 29
    iput-object p5, p0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->pinCodeInteractor:Lcom/iMe/storage/domain/interactor/crypto/pin/PinCodeInteractor;

    .line 30
    iput-object p6, p0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    .line 31
    iput-object p7, p0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    return-void
.end method

.method public static final synthetic access$activateAllBip39BasedWallets(Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;)Lio/reactivex/Observable;
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->activateAllBip39BasedWallets()Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCryptoAccessManager$p(Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;)Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    return-object p0
.end method

.method public static final synthetic access$getCryptoWalletRepository$p(Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;)Lcom/iMe/storage/domain/repository/crypto/CryptoWalletRepository;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->cryptoWalletRepository:Lcom/iMe/storage/domain/repository/crypto/CryptoWalletRepository;

    return-object p0
.end method

.method public static final synthetic access$getRxEventBus$p(Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;)Lcom/iMe/storage/domain/utils/rx/RxEventBus;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->rxEventBus:Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    return-object p0
.end method

.method public static final synthetic access$getSchedulersProvider$p(Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;)Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    return-object p0
.end method

.method public static final synthetic access$isAddressChanged(Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Wallet;)Z
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->isAddressChanged(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Wallet;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$linkWalletAddressWithCheck(Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;Lcom/iMe/storage/domain/model/crypto/Wallet;)Lio/reactivex/Observable;
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->linkWalletAddressWithCheck(Lcom/iMe/storage/domain/model/crypto/Wallet;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$unlinkWalletIfNeed(Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->unlinkWalletIfNeed(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private final activateAllBip39BasedWallets()Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/Wallet;",
            ">;>;>;"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->getUnactivatedBip39PhraseBasedBlockchainTypes()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->importBib39BasedWallets(Ljava/util/List;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic deleteAllWallets$default(Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;ZILjava/lang/Object;)Lio/reactivex/Observable;
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    .line 165
    :cond_0
    invoke-virtual {p0, p1}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->deleteAllWallets(Z)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private static final deleteAllWallets$lambda$14(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/iMe/storage/domain/model/Result;

    return-object p0
.end method

.method public static synthetic deleteWallet$default(Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;Lcom/iMe/storage/domain/model/crypto/BlockchainType;ZZILjava/lang/Object;)Lio/reactivex/Observable;
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x1

    if-eqz p5, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move p3, v0

    .line 135
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->deleteWallet(Lcom/iMe/storage/domain/model/crypto/BlockchainType;ZZ)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private final getCreatePinCodeObservable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/reactivex/Observable;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/crypto/Wallet;",
            ">;>;)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/crypto/Wallet;",
            ">;>;"
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->pinCodeInteractor:Lcom/iMe/storage/domain/interactor/crypto/pin/PinCodeInteractor;

    .line 241
    invoke-virtual {v0, p1, p2, p3}, Lcom/iMe/storage/domain/interactor/crypto/pin/PinCodeInteractor;->createPinCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 14
    new-instance p2, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$getCreatePinCodeObservable$$inlined$flatMapSuccess$1;

    invoke-direct {p2, p4}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$getCreatePinCodeObservable$$inlined$flatMapSuccess$1;-><init>(Lio/reactivex/Observable;)V

    new-instance p3, Lcom/iMe/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p3, p2}, Lcom/iMe/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private static final getMnemonicWordsSuggestions$lambda$8(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    const-string v0, "$query"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-static {p0}, Lwallet/core/jni/Mnemonic;->suggest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "words"

    .line 116
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

    invoke-static {p0}, Lcom/iMe/storage/data/utils/extentions/StringExtKt;->splitBySpace(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    goto :goto_1

    .line 117
    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private final importBib39BasedWallets(Ljava/util/List;)Lio/reactivex/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/iMe/storage/domain/model/crypto/BlockchainType;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/Wallet;",
            ">;>;>;"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->getWalletPassword()Ljava/lang/String;

    move-result-object v0

    .line 205
    iget-object v1, p0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v1}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->getFirstBip39PhraseBasedBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v1

    .line 206
    iget-object v2, p0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v2, v1}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->getWallet(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lcom/iMe/storage/domain/model/crypto/Wallet;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/Wallet;->getMnemonic()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    const-string v1, ""

    .line 1549
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1621
    check-cast v3, Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    .line 210
    iget-object v4, p0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->cryptoLocalWalletRepository:Lcom/iMe/storage/domain/repository/crypto/CryptoLocalWalletRepository;

    .line 212
    iget-object v5, p0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v5}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getLastLoggedInGuid()Ljava/lang/String;

    move-result-object v5

    .line 211
    invoke-interface {v4, v5, v1, v0, v3}, Lcom/iMe/storage/domain/repository/crypto/CryptoLocalWalletRepository;->importWallet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;

    move-result-object v3

    .line 14
    new-instance v4, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$importBib39BasedWallets$lambda$17$$inlined$flatMapSuccess$1;

    invoke-direct {v4, p0}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$importBib39BasedWallets$lambda$17$$inlined$flatMapSuccess$1;-><init>(Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;)V

    new-instance v5, Lcom/iMe/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v5, v4}, Lcom/iMe/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v3, v5}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v3

    const-string v4, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    iget-object v4, p0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v4}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v3

    .line 1621
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 208
    :cond_2
    sget-object p1, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$importBib39BasedWallets$2;->INSTANCE:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$importBib39BasedWallets$2;

    .line 222
    new-instance v0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 208
    invoke-static {v2, v0}, Lio/reactivex/Observable;->zip(Ljava/lang/Iterable;Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 231
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "zip(\n                   \u2026(schedulersProvider.io())"

    .line 222
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private static final importBib39BasedWallets$lambda$18(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/iMe/storage/domain/model/Result;

    return-object p0
.end method

.method private final isAddressChanged(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Wallet;)Z
    .locals 0

    .line 269
    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/crypto/Wallet;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private final linkWalletAddressWithCheck(Lcom/iMe/storage/domain/model/crypto/Wallet;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/crypto/Wallet;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/crypto/Wallet;",
            ">;>;"
        }
    .end annotation

    .line 245
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/Wallet;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->getLinkedCryptoWalletAddress(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;

    move-result-object v0

    .line 14
    new-instance v1, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$linkWalletAddressWithCheck$$inlined$flatMapSuccess$1;

    invoke-direct {v1, p0, p1}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$linkWalletAddressWithCheck$$inlined$flatMapSuccess$1;-><init>(Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;Lcom/iMe/storage/domain/model/crypto/Wallet;)V

    new-instance v2, Lcom/iMe/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v2, v1}, Lcom/iMe/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance v1, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$linkWalletAddressWithCheck$$inlined$mapSuccess$1;

    invoke-direct {v1, p1}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$linkWalletAddressWithCheck$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/domain/model/crypto/Wallet;)V

    new-instance p1, Lcom/iMe/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p1, v1}, Lcom/iMe/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "crossinline body: (T) ->\u2026ult as? R\n        }\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "getLinkedCryptoWalletAdd\u2026(schedulersProvider.io())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final unlinkWalletIfNeed(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/domain/model/crypto/NetworkType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 275
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 11
    sget-object p2, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    invoke-virtual {p2, p1}, Lcom/iMe/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    .line 18
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "just(this)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 276
    :cond_2
    iget-object p1, p0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->cryptoWalletRepository:Lcom/iMe/storage/domain/repository/crypto/CryptoWalletRepository;

    invoke-interface {p1, p2}, Lcom/iMe/storage/domain/repository/crypto/CryptoWalletRepository;->unlinkWallet(Lcom/iMe/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method private final withAllBip39BasedWalletsActivationCheck(Lio/reactivex/Observable;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/crypto/Wallet;",
            ">;>;",
            "Lcom/iMe/storage/domain/model/crypto/BlockchainType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/crypto/Wallet;",
            ">;>;"
        }
    .end annotation

    .line 14
    new-instance v0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$withAllBip39BasedWalletsActivationCheck$$inlined$flatMapSuccess$1;

    invoke-direct {v0, p2, p0}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$withAllBip39BasedWalletsActivationCheck$$inlined$flatMapSuccess$1;-><init>(Lcom/iMe/storage/domain/model/crypto/BlockchainType;Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;)V

    new-instance p2, Lcom/iMe/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p2, v0}, Lcom/iMe/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public final activateBip39BasedWallet(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/crypto/BlockchainType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/crypto/Wallet;",
            ">;>;"
        }
    .end annotation

    const-string v0, "blockchainType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->importBib39BasedWallets(Ljava/util/List;)Lio/reactivex/Observable;

    move-result-object p1

    .line 14
    new-instance v0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$activateBip39BasedWallet$$inlined$flatMapSuccess$1;

    invoke-direct {v0}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$activateBip39BasedWallet$$inlined$flatMapSuccess$1;-><init>()V

    new-instance v1, Lcom/iMe/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v1, v0}, Lcom/iMe/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final createLocalWallet(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/crypto/BlockchainType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/crypto/Wallet;",
            ">;>;"
        }
    .end annotation

    const-string v0, "blockchainType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->cryptoLocalWalletRepository:Lcom/iMe/storage/domain/repository/crypto/CryptoLocalWalletRepository;

    .line 36
    invoke-interface {v0, p1}, Lcom/iMe/storage/domain/repository/crypto/CryptoLocalWalletRepository;->createWallet(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;

    move-result-object p1

    .line 37
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "cryptoLocalWalletReposit\u2026(schedulersProvider.io())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final deleteAllWallets(Z)Lio/reactivex/Observable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .line 166
    invoke-static {}, Lcom/iMe/storage/domain/model/crypto/BlockchainType;->values()[Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v0

    .line 3792
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4307
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    .line 168
    iget-object v6, p0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v6}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getWalletSeeds()Lcom/iMe/storage/domain/model/PreferenceBlockchainMappedData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iMe/storage/domain/model/PreferenceBlockchainMappedData;->getData()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4307
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1549
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1621
    check-cast v2, Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    .line 171
    invoke-virtual {p0, v2, p1, v3}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->deleteWallet(Lcom/iMe/storage/domain/model/crypto/BlockchainType;ZZ)Lio/reactivex/Observable;

    move-result-object v2

    .line 1621
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 178
    :cond_2
    invoke-static {v0}, Lcom/iMe/storage/data/utils/extentions/CollectionExtKt;->isSingletonList(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 179
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/Observable;

    goto :goto_2

    .line 181
    :cond_3
    sget-object p1, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$deleteAllWallets$finalObservable$1;->INSTANCE:Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$deleteAllWallets$finalObservable$1;

    new-instance v1, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-static {v0, v1}, Lio/reactivex/Observable;->zip(Ljava/lang/Iterable;Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    :goto_2
    const-string v0, "finalObservable"

    .line 192
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-instance v0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$deleteAllWallets$$inlined$doOnSuccessNext$1;

    invoke-direct {v0, p0}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$deleteAllWallets$$inlined$doOnSuccessNext$1;-><init>(Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;)V

    new-instance v1, Lcom/iMe/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v0}, Lcom/iMe/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "crossinline body: (T) ->\u2026ult as T)\n        }\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final deleteWallet(Lcom/iMe/storage/domain/model/crypto/BlockchainType;ZZ)Lio/reactivex/Observable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/crypto/BlockchainType;",
            "ZZ)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "blockchainType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    .line 141
    iget-object p2, p0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->cryptoWalletRepository:Lcom/iMe/storage/domain/repository/crypto/CryptoWalletRepository;

    .line 142
    invoke-static {}, Lcom/iMe/storage/domain/model/crypto/NetworkType;->values()[Lcom/iMe/storage/domain/model/crypto/NetworkType;

    move-result-object v1

    .line 1109
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 142
    invoke-virtual {v5}, Lcom/iMe/storage/domain/model/crypto/NetworkType;->getBlockchainType()Lcom/iMe/storage/domain/model/crypto/BlockchainType;

    move-result-object v6

    if-ne v6, p1, :cond_0

    move v6, v0

    goto :goto_1

    :cond_0
    move v6, v3

    :goto_1
    if-eqz v6, :cond_1

    .line 141
    invoke-interface {p2, v5}, Lcom/iMe/storage/domain/repository/crypto/CryptoWalletRepository;->unlinkWallet(Lcom/iMe/storage/domain/model/crypto/NetworkType;)Lio/reactivex/Observable;

    move-result-object p2

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1110
    :cond_2
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string p2, "Array contains no element matching the predicate."

    invoke-direct {p1, p2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 145
    :cond_3
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 11
    sget-object v1, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    invoke-virtual {v1, p2}, Lcom/iMe/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p2

    .line 18
    invoke-static {p2}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p2

    const-string v1, "just(this)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    :goto_2
    new-instance v1, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$deleteWallet$$inlined$flatMapSuccess$1;

    invoke-direct {v1, p0, p1}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$deleteWallet$$inlined$flatMapSuccess$1;-><init>(Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V

    new-instance p1, Lcom/iMe/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p1, v1}, Lcom/iMe/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p2, p1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-instance p2, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$deleteWallet$$inlined$doOnSuccessNext$1;

    invoke-direct {p2, p3, p0}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$deleteWallet$$inlined$doOnSuccessNext$1;-><init>(ZLcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;)V

    new-instance p3, Lcom/iMe/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p3, p2}, Lcom/iMe/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "crossinline body: (T) ->\u2026ult as T)\n        }\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    sget-object p2, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    const/4 p3, 0x0

    invoke-static {p2, p3, v0, p3}, Lcom/iMe/storage/domain/model/Result$Companion;->loading$default(Lcom/iMe/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 162
    iget-object p2, p0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "observable\n             \u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getLinkedCryptoWalletAddress(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/crypto/BlockchainType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "blockchainType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->cryptoWalletRepository:Lcom/iMe/storage/domain/repository/crypto/CryptoWalletRepository;

    .line 97
    invoke-interface {v0}, Lcom/iMe/storage/domain/repository/crypto/CryptoWalletRepository;->getLinkedCryptoWalletInfo()Lio/reactivex/Observable;

    move-result-object v0

    .line 14
    new-instance v1, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$getLinkedCryptoWalletAddress$$inlined$flatMapSuccess$1;

    invoke-direct {v1, p1}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$getLinkedCryptoWalletAddress$$inlined$flatMapSuccess$1;-><init>(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V

    new-instance p1, Lcom/iMe/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {p1, v1}, Lcom/iMe/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "cryptoWalletRepository\n \u2026(schedulersProvider.io())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getMnemonicWordsSuggestions(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "query"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    new-instance v0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "fromCallable {\n         \u2026se listOf()\n            }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final importWallet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/domain/model/crypto/BlockchainType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/crypto/Wallet;",
            ">;>;"
        }
    .end annotation

    const-string v0, "seed"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pinCode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockchainType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v0}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->isAnyWalletCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->cryptoPreferenceHelper:Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getLastLoggedInGuid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 43
    :cond_0
    invoke-static {}, Lcom/iMe/storage/domain/utils/extentions/CryptoExtKt;->generateUuid()Ljava/lang/String;

    move-result-object v0

    .line 46
    :goto_0
    iget-object v1, p0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->cryptoLocalWalletRepository:Lcom/iMe/storage/domain/repository/crypto/CryptoLocalWalletRepository;

    .line 47
    invoke-interface {v1, v0, p1, p2, p4}, Lcom/iMe/storage/domain/repository/crypto/CryptoLocalWalletRepository;->importWallet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;

    move-result-object p1

    .line 14
    new-instance v1, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$importWallet$$inlined$flatMapSuccess$1;

    invoke-direct {v1, p0}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$importWallet$$inlined$flatMapSuccess$1;-><init>(Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;)V

    new-instance v2, Lcom/iMe/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v2, v1}, Lcom/iMe/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v1, "crossinline body: (T) ->\u2026e.empty()\n        }\n    }"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 50
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const-string v1, "importWalletObservable"

    .line 53
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p3, p2, v0, p1}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->getCreatePinCodeObservable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p1

    :goto_2
    const-string p2, "finalObservable"

    .line 56
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-instance p2, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$importWallet$$inlined$doOnSuccessNext$1;

    invoke-direct {p2, p0}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$importWallet$$inlined$doOnSuccessNext$1;-><init>(Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;)V

    new-instance p3, Lcom/iMe/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p3, p2}, Lcom/iMe/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p3}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "crossinline body: (T) ->\u2026ult as T)\n        }\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-direct {p0, p1, p4}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->withAllBip39BasedWalletsActivationCheck(Lio/reactivex/Observable;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;

    move-result-object p1

    .line 59
    sget-object p2, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    const/4 p3, 0x0

    invoke-static {p2, p3, v2, p3}, Lcom/iMe/storage/domain/model/Result$Companion;->loading$default(Lcom/iMe/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 60
    iget-object p2, p0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "finalObservable\n        \u2026(schedulersProvider.io())"

    .line 56
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final isValidAddress(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/domain/model/crypto/BlockchainType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockchainType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->cryptoLocalWalletRepository:Lcom/iMe/storage/domain/repository/crypto/CryptoLocalWalletRepository;

    invoke-interface {v0, p1, p2}, Lcom/iMe/storage/domain/repository/crypto/CryptoLocalWalletRepository;->isValidAddress(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public final isValidPasswordForWallet(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/domain/model/crypto/BlockchainType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "password"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockchainType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->cryptoLocalWalletRepository:Lcom/iMe/storage/domain/repository/crypto/CryptoLocalWalletRepository;

    .line 110
    invoke-interface {v0, p1, p2}, Lcom/iMe/storage/domain/repository/crypto/CryptoLocalWalletRepository;->isValidPasswordForWallet(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;

    move-result-object p1

    .line 111
    iget-object p2, p0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "cryptoLocalWalletReposit\u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final isValidRestoredAddress(Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/domain/model/crypto/BlockchainType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "seed"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "address"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockchainType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->cryptoLocalWalletRepository:Lcom/iMe/storage/domain/repository/crypto/CryptoLocalWalletRepository;

    .line 131
    invoke-interface {v0, p1, p2, p3}, Lcom/iMe/storage/domain/repository/crypto/CryptoLocalWalletRepository;->isValidRestoredAddress(Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;

    move-result-object p1

    .line 132
    sget-object p2, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    const/4 p3, 0x0

    const/4 v0, 0x1

    invoke-static {p2, p3, v0, p3}, Lcom/iMe/storage/domain/model/Result$Companion;->loading$default(Lcom/iMe/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 133
    iget-object p2, p0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "cryptoLocalWalletReposit\u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final isValidSeed(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/domain/model/crypto/BlockchainType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    const-string v0, "seed"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockchainType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->cryptoLocalWalletRepository:Lcom/iMe/storage/domain/repository/crypto/CryptoLocalWalletRepository;

    .line 125
    invoke-interface {v0, p1, p2}, Lcom/iMe/storage/domain/repository/crypto/CryptoLocalWalletRepository;->isValidSeed(Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;

    move-result-object p1

    .line 126
    sget-object p2, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p2, v0, v1, v0}, Lcom/iMe/storage/domain/model/Result$Companion;->loading$default(Lcom/iMe/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 127
    iget-object p2, p0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "cryptoLocalWalletReposit\u2026(schedulersProvider.io())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final recreateWallet(Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/iMe/storage/domain/model/crypto/BlockchainType;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/crypto/Wallet;",
            ">;>;"
        }
    .end annotation

    const-string v0, "password"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pinCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockchainType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/iMe/storage/domain/utils/extentions/CryptoExtKt;->generateUuid()Ljava/lang/String;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->cryptoLocalWalletRepository:Lcom/iMe/storage/domain/repository/crypto/CryptoLocalWalletRepository;

    .line 67
    iget-object v2, p0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->cryptoAccessManager:Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;

    invoke-interface {v2}, Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;->getLastLoggedInGuid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0, p1}, Lcom/iMe/storage/domain/repository/crypto/CryptoLocalWalletRepository;->unlockAllWallets(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v1

    .line 26
    new-instance v2, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$recreateWallet$$inlined$mapSuccess$1;

    invoke-direct {v2, p3}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$recreateWallet$$inlined$mapSuccess$1;-><init>(Lcom/iMe/storage/domain/model/crypto/BlockchainType;)V

    new-instance v3, Lcom/iMe/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;

    invoke-direct {v3, v2}, Lcom/iMe/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Function$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v3}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    const-string v2, "crossinline body: (T) ->\u2026ult as? R\n        }\n    }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object v2, p0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    .line 74
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "unlockWalletsObservable"

    .line 77
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, p1, v0, v1}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->getCreatePinCodeObservable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object v1

    :goto_1
    const-string p1, "finalObservable"

    .line 80
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-instance p1, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$recreateWallet$$inlined$doOnSuccessNext$1;

    invoke-direct {p1, p0}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor$recreateWallet$$inlined$doOnSuccessNext$1;-><init>(Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;)V

    new-instance p2, Lcom/iMe/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p2, p1}, Lcom/iMe/storage/domain/utils/extentions/ObservableExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, p2}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "crossinline body: (T) ->\u2026ult as T)\n        }\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-direct {p0, p1, p3}, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->withAllBip39BasedWalletsActivationCheck(Lio/reactivex/Observable;Lcom/iMe/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;

    move-result-object p1

    .line 83
    sget-object p2, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    const/4 p3, 0x0

    invoke-static {p2, p3, v3, p3}, Lcom/iMe/storage/domain/model/Result$Companion;->loading$default(Lcom/iMe/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 84
    iget-object p2, p0, Lcom/iMe/storage/domain/interactor/crypto/CryptoWalletInteractor;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "finalObservable\n        \u2026(schedulersProvider.io())"

    .line 80
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
