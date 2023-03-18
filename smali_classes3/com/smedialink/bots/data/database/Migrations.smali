.class public final Lcom/smedialink/bots/data/database/Migrations;
.super Ljava/lang/Object;
.source "Migrations.kt"


# static fields
.field private static final FROM_6_TO_7:Landroidx/room/migration/Migration;

.field public static final INSTANCE:Lcom/smedialink/bots/data/database/Migrations;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/bots/data/database/Migrations;

    invoke-direct {v0}, Lcom/smedialink/bots/data/database/Migrations;-><init>()V

    sput-object v0, Lcom/smedialink/bots/data/database/Migrations;->INSTANCE:Lcom/smedialink/bots/data/database/Migrations;

    .line 10
    new-instance v0, Lcom/smedialink/bots/data/database/Migrations$FROM_6_TO_7$1;

    invoke-direct {v0}, Lcom/smedialink/bots/data/database/Migrations$FROM_6_TO_7$1;-><init>()V

    sput-object v0, Lcom/smedialink/bots/data/database/Migrations;->FROM_6_TO_7:Landroidx/room/migration/Migration;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getBotInsertionQuery(Lcom/smedialink/bots/data/database/Migrations;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/smedialink/bots/data/database/Migrations;->getBotInsertionQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final getBotInsertionQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n            INSERT INTO BotsDbModel (\n                id, sku, avatarOriginal, avatarRounded, title, description, installs, priority, reviews, rating, ownRating,\n                installLogged, useAssets, tags, file, hash, phrases, themes, created, updated, price, type, status\n            )\n            VALUES (\n                \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', \'\', \'\', \'\', \'\', \'\', \'0\', \'0\', \'0\', \'0.0\', \'0\', \'1\', \'1\', \'\', \'\', \'\', \'0\', \'0\', \'0\', \'0\', \'\',\n                \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    sget-object v1, Lcom/smedialink/bots/data/model/BotType;->Companion:Lcom/smedialink/bots/data/model/BotType$Companion;

    invoke-virtual {v1, p1}, Lcom/smedialink/bots/data/model/BotType$Companion;->resolveByName(Ljava/lang/String;)Lcom/smedialink/bots/data/model/BotType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\', \'ENABLED\'\n            );\n        "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 97
    invoke-static {p1}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final getFROM_6_TO_7()Landroidx/room/migration/Migration;
    .locals 1

    .line 10
    sget-object v0, Lcom/smedialink/bots/data/database/Migrations;->FROM_6_TO_7:Landroidx/room/migration/Migration;

    return-object v0
.end method
