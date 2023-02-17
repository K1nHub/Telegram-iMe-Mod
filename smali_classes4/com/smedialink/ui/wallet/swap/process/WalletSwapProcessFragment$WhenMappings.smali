.class public final synthetic Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$WhenMappings;
.super Ljava/lang/Object;
.source "WalletSwapProcessFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment;
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

    sput-object v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;->values()[Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;->GLOBAL:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;->CROSS_CHAIN:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sput-object v0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessFragment$WhenMappings;->$EnumSwitchMapping$1:[I

    return-void
.end method
