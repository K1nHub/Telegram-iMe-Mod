.class public final enum Lcom/smedialink/model/wallet/home/WalletDashboardOperation;
.super Ljava/lang/Enum;
.source "WalletDashboardOperation.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/smedialink/model/wallet/home/WalletDashboardOperation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/smedialink/model/wallet/home/WalletDashboardOperation;

.field public static final enum EARN:Lcom/smedialink/model/wallet/home/WalletDashboardOperation;


# instance fields
.field private icon:I

.field private title:I


# direct methods
.method private static final synthetic $values()[Lcom/smedialink/model/wallet/home/WalletDashboardOperation;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/smedialink/model/wallet/home/WalletDashboardOperation;

    sget-object v1, Lcom/smedialink/model/wallet/home/WalletDashboardOperation;->EARN:Lcom/smedialink/model/wallet/home/WalletDashboardOperation;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 8
    new-instance v0, Lcom/smedialink/model/wallet/home/WalletDashboardOperation;

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_ic_operation_earn:I

    sget v2, Lorg/telegram/messenger/R$string;->wallet_operation_earn:I

    const-string v3, "EARN"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/smedialink/model/wallet/home/WalletDashboardOperation;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/smedialink/model/wallet/home/WalletDashboardOperation;->EARN:Lcom/smedialink/model/wallet/home/WalletDashboardOperation;

    invoke-static {}, Lcom/smedialink/model/wallet/home/WalletDashboardOperation;->$values()[Lcom/smedialink/model/wallet/home/WalletDashboardOperation;

    move-result-object v0

    sput-object v0, Lcom/smedialink/model/wallet/home/WalletDashboardOperation;->$VALUES:[Lcom/smedialink/model/wallet/home/WalletDashboardOperation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/smedialink/model/wallet/home/WalletDashboardOperation;->icon:I

    iput p4, p0, Lcom/smedialink/model/wallet/home/WalletDashboardOperation;->title:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smedialink/model/wallet/home/WalletDashboardOperation;
    .locals 1

    const-class v0, Lcom/smedialink/model/wallet/home/WalletDashboardOperation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/smedialink/model/wallet/home/WalletDashboardOperation;

    return-object p0
.end method

.method public static values()[Lcom/smedialink/model/wallet/home/WalletDashboardOperation;
    .locals 1

    sget-object v0, Lcom/smedialink/model/wallet/home/WalletDashboardOperation;->$VALUES:[Lcom/smedialink/model/wallet/home/WalletDashboardOperation;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smedialink/model/wallet/home/WalletDashboardOperation;

    return-object v0
.end method


# virtual methods
.method public final getIcon()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/smedialink/model/wallet/home/WalletDashboardOperation;->icon:I

    return v0
.end method

.method public final getTitle()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/smedialink/model/wallet/home/WalletDashboardOperation;->title:I

    return v0
.end method

.method public final setIcon(I)V
    .locals 0

    .line 7
    iput p1, p0, Lcom/smedialink/model/wallet/home/WalletDashboardOperation;->icon:I

    return-void
.end method

.method public final setTitle(I)V
    .locals 0

    .line 7
    iput p1, p0, Lcom/smedialink/model/wallet/home/WalletDashboardOperation;->title:I

    return-void
.end method
