.class public abstract Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;
.super Ljava/lang/Object;
.source "SwapProtocolInfo.kt"

# interfaces
.implements Lcom/smedialink/storage/domain/model/wallet/swap/Exchange;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo$Companion;,
        Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo$Oneinch;,
        Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo$PancakeSwap;,
        Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo$Symbiosis;,
        Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo$Uniswap;,
        Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo$UniswapV3;,
        Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo$Unknown;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo$Companion;

.field private static final allExchanges$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final invisibleExchanges$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo$UniswapV3;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final supportedCrossChainExchanges$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo$Symbiosis;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final supportedExchanges$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final code:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

.field private final description:I

.field private final logo:I

.field private final longDescription:I

.field private final name:I

.field private final supportedNetworks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;->Companion:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo$Companion;

    .line 72
    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo$Companion$allExchanges$2;->INSTANCE:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo$Companion$allExchanges$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;->allExchanges$delegate:Lkotlin/Lazy;

    .line 74
    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo$Companion$supportedExchanges$2;->INSTANCE:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo$Companion$supportedExchanges$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;->supportedExchanges$delegate:Lkotlin/Lazy;

    .line 75
    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo$Companion$supportedCrossChainExchanges$2;->INSTANCE:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo$Companion$supportedCrossChainExchanges$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;->supportedCrossChainExchanges$delegate:Lkotlin/Lazy;

    .line 76
    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo$Companion$invisibleExchanges$2;->INSTANCE:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo$Companion$invisibleExchanges$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;->invisibleExchanges$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>(Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;IIIILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;",
            "IIII",
            "Ljava/util/List<",
            "+",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            ">;)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;->code:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    .line 10
    iput p2, p0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;->logo:I

    .line 11
    iput p3, p0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;->name:I

    .line 12
    iput p4, p0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;->description:I

    .line 13
    iput p5, p0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;->longDescription:I

    .line 14
    iput-object p6, p0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;->supportedNetworks:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;IIIILjava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;-><init>(Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;IIIILjava/util/List;)V

    return-void
.end method

.method public static final synthetic access$getAllExchanges$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 8
    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;->allExchanges$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic access$getInvisibleExchanges$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 8
    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;->invisibleExchanges$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic access$getSupportedCrossChainExchanges$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 8
    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;->supportedCrossChainExchanges$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic access$getSupportedExchanges$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 8
    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;->supportedExchanges$delegate:Lkotlin/Lazy;

    return-object v0
.end method


# virtual methods
.method public final getCode()Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;->code:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    return-object v0
.end method

.method public final getDescription()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;->description:I

    return v0
.end method

.method public final getLogo()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;->logo:I

    return v0
.end method

.method public final getLongDescription()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;->longDescription:I

    return v0
.end method

.method public final getName()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;->name:I

    return v0
.end method

.method public final getSupportedNetworks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;->supportedNetworks:Ljava/util/List;

    return-object v0
.end method
