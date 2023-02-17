.class public final enum Lcom/smedialink/bots/domain/model/BotLanguage;
.super Ljava/lang/Enum;
.source "BotLanguage.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/bots/domain/model/BotLanguage$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/smedialink/bots/domain/model/BotLanguage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/smedialink/bots/domain/model/BotLanguage;

.field public static final Companion:Lcom/smedialink/bots/domain/model/BotLanguage$Companion;

.field public static final enum EN:Lcom/smedialink/bots/domain/model/BotLanguage;

.field public static final enum RU:Lcom/smedialink/bots/domain/model/BotLanguage;


# instance fields
.field private final langCode:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/smedialink/bots/domain/model/BotLanguage;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/smedialink/bots/domain/model/BotLanguage;

    sget-object v1, Lcom/smedialink/bots/domain/model/BotLanguage;->RU:Lcom/smedialink/bots/domain/model/BotLanguage;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/bots/domain/model/BotLanguage;->EN:Lcom/smedialink/bots/domain/model/BotLanguage;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 4
    new-instance v0, Lcom/smedialink/bots/domain/model/BotLanguage;

    const-string v1, "RU"

    const/4 v2, 0x0

    const-string v3, "ru"

    invoke-direct {v0, v1, v2, v3}, Lcom/smedialink/bots/domain/model/BotLanguage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/smedialink/bots/domain/model/BotLanguage;->RU:Lcom/smedialink/bots/domain/model/BotLanguage;

    .line 5
    new-instance v0, Lcom/smedialink/bots/domain/model/BotLanguage;

    const-string v1, "EN"

    const/4 v2, 0x1

    const-string v3, "eng"

    invoke-direct {v0, v1, v2, v3}, Lcom/smedialink/bots/domain/model/BotLanguage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/smedialink/bots/domain/model/BotLanguage;->EN:Lcom/smedialink/bots/domain/model/BotLanguage;

    invoke-static {}, Lcom/smedialink/bots/domain/model/BotLanguage;->$values()[Lcom/smedialink/bots/domain/model/BotLanguage;

    move-result-object v0

    sput-object v0, Lcom/smedialink/bots/domain/model/BotLanguage;->$VALUES:[Lcom/smedialink/bots/domain/model/BotLanguage;

    new-instance v0, Lcom/smedialink/bots/domain/model/BotLanguage$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/bots/domain/model/BotLanguage$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/smedialink/bots/domain/model/BotLanguage;->Companion:Lcom/smedialink/bots/domain/model/BotLanguage$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/smedialink/bots/domain/model/BotLanguage;->langCode:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smedialink/bots/domain/model/BotLanguage;
    .locals 1

    const-class v0, Lcom/smedialink/bots/domain/model/BotLanguage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/smedialink/bots/domain/model/BotLanguage;

    return-object p0
.end method

.method public static values()[Lcom/smedialink/bots/domain/model/BotLanguage;
    .locals 1

    sget-object v0, Lcom/smedialink/bots/domain/model/BotLanguage;->$VALUES:[Lcom/smedialink/bots/domain/model/BotLanguage;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smedialink/bots/domain/model/BotLanguage;

    return-object v0
.end method


# virtual methods
.method public final getLangCode()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/smedialink/bots/domain/model/BotLanguage;->langCode:Ljava/lang/String;

    return-object v0
.end method
