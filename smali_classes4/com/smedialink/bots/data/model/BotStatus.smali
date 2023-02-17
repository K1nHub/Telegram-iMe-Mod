.class public final enum Lcom/smedialink/bots/data/model/BotStatus;
.super Ljava/lang/Enum;
.source "BotStatus.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/bots/data/model/BotStatus$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/smedialink/bots/data/model/BotStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/smedialink/bots/data/model/BotStatus;

.field public static final enum AVAILABLE:Lcom/smedialink/bots/data/model/BotStatus;

.field public static final Companion:Lcom/smedialink/bots/data/model/BotStatus$Companion;

.field public static final enum DISABLED:Lcom/smedialink/bots/data/model/BotStatus;

.field public static final enum DOWNLOADING:Lcom/smedialink/bots/data/model/BotStatus;

.field public static final enum ENABLED:Lcom/smedialink/bots/data/model/BotStatus;

.field public static final enum PAID:Lcom/smedialink/bots/data/model/BotStatus;

.field public static final enum UPDATE_AVAILABLE:Lcom/smedialink/bots/data/model/BotStatus;


# direct methods
.method private static final synthetic $values()[Lcom/smedialink/bots/data/model/BotStatus;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/smedialink/bots/data/model/BotStatus;

    sget-object v1, Lcom/smedialink/bots/data/model/BotStatus;->AVAILABLE:Lcom/smedialink/bots/data/model/BotStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/bots/data/model/BotStatus;->PAID:Lcom/smedialink/bots/data/model/BotStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/bots/data/model/BotStatus;->UPDATE_AVAILABLE:Lcom/smedialink/bots/data/model/BotStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/bots/data/model/BotStatus;->DOWNLOADING:Lcom/smedialink/bots/data/model/BotStatus;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/bots/data/model/BotStatus;->ENABLED:Lcom/smedialink/bots/data/model/BotStatus;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/bots/data/model/BotStatus;->DISABLED:Lcom/smedialink/bots/data/model/BotStatus;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/smedialink/bots/data/model/BotStatus;

    const-string v1, "AVAILABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/smedialink/bots/data/model/BotStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/bots/data/model/BotStatus;->AVAILABLE:Lcom/smedialink/bots/data/model/BotStatus;

    new-instance v0, Lcom/smedialink/bots/data/model/BotStatus;

    const-string v1, "PAID"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/smedialink/bots/data/model/BotStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/bots/data/model/BotStatus;->PAID:Lcom/smedialink/bots/data/model/BotStatus;

    new-instance v0, Lcom/smedialink/bots/data/model/BotStatus;

    const-string v1, "UPDATE_AVAILABLE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/smedialink/bots/data/model/BotStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/bots/data/model/BotStatus;->UPDATE_AVAILABLE:Lcom/smedialink/bots/data/model/BotStatus;

    new-instance v0, Lcom/smedialink/bots/data/model/BotStatus;

    const-string v1, "DOWNLOADING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/smedialink/bots/data/model/BotStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/bots/data/model/BotStatus;->DOWNLOADING:Lcom/smedialink/bots/data/model/BotStatus;

    new-instance v0, Lcom/smedialink/bots/data/model/BotStatus;

    const-string v1, "ENABLED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/smedialink/bots/data/model/BotStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/bots/data/model/BotStatus;->ENABLED:Lcom/smedialink/bots/data/model/BotStatus;

    new-instance v0, Lcom/smedialink/bots/data/model/BotStatus;

    const-string v1, "DISABLED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/smedialink/bots/data/model/BotStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smedialink/bots/data/model/BotStatus;->DISABLED:Lcom/smedialink/bots/data/model/BotStatus;

    invoke-static {}, Lcom/smedialink/bots/data/model/BotStatus;->$values()[Lcom/smedialink/bots/data/model/BotStatus;

    move-result-object v0

    sput-object v0, Lcom/smedialink/bots/data/model/BotStatus;->$VALUES:[Lcom/smedialink/bots/data/model/BotStatus;

    new-instance v0, Lcom/smedialink/bots/data/model/BotStatus$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/bots/data/model/BotStatus$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/smedialink/bots/data/model/BotStatus;->Companion:Lcom/smedialink/bots/data/model/BotStatus$Companion;

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

.method public static valueOf(Ljava/lang/String;)Lcom/smedialink/bots/data/model/BotStatus;
    .locals 1

    const-class v0, Lcom/smedialink/bots/data/model/BotStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/smedialink/bots/data/model/BotStatus;

    return-object p0
.end method

.method public static values()[Lcom/smedialink/bots/data/model/BotStatus;
    .locals 1

    sget-object v0, Lcom/smedialink/bots/data/model/BotStatus;->$VALUES:[Lcom/smedialink/bots/data/model/BotStatus;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smedialink/bots/data/model/BotStatus;

    return-object v0
.end method
