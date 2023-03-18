.class public final enum Lcom/smedialink/storage/domain/model/twitter/TwitterAuthStatus;
.super Ljava/lang/Enum;
.source "TwitterAuthStatus.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/storage/domain/model/twitter/TwitterAuthStatus$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/smedialink/storage/domain/model/twitter/TwitterAuthStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/smedialink/storage/domain/model/twitter/TwitterAuthStatus;

.field public static final enum ACTIVE:Lcom/smedialink/storage/domain/model/twitter/TwitterAuthStatus;

.field public static final Companion:Lcom/smedialink/storage/domain/model/twitter/TwitterAuthStatus$Companion;

.field public static final enum VERIFICATION:Lcom/smedialink/storage/domain/model/twitter/TwitterAuthStatus;


# direct methods
.method private static final synthetic $values()[Lcom/smedialink/storage/domain/model/twitter/TwitterAuthStatus;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/smedialink/storage/domain/model/twitter/TwitterAuthStatus;

    sget-object v1, Lcom/smedialink/storage/domain/model/twitter/TwitterAuthStatus;->ACTIVE:Lcom/smedialink/storage/domain/model/twitter/TwitterAuthStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/twitter/TwitterAuthStatus;->VERIFICATION:Lcom/smedialink/storage/domain/model/twitter/TwitterAuthStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/smedialink/storage/domain/model/twitter/TwitterAuthStatus;

    const-string v1, "ACTIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/domain/model/twitter/TwitterAuthStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/domain/model/twitter/TwitterAuthStatus;->ACTIVE:Lcom/smedialink/storage/domain/model/twitter/TwitterAuthStatus;

    new-instance v0, Lcom/smedialink/storage/domain/model/twitter/TwitterAuthStatus;

    const-string v1, "VERIFICATION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/smedialink/storage/domain/model/twitter/TwitterAuthStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/storage/domain/model/twitter/TwitterAuthStatus;->VERIFICATION:Lcom/smedialink/storage/domain/model/twitter/TwitterAuthStatus;

    invoke-static {}, Lcom/smedialink/storage/domain/model/twitter/TwitterAuthStatus;->$values()[Lcom/smedialink/storage/domain/model/twitter/TwitterAuthStatus;

    move-result-object v0

    sput-object v0, Lcom/smedialink/storage/domain/model/twitter/TwitterAuthStatus;->$VALUES:[Lcom/smedialink/storage/domain/model/twitter/TwitterAuthStatus;

    new-instance v0, Lcom/smedialink/storage/domain/model/twitter/TwitterAuthStatus$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/storage/domain/model/twitter/TwitterAuthStatus$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/smedialink/storage/domain/model/twitter/TwitterAuthStatus;->Companion:Lcom/smedialink/storage/domain/model/twitter/TwitterAuthStatus$Companion;

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

.method public static valueOf(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/twitter/TwitterAuthStatus;
    .locals 1

    const-class v0, Lcom/smedialink/storage/domain/model/twitter/TwitterAuthStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/smedialink/storage/domain/model/twitter/TwitterAuthStatus;

    return-object p0
.end method

.method public static values()[Lcom/smedialink/storage/domain/model/twitter/TwitterAuthStatus;
    .locals 1

    sget-object v0, Lcom/smedialink/storage/domain/model/twitter/TwitterAuthStatus;->$VALUES:[Lcom/smedialink/storage/domain/model/twitter/TwitterAuthStatus;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smedialink/storage/domain/model/twitter/TwitterAuthStatus;

    return-object v0
.end method
