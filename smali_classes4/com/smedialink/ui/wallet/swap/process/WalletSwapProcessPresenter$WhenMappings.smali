.class public final synthetic Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$WhenMappings;
.super Ljava/lang/Object;
.source "WalletSwapProcessPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;
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
    .locals 4

    invoke-static {}, Lcom/smedialink/model/wallet/swap/SwapSide;->values()[Lcom/smedialink/model/wallet/swap/SwapSide;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/smedialink/model/wallet/swap/SwapSide;->INPUT:Lcom/smedialink/model/wallet/swap/SwapSide;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/model/wallet/swap/SwapSide;->OUTPUT:Lcom/smedialink/model/wallet/swap/SwapSide;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sput-object v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;->values()[Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;->SYMBIOSIS:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;->UNISWAP:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;->UNISWAP_V3:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;->ONEINCH:Lcom/smedialink/storage/domain/model/wallet/swap/SwapProtocol;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sput-object v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$WhenMappings;->$EnumSwitchMapping$1:[I

    return-void
.end method
