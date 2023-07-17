.class public final Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo$Uniswap;
.super Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;
.source "SwapProtocolInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Uniswap"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo$Uniswap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo$Uniswap;

    invoke-direct {v0}, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo$Uniswap;-><init>()V

    sput-object v0, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo$Uniswap;->INSTANCE:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo$Uniswap;

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    .line 19
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;->UNISWAP:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    .line 20
    sget v2, Lcom/iMe/storage/R$drawable;->fork_ic_uniswap_92:I

    .line 21
    sget v3, Lcom/iMe/storage/R$string;->wallet_swap_protocols_uniswap_name:I

    .line 22
    sget v4, Lcom/iMe/storage/R$string;->wallet_swap_protocols_uniswap_description:I

    .line 23
    sget v5, Lcom/iMe/storage/R$string;->wallet_swap_process_description:I

    const-string v0, "ETHEREUM"

    const-string v6, "POLYGON"

    .line 24
    filled-new-array {v0, v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, p0

    .line 18
    invoke-direct/range {v0 .. v7}, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;-><init>(Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;IIIILjava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
