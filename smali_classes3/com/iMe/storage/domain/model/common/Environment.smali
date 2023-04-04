.class public final enum Lcom/iMe/storage/domain/model/common/Environment;
.super Ljava/lang/Enum;
.source "Environment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/domain/model/common/Environment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/storage/domain/model/common/Environment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/storage/domain/model/common/Environment;

.field public static final Companion:Lcom/iMe/storage/domain/model/common/Environment$Companion;

.field public static final enum DEVELOPMENT:Lcom/iMe/storage/domain/model/common/Environment;

.field public static final enum PRODUCTION:Lcom/iMe/storage/domain/model/common/Environment;

.field public static final enum STAGE:Lcom/iMe/storage/domain/model/common/Environment;


# direct methods
.method private static final synthetic $values()[Lcom/iMe/storage/domain/model/common/Environment;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/iMe/storage/domain/model/common/Environment;

    sget-object v1, Lcom/iMe/storage/domain/model/common/Environment;->PRODUCTION:Lcom/iMe/storage/domain/model/common/Environment;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/common/Environment;->STAGE:Lcom/iMe/storage/domain/model/common/Environment;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/common/Environment;->DEVELOPMENT:Lcom/iMe/storage/domain/model/common/Environment;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/iMe/storage/domain/model/common/Environment;

    const-string v1, "PRODUCTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/iMe/storage/domain/model/common/Environment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/storage/domain/model/common/Environment;->PRODUCTION:Lcom/iMe/storage/domain/model/common/Environment;

    .line 5
    new-instance v0, Lcom/iMe/storage/domain/model/common/Environment;

    const-string v1, "STAGE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/iMe/storage/domain/model/common/Environment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/storage/domain/model/common/Environment;->STAGE:Lcom/iMe/storage/domain/model/common/Environment;

    .line 6
    new-instance v0, Lcom/iMe/storage/domain/model/common/Environment;

    const-string v1, "DEVELOPMENT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/iMe/storage/domain/model/common/Environment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/storage/domain/model/common/Environment;->DEVELOPMENT:Lcom/iMe/storage/domain/model/common/Environment;

    invoke-static {}, Lcom/iMe/storage/domain/model/common/Environment;->$values()[Lcom/iMe/storage/domain/model/common/Environment;

    move-result-object v0

    sput-object v0, Lcom/iMe/storage/domain/model/common/Environment;->$VALUES:[Lcom/iMe/storage/domain/model/common/Environment;

    new-instance v0, Lcom/iMe/storage/domain/model/common/Environment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/storage/domain/model/common/Environment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/storage/domain/model/common/Environment;->Companion:Lcom/iMe/storage/domain/model/common/Environment$Companion;

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

.method public static final getNames()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/iMe/storage/domain/model/common/Environment;->Companion:Lcom/iMe/storage/domain/model/common/Environment$Companion;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/common/Environment$Companion;->getNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/common/Environment;
    .locals 1

    sget-object v0, Lcom/iMe/storage/domain/model/common/Environment;->Companion:Lcom/iMe/storage/domain/model/common/Environment$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/storage/domain/model/common/Environment$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/common/Environment;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/storage/domain/model/common/Environment;
    .locals 1

    const-class v0, Lcom/iMe/storage/domain/model/common/Environment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/storage/domain/model/common/Environment;

    return-object p0
.end method

.method public static values()[Lcom/iMe/storage/domain/model/common/Environment;
    .locals 1

    sget-object v0, Lcom/iMe/storage/domain/model/common/Environment;->$VALUES:[Lcom/iMe/storage/domain/model/common/Environment;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/storage/domain/model/common/Environment;

    return-object v0
.end method


# virtual methods
.method public final isDevelopment()Z
    .locals 1

    .line 9
    sget-object v0, Lcom/iMe/storage/domain/model/common/Environment;->DEVELOPMENT:Lcom/iMe/storage/domain/model/common/Environment;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isStage()Z
    .locals 1

    .line 8
    sget-object v0, Lcom/iMe/storage/domain/model/common/Environment;->STAGE:Lcom/iMe/storage/domain/model/common/Environment;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
