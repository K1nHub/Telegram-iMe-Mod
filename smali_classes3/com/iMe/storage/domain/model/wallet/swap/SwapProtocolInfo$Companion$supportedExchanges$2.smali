.class final Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo$Companion$supportedExchanges$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SwapProtocolInfo.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/List<",
        "+",
        "Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo$Companion$supportedExchanges$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo$Companion$supportedExchanges$2;

    invoke-direct {v0}, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo$Companion$supportedExchanges$2;-><init>()V

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo$Companion$supportedExchanges$2;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo$Companion$supportedExchanges$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 74
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo$Companion$supportedExchanges$2;->invoke()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;

    .line 74
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo$Uniswap;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo$Uniswap;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo$PancakeSwap;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo$PancakeSwap;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo$Oneinch;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo$Oneinch;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
