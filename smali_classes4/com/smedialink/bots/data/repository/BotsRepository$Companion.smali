.class public final Lcom/smedialink/bots/data/repository/BotsRepository$Companion;
.super Ljava/lang/Object;
.source "BotsRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/bots/data/repository/BotsRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBotsRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BotsRepository.kt\ncom/smedialink/bots/data/repository/BotsRepository$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,442:1\n1547#2:443\n1618#2,3:444\n*S KotlinDebug\n*F\n+ 1 BotsRepository.kt\ncom/smedialink/bots/data/repository/BotsRepository$Companion\n*L\n35#1:443\n35#1:444,3\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/smedialink/bots/data/repository/BotsRepository$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final initialBotsList()Ljava/util/List;
    .locals 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smedialink/bots/data/model/database/BotsDbModel;",
            ">;"
        }
    .end annotation

    .line 35
    sget-object v0, Lcom/smedialink/bots/BotConstants;->INSTANCE:Lcom/smedialink/bots/BotConstants;

    invoke-virtual {v0}, Lcom/smedialink/bots/BotConstants;->getPredefinedBots()Ljava/util/List;

    move-result-object v0

    .line 1547
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1618
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1619
    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    .line 40
    sget-object v2, Lcom/smedialink/bots/BotConstants;->INSTANCE:Lcom/smedialink/bots/BotConstants;

    invoke-virtual {v2}, Lcom/smedialink/bots/BotConstants;->getHashes()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, ""

    :cond_0
    move-object/from16 v26, v2

    .line 41
    sget-object v35, Lcom/smedialink/bots/data/model/BotStatus;->ENABLED:Lcom/smedialink/bots/data/model/BotStatus;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v5, 0x0

    const-string v6, "_eng"

    .line 42
    invoke-static {v4, v6, v2, v3, v5}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/smedialink/bots/domain/model/BotLanguage;->EN:Lcom/smedialink/bots/domain/model/BotLanguage;

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/smedialink/bots/domain/model/BotLanguage;->RU:Lcom/smedialink/bots/domain/model/BotLanguage;

    :goto_1
    move-object v6, v2

    .line 43
    sget-object v2, Lcom/smedialink/bots/data/model/BotType;->Companion:Lcom/smedialink/bots/data/model/BotType$Companion;

    invoke-virtual {v2, v4}, Lcom/smedialink/bots/data/model/BotType$Companion;->resolveByName(Ljava/lang/String;)Lcom/smedialink/bots/data/model/BotType;

    move-result-object v34

    .line 36
    new-instance v2, Lcom/smedialink/bots/data/model/database/BotsDbModel;

    move-object v3, v2

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const v36, 0x1f73ffa

    const/16 v37, 0x0

    invoke-direct/range {v3 .. v37}, Lcom/smedialink/bots/data/model/database/BotsDbModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/smedialink/bots/domain/model/BotLanguage;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;JJJFIIIILjava/util/List;Ljava/lang/String;Ljava/lang/String;JJLjava/util/Date;Ljava/util/Date;Ljava/lang/String;Lcom/smedialink/bots/data/model/BotType;Lcom/smedialink/bots/data/model/BotStatus;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method
