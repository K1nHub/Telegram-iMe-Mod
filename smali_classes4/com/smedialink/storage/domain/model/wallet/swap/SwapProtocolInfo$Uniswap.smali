.class public final Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo$Uniswap;
.super Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;
.source "SwapProtocolInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Uniswap"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo$Uniswap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo$Uniswap;

    invoke-direct {v0}, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo$Uniswap;-><init>()V

    sput-object v0, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo$Uniswap;->INSTANCE:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo$Uniswap;

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    .line 18
    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;->UNISWAP:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    .line 19
    sget v2, Lcom/smedialink/storage/R$drawable;->fork_ic_uniswap_92:I

    .line 20
    sget v3, Lcom/smedialink/storage/R$string;->wallet_swap_protocols_uniswap_name:I

    .line 21
    sget v4, Lcom/smedialink/storage/R$string;->wallet_swap_protocols_uniswap_description:I

    .line 22
    sget v5, Lcom/smedialink/storage/R$string;->wallet_swap_process_description:I

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    .line 23
    sget-object v6, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->ETHEREUM:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    const/4 v7, 0x0

    aput-object v6, v0, v7

    sget-object v6, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->POLYGON:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    const/4 v7, 0x1

    aput-object v6, v0, v7

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, p0

    .line 17
    invoke-direct/range {v0 .. v7}, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocolInfo;-><init>(Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;IIIILjava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
