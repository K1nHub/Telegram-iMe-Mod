.class public final Lcom/iMe/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl$registerInAirdrop$$inlined$mapSuccess$1;
.super Lkotlin/jvm/internal/Lambda;
.source "FirebaseExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl;->registerInAirdrop(Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropVersion;)Lio/reactivex/Observable;
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
        "Lcom/iMe/storage/data/network/model/response/crypto/airdrop/RegisterInAirdropPromotionResponse;",
        ">;",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFirebaseExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FirebaseExt.kt\ncom/iMe/storage/data/utils/extentions/FirebaseExtKt$mapSuccess$1\n+ 2 AirdropRepositoryImpl.kt\ncom/iMe/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl\n+ 3 ResultExt.kt\ncom/iMe/storage/domain/utils/extentions/ResultExtKt\n*L\n1#1,86:1\n39#2,8:87\n9#3:95\n7#3:96\n*S KotlinDebug\n*F\n+ 1 FirebaseExt.kt\ncom/iMe/storage/data/utils/extentions/FirebaseExtKt$mapSuccess$1\n*L\n71#1:95\n72#1:96\n*E\n"
.end annotation


# instance fields
.field final synthetic $errorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

.field final synthetic this$0:Lcom/iMe/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/iMe/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl$registerInAirdrop$$inlined$mapSuccess$1;->$errorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    iput-object p2, p0, Lcom/iMe/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl$registerInAirdrop$$inlined$mapSuccess$1;->this$0:Lcom/iMe/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;)Lcom/iMe/storage/domain/model/Result;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse<",
            "Lcom/iMe/storage/data/network/model/response/crypto/airdrop/RegisterInAirdropPromotionResponse;",
            ">;)",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/String;",
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
    iget-object v0, p0, Lcom/iMe/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl$registerInAirdrop$$inlined$mapSuccess$1;->this$0:Lcom/iMe/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl;

    invoke-static {v0}, Lcom/iMe/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl;->access$getCryptoPreferenceHelper$p(Lcom/iMe/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl;)Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;

    move-result-object v0

    .line 90
    invoke-virtual {p1}, Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;->getPayload()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iMe/storage/data/network/model/response/crypto/airdrop/RegisterInAirdropPromotionResponse;

    invoke-virtual {v1}, Lcom/iMe/storage/data/network/model/response/crypto/airdrop/RegisterInAirdropPromotionResponse;->getRequestId()Ljava/lang/String;

    move-result-object v5

    .line 91
    sget-object v7, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;->UNKNOWN:Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;

    .line 92
    sget-object v6, Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;->UNKNOWN:Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;

    .line 87
    new-instance v1, Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;-><init>(ZILjava/lang/String;Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropStatus;Lcom/iMe/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;)V

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;->setAirdropMetadata(Lcom/iMe/storage/data/locale/prefs/model/WalletAirdropMetadata;)V

    .line 94
    invoke-virtual {p1}, Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;->getPayload()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/data/network/model/response/crypto/airdrop/RegisterInAirdropPromotionResponse;

    invoke-virtual {p1}, Lcom/iMe/storage/data/network/model/response/crypto/airdrop/RegisterInAirdropPromotionResponse;->getRequestId()Ljava/lang/String;

    move-result-object p1

    .line 9
    sget-object v0, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    invoke-virtual {v0, p1}, Lcom/iMe/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/iMe/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl$registerInAirdrop$$inlined$mapSuccess$1;->$errorHandler:Lcom/iMe/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

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

    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl$registerInAirdrop$$inlined$mapSuccess$1;->invoke(Lcom/iMe/storage/data/network/model/response/base/ApiBaseResponse;)Lcom/iMe/storage/domain/model/Result;

    move-result-object p1

    return-object p1
.end method
