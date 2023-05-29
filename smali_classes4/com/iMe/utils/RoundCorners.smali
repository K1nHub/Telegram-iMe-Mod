.class public final enum Lcom/iMe/utils/RoundCorners;
.super Ljava/lang/Enum;
.source "CornersOutlineProvider.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/utils/RoundCorners;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/utils/RoundCorners;

.field public static final enum ALL:Lcom/iMe/utils/RoundCorners;

.field public static final enum BOTTOM:Lcom/iMe/utils/RoundCorners;

.field public static final enum LEFT_SIDE:Lcom/iMe/utils/RoundCorners;

.field public static final enum RIGHT_SIDE:Lcom/iMe/utils/RoundCorners;

.field public static final enum TOP:Lcom/iMe/utils/RoundCorners;


# direct methods
.method private static final synthetic $values()[Lcom/iMe/utils/RoundCorners;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/iMe/utils/RoundCorners;

    sget-object v1, Lcom/iMe/utils/RoundCorners;->ALL:Lcom/iMe/utils/RoundCorners;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/utils/RoundCorners;->LEFT_SIDE:Lcom/iMe/utils/RoundCorners;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/utils/RoundCorners;->RIGHT_SIDE:Lcom/iMe/utils/RoundCorners;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/utils/RoundCorners;->TOP:Lcom/iMe/utils/RoundCorners;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/utils/RoundCorners;->BOTTOM:Lcom/iMe/utils/RoundCorners;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 30
    new-instance v0, Lcom/iMe/utils/RoundCorners;

    const-string v1, "ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/iMe/utils/RoundCorners;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/utils/RoundCorners;->ALL:Lcom/iMe/utils/RoundCorners;

    new-instance v0, Lcom/iMe/utils/RoundCorners;

    const-string v1, "LEFT_SIDE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/iMe/utils/RoundCorners;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/utils/RoundCorners;->LEFT_SIDE:Lcom/iMe/utils/RoundCorners;

    new-instance v0, Lcom/iMe/utils/RoundCorners;

    const-string v1, "RIGHT_SIDE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/iMe/utils/RoundCorners;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/utils/RoundCorners;->RIGHT_SIDE:Lcom/iMe/utils/RoundCorners;

    new-instance v0, Lcom/iMe/utils/RoundCorners;

    const-string v1, "TOP"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/iMe/utils/RoundCorners;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/utils/RoundCorners;->TOP:Lcom/iMe/utils/RoundCorners;

    new-instance v0, Lcom/iMe/utils/RoundCorners;

    const-string v1, "BOTTOM"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/iMe/utils/RoundCorners;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/utils/RoundCorners;->BOTTOM:Lcom/iMe/utils/RoundCorners;

    invoke-static {}, Lcom/iMe/utils/RoundCorners;->$values()[Lcom/iMe/utils/RoundCorners;

    move-result-object v0

    sput-object v0, Lcom/iMe/utils/RoundCorners;->$VALUES:[Lcom/iMe/utils/RoundCorners;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/utils/RoundCorners;
    .locals 1

    const-class v0, Lcom/iMe/utils/RoundCorners;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/utils/RoundCorners;

    return-object p0
.end method

.method public static values()[Lcom/iMe/utils/RoundCorners;
    .locals 1

    sget-object v0, Lcom/iMe/utils/RoundCorners;->$VALUES:[Lcom/iMe/utils/RoundCorners;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/utils/RoundCorners;

    return-object v0
.end method
