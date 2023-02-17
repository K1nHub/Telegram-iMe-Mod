.class public final synthetic Lcom/smedialink/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl$WhenMappings;
.super Ljava/lang/Object;
.source "DexWalletSwapDataSourceImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    invoke-static {}, Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;->values()[Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;->EXACT_TOKENS_FOR_TOKENS:Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;->EXACT_TOKENS_FOR_ETH:Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;->EXACT_ETH_FOR_TOKENS:Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;->UNKNOWN:Lcom/smedialink/storage/domain/model/wallet/swap/SwapMethod;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v5, 0x4

    aput v5, v0, v1

    sput-object v0, Lcom/smedialink/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;->values()[Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;->UNISWAP_V3:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;->ONEINCH:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;->SYMBIOSIS:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sput-object v0, Lcom/smedialink/storage/data/datasource/swap/impl/DexWalletSwapDataSourceImpl$WhenMappings;->$EnumSwitchMapping$1:[I

    return-void
.end method
