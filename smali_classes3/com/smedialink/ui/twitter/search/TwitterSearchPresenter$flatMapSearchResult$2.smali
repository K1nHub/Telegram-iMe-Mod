.class final Lcom/smedialink/ui/twitter/search/TwitterSearchPresenter$flatMapSearchResult$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TwitterSearchPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/twitter/search/TwitterSearchPresenter;->flatMapSearchResult(Lcom/smedialink/storage/domain/model/Result;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/List<",
        "+",
        "Lorg/telegram/tgnet/TLRPC$User;",
        ">;",
        "Lcom/smedialink/storage/domain/model/Result<",
        "+",
        "Ljava/util/List<",
        "+",
        "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
        ">;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTwitterSearchPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TwitterSearchPresenter.kt\ncom/smedialink/ui/twitter/search/TwitterSearchPresenter$flatMapSearchResult$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 ResultExt.kt\ncom/smedialink/storage/domain/utils/extentions/ResultExtKt\n*L\n1#1,301:1\n1603#2,9:302\n1855#2:311\n1856#2:314\n1612#2:315\n1#3:312\n1#3:313\n8#4:316\n*S KotlinDebug\n*F\n+ 1 TwitterSearchPresenter.kt\ncom/smedialink/ui/twitter/search/TwitterSearchPresenter$flatMapSearchResult$2\n*L\n259#1:302,9\n259#1:311\n259#1:314\n259#1:315\n259#1:313\n268#1:316\n*E\n"
.end annotation


# instance fields
.field final synthetic $twitterProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/twitter/TwitterUserInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/twitter/TwitterUserInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/smedialink/ui/twitter/search/TwitterSearchPresenter$flatMapSearchResult$2;->$twitterProfiles:Ljava/util/List;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/util/List;)Lcom/smedialink/storage/domain/model/Result;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;)",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;>;"
        }
    .end annotation

    const-string v0, "users"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/smedialink/ui/twitter/search/TwitterSearchPresenter$flatMapSearchResult$2;->$twitterProfiles:Ljava/util/List;

    .line 1603
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1855
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1611
    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    .line 260
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/smedialink/storage/domain/model/twitter/TwitterUserInfo;

    invoke-virtual {v6}, Lcom/smedialink/storage/domain/model/twitter/TwitterUserInfo;->getTelegramUserId()Ljava/lang/Long;

    move-result-object v6

    iget-wide v7, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v6, v9, v7

    if-nez v6, :cond_3

    const/4 v6, 0x1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_1

    goto :goto_3

    :cond_4
    move-object v4, v5

    :goto_3
    check-cast v4, Lcom/smedialink/storage/domain/model/twitter/TwitterUserInfo;

    if-eqz v4, :cond_5

    .line 261
    new-instance v5, Lcom/smedialink/model/twitter/TwitterUserItem;

    .line 263
    invoke-virtual {v4}, Lcom/smedialink/storage/domain/model/twitter/TwitterUserInfo;->getTwitterName()Ljava/lang/String;

    move-result-object v3

    .line 264
    invoke-virtual {v4}, Lcom/smedialink/storage/domain/model/twitter/TwitterUserInfo;->getTwitterUsername()Ljava/lang/String;

    move-result-object v6

    .line 265
    invoke-virtual {v4}, Lcom/smedialink/storage/domain/model/twitter/TwitterUserInfo;->getTwitterAvatarUrl()Ljava/lang/String;

    move-result-object v4

    .line 261
    invoke-direct {v5, v2, v3, v6, v4}, Lcom/smedialink/model/twitter/TwitterUserItem;-><init>(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-eqz v5, :cond_0

    .line 1611
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_6
    sget-object p1, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    invoke-virtual {p1, v1}, Lcom/smedialink/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 258
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/twitter/search/TwitterSearchPresenter$flatMapSearchResult$2;->invoke(Ljava/util/List;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p1

    return-object p1
.end method
