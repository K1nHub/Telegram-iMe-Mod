.class public final enum Lcom/smedialink/model/wallet/home/ServicesCategory;
.super Ljava/lang/Enum;
.source "ServicesCategory.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/smedialink/model/wallet/home/ServicesCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/smedialink/model/wallet/home/ServicesCategory;

.field public static final enum ADS:Lcom/smedialink/model/wallet/home/ServicesCategory;

.field public static final enum CHANNELS:Lcom/smedialink/model/wallet/home/ServicesCategory;

.field public static final enum NEUROBOTS:Lcom/smedialink/model/wallet/home/ServicesCategory;

.field public static final enum PREMIUM:Lcom/smedialink/model/wallet/home/ServicesCategory;

.field public static final enum STAKING:Lcom/smedialink/model/wallet/home/ServicesCategory;


# direct methods
.method private static final synthetic $values()[Lcom/smedialink/model/wallet/home/ServicesCategory;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/smedialink/model/wallet/home/ServicesCategory;

    sget-object v1, Lcom/smedialink/model/wallet/home/ServicesCategory;->CHANNELS:Lcom/smedialink/model/wallet/home/ServicesCategory;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/model/wallet/home/ServicesCategory;->STAKING:Lcom/smedialink/model/wallet/home/ServicesCategory;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/model/wallet/home/ServicesCategory;->ADS:Lcom/smedialink/model/wallet/home/ServicesCategory;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/model/wallet/home/ServicesCategory;->NEUROBOTS:Lcom/smedialink/model/wallet/home/ServicesCategory;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/model/wallet/home/ServicesCategory;->PREMIUM:Lcom/smedialink/model/wallet/home/ServicesCategory;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/smedialink/model/wallet/home/ServicesCategory;

    const-string v1, "CHANNELS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/smedialink/model/wallet/home/ServicesCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/model/wallet/home/ServicesCategory;->CHANNELS:Lcom/smedialink/model/wallet/home/ServicesCategory;

    .line 5
    new-instance v0, Lcom/smedialink/model/wallet/home/ServicesCategory;

    const-string v1, "STAKING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/smedialink/model/wallet/home/ServicesCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/model/wallet/home/ServicesCategory;->STAKING:Lcom/smedialink/model/wallet/home/ServicesCategory;

    .line 6
    new-instance v0, Lcom/smedialink/model/wallet/home/ServicesCategory;

    const-string v1, "ADS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/smedialink/model/wallet/home/ServicesCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/model/wallet/home/ServicesCategory;->ADS:Lcom/smedialink/model/wallet/home/ServicesCategory;

    .line 7
    new-instance v0, Lcom/smedialink/model/wallet/home/ServicesCategory;

    const-string v1, "NEUROBOTS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/smedialink/model/wallet/home/ServicesCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/model/wallet/home/ServicesCategory;->NEUROBOTS:Lcom/smedialink/model/wallet/home/ServicesCategory;

    .line 8
    new-instance v0, Lcom/smedialink/model/wallet/home/ServicesCategory;

    const-string v1, "PREMIUM"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/smedialink/model/wallet/home/ServicesCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/model/wallet/home/ServicesCategory;->PREMIUM:Lcom/smedialink/model/wallet/home/ServicesCategory;

    invoke-static {}, Lcom/smedialink/model/wallet/home/ServicesCategory;->$values()[Lcom/smedialink/model/wallet/home/ServicesCategory;

    move-result-object v0

    sput-object v0, Lcom/smedialink/model/wallet/home/ServicesCategory;->$VALUES:[Lcom/smedialink/model/wallet/home/ServicesCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smedialink/model/wallet/home/ServicesCategory;
    .locals 1

    const-class v0, Lcom/smedialink/model/wallet/home/ServicesCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/smedialink/model/wallet/home/ServicesCategory;

    return-object p0
.end method

.method public static values()[Lcom/smedialink/model/wallet/home/ServicesCategory;
    .locals 1

    sget-object v0, Lcom/smedialink/model/wallet/home/ServicesCategory;->$VALUES:[Lcom/smedialink/model/wallet/home/ServicesCategory;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smedialink/model/wallet/home/ServicesCategory;

    return-object v0
.end method
