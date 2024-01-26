.class public final Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo$Oneinch;
.super Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;
.source "SwapProtocolInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Oneinch"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo$Oneinch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo$Oneinch;

    invoke-direct {v0}, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo$Oneinch;-><init>()V

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo$Oneinch;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo$Oneinch;

    return-void
.end method

.method private constructor <init>()V
    .locals 11

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    .line 21
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;->ONEINCH:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;->ONEINCH_FUSION:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 22
    sget v5, Lcom/iMe/storage/R$drawable;->fork_ic_1_inch_92:I

    .line 23
    sget v6, Lcom/iMe/storage/R$string;->wallet_swap_protocols_1inch_name:I

    .line 24
    sget v7, Lcom/iMe/storage/R$string;->wallet_swap_protocols_1inch_description:I

    .line 25
    sget v8, Lcom/iMe/storage/R$string;->wallet_swap_protocols_1inch_long_description:I

    const-string v0, "BINANCE_SMART_CHAIN"

    const-string v1, "ETHEREUM"

    const-string v2, "POLYGON"

    const-string v3, "FANTOM"

    .line 30
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x0

    move-object v3, p0

    .line 20
    invoke-direct/range {v3 .. v10}, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;-><init>(Ljava/util/List;IIIILjava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
