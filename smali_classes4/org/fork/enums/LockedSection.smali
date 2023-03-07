.class public final enum Lorg/fork/enums/LockedSection;
.super Ljava/lang/Enum;
.source "LockedSection.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fork/enums/LockedSection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fork/enums/LockedSection;

.field public static final enum ARCHIVE:Lorg/fork/enums/LockedSection;

.field public static final enum CLOUD:Lorg/fork/enums/LockedSection;


# direct methods
.method private static final synthetic $values()[Lorg/fork/enums/LockedSection;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/fork/enums/LockedSection;

    sget-object v1, Lorg/fork/enums/LockedSection;->ARCHIVE:Lorg/fork/enums/LockedSection;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/LockedSection;->CLOUD:Lorg/fork/enums/LockedSection;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lorg/fork/enums/LockedSection;

    const-string v1, "ARCHIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/fork/enums/LockedSection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fork/enums/LockedSection;->ARCHIVE:Lorg/fork/enums/LockedSection;

    .line 5
    new-instance v0, Lorg/fork/enums/LockedSection;

    const-string v1, "CLOUD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/fork/enums/LockedSection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/fork/enums/LockedSection;->CLOUD:Lorg/fork/enums/LockedSection;

    invoke-static {}, Lorg/fork/enums/LockedSection;->$values()[Lorg/fork/enums/LockedSection;

    move-result-object v0

    sput-object v0, Lorg/fork/enums/LockedSection;->$VALUES:[Lorg/fork/enums/LockedSection;

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

.method public static valueOf(Ljava/lang/String;)Lorg/fork/enums/LockedSection;
    .locals 1

    const-class v0, Lorg/fork/enums/LockedSection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fork/enums/LockedSection;

    return-object p0
.end method

.method public static values()[Lorg/fork/enums/LockedSection;
    .locals 1

    sget-object v0, Lorg/fork/enums/LockedSection;->$VALUES:[Lorg/fork/enums/LockedSection;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fork/enums/LockedSection;

    return-object v0
.end method
