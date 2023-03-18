.class public final Lcom/smedialink/manager/multireply/message/MessageLinkCache;
.super Ljava/lang/Object;
.source "MessageLinkCache.kt"


# instance fields
.field private final chatRootLinkCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/smedialink/manager/multireply/message/MessageLinkCache;->chatRootLinkCache:Ljava/util/Map;

    return-void
.end method

.method private final requestPatternFromCache(J)Lcom/smedialink/manager/multireply/message/MessageLinkPattern;
    .locals 2

    .line 27
    new-instance v0, Lcom/smedialink/manager/multireply/message/MessageLinkPattern;

    .line 29
    iget-object v1, p0, Lcom/smedialink/manager/multireply/message/MessageLinkCache;->chatRootLinkCache:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string p2, "{#}"

    .line 27
    invoke-direct {v0, p2, p1}, Lcom/smedialink/manager/multireply/message/MessageLinkPattern;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final getLinkPatternFromCache(J)Lio/reactivex/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/Observable<",
            "Lcom/smedialink/manager/multireply/message/MessageLinkPattern;",
            ">;"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/smedialink/manager/multireply/message/MessageLinkCache;->requestPatternFromCache(J)Lcom/smedialink/manager/multireply/message/MessageLinkPattern;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 22
    invoke-static {p1}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 23
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "empty()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-object p1
.end method

.method public final writeLinkToCache(Ljava/lang/String;IJ)Lcom/smedialink/manager/multireply/message/MessageLinkPattern;
    .locals 8

    const-string v0, "link"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/smedialink/manager/multireply/message/MessageLinkCache;->chatRootLinkCache:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "{#}"

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-direct {p0, p3, p4}, Lcom/smedialink/manager/multireply/message/MessageLinkCache;->requestPatternFromCache(J)Lcom/smedialink/manager/multireply/message/MessageLinkPattern;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1
.end method
