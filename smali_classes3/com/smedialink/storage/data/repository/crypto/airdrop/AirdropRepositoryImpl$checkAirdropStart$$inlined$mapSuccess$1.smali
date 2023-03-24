.class public final Lcom/smedialink/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl$checkAirdropStart$$inlined$mapSuccess$1;
.super Lkotlin/jvm/internal/Lambda;
.source "FirebaseExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl;->checkAirdropStart(Ljava/lang/String;Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropVersion;)Lio/reactivex/Observable;
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
        "Lcom/smedialink/storage/data/network/model/response/crypto/airdrop/CheckAirdropPromotionStartResponse;",
        ">;",
        "Lcom/smedialink/storage/domain/model/Result<",
        "+",
        "Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropInfo;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFirebaseExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FirebaseExt.kt\ncom/smedialink/storage/data/utils/extentions/FirebaseExtKt$mapSuccess$1\n+ 2 AirdropRepositoryImpl.kt\ncom/smedialink/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl\n+ 3 ResultExt.kt\ncom/smedialink/storage/domain/utils/extentions/ResultExtKt\n*L\n1#1,86:1\n60#2,9:87\n9#3:96\n7#3:97\n*S KotlinDebug\n*F\n+ 1 FirebaseExt.kt\ncom/smedialink/storage/data/utils/extentions/FirebaseExtKt$mapSuccess$1\n*L\n71#1:96\n72#1:97\n*E\n"
.end annotation


# instance fields
.field final synthetic $errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

.field final synthetic this$0:Lcom/smedialink/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;Lcom/smedialink/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl$checkAirdropStart$$inlined$mapSuccess$1;->$errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

    iput-object p2, p0, Lcom/smedialink/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl$checkAirdropStart$$inlined$mapSuccess$1;->this$0:Lcom/smedialink/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl;

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
            "Lcom/smedialink/storage/data/network/model/response/crypto/airdrop/CheckAirdropPromotionStartResponse;",
            ">;)",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropInfo;",
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
    invoke-virtual {p1}, Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse;->getPayload()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smedialink/storage/data/network/model/response/crypto/airdrop/CheckAirdropPromotionStartResponse;

    iget-object v0, p0, Lcom/smedialink/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl$checkAirdropStart$$inlined$mapSuccess$1;->this$0:Lcom/smedialink/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl;

    invoke-static {v0}, Lcom/smedialink/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl;->access$getCryptoPreferenceHelper$p(Lcom/smedialink/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl;)Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getAirdropMetadata()Lcom/smedialink/storage/data/locale/prefs/model/WalletAirdropMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/data/locale/prefs/model/WalletAirdropMetadata;->getAirdropRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/smedialink/storage/data/mapper/crypto/AirdropMappingKt;->mapToDomain(Lcom/smedialink/storage/data/network/model/response/crypto/airdrop/CheckAirdropPromotionStartResponse;Ljava/lang/String;)Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropInfo;

    move-result-object p1

    .line 88
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropInfo$Ready;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl$checkAirdropStart$$inlined$mapSuccess$1;->this$0:Lcom/smedialink/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl;

    invoke-static {v0}, Lcom/smedialink/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl;->access$getCryptoPreferenceHelper$p(Lcom/smedialink/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl;)Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/smedialink/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl$checkAirdropStart$$inlined$mapSuccess$1;->this$0:Lcom/smedialink/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl;

    invoke-static {v1}, Lcom/smedialink/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl;->access$getCryptoPreferenceHelper$p(Lcom/smedialink/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl;)Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;

    move-result-object v1

    invoke-interface {v1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->getAirdropMetadata()Lcom/smedialink/storage/data/locale/prefs/model/WalletAirdropMetadata;

    move-result-object v2

    .line 90
    move-object v1, p1

    check-cast v1, Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropInfo$Ready;

    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropInfo$Ready;->getRequestId()Ljava/lang/String;

    move-result-object v5

    .line 91
    invoke-virtual {v1}, Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropInfo$Ready;->getTokenValue()I

    move-result v4

    .line 92
    sget-object v6, Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropStatus;->READY:Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropStatus;

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x11

    const/4 v9, 0x0

    .line 89
    invoke-static/range {v2 .. v9}, Lcom/smedialink/storage/data/locale/prefs/model/WalletAirdropMetadata;->copy$default(Lcom/smedialink/storage/data/locale/prefs/model/WalletAirdropMetadata;ZILjava/lang/String;Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropStatus;Lcom/smedialink/storage/domain/model/crypto/airdrop/AirdropDisplayStatus;ILjava/lang/Object;)Lcom/smedialink/storage/data/locale/prefs/model/WalletAirdropMetadata;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;->setAirdropMetadata(Lcom/smedialink/storage/data/locale/prefs/model/WalletAirdropMetadata;)V

    .line 9
    :cond_0
    sget-object v0, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    invoke-virtual {v0, p1}, Lcom/smedialink/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p1

    goto :goto_0

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/smedialink/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl$checkAirdropStart$$inlined$mapSuccess$1;->$errorHandler:Lcom/smedialink/storage/data/network/handlers/impl/FirebaseFunctionsErrorHandler;

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

    invoke-virtual {p0, p1}, Lcom/smedialink/storage/data/repository/crypto/airdrop/AirdropRepositoryImpl$checkAirdropStart$$inlined$mapSuccess$1;->invoke(Lcom/smedialink/storage/data/network/model/response/base/ApiBaseResponse;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p1

    return-object p1
.end method
