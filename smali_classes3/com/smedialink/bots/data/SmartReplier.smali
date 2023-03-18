.class public final Lcom/smedialink/bots/data/SmartReplier;
.super Ljava/lang/Object;
.source "SmartReplier.kt"

# interfaces
.implements Lcom/smedialink/bots/domain/Replier;
.implements Lkotlinx/coroutines/CoroutineScope;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/bots/data/SmartReplier$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSmartReplier.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SmartReplier.kt\ncom/smedialink/bots/data/SmartReplier\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,149:1\n288#2,2:150\n288#2,2:152\n819#2:154\n847#2,2:155\n1855#2,2:157\n1054#2:159\n1549#2:160\n1620#2,3:161\n1549#2:164\n1620#2,3:165\n1855#2,2:169\n1295#3:168\n1296#3:171\n1295#3,2:172\n*S KotlinDebug\n*F\n+ 1 SmartReplier.kt\ncom/smedialink/bots/data/SmartReplier\n*L\n68#1:150,2\n69#1:152,2\n70#1:154\n70#1:155,2\n74#1:157,2\n88#1:159\n89#1:160\n89#1:161,3\n106#1:164\n106#1:165,3\n135#1:169,2\n129#1:168\n129#1:171\n140#1:172,2\n*E\n"
.end annotation


# instance fields
.field private final currentYearTag:Ljava/lang/String;

.field private final job:Lkotlinx/coroutines/Job;

.field private final manager:Lcom/smedialink/bots/usecase/AiBotsManager;

.field private final mapper:Lcom/smedialink/bots/data/mapper/ResponseMapper;

.field private final repository:Lcom/smedialink/bots/data/repository/UserAnswersRepository;


# direct methods
.method public constructor <init>(Lcom/smedialink/bots/usecase/AiBotsManager;Lcom/smedialink/bots/data/mapper/ResponseMapper;Lcom/smedialink/bots/data/repository/UserAnswersRepository;)V
    .locals 1

    const-string v0, "manager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mapper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "repository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/smedialink/bots/data/SmartReplier;->manager:Lcom/smedialink/bots/usecase/AiBotsManager;

    .line 18
    iput-object p2, p0, Lcom/smedialink/bots/data/SmartReplier;->mapper:Lcom/smedialink/bots/data/mapper/ResponseMapper;

    .line 19
    iput-object p3, p0, Lcom/smedialink/bots/data/SmartReplier;->repository:Lcom/smedialink/bots/data/repository/UserAnswersRepository;

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 25
    invoke-static {p1, p2, p1}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/bots/data/SmartReplier;->job:Lkotlinx/coroutines/Job;

    .line 28
    new-instance p1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    const-string p3, "yyyy"

    invoke-direct {p1, p3, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "SimpleDateFormat(\"yyyy\",\u2026Default()).format(Date())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/smedialink/bots/data/SmartReplier;->currentYearTag:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$buildBotsList(Lcom/smedialink/bots/data/SmartReplier;Ljava/util/List;J)Ljava/util/List;
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/smedialink/bots/data/SmartReplier;->buildBotsList(Ljava/util/List;J)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getManager$p(Lcom/smedialink/bots/data/SmartReplier;)Lcom/smedialink/bots/usecase/AiBotsManager;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/smedialink/bots/data/SmartReplier;->manager:Lcom/smedialink/bots/usecase/AiBotsManager;

    return-object p0
.end method

.method public static final synthetic access$splitLemmas(Lcom/smedialink/bots/data/SmartReplier;Lcom/smedialink/bots/domain/model/BotLanguage;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/smedialink/bots/data/SmartReplier;->splitLemmas(Lcom/smedialink/bots/domain/model/BotLanguage;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final buildBotsList(Ljava/util/List;J)Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smedialink/bots/data/model/Response;",
            ">;J)",
            "Ljava/util/List<",
            "Lcom/smedialink/bots/domain/model/SmartBotResponse;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    .line 288
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "assistant"

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lcom/smedialink/bots/data/model/Response;

    .line 68
    invoke-virtual {v7}, Lcom/smedialink/bots/data/model/Response;->getBotId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_1
    move-object v4, v6

    :goto_0
    check-cast v4, Lcom/smedialink/bots/data/model/Response;

    .line 288
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v8, "holidays"

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Lcom/smedialink/bots/data/model/Response;

    .line 69
    invoke-virtual {v9}, Lcom/smedialink/bots/data/model/Response;->getBotId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_1

    :cond_3
    move-object v7, v6

    :goto_1
    check-cast v7, Lcom/smedialink/bots/data/model/Response;

    .line 819
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 847
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v10, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v13, v10

    check-cast v13, Lcom/smedialink/bots/data/model/Response;

    .line 70
    invoke-virtual {v13}, Lcom/smedialink/bots/data/model/Response;->getBotId()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    invoke-virtual {v13}, Lcom/smedialink/bots/data/model/Response;->getBotId()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    :cond_5
    const/4 v11, 0x1

    :cond_6
    if-nez v11, :cond_4

    .line 847
    invoke-interface {v3, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 72
    :cond_7
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 74
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-static {v8, v3}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v8

    .line 1855
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_8
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/smedialink/bots/data/model/Response;

    if-eqz v9, :cond_8

    .line 76
    iget-object v10, v0, Lcom/smedialink/bots/data/SmartReplier;->repository:Lcom/smedialink/bots/data/repository/UserAnswersRepository;

    invoke-virtual {v9}, Lcom/smedialink/bots/data/model/Response;->getBotId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9}, Lcom/smedialink/bots/data/model/Response;->getTag()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Lcom/smedialink/bots/data/repository/UserAnswersRepository;->getPositionWithMaxCounter(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    const/4 v13, -0x1

    if-eq v10, v13, :cond_8

    .line 78
    iget-object v13, v0, Lcom/smedialink/bots/data/SmartReplier;->repository:Lcom/smedialink/bots/data/repository/UserAnswersRepository;

    invoke-virtual {v9}, Lcom/smedialink/bots/data/model/Response;->getBotId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9}, Lcom/smedialink/bots/data/model/Response;->getTag()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15, v10}, Lcom/smedialink/bots/data/repository/UserAnswersRepository;->getCounterForPosition(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v13

    .line 79
    new-instance v14, Lkotlin/Pair;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v9}, Lcom/smedialink/bots/data/model/Response;->getAnswers()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {v14, v13, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 86
    :cond_9
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    xor-int/2addr v8, v12

    const/16 v9, 0xa

    if-eqz v8, :cond_b

    .line 1054
    new-instance v8, Lcom/smedialink/bots/data/SmartReplier$buildBotsList$$inlined$sortedByDescending$1;

    invoke-direct {v8}, Lcom/smedialink/bots/data/SmartReplier$buildBotsList$$inlined$sortedByDescending$1;-><init>()V

    invoke-static {v5, v8}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v5

    .line 1549
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v5, v9}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 1621
    check-cast v10, Lkotlin/Pair;

    .line 89
    invoke-virtual {v10}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1621
    invoke-interface {v8, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 91
    :cond_a
    new-instance v5, Lcom/smedialink/bots/data/model/Response;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0xc

    const/16 v20, 0x0

    const-string v14, "recent"

    const-string v15, ""

    move-object v13, v5

    move-object/from16 v18, v8

    invoke-direct/range {v13 .. v20}, Lcom/smedialink/bots/data/model/Response;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_5

    :cond_b
    move-object v5, v6

    .line 98
    :goto_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v7, :cond_c

    invoke-virtual {v7}, Lcom/smedialink/bots/data/model/Response;->getTag()Ljava/lang/String;

    move-result-object v6

    :cond_c
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x2e

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/smedialink/bots/data/SmartReplier;->currentYearTag:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 99
    iget-object v8, v0, Lcom/smedialink/bots/data/SmartReplier;->repository:Lcom/smedialink/bots/data/repository/UserAnswersRepository;

    invoke-virtual {v8, v1, v2}, Lcom/smedialink/bots/data/repository/UserAnswersRepository;->getTagsForUser(J)Ljava/util/Set;

    move-result-object v8

    const-wide/16 v13, 0x0

    const/4 v10, 0x2

    cmp-long v15, v1, v13

    if-eqz v15, :cond_d

    .line 101
    invoke-interface {v8, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    new-array v1, v10, [Lcom/smedialink/bots/data/model/Response;

    aput-object v5, v1, v11

    aput-object v4, v1, v12

    .line 102
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    goto :goto_6

    :cond_d
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/smedialink/bots/data/model/Response;

    aput-object v5, v1, v11

    aput-object v7, v1, v12

    aput-object v4, v1, v10

    .line 104
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 1549
    :goto_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1, v9}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1620
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1621
    check-cast v3, Lcom/smedialink/bots/data/model/Response;

    .line 106
    iget-object v4, v0, Lcom/smedialink/bots/data/SmartReplier;->mapper:Lcom/smedialink/bots/data/mapper/ResponseMapper;

    invoke-virtual {v4, v3}, Lcom/smedialink/bots/data/mapper/ResponseMapper;->map(Lcom/smedialink/bots/data/model/Response;)Lcom/smedialink/bots/domain/model/SmartBotResponse;

    move-result-object v3

    .line 1621
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_e
    return-object v2
.end method

.method private final splitLemmas(Lcom/smedialink/bots/domain/model/BotLanguage;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/bots/domain/model/BotLanguage;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 114
    sget-object v0, Lcom/smedialink/bots/data/SmartReplier$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 123
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 124
    new-instance v3, Lkotlin/text/Regex;

    const-string v4, "[-_.,?!:;\')( ]"

    invoke-direct {v3, v4}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2, v0}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object p2

    .line 125
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object p2

    .line 126
    sget-object v0, Lcom/smedialink/bots/data/SmartReplier$splitLemmas$words$1;->INSTANCE:Lcom/smedialink/bots/data/SmartReplier$splitLemmas$words$1;

    invoke-static {p2, v0}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p2

    .line 127
    sget-object v0, Lcom/smedialink/bots/data/SmartReplier$splitLemmas$words$2;->INSTANCE:Lcom/smedialink/bots/data/SmartReplier$splitLemmas$words$2;

    invoke-static {p2, v0}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p2

    .line 128
    sget-object v0, Lcom/smedialink/bots/data/SmartReplier$splitLemmas$words$3;->INSTANCE:Lcom/smedialink/bots/data/SmartReplier$splitLemmas$words$3;

    invoke-static {p2, v0}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p2

    .line 1295
    invoke-interface {p2}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 130
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v4, v2, :cond_1

    .line 131
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v1, :cond_0

    .line 134
    invoke-static {v3}, Lkotlin/text/StringsKt;->toList(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->zipWithNext(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    .line 1855
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/Pair;

    .line 136
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Character;

    invoke-virtual {v6}, Ljava/lang/Character;->charValue()C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Character;

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 140
    :cond_2
    invoke-static {p2}, Lkotlin/sequences/SequencesKt;->zipWithNext(Lkotlin/sequences/Sequence;)Lkotlin/sequences/Sequence;

    move-result-object p2

    .line 1295
    invoke-interface {p2}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 143
    :cond_3
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 116
    :cond_4
    new-instance p1, Lkotlin/text/Regex;

    const-string v1, "[@#$%^&*+-/|\\_><.,?!:;)(= ]"

    invoke-direct {p1, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object p1

    .line 117
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object p1

    .line 118
    sget-object p2, Lcom/smedialink/bots/data/SmartReplier$splitLemmas$1;->INSTANCE:Lcom/smedialink/bots/data/SmartReplier$splitLemmas$1;

    invoke-static {p1, p2}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p1

    .line 119
    sget-object p2, Lcom/smedialink/bots/data/SmartReplier$splitLemmas$2;->INSTANCE:Lcom/smedialink/bots/data/SmartReplier$splitLemmas$2;

    invoke-static {p1, p2}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p1

    .line 120
    invoke-static {p1}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object p1

    :cond_5
    return-object p1
.end method


# virtual methods
.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 2

    .line 23
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/smedialink/bots/data/SmartReplier;->job:Lkotlinx/coroutines/Job;

    invoke-virtual {v0, v1}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public getResponsesFromBots(Ljava/lang/String;JLcom/smedialink/bots/usecase/AiBotsManager$SmartReplierCallback;)V
    .locals 8

    const-string v0, "sentence"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v0, Lcom/smedialink/bots/data/SmartReplier$getResponsesFromBots$1;

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p4

    move-object v3, p0

    move-wide v4, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/smedialink/bots/data/SmartReplier$getResponsesFromBots$1;-><init>(Lcom/smedialink/bots/usecase/AiBotsManager$SmartReplierCallback;Lcom/smedialink/bots/data/SmartReplier;JLjava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
