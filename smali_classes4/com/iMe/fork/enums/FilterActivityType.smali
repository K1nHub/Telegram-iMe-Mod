.class public final enum Lcom/iMe/fork/enums/FilterActivityType;
.super Ljava/lang/Enum;
.source "FilterActivityType.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/fork/enums/FilterActivityType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/fork/enums/FilterActivityType;

.field public static final enum FILTER:Lcom/iMe/fork/enums/FilterActivityType;

.field public static final enum TOPIC:Lcom/iMe/fork/enums/FilterActivityType;


# instance fields
.field private final iconLeftMargin:I

.field private final iconSize:I


# direct methods
.method private static final synthetic $values()[Lcom/iMe/fork/enums/FilterActivityType;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/iMe/fork/enums/FilterActivityType;

    sget-object v1, Lcom/iMe/fork/enums/FilterActivityType;->FILTER:Lcom/iMe/fork/enums/FilterActivityType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/FilterActivityType;->TOPIC:Lcom/iMe/fork/enums/FilterActivityType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 4
    new-instance v0, Lcom/iMe/fork/enums/FilterActivityType;

    const-string v1, "FILTER"

    const/4 v2, 0x0

    const/16 v3, 0x18

    const/16 v4, 0x10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/iMe/fork/enums/FilterActivityType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/iMe/fork/enums/FilterActivityType;->FILTER:Lcom/iMe/fork/enums/FilterActivityType;

    .line 5
    new-instance v0, Lcom/iMe/fork/enums/FilterActivityType;

    const-string v1, "TOPIC"

    const/4 v2, 0x1

    const/16 v3, 0x28

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/iMe/fork/enums/FilterActivityType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/iMe/fork/enums/FilterActivityType;->TOPIC:Lcom/iMe/fork/enums/FilterActivityType;

    invoke-static {}, Lcom/iMe/fork/enums/FilterActivityType;->$values()[Lcom/iMe/fork/enums/FilterActivityType;

    move-result-object v0

    sput-object v0, Lcom/iMe/fork/enums/FilterActivityType;->$VALUES:[Lcom/iMe/fork/enums/FilterActivityType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/iMe/fork/enums/FilterActivityType;->iconSize:I

    iput p4, p0, Lcom/iMe/fork/enums/FilterActivityType;->iconLeftMargin:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/fork/enums/FilterActivityType;
    .locals 1

    const-class v0, Lcom/iMe/fork/enums/FilterActivityType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/fork/enums/FilterActivityType;

    return-object p0
.end method

.method public static values()[Lcom/iMe/fork/enums/FilterActivityType;
    .locals 1

    sget-object v0, Lcom/iMe/fork/enums/FilterActivityType;->$VALUES:[Lcom/iMe/fork/enums/FilterActivityType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/fork/enums/FilterActivityType;

    return-object v0
.end method


# virtual methods
.method public final getIconLeftMargin()I
    .locals 1

    .line 3
    iget v0, p0, Lcom/iMe/fork/enums/FilterActivityType;->iconLeftMargin:I

    return v0
.end method

.method public final getIconSize()I
    .locals 1

    .line 3
    iget v0, p0, Lcom/iMe/fork/enums/FilterActivityType;->iconSize:I

    return v0
.end method
