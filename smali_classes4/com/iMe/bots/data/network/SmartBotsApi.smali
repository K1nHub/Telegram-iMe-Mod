.class public interface abstract Lcom/iMe/bots/data/network/SmartBotsApi;
.super Ljava/lang/Object;
.source "SmartBotsApi.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/bots/data/network/SmartBotsApi$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/iMe/bots/data/network/SmartBotsApi$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/iMe/bots/data/network/SmartBotsApi$Companion;->$$INSTANCE:Lcom/iMe/bots/data/network/SmartBotsApi$Companion;

    sput-object v0, Lcom/iMe/bots/data/network/SmartBotsApi;->Companion:Lcom/iMe/bots/data/network/SmartBotsApi$Companion;

    return-void
.end method


# virtual methods
.method public abstract appInstall(Ljava/lang/String;IJ)Lio/reactivex/Single;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "app_id"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "type"
        .end annotation
    .end param
    .param p3    # J
        .annotation runtime Lretrofit2/http/Query;
            value = "user_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJ)",
            "Lio/reactivex/Single<",
            "Lcom/iMe/bots/data/model/network/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/installDeleteApp"
    .end annotation
.end method

.method public abstract botInstall(Ljava/lang/String;IJ)Lio/reactivex/Single;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "bot_id"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "type"
        .end annotation
    .end param
    .param p3    # J
        .annotation runtime Lretrofit2/http/Query;
            value = "user_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJ)",
            "Lio/reactivex/Single<",
            "Lcom/iMe/bots/data/model/network/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/installDeleteBot"
    .end annotation
.end method

.method public abstract getBotsInfo()Lio/reactivex/Single;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lcom/iMe/bots/data/model/network/Response<",
            "Ljava/util/List<",
            "Lcom/iMe/bots/data/model/network/BotRemoteInfo;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/getBotsInfo"
    .end annotation
.end method

.method public abstract getBotsVoting(J)Lio/reactivex/Single;
    .param p1    # J
        .annotation runtime Lretrofit2/http/Query;
            value = "user_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/Single<",
            "Lcom/iMe/bots/data/model/network/Response<",
            "Ljava/util/List<",
            "Lcom/iMe/bots/data/model/network/BotVoteInfo;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/getBotVoting"
    .end annotation
.end method

.method public abstract validatePurchases(Ljava/util/List;)Lio/reactivex/Single;
    .param p1    # Ljava/util/List;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/bots/domain/model/ShopProduct$Receipt;",
            ">;)",
            "Lio/reactivex/Single<",
            "Lcom/iMe/bots/data/model/network/Response<",
            "Ljava/util/List<",
            "Lcom/iMe/bots/data/model/network/ValidationInfo;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/validateReceipts"
    .end annotation
.end method

.method public abstract voteForBot(Ljava/lang/String;IJ)Lio/reactivex/Single;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "bot_id"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "rating"
        .end annotation
    .end param
    .param p3    # J
        .annotation runtime Lretrofit2/http/Query;
            value = "user_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJ)",
            "Lio/reactivex/Single<",
            "Lcom/iMe/bots/data/model/network/Response<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/voteBot"
    .end annotation
.end method
