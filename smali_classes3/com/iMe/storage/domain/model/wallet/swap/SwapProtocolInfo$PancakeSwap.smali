.class public final Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo$PancakeSwap;
.super Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;
.source "SwapProtocolInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PancakeSwap"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo$PancakeSwap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo$PancakeSwap;

    invoke-direct {v0}, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo$PancakeSwap;-><init>()V

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo$PancakeSwap;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo$PancakeSwap;

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    .line 36
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;->PANCAKESWAP:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    .line 37
    sget v2, Lcom/iMe/storage/R$drawable;->fork_ic_pancake_swap_92:I

    .line 38
    sget v3, Lcom/iMe/storage/R$string;->wallet_swap_protocols_pancake_swap_name:I

    .line 39
    sget v4, Lcom/iMe/storage/R$string;->wallet_swap_protocols_pancake_swap_description:I

    .line 40
    sget v5, Lcom/iMe/storage/R$string;->wallet_swap_protocols_pancake_swap_long_description:I

    .line 41
    sget-object v0, Lcom/iMe/storage/domain/model/crypto/NetworkType;->BINANCE_SMART_CHAIN:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, p0

    .line 35
    invoke-direct/range {v0 .. v7}, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;-><init>(Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;IIIILjava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
