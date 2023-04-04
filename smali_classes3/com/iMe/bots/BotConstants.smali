.class public final Lcom/iMe/bots/BotConstants;
.super Ljava/lang/Object;
.source "BotConstants.kt"


# static fields
.field public static final INSTANCE:Lcom/iMe/bots/BotConstants;

.field private static final hashes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final predefinedBots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/iMe/bots/BotConstants;

    invoke-direct {v0}, Lcom/iMe/bots/BotConstants;-><init>()V

    sput-object v0, Lcom/iMe/bots/BotConstants;->INSTANCE:Lcom/iMe/bots/BotConstants;

    const-string v0, "assistant"

    const-string v1, "assistant_eng"

    const-string v2, "holidays"

    .line 17
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v3

    .line 14
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Lcom/iMe/bots/BotConstants;->predefinedBots:Ljava/util/List;

    const/4 v3, 0x3

    new-array v3, v3, [Lkotlin/Pair;

    const-string v4, "KrEBEAPGadlvWF8morbTTQ=="

    .line 22
    invoke-static {v0, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v0, "IOMbdDggW8S3hqQtm7xyPg=="

    .line 23
    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v3, v1

    const-string v0, "U1lmtBOVs9cLAyTMzDkQSA=="

    .line 24
    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v3, v1

    .line 21
    invoke-static {v3}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/iMe/bots/BotConstants;->hashes:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getHashes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 21
    sget-object v0, Lcom/iMe/bots/BotConstants;->hashes:Ljava/util/Map;

    return-object v0
.end method

.method public final getPredefinedBots()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 14
    sget-object v0, Lcom/iMe/bots/BotConstants;->predefinedBots:Ljava/util/List;

    return-object v0
.end method
