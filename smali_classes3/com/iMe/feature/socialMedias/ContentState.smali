.class public final enum Lcom/iMe/feature/socialMedias/ContentState;
.super Ljava/lang/Enum;
.source "ContentState.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/feature/socialMedias/ContentState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/feature/socialMedias/ContentState;

.field public static final enum CONTENT:Lcom/iMe/feature/socialMedias/ContentState;

.field public static final enum EMPTY:Lcom/iMe/feature/socialMedias/ContentState;

.field public static final enum NONE:Lcom/iMe/feature/socialMedias/ContentState;

.field public static final enum PROGRESS:Lcom/iMe/feature/socialMedias/ContentState;


# direct methods
.method private static final synthetic $values()[Lcom/iMe/feature/socialMedias/ContentState;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/iMe/feature/socialMedias/ContentState;

    sget-object v1, Lcom/iMe/feature/socialMedias/ContentState;->CONTENT:Lcom/iMe/feature/socialMedias/ContentState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/feature/socialMedias/ContentState;->EMPTY:Lcom/iMe/feature/socialMedias/ContentState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/feature/socialMedias/ContentState;->PROGRESS:Lcom/iMe/feature/socialMedias/ContentState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/feature/socialMedias/ContentState;->NONE:Lcom/iMe/feature/socialMedias/ContentState;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/iMe/feature/socialMedias/ContentState;

    const-string v1, "CONTENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/iMe/feature/socialMedias/ContentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/feature/socialMedias/ContentState;->CONTENT:Lcom/iMe/feature/socialMedias/ContentState;

    .line 5
    new-instance v0, Lcom/iMe/feature/socialMedias/ContentState;

    const-string v1, "EMPTY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/iMe/feature/socialMedias/ContentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/feature/socialMedias/ContentState;->EMPTY:Lcom/iMe/feature/socialMedias/ContentState;

    .line 6
    new-instance v0, Lcom/iMe/feature/socialMedias/ContentState;

    const-string v1, "PROGRESS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/iMe/feature/socialMedias/ContentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/feature/socialMedias/ContentState;->PROGRESS:Lcom/iMe/feature/socialMedias/ContentState;

    .line 7
    new-instance v0, Lcom/iMe/feature/socialMedias/ContentState;

    const-string v1, "NONE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/iMe/feature/socialMedias/ContentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/feature/socialMedias/ContentState;->NONE:Lcom/iMe/feature/socialMedias/ContentState;

    invoke-static {}, Lcom/iMe/feature/socialMedias/ContentState;->$values()[Lcom/iMe/feature/socialMedias/ContentState;

    move-result-object v0

    sput-object v0, Lcom/iMe/feature/socialMedias/ContentState;->$VALUES:[Lcom/iMe/feature/socialMedias/ContentState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/feature/socialMedias/ContentState;
    .locals 1

    const-class v0, Lcom/iMe/feature/socialMedias/ContentState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/feature/socialMedias/ContentState;

    return-object p0
.end method

.method public static values()[Lcom/iMe/feature/socialMedias/ContentState;
    .locals 1

    sget-object v0, Lcom/iMe/feature/socialMedias/ContentState;->$VALUES:[Lcom/iMe/feature/socialMedias/ContentState;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/feature/socialMedias/ContentState;

    return-object v0
.end method
