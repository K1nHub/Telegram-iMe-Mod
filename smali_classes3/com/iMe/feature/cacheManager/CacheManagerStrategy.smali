.class public final Lcom/iMe/feature/cacheManager/CacheManagerStrategy;
.super Ljava/lang/Object;
.source "CacheManagerStrategy.kt"


# static fields
.field public static final INSTANCE:Lcom/iMe/feature/cacheManager/CacheManagerStrategy;


# direct methods
.method public static synthetic $r8$lambda$ETHfV27QLC-Kh-0zJ9Rkoly-xMU(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/feature/cacheManager/CacheManagerStrategy;->fetchInternal$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/feature/cacheManager/CacheManagerStrategy;

    invoke-direct {v0}, Lcom/iMe/feature/cacheManager/CacheManagerStrategy;-><init>()V

    sput-object v0, Lcom/iMe/feature/cacheManager/CacheManagerStrategy;->INSTANCE:Lcom/iMe/feature/cacheManager/CacheManagerStrategy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic fetch$default(Lcom/iMe/feature/cacheManager/CacheManagerStrategy;Lio/reactivex/Observable;Lio/reactivex/Observable;Lkotlin/jvm/functions/Function1;ZILjava/lang/Object;)Lio/reactivex/Observable;
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/iMe/feature/cacheManager/CacheManagerStrategy;->fetch(Lio/reactivex/Observable;Lio/reactivex/Observable;Lkotlin/jvm/functions/Function1;Z)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private final fetchInternal(Lio/reactivex/Observable;Lio/reactivex/Observable;Lkotlin/jvm/functions/Function1;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Observable<",
            "TT;>;",
            "Lio/reactivex/Observable<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 18
    new-instance v0, Lcom/iMe/feature/cacheManager/CacheManagerStrategy$$ExternalSyntheticLambda0;

    invoke-direct {v0, p3}, Lcom/iMe/feature/cacheManager/CacheManagerStrategy$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p2

    invoke-static {p1, p2}, Lio/reactivex/Observable;->concat(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Observable;->distinctUntilChanged()Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "concat(fromDb, fromServe\u2026)).distinctUntilChanged()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private static final fetchInternal$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final fetch(Lio/reactivex/Observable;Lio/reactivex/Observable;Lkotlin/jvm/functions/Function1;Z)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Observable<",
            "TT;>;",
            "Lio/reactivex/Observable<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;Z)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "fromDb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fromServer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "persist"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/feature/cacheManager/CacheManagerStrategy;->fetchInternal(Lio/reactivex/Observable;Lio/reactivex/Observable;Lkotlin/jvm/functions/Function1;)Lio/reactivex/Observable;

    move-result-object p2

    :goto_0
    return-object p2
.end method
