.class public final Lcom/iMe/utils/helper/wallet/SwapHelper;
.super Ljava/lang/Object;
.source "SwapHelper.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/utils/helper/wallet/SwapHelper$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSwapHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SwapHelper.kt\ncom/iMe/utils/helper/wallet/SwapHelper\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,27:1\n56#2,6:28\n*S KotlinDebug\n*F\n+ 1 SwapHelper.kt\ncom/iMe/utils/helper/wallet/SwapHelper\n*L\n12#1:28,6\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/utils/helper/wallet/SwapHelper;

.field private static final cryptoPreferenceHelper$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/iMe/utils/helper/wallet/SwapHelper;

    invoke-direct {v0}, Lcom/iMe/utils/helper/wallet/SwapHelper;-><init>()V

    sput-object v0, Lcom/iMe/utils/helper/wallet/SwapHelper;->INSTANCE:Lcom/iMe/utils/helper/wallet/SwapHelper;

    .line 58
    sget-object v1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v1

    .line 61
    new-instance v2, Lcom/iMe/utils/helper/wallet/SwapHelper$special$$inlined$inject$default$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v3}, Lcom/iMe/utils/helper/wallet/SwapHelper$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 12
    sput-object v0, Lcom/iMe/utils/helper/wallet/SwapHelper;->cryptoPreferenceHelper$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getCryptoPreferenceHelper()Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;
    .locals 1

    .line 12
    sget-object v0, Lcom/iMe/utils/helper/wallet/SwapHelper;->cryptoPreferenceHelper$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    return-object v0
.end method

.method public static synthetic resolveSwapProtocolByNetwork$default(Lcom/iMe/utils/helper/wallet/SwapHelper;Lcom/iMe/storage/domain/model/crypto/NetworkType;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 16
    invoke-direct {p0}, Lcom/iMe/utils/helper/wallet/SwapHelper;->getCryptoPreferenceHelper()Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    move-result-object p1

    invoke-interface {p1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->getNetworkType()Lcom/iMe/storage/domain/model/crypto/NetworkType;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/iMe/utils/helper/wallet/SwapHelper;->resolveSwapProtocolByNetwork(Lcom/iMe/storage/domain/model/crypto/NetworkType;)Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 9
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public final resolveSwapProtocolByNetwork(Lcom/iMe/storage/domain/model/crypto/NetworkType;)Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;
    .locals 1

    const-string v0, "networkType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sget-object v0, Lcom/iMe/utils/helper/wallet/SwapHelper$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 21
    sget-object p1, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;->ONEINCH:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    goto :goto_0

    .line 20
    :cond_0
    sget-object p1, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;->UNISWAP_V3:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    goto :goto_0

    .line 19
    :cond_1
    sget-object p1, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;->PANCAKESWAP:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    goto :goto_0

    .line 18
    :cond_2
    sget-object p1, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;->UNISWAP:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    :goto_0
    return-object p1
.end method
