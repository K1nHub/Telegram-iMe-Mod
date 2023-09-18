.class public final enum Lcom/iMe/bots/data/model/BotType;
.super Ljava/lang/Enum;
.source "BotType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/bots/data/model/BotType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/bots/data/model/BotType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/bots/data/model/BotType;

.field public static final Companion:Lcom/iMe/bots/data/model/BotType$Companion;

.field public static final enum HOLIDAYS:Lcom/iMe/bots/data/model/BotType;

.field public static final enum NEURO:Lcom/iMe/bots/data/model/BotType;

.field public static final enum RECENT:Lcom/iMe/bots/data/model/BotType;


# instance fields
.field private final resId:I


# direct methods
.method private static final synthetic $values()[Lcom/iMe/bots/data/model/BotType;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/iMe/bots/data/model/BotType;

    sget-object v1, Lcom/iMe/bots/data/model/BotType;->NEURO:Lcom/iMe/bots/data/model/BotType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/bots/data/model/BotType;->RECENT:Lcom/iMe/bots/data/model/BotType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/bots/data/model/BotType;->HOLIDAYS:Lcom/iMe/bots/data/model/BotType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 7
    new-instance v0, Lcom/iMe/bots/data/model/BotType;

    sget v1, Lcom/iMe/bots/R$string;->bot_label_neuro:I

    const-string v2, "NEURO"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/iMe/bots/data/model/BotType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/bots/data/model/BotType;->NEURO:Lcom/iMe/bots/data/model/BotType;

    .line 8
    new-instance v0, Lcom/iMe/bots/data/model/BotType;

    sget v1, Lcom/iMe/bots/R$string;->bot_label_normal:I

    const-string v2, "RECENT"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/iMe/bots/data/model/BotType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/bots/data/model/BotType;->RECENT:Lcom/iMe/bots/data/model/BotType;

    .line 9
    new-instance v0, Lcom/iMe/bots/data/model/BotType;

    const-string v2, "HOLIDAYS"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lcom/iMe/bots/data/model/BotType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/bots/data/model/BotType;->HOLIDAYS:Lcom/iMe/bots/data/model/BotType;

    invoke-static {}, Lcom/iMe/bots/data/model/BotType;->$values()[Lcom/iMe/bots/data/model/BotType;

    move-result-object v0

    sput-object v0, Lcom/iMe/bots/data/model/BotType;->$VALUES:[Lcom/iMe/bots/data/model/BotType;

    new-instance v0, Lcom/iMe/bots/data/model/BotType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/bots/data/model/BotType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/bots/data/model/BotType;->Companion:Lcom/iMe/bots/data/model/BotType$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/iMe/bots/data/model/BotType;->resId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/bots/data/model/BotType;
    .locals 1

    const-class v0, Lcom/iMe/bots/data/model/BotType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/bots/data/model/BotType;

    return-object p0
.end method

.method public static values()[Lcom/iMe/bots/data/model/BotType;
    .locals 1

    sget-object v0, Lcom/iMe/bots/data/model/BotType;->$VALUES:[Lcom/iMe/bots/data/model/BotType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/bots/data/model/BotType;

    return-object v0
.end method


# virtual methods
.method public final getResId()I
    .locals 1

    .line 6
    iget v0, p0, Lcom/iMe/bots/data/model/BotType;->resId:I

    return v0
.end method
