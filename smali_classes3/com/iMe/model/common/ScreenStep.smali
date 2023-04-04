.class public final enum Lcom/iMe/model/common/ScreenStep;
.super Ljava/lang/Enum;
.source "ScreenStep.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/model/common/ScreenStep;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/model/common/ScreenStep;

.field public static final enum CONFIRM_STEP:Lcom/iMe/model/common/ScreenStep;

.field public static final enum FIRST_STEP:Lcom/iMe/model/common/ScreenStep;


# direct methods
.method private static final synthetic $values()[Lcom/iMe/model/common/ScreenStep;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/iMe/model/common/ScreenStep;

    sget-object v1, Lcom/iMe/model/common/ScreenStep;->FIRST_STEP:Lcom/iMe/model/common/ScreenStep;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/model/common/ScreenStep;->CONFIRM_STEP:Lcom/iMe/model/common/ScreenStep;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/iMe/model/common/ScreenStep;

    const-string v1, "FIRST_STEP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/iMe/model/common/ScreenStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/model/common/ScreenStep;->FIRST_STEP:Lcom/iMe/model/common/ScreenStep;

    .line 5
    new-instance v0, Lcom/iMe/model/common/ScreenStep;

    const-string v1, "CONFIRM_STEP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/iMe/model/common/ScreenStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/model/common/ScreenStep;->CONFIRM_STEP:Lcom/iMe/model/common/ScreenStep;

    invoke-static {}, Lcom/iMe/model/common/ScreenStep;->$values()[Lcom/iMe/model/common/ScreenStep;

    move-result-object v0

    sput-object v0, Lcom/iMe/model/common/ScreenStep;->$VALUES:[Lcom/iMe/model/common/ScreenStep;

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

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/model/common/ScreenStep;
    .locals 1

    const-class v0, Lcom/iMe/model/common/ScreenStep;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/model/common/ScreenStep;

    return-object p0
.end method

.method public static values()[Lcom/iMe/model/common/ScreenStep;
    .locals 1

    sget-object v0, Lcom/iMe/model/common/ScreenStep;->$VALUES:[Lcom/iMe/model/common/ScreenStep;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/model/common/ScreenStep;

    return-object v0
.end method
