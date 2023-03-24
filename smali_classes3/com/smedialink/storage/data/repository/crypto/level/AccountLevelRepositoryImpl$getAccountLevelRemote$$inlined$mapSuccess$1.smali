.class public final Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl$getAccountLevelRemote$$inlined$mapSuccess$1;
.super Lkotlin/jvm/internal/Lambda;
.source "FirebaseExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl;->getAccountLevelRemote(J)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse<",
        "Lcom/smedialink/storage/data/network/model/response/crypto/level/GetAccountLevelResponse;",
        ">;",
        "Lcom/smedialink/storage/domain/model/Result<",
        "+",
        "Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFirebaseExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FirebaseExt.kt\ncom/smedialink/storage/data/utils/extentions/FirebaseExtKt$mapSuccess$1\n+ 2 AccountLevelRepositoryImpl.kt\ncom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl\n+ 3 ResultExt.kt\ncom/smedialink/storage/domain/utils/extentions/ResultExtKt\n*L\n1#1,86:1\n65#2,11:87\n9#3:98\n7#3:99\n*S KotlinDebug\n*F\n+ 1 FirebaseExt.kt\ncom/smedialink/storage/data/utils/extentions/FirebaseExtKt$mapSuccess$1\n*L\n71#1:98\n72#1:99\n*E\n"
.end annotation


# instance fields
.field final synthetic $errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

.field final synthetic $userId$inlined:J

.field final synthetic this$0:Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl;J)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl$getAccountLevelRemote$$inlined$mapSuccess$1;->$errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    iput-object p2, p0, Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl$getAccountLevelRemote$$inlined$mapSuccess$1;->this$0:Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl;

    iput-wide p3, p0, Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl$getAccountLevelRemote$$inlined$mapSuccess$1;->$userId$inlined:J

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse;)Lcom/smedialink/storage/domain/model/Result;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/smedialink/storage/data/network/model/response/crypto/level/GetAccountLevelResponse;",
            ">;)",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;",
            ">;"
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1}, Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    sget-object v0, Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;->Companion:Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel$Companion;

    invoke-virtual {p1}, Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse;->getPayload()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smedialink/storage/data/network/model/response/crypto/level/GetAccountLevelResponse;

    invoke-virtual {p1}, Lcom/smedialink/storage/data/network/model/response/crypto/level/GetAccountLevelResponse;->getAccountRank()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;

    move-result-object p1

    iget-wide v0, p0, Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl$getAccountLevelRemote$$inlined$mapSuccess$1;->$userId$inlined:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl$getAccountLevelRemote$$inlined$mapSuccess$1;->this$0:Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl;

    invoke-static {v1}, Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl;->access$getCachedUserAccountLevel$p(Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl$getAccountLevelRemote$$inlined$mapSuccess$1;->this$0:Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl;

    invoke-static {v0}, Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl;->access$getTelegramGateway$p(Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl;)Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    move-result-object v0

    invoke-interface {v0}, Lcom/smedialink/storage/domain/gateway/TelegramGateway;->getSelectedAccountId()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl$getAccountLevelRemote$$inlined$mapSuccess$1;->$userId$inlined:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl$getAccountLevelRemote$$inlined$mapSuccess$1;->this$0:Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl;

    invoke-static {v0}, Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl;->access$getCryptoPreferenceHelper$p(Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl;)Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    move-result-object v0

    new-instance v1, Lcom/smedialink/storage/data/locale/prefs/model/AccountLevelMetadata;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/smedialink/storage/data/locale/prefs/model/AccountLevelMetadata;-><init>(Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;I)V

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->setAccountLevelMetadata(Lcom/smedialink/storage/data/locale/prefs/model/AccountLevelMetadata;)V

    .line 9
    :cond_0
    sget-object v0, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    invoke-virtual {v0, p1}, Lcom/smedialink/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p1

    goto :goto_0

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl$getAccountLevelRemote$$inlined$mapSuccess$1;->$errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    invoke-virtual {v0, p1}, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;->handleError(Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse;)Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    .line 7
    sget-object v0, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lcom/smedialink/storage/domain/model/Result$Companion;->error$default(Lcom/smedialink/storage/domain/model/Result$Companion;Lcom/smedialink/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 70
    check-cast p1, Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse;

    invoke-virtual {p0, p1}, Lcom/smedialink/storage/data/repository/crypto/level/AccountLevelRepositoryImpl$getAccountLevelRemote$$inlined$mapSuccess$1;->invoke(Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p1

    return-object p1
.end method
