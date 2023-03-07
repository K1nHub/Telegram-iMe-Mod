.class public final enum Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;
.super Ljava/lang/Enum;
.source "TokenApproveStatus.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;

.field public static final enum ALLOWED:Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;

.field public static final Companion:Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus$Companion;

.field public static final enum ERROR:Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;

.field public static final enum IN_PROGRESS:Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;

.field public static final enum NOT_ALLOWED:Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;


# direct methods
.method private static final synthetic $values()[Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;->ALLOWED:Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;->ERROR:Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;->IN_PROGRESS:Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;->NOT_ALLOWED:Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;

    const-string v1, "ALLOWED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;->ALLOWED:Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;

    .line 5
    new-instance v0, Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;

    const-string v1, "ERROR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;->ERROR:Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;

    .line 6
    new-instance v0, Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;

    const-string v1, "IN_PROGRESS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;->IN_PROGRESS:Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;

    .line 7
    new-instance v0, Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;

    const-string v1, "NOT_ALLOWED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;->NOT_ALLOWED:Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;

    invoke-static {}, Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;->$values()[Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;

    move-result-object v0

    sput-object v0, Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;->$VALUES:[Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;

    new-instance v0, Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;->Companion:Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus$Companion;

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

.method public static valueOf(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;
    .locals 1

    const-class v0, Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;

    return-object p0
.end method

.method public static values()[Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;
    .locals 1

    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;->$VALUES:[Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smedialink/storage/domain/model/wallet/swap/TokenApproveStatus;

    return-object v0
.end method
