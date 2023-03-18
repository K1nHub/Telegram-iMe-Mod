.class public final Lcom/smedialink/bots/data/repository/UserAnswersRepository;
.super Ljava/lang/Object;
.source "UserAnswersRepository.kt"


# instance fields
.field private final botsDatabase:Lcom/smedialink/bots/data/database/BotsDatabase;

.field private final holidaysDao:Lcom/smedialink/bots/data/database/HolidaysDao;

.field private final recentDao:Lcom/smedialink/bots/data/database/RecentDao;

.field private final yearTag$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    sget-object v0, Lcom/smedialink/bots/data/repository/UserAnswersRepository$yearTag$2;->INSTANCE:Lcom/smedialink/bots/data/repository/UserAnswersRepository$yearTag$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/smedialink/bots/data/repository/UserAnswersRepository;->yearTag$delegate:Lkotlin/Lazy;

    .line 17
    sget-object v0, Lcom/smedialink/bots/data/database/BotsDatabase;->Companion:Lcom/smedialink/bots/data/database/BotsDatabase$Companion;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "context.applicationContext"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/smedialink/bots/data/database/BotsDatabase$Companion;->getInstance(Landroid/content/Context;)Lcom/smedialink/bots/data/database/BotsDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/bots/data/repository/UserAnswersRepository;->botsDatabase:Lcom/smedialink/bots/data/database/BotsDatabase;

    .line 18
    invoke-virtual {p1}, Lcom/smedialink/bots/data/database/BotsDatabase;->holidaysDao()Lcom/smedialink/bots/data/database/HolidaysDao;

    move-result-object v0

    iput-object v0, p0, Lcom/smedialink/bots/data/repository/UserAnswersRepository;->holidaysDao:Lcom/smedialink/bots/data/database/HolidaysDao;

    .line 19
    invoke-virtual {p1}, Lcom/smedialink/bots/data/database/BotsDatabase;->recentDao()Lcom/smedialink/bots/data/database/RecentDao;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/bots/data/repository/UserAnswersRepository;->recentDao:Lcom/smedialink/bots/data/database/RecentDao;

    return-void
.end method

.method private final getYearTag()Ljava/lang/String;
    .locals 2

    .line 13
    iget-object v0, p0, Lcom/smedialink/bots/data/repository/UserAnswersRepository;->yearTag$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-yearTag>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final getCounterForPosition(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    const-string v0, "botId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/smedialink/bots/data/repository/UserAnswersRepository;->recentDao:Lcom/smedialink/bots/data/database/RecentDao;

    invoke-virtual {v0, p1, p2, p3}, Lcom/smedialink/bots/data/database/RecentDao;->getCounter(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final getPositionWithMaxCounter(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const-string v0, "botId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/smedialink/bots/data/repository/UserAnswersRepository;->recentDao:Lcom/smedialink/bots/data/database/RecentDao;

    invoke-virtual {v0, p1, p2}, Lcom/smedialink/bots/data/database/RecentDao;->getSortedPositions(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public final getTagsForUser(J)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/smedialink/bots/data/repository/UserAnswersRepository;->holidaysDao:Lcom/smedialink/bots/data/database/HolidaysDao;

    invoke-virtual {v0, p1, p2}, Lcom/smedialink/bots/data/database/HolidaysDao;->getTagsForUser(J)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public final increaseResponseCounter(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "botId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recent"

    .line 31
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/smedialink/bots/data/repository/UserAnswersRepository;->recentDao:Lcom/smedialink/bots/data/database/RecentDao;

    invoke-virtual {v0, p1, p2, p3}, Lcom/smedialink/bots/data/database/RecentDao;->increaseCounter(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public final saveHolidayGreeting(JLjava/lang/String;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x2e

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/smedialink/bots/data/repository/UserAnswersRepository;->getYearTag()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 27
    iget-object v0, p0, Lcom/smedialink/bots/data/repository/UserAnswersRepository;->holidaysDao:Lcom/smedialink/bots/data/database/HolidaysDao;

    invoke-virtual {v0, p1, p2, p3}, Lcom/smedialink/bots/data/database/HolidaysDao;->saveForUser(JLjava/lang/String;)V

    return-void
.end method
