.class public final Lcom/smedialink/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl$managePermissionSettings$$inlined$mapSuccess$1;
.super Lkotlin/jvm/internal/Lambda;
.source "FirebaseExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl;->managePermissionSettings(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;ZLjava/util/List;)Lio/reactivex/Observable;
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
        "Ljava/lang/Object;",
        ">;",
        "Lcom/smedialink/storage/domain/model/Result<",
        "+",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFirebaseExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FirebaseExt.kt\ncom/smedialink/storage/data/utils/extentions/FirebaseExtKt$mapSuccess$1\n+ 2 CryptoPermissionRepositoryImpl.kt\ncom/smedialink/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl\n+ 3 ResultExt.kt\ncom/smedialink/storage/domain/utils/extentions/ResultExtKt\n*L\n1#1,86:1\n91#2,6:87\n9#3:93\n7#3:94\n*S KotlinDebug\n*F\n+ 1 FirebaseExt.kt\ncom/smedialink/storage/data/utils/extentions/FirebaseExtKt$mapSuccess$1\n*L\n71#1:93\n72#1:94\n*E\n"
.end annotation


# instance fields
.field final synthetic $errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

.field final synthetic $isAllowForEveryone$inlined:Z

.field final synthetic $whitelistUsers$inlined:Ljava/util/List;

.field final synthetic this$0:Lcom/smedialink/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/smedialink/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl;ZLjava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl$managePermissionSettings$$inlined$mapSuccess$1;->$errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    iput-object p2, p0, Lcom/smedialink/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl$managePermissionSettings$$inlined$mapSuccess$1;->this$0:Lcom/smedialink/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl;

    iput-boolean p3, p0, Lcom/smedialink/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl$managePermissionSettings$$inlined$mapSuccess$1;->$isAllowForEveryone$inlined:Z

    iput-object p4, p0, Lcom/smedialink/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl$managePermissionSettings$$inlined$mapSuccess$1;->$whitelistUsers$inlined:Ljava/util/List;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse;)Lcom/smedialink/storage/domain/model/Result;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1}, Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse;->isSuccess()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 87
    iget-object p1, p0, Lcom/smedialink/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl$managePermissionSettings$$inlined$mapSuccess$1;->this$0:Lcom/smedialink/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl;

    invoke-static {p1}, Lcom/smedialink/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl;->access$getCryptoPreferenceHelper$p(Lcom/smedialink/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl;)Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    move-result-object p1

    invoke-interface {p1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getWalletInfoMetadata()Lcom/smedialink/storage/data/locale/prefs/model/CryptoWalletInformationMetadata;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/storage/data/locale/prefs/model/CryptoWalletInformationMetadata;->getWalletInfo()Lcom/smedialink/storage/domain/model/crypto/CryptoWalletInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 88
    iget-boolean v6, p0, Lcom/smedialink/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl$managePermissionSettings$$inlined$mapSuccess$1;->$isAllowForEveryone$inlined:Z

    .line 89
    iget-object v7, p0, Lcom/smedialink/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl$managePermissionSettings$$inlined$mapSuccess$1;->$whitelistUsers$inlined:Ljava/util/List;

    const/4 v8, 0x7

    const/4 v9, 0x0

    .line 87
    invoke-static/range {v2 .. v9}, Lcom/smedialink/storage/domain/model/crypto/CryptoWalletInfo;->copy$default(Lcom/smedialink/storage/domain/model/crypto/CryptoWalletInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/crypto/CryptoWalletInfo;

    move-result-object v1

    .line 91
    :cond_0
    iget-object p1, p0, Lcom/smedialink/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl$managePermissionSettings$$inlined$mapSuccess$1;->this$0:Lcom/smedialink/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl;

    invoke-static {p1}, Lcom/smedialink/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl;->access$getCryptoPreferenceHelper$p(Lcom/smedialink/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl;)Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    move-result-object p1

    new-instance v0, Lcom/smedialink/storage/data/locale/prefs/model/CryptoWalletInformationMetadata;

    invoke-static {}, Lcom/smedialink/storage/data/utils/extentions/DateExtKt;->now()J

    move-result-wide v2

    invoke-direct {v0, v2, v3, v1}, Lcom/smedialink/storage/data/locale/prefs/model/CryptoWalletInformationMetadata;-><init>(JLcom/smedialink/storage/domain/model/crypto/CryptoWalletInfo;)V

    invoke-interface {p1, v0}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->setWalletInfoMetadata(Lcom/smedialink/storage/data/locale/prefs/model/CryptoWalletInformationMetadata;)V

    .line 92
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 9
    sget-object v0, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    invoke-virtual {v0, p1}, Lcom/smedialink/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p1

    goto :goto_0

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl$managePermissionSettings$$inlined$mapSuccess$1;->$errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    invoke-virtual {v0, p1}, Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;->handleError(Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse;)Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    .line 7
    sget-object v0, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lcom/smedialink/storage/domain/model/Result$Companion;->error$default(Lcom/smedialink/storage/domain/model/Result$Companion;Lcom/smedialink/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 70
    check-cast p1, Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse;

    invoke-virtual {p0, p1}, Lcom/smedialink/storage/data/repository/crypto/permission/CryptoPermissionRepositoryImpl$managePermissionSettings$$inlined$mapSuccess$1;->invoke(Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p1

    return-object p1
.end method
