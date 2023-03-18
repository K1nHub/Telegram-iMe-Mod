.class public final Lcom/smedialink/storage/data/repository/crypto/CryptoWalletRepositoryImpl$unlinkWallet$$inlined$mapError$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ObservableExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/storage/data/repository/crypto/CryptoWalletRepositoryImpl;->unlinkWallet(Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/storage/domain/model/crypto/BlockchainType;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/smedialink/storage/domain/model/Result<",
        "+",
        "Ljava/lang/Boolean;",
        ">;",
        "Lcom/smedialink/storage/domain/model/Result<",
        "+",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObservableExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObservableExt.kt\ncom/smedialink/storage/domain/utils/extentions/ObservableExtKt$mapError$1\n+ 2 CryptoWalletRepositoryImpl.kt\ncom/smedialink/storage/data/repository/crypto/CryptoWalletRepositoryImpl\n+ 3 ResultExt.kt\ncom/smedialink/storage/domain/utils/extentions/ResultExtKt\n*L\n1#1,81:1\n57#2:82\n8#3:83\n*S KotlinDebug\n*F\n+ 1 CryptoWalletRepositoryImpl.kt\ncom/smedialink/storage/data/repository/crypto/CryptoWalletRepositoryImpl\n*L\n57#1:83\n*E\n"
.end annotation


# instance fields
.field final synthetic $errorStatus:Lcom/smedialink/storage/data/network/model/error/IErrorStatus;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/data/network/model/error/IErrorStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/storage/data/repository/crypto/CryptoWalletRepositoryImpl$unlinkWallet$$inlined$mapError$1;->$errorStatus:Lcom/smedialink/storage/data/network/model/error/IErrorStatus;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/smedialink/storage/domain/model/Result;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/Result<",
            "+",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/smedialink/storage/domain/model/Result<",
            "+",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Success;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Error;

    if-eqz v0, :cond_2

    .line 68
    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/data/network/model/error/ErrorModel;->getStatus()Lcom/smedialink/storage/data/network/model/error/IErrorStatus;

    move-result-object v0

    iget-object v2, p0, Lcom/smedialink/storage/data/repository/crypto/CryptoWalletRepositoryImpl$unlinkWallet$$inlined$mapError$1;->$errorStatus:Lcom/smedialink/storage/data/network/model/error/IErrorStatus;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    .line 82
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 8
    sget-object v0, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    invoke-virtual {v0, p1}, Lcom/smedialink/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p1

    goto :goto_0

    .line 69
    :cond_1
    sget-object v0, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lcom/smedialink/storage/domain/model/Result$Companion;->error$default(Lcom/smedialink/storage/domain/model/Result$Companion;Lcom/smedialink/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type R of com.smedialink.storage.domain.utils.extentions.ObservableExtKt.mapError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_2
    instance-of v0, p1, Ljava/lang/Object;

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move-object p1, v1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 64
    check-cast p1, Lcom/smedialink/storage/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/smedialink/storage/data/repository/crypto/CryptoWalletRepositoryImpl$unlinkWallet$$inlined$mapError$1;->invoke(Lcom/smedialink/storage/domain/model/Result;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
