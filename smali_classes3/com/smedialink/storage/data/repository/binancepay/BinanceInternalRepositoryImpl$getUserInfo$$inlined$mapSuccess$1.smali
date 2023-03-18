.class public final Lcom/smedialink/storage/data/repository/binancepay/BinanceInternalRepositoryImpl$getUserInfo$$inlined$mapSuccess$1;
.super Lkotlin/jvm/internal/Lambda;
.source "FirebaseExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/storage/data/repository/binancepay/BinanceInternalRepositoryImpl;->getUserInfo(Z)Lio/reactivex/Observable;
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
        "Lcom/smedialink/storage/data/network/model/response/binance/pay/BinancePayGetUserInfoResponse;",
        ">;",
        "Lcom/smedialink/storage/domain/model/Result<",
        "+",
        "Lcom/smedialink/storage/domain/model/binancepay/BinanceUserInfo;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFirebaseExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FirebaseExt.kt\ncom/smedialink/storage/data/utils/extentions/FirebaseExtKt$mapSuccess$1\n+ 2 BinanceInternalRepositoryImpl.kt\ncom/smedialink/storage/data/repository/binancepay/BinanceInternalRepositoryImpl\n+ 3 ResultExt.kt\ncom/smedialink/storage/domain/utils/extentions/ResultExtKt\n*L\n1#1,86:1\n62#2,3:87\n8#3:90\n6#3:91\n*S KotlinDebug\n*F\n+ 1 FirebaseExt.kt\ncom/smedialink/storage/data/utils/extentions/FirebaseExtKt$mapSuccess$1\n*L\n71#1:90\n72#1:91\n*E\n"
.end annotation


# instance fields
.field final synthetic $errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

.field final synthetic this$0:Lcom/smedialink/storage/data/repository/binancepay/BinanceInternalRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/smedialink/storage/data/repository/binancepay/BinanceInternalRepositoryImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/storage/data/repository/binancepay/BinanceInternalRepositoryImpl$getUserInfo$$inlined$mapSuccess$1;->$errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    iput-object p2, p0, Lcom/smedialink/storage/data/repository/binancepay/BinanceInternalRepositoryImpl$getUserInfo$$inlined$mapSuccess$1;->this$0:Lcom/smedialink/storage/data/repository/binancepay/BinanceInternalRepositoryImpl;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse;)Lcom/smedialink/storage/domain/model/Result;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/smedialink/storage/data/network/model/response/binance/pay/BinancePayGetUserInfoResponse;",
            ">;)",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/binancepay/BinanceUserInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1}, Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p1}, Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse;->getPayload()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smedialink/storage/data/network/model/response/binance/pay/BinancePayGetUserInfoResponse;

    invoke-static {p1}, Lcom/smedialink/storage/data/mapper/binancepay/BinancePayMappingKt;->mapToDomain(Lcom/smedialink/storage/data/network/model/response/binance/pay/BinancePayGetUserInfoResponse;)Lcom/smedialink/storage/domain/model/binancepay/BinanceUserInfo;

    move-result-object p1

    .line 88
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/binancepay/BinanceInternalRepositoryImpl$getUserInfo$$inlined$mapSuccess$1;->this$0:Lcom/smedialink/storage/data/repository/binancepay/BinanceInternalRepositoryImpl;

    invoke-static {v0}, Lcom/smedialink/storage/data/repository/binancepay/BinanceInternalRepositoryImpl;->access$getCryptoPreferenceHelper$p(Lcom/smedialink/storage/data/repository/binancepay/BinanceInternalRepositoryImpl;)Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    move-result-object v0

    invoke-static {p1}, Lcom/smedialink/storage/data/mapper/binancepay/BinancePayMappingKt;->mapToPrefs(Lcom/smedialink/storage/domain/model/binancepay/BinanceUserInfo;)Lcom/smedialink/storage/data/locale/prefs/model/binancepay/BinanceUserInfoMetadata;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->setBinanceUserInfo(Lcom/smedialink/storage/data/locale/prefs/model/binancepay/BinanceUserInfoMetadata;)V

    .line 8
    sget-object v0, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    invoke-virtual {v0, p1}, Lcom/smedialink/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p1

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/binancepay/BinanceInternalRepositoryImpl$getUserInfo$$inlined$mapSuccess$1;->$errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    invoke-virtual {v0, p1}, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;->handleError(Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse;)Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    .line 6
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

    invoke-virtual {p0, p1}, Lcom/smedialink/storage/data/repository/binancepay/BinanceInternalRepositoryImpl$getUserInfo$$inlined$mapSuccess$1;->invoke(Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p1

    return-object p1
.end method
