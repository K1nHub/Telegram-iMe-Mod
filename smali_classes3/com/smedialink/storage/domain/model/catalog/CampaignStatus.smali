.class public final enum Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;
.super Ljava/lang/Enum;
.source "CampaignStatus.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/storage/domain/model/catalog/CampaignStatus$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;

.field public static final enum ACTIVE:Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;

.field public static final enum CANCELED:Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;

.field public static final enum COMPLETED:Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;

.field public static final Companion:Lcom/smedialink/storage/domain/model/catalog/CampaignStatus$Companion;

.field public static final enum NEW:Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;

.field public static final enum REJECTED:Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;


# direct methods
.method private static final synthetic $values()[Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;

    sget-object v1, Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;->NEW:Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;->ACTIVE:Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;->REJECTED:Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;->CANCELED:Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;->COMPLETED:Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;

    const-string v1, "NEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;->NEW:Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;

    new-instance v0, Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;

    const-string v1, "ACTIVE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;->ACTIVE:Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;

    new-instance v0, Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;

    const-string v1, "REJECTED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;->REJECTED:Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;

    new-instance v0, Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;

    const-string v1, "CANCELED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;->CANCELED:Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;

    new-instance v0, Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;

    const-string v1, "COMPLETED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;->COMPLETED:Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;

    invoke-static {}, Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;->$values()[Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;

    move-result-object v0

    sput-object v0, Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;->$VALUES:[Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;

    new-instance v0, Lcom/smedialink/storage/domain/model/catalog/CampaignStatus$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/storage/domain/model/catalog/CampaignStatus$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;->Companion:Lcom/smedialink/storage/domain/model/catalog/CampaignStatus$Companion;

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

.method public static valueOf(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;
    .locals 1

    const-class v0, Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;

    return-object p0
.end method

.method public static values()[Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;
    .locals 1

    sget-object v0, Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;->$VALUES:[Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smedialink/storage/domain/model/catalog/CampaignStatus;

    return-object v0
.end method
