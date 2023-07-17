.class public final Lcom/iMe/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl$getPermissionSettings$$inlined$mapSuccess$1;
.super Lkotlin/jvm/internal/Lambda;
.source "FirebaseExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl;->getPermissionSettings(Z)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
        "Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoWalletsInfoResponse;",
        ">;",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Lcom/iMe/storage/domain/model/crypto/CryptoWalletsInfo;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFirebaseExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FirebaseExt.kt\ncom/iMe/storage/data/utils/extentions/FirebaseExtKt$mapSuccess$1\n+ 2 CryptoPermissionRepositoryImpl.kt\ncom/iMe/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl\n+ 3 ResultExt.kt\ncom/iMe/storage/domain/utils/extentions/ResultExtKt\n*L\n1#1,86:1\n69#2,3:87\n9#3:90\n7#3:91\n*S KotlinDebug\n*F\n+ 1 FirebaseExt.kt\ncom/iMe/storage/data/utils/extentions/FirebaseExtKt$mapSuccess$1\n*L\n71#1:90\n72#1:91\n*E\n"
.end annotation


# instance fields
.field final synthetic $errorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

.field final synthetic this$0:Lcom/iMe/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/iMe/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl$getPermissionSettings$$inlined$mapSuccess$1;->$errorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    iput-object p2, p0, Lcom/iMe/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl$getPermissionSettings$$inlined$mapSuccess$1;->this$0:Lcom/iMe/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;)Lcom/iMe/storage/domain/model/Result;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoWalletsInfoResponse;",
            ">;)",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/crypto/CryptoWalletsInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1}, Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p1}, Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;->getPayload()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoWalletsInfoResponse;

    invoke-static {p1}, Lcom/iMe/storage/data/mapper/crypto/WalletInformationMappingKt;->mapToDomain(Lcom/iMe/storage/data/network/model/response/crypto/wallet/CryptoWalletsInfoResponse;)Lcom/iMe/storage/domain/model/crypto/CryptoWalletsInfo;

    move-result-object p1

    .line 88
    iget-object v0, p0, Lcom/iMe/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl$getPermissionSettings$$inlined$mapSuccess$1;->this$0:Lcom/iMe/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl;

    invoke-static {v0}, Lcom/iMe/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl;->access$getCryptoPreferenceHelper$p(Lcom/iMe/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl;)Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    move-result-object v0

    new-instance v1, Lcom/iMe/storage/data/locale/prefs/model/CryptoWalletInformationMetadata;

    invoke-static {}, Lcom/iMe/storage/data/utils/extentions/DateExtKt;->now()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, p1}, Lcom/iMe/storage/data/locale/prefs/model/CryptoWalletInformationMetadata;-><init>(JLcom/iMe/storage/domain/model/crypto/CryptoWalletsInfo;)V

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->setWalletInfoMetadata(Lcom/iMe/storage/data/locale/prefs/model/CryptoWalletInformationMetadata;)V

    .line 9
    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    invoke-virtual {v0, p1}, Lcom/iMe/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/iMe/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl$getPermissionSettings$$inlined$mapSuccess$1;->$errorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    invoke-virtual {v0, p1}, Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;->handleError(Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;)Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    .line 7
    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1, v2}, Lcom/iMe/storage/domain/model/Result$Companion;->error$default(Lcom/iMe/storage/domain/model/Result$Companion;Lcom/iMe/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 70
    check-cast p1, Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl$getPermissionSettings$$inlined$mapSuccess$1;->invoke(Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    return-object p1
.end method
