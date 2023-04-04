.class public final enum Lcom/iMe/fork/enums/LockedSection;
.super Ljava/lang/Enum;
.source "LockedSection.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/fork/enums/LockedSection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/fork/enums/LockedSection;

.field public static final enum ARCHIVE:Lcom/iMe/fork/enums/LockedSection;

.field public static final enum CLOUD:Lcom/iMe/fork/enums/LockedSection;


# direct methods
.method private static final synthetic $values()[Lcom/iMe/fork/enums/LockedSection;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/iMe/fork/enums/LockedSection;

    sget-object v1, Lcom/iMe/fork/enums/LockedSection;->ARCHIVE:Lcom/iMe/fork/enums/LockedSection;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/LockedSection;->CLOUD:Lcom/iMe/fork/enums/LockedSection;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/iMe/fork/enums/LockedSection;

    const-string v1, "ARCHIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/iMe/fork/enums/LockedSection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/fork/enums/LockedSection;->ARCHIVE:Lcom/iMe/fork/enums/LockedSection;

    .line 5
    new-instance v0, Lcom/iMe/fork/enums/LockedSection;

    const-string v1, "CLOUD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/iMe/fork/enums/LockedSection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/fork/enums/LockedSection;->CLOUD:Lcom/iMe/fork/enums/LockedSection;

    invoke-static {}, Lcom/iMe/fork/enums/LockedSection;->$values()[Lcom/iMe/fork/enums/LockedSection;

    move-result-object v0

    sput-object v0, Lcom/iMe/fork/enums/LockedSection;->$VALUES:[Lcom/iMe/fork/enums/LockedSection;

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

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/fork/enums/LockedSection;
    .locals 1

    const-class v0, Lcom/iMe/fork/enums/LockedSection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/fork/enums/LockedSection;

    return-object p0
.end method

.method public static values()[Lcom/iMe/fork/enums/LockedSection;
    .locals 1

    sget-object v0, Lcom/iMe/fork/enums/LockedSection;->$VALUES:[Lcom/iMe/fork/enums/LockedSection;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/fork/enums/LockedSection;

    return-object v0
.end method
