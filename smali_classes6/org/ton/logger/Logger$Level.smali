.class public final enum Lorg/ton/logger/Logger$Level;
.super Ljava/lang/Enum;
.source "Logger.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ton/logger/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/ton/logger/Logger$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/ton/logger/Logger$Level;

.field public static final enum DEBUG:Lorg/ton/logger/Logger$Level;

.field public static final enum FATAL:Lorg/ton/logger/Logger$Level;

.field public static final enum INFO:Lorg/ton/logger/Logger$Level;

.field public static final enum TRACE:Lorg/ton/logger/Logger$Level;

.field public static final enum WARN:Lorg/ton/logger/Logger$Level;


# direct methods
.method private static final synthetic $values()[Lorg/ton/logger/Logger$Level;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/ton/logger/Logger$Level;

    sget-object v1, Lorg/ton/logger/Logger$Level;->TRACE:Lorg/ton/logger/Logger$Level;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/ton/logger/Logger$Level;->DEBUG:Lorg/ton/logger/Logger$Level;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/ton/logger/Logger$Level;->INFO:Lorg/ton/logger/Logger$Level;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/ton/logger/Logger$Level;->WARN:Lorg/ton/logger/Logger$Level;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/ton/logger/Logger$Level;->FATAL:Lorg/ton/logger/Logger$Level;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Lorg/ton/logger/Logger$Level;

    const-string v1, "TRACE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/ton/logger/Logger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ton/logger/Logger$Level;->TRACE:Lorg/ton/logger/Logger$Level;

    .line 17
    new-instance v0, Lorg/ton/logger/Logger$Level;

    const-string v1, "DEBUG"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/ton/logger/Logger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ton/logger/Logger$Level;->DEBUG:Lorg/ton/logger/Logger$Level;

    .line 18
    new-instance v0, Lorg/ton/logger/Logger$Level;

    const-string v1, "INFO"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/ton/logger/Logger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ton/logger/Logger$Level;->INFO:Lorg/ton/logger/Logger$Level;

    .line 19
    new-instance v0, Lorg/ton/logger/Logger$Level;

    const-string v1, "WARN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/ton/logger/Logger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ton/logger/Logger$Level;->WARN:Lorg/ton/logger/Logger$Level;

    .line 20
    new-instance v0, Lorg/ton/logger/Logger$Level;

    const-string v1, "FATAL"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/ton/logger/Logger$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/ton/logger/Logger$Level;->FATAL:Lorg/ton/logger/Logger$Level;

    invoke-static {}, Lorg/ton/logger/Logger$Level;->$values()[Lorg/ton/logger/Logger$Level;

    move-result-object v0

    sput-object v0, Lorg/ton/logger/Logger$Level;->$VALUES:[Lorg/ton/logger/Logger$Level;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/ton/logger/Logger$Level;
    .locals 1

    const-class v0, Lorg/ton/logger/Logger$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/ton/logger/Logger$Level;

    return-object p0
.end method

.method public static values()[Lorg/ton/logger/Logger$Level;
    .locals 1

    sget-object v0, Lorg/ton/logger/Logger$Level;->$VALUES:[Lorg/ton/logger/Logger$Level;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/ton/logger/Logger$Level;

    return-object v0
.end method
