.class public final enum Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;
.super Ljava/lang/Enum;
.source "WalletSwapProcessFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetworkSwitchType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;

.field public static final enum CROSS_CHAIN:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;

.field public static final enum GLOBAL:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;


# direct methods
.method private static final synthetic $values()[Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;

    sget-object v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;->GLOBAL:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;->CROSS_CHAIN:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 473
    new-instance v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;

    const-string v1, "GLOBAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;->GLOBAL:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;

    .line 474
    new-instance v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;

    const-string v1, "CROSS_CHAIN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;->CROSS_CHAIN:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;

    invoke-static {}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;->$values()[Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;

    move-result-object v0

    sput-object v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;->$VALUES:[Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 472
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;
    .locals 1

    const-class v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;

    return-object p0
.end method

.method public static values()[Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;
    .locals 1

    sget-object v0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;->$VALUES:[Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessFragment$NetworkSwitchType;

    return-object v0
.end method
