.class public final enum Lcom/iMe/model/common/ScreenType;
.super Ljava/lang/Enum;
.source "ScreenType.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/model/common/ScreenType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/model/common/ScreenType;

.field public static final enum FULLSCREEN:Lcom/iMe/model/common/ScreenType;

.field public static final enum TAB:Lcom/iMe/model/common/ScreenType;


# direct methods
.method private static final synthetic $values()[Lcom/iMe/model/common/ScreenType;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/iMe/model/common/ScreenType;

    sget-object v1, Lcom/iMe/model/common/ScreenType;->TAB:Lcom/iMe/model/common/ScreenType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/model/common/ScreenType;->FULLSCREEN:Lcom/iMe/model/common/ScreenType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/iMe/model/common/ScreenType;

    const-string v1, "TAB"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/iMe/model/common/ScreenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/model/common/ScreenType;->TAB:Lcom/iMe/model/common/ScreenType;

    .line 5
    new-instance v0, Lcom/iMe/model/common/ScreenType;

    const-string v1, "FULLSCREEN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/iMe/model/common/ScreenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/model/common/ScreenType;->FULLSCREEN:Lcom/iMe/model/common/ScreenType;

    invoke-static {}, Lcom/iMe/model/common/ScreenType;->$values()[Lcom/iMe/model/common/ScreenType;

    move-result-object v0

    sput-object v0, Lcom/iMe/model/common/ScreenType;->$VALUES:[Lcom/iMe/model/common/ScreenType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/model/common/ScreenType;
    .locals 1

    const-class v0, Lcom/iMe/model/common/ScreenType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/model/common/ScreenType;

    return-object p0
.end method

.method public static values()[Lcom/iMe/model/common/ScreenType;
    .locals 1

    sget-object v0, Lcom/iMe/model/common/ScreenType;->$VALUES:[Lcom/iMe/model/common/ScreenType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/model/common/ScreenType;

    return-object v0
.end method
