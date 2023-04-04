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
    .locals 8

    .line 45
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;->ONEINCH:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    .line 46
    sget v2, Lcom/iMe/storage/R$drawable;->fork_ic_1_inch_92:I

    .line 47
    sget v3, Lcom/iMe/storage/R$string;->wallet_swap_protocols_1inch_name:I

    .line 48
    sget v4, Lcom/iMe/storage/R$string;->wallet_swap_protocols_1inch_description:I

    .line 49
    sget v5, Lcom/iMe/storage/R$string;->wallet_swap_protocols_1inch_long_description:I

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/iMe/storage/domain/model/crypto/NetworkType;

    .line 50
    sget-object v6, Lcom/iMe/storage/domain/model/crypto/NetworkType;->BINANCE_SMART_CHAIN:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    const/4 v7, 0x0

    aput-object v6, v0, v7

    sget-object v6, Lcom/iMe/storage/domain/model/crypto/NetworkType;->ETHEREUM:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    const/4 v7, 0x1

    aput-object v6, v0, v7

    sget-object v6, Lcom/iMe/storage/domain/model/crypto/NetworkType;->POLYGON:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    const/4 v7, 0x2

    aput-object v6, v0, v7

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, p0

    .line 44
    invoke-direct/range {v0 .. v7}, Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocolInfo;-><init>(Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;IIIILjava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
