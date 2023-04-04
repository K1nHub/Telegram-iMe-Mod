.class final Lcom/iMe/bots/data/repository/BotsRepository$sendBotInstallEvent$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BotsRepository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/bots/data/repository/BotsRepository;->sendBotInstallEvent(Ljava/lang/String;J)Lio/reactivex/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/bots/data/model/network/Response<",
        "Ljava/lang/String;",
        ">;",
        "Lio/reactivex/CompletableSource;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/bots/data/repository/BotsRepository$sendBotInstallEvent$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/bots/data/repository/BotsRepository$sendBotInstallEvent$1;

    invoke-direct {v0}, Lcom/iMe/bots/data/repository/BotsRepository$sendBotInstallEvent$1;-><init>()V

    sput-object v0, Lcom/iMe/bots/data/repository/BotsRepository$sendBotInstallEvent$1;->INSTANCE:Lcom/iMe/bots/data/repository/BotsRepository$sendBotInstallEvent$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/iMe/bots/data/model/network/Response;)Lio/reactivex/CompletableSource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/bots/data/model/network/Response<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/reactivex/CompletableSource;"
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p1}, Lcom/iMe/bots/data/model/network/Response;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ok"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-static {}, Lio/reactivex/Completable;->complete()Lio/reactivex/Completable;

    move-result-object p1

    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {p1}, Lcom/iMe/bots/data/model/network/Response;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "error"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    new-instance v0, Ljava/lang/Exception;

    invoke-virtual {p1}, Lcom/iMe/bots/data/model/network/Response;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Completable;->error(Ljava/lang/Throwable;)Lio/reactivex/Completable;

    move-result-object p1

    goto :goto_0

    .line 125
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Unknown error"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/Completable;->error(Ljava/lang/Throwable;)Lio/reactivex/Completable;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 118
    check-cast p1, Lcom/iMe/bots/data/model/network/Response;

    invoke-virtual {p0, p1}, Lcom/iMe/bots/data/repository/BotsRepository$sendBotInstallEvent$1;->invoke(Lcom/iMe/bots/data/model/network/Response;)Lio/reactivex/CompletableSource;

    move-result-object p1

    return-object p1
.end method
