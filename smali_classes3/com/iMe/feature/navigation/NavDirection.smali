.class public final enum Lcom/iMe/feature/navigation/NavDirection;
.super Ljava/lang/Enum;
.source "NavigationBundle.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/feature/navigation/NavDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/feature/navigation/NavDirection;

.field public static final enum DEFAULT:Lcom/iMe/feature/navigation/NavDirection;

.field public static final enum DEV_TOOLS:Lcom/iMe/feature/navigation/NavDirection;

.field public static final enum SOCIAL_AUTH:Lcom/iMe/feature/navigation/NavDirection;

.field public static final enum SOCIAL_WEB:Lcom/iMe/feature/navigation/NavDirection;


# direct methods
.method private static final synthetic $values()[Lcom/iMe/feature/navigation/NavDirection;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/iMe/feature/navigation/NavDirection;

    sget-object v1, Lcom/iMe/feature/navigation/NavDirection;->SOCIAL_AUTH:Lcom/iMe/feature/navigation/NavDirection;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/feature/navigation/NavDirection;->SOCIAL_WEB:Lcom/iMe/feature/navigation/NavDirection;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/feature/navigation/NavDirection;->DEV_TOOLS:Lcom/iMe/feature/navigation/NavDirection;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/feature/navigation/NavDirection;->DEFAULT:Lcom/iMe/feature/navigation/NavDirection;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Lcom/iMe/feature/navigation/NavDirection;

    const-string v1, "SOCIAL_AUTH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/iMe/feature/navigation/NavDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/feature/navigation/NavDirection;->SOCIAL_AUTH:Lcom/iMe/feature/navigation/NavDirection;

    new-instance v0, Lcom/iMe/feature/navigation/NavDirection;

    const-string v1, "SOCIAL_WEB"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/iMe/feature/navigation/NavDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/feature/navigation/NavDirection;->SOCIAL_WEB:Lcom/iMe/feature/navigation/NavDirection;

    new-instance v0, Lcom/iMe/feature/navigation/NavDirection;

    const-string v1, "DEV_TOOLS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/iMe/feature/navigation/NavDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/feature/navigation/NavDirection;->DEV_TOOLS:Lcom/iMe/feature/navigation/NavDirection;

    new-instance v0, Lcom/iMe/feature/navigation/NavDirection;

    const-string v1, "DEFAULT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/iMe/feature/navigation/NavDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/feature/navigation/NavDirection;->DEFAULT:Lcom/iMe/feature/navigation/NavDirection;

    invoke-static {}, Lcom/iMe/feature/navigation/NavDirection;->$values()[Lcom/iMe/feature/navigation/NavDirection;

    move-result-object v0

    sput-object v0, Lcom/iMe/feature/navigation/NavDirection;->$VALUES:[Lcom/iMe/feature/navigation/NavDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/feature/navigation/NavDirection;
    .locals 1

    const-class v0, Lcom/iMe/feature/navigation/NavDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/feature/navigation/NavDirection;

    return-object p0
.end method

.method public static values()[Lcom/iMe/feature/navigation/NavDirection;
    .locals 1

    sget-object v0, Lcom/iMe/feature/navigation/NavDirection;->$VALUES:[Lcom/iMe/feature/navigation/NavDirection;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/feature/navigation/NavDirection;

    return-object v0
.end method
