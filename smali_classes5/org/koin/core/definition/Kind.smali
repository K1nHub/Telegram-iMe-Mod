.class public final enum Lorg/koin/core/definition/Kind;
.super Ljava/lang/Enum;
.source "BeanDefinition.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/koin/core/definition/Kind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/koin/core/definition/Kind;

.field public static final enum Factory:Lorg/koin/core/definition/Kind;

.field public static final enum Scoped:Lorg/koin/core/definition/Kind;

.field public static final enum Singleton:Lorg/koin/core/definition/Kind;


# direct methods
.method private static final synthetic $values()[Lorg/koin/core/definition/Kind;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/koin/core/definition/Kind;

    sget-object v1, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/koin/core/definition/Kind;->Scoped:Lorg/koin/core/definition/Kind;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 96
    new-instance v0, Lorg/koin/core/definition/Kind;

    const-string v1, "Singleton"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/koin/core/definition/Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/koin/core/definition/Kind;->Singleton:Lorg/koin/core/definition/Kind;

    new-instance v0, Lorg/koin/core/definition/Kind;

    const-string v1, "Factory"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/koin/core/definition/Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/koin/core/definition/Kind;->Factory:Lorg/koin/core/definition/Kind;

    new-instance v0, Lorg/koin/core/definition/Kind;

    const-string v1, "Scoped"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/koin/core/definition/Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/koin/core/definition/Kind;->Scoped:Lorg/koin/core/definition/Kind;

    invoke-static {}, Lorg/koin/core/definition/Kind;->$values()[Lorg/koin/core/definition/Kind;

    move-result-object v0

    sput-object v0, Lorg/koin/core/definition/Kind;->$VALUES:[Lorg/koin/core/definition/Kind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/koin/core/definition/Kind;
    .locals 1

    const-class v0, Lorg/koin/core/definition/Kind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/koin/core/definition/Kind;

    return-object p0
.end method

.method public static values()[Lorg/koin/core/definition/Kind;
    .locals 1

    sget-object v0, Lorg/koin/core/definition/Kind;->$VALUES:[Lorg/koin/core/definition/Kind;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/koin/core/definition/Kind;

    return-object v0
.end method
