.class public abstract Lcom/iMe/bots/data/database/HolidaysDao;
.super Ljava/lang/Object;
.source "HolidaysDao.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/bots/data/database/HolidaysDao$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHolidaysDao.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HolidaysDao.kt\ncom/iMe/bots/data/database/HolidaysDao\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,39:1\n819#2:40\n847#2,2:41\n*S KotlinDebug\n*F\n+ 1 HolidaysDao.kt\ncom/iMe/bots/data/database/HolidaysDao\n*L\n31#1:40\n31#1:41,2\n*E\n"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/bots/data/database/HolidaysDao$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/bots/data/database/HolidaysDao$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getByUserId(J)Ljava/lang/String;
.end method

.method public getTagsForUser(J)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/iMe/bots/data/database/HolidaysDao;->getByUserId(J)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string p1, " "

    .line 30
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 819
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 847
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    .line 31
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 847
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 32
    :cond_1
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 33
    :cond_2
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public abstract insertOrReplace(Lcom/iMe/bots/data/model/database/HolidaysDbModel;)J
.end method

.method public saveForUser(JLjava/lang/String;)V
    .locals 10

    const-string v0, "fullTag"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/iMe/bots/data/database/HolidaysDao;->getTagsForUser(J)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    .line 22
    invoke-interface {v1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 23
    new-instance p3, Lcom/iMe/bots/data/model/database/HolidaysDbModel;

    const-string v2, " "

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3e

    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, p1, p2, v0}, Lcom/iMe/bots/data/model/database/HolidaysDbModel;-><init>(JLjava/lang/String;)V

    .line 24
    invoke-virtual {p0, p3}, Lcom/iMe/bots/data/database/HolidaysDao;->insertOrReplace(Lcom/iMe/bots/data/model/database/HolidaysDbModel;)J

    return-void
.end method
