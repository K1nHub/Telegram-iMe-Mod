.class public final Lcom/smedialink/storage/data/manager/crypto/TONBlockchainCryptoWalletManagerImpl$generateMnemonic$$inlined$mapSuccess$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ObservableExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/storage/data/manager/crypto/TONBlockchainCryptoWalletManagerImpl;->generateMnemonic(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
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
        "Lcom/smedialink/storage/domain/model/crypto/Wallet;",
        ">;",
        "Lcom/smedialink/storage/domain/model/Result<",
        "+",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObservableExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObservableExt.kt\ncom/smedialink/storage/domain/utils/extentions/ObservableExtKt$mapSuccess$1\n+ 2 TONBlockchainCryptoWalletManagerImpl.kt\ncom/smedialink/storage/data/manager/crypto/TONBlockchainCryptoWalletManagerImpl\n+ 3 ResultExt.kt\ncom/smedialink/storage/domain/utils/extentions/ResultExtKt\n*L\n1#1,81:1\n69#2:82\n8#3:83\n*S KotlinDebug\n*F\n+ 1 TONBlockchainCryptoWalletManagerImpl.kt\ncom/smedialink/storage/data/manager/crypto/TONBlockchainCryptoWalletManagerImpl\n*L\n69#1:83\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

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
            "Lcom/smedialink/storage/domain/model/crypto/Wallet;",
            ">;)",
            "Lcom/smedialink/storage/domain/model/Result<",
            "+",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Success;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 82
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smedialink/storage/domain/model/crypto/Wallet$TON;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/crypto/Wallet$TON;->getMnemonic()Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    const-string v1, ""

    .line 8
    :cond_1
    sget-object p1, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    invoke-virtual {p1, v1}, Lcom/smedialink/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p1

    goto :goto_0

    .line 30
    :cond_2
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Error;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lcom/smedialink/storage/domain/model/Result$Companion;->error$default(Lcom/smedialink/storage/domain/model/Result$Companion;Lcom/smedialink/storage/data/network/model/error/ErrorModel;Ljava/lang/Object;ILjava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type R of com.smedialink.storage.domain.utils.extentions.ObservableExtKt.mapSuccess"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 31
    :cond_3
    instance-of v0, p1, Ljava/lang/Object;

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    move-object p1, v1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 27
    check-cast p1, Lcom/smedialink/storage/domain/model/Result;

    invoke-virtual {p0, p1}, Lcom/smedialink/storage/data/manager/crypto/TONBlockchainCryptoWalletManagerImpl$generateMnemonic$$inlined$mapSuccess$1;->invoke(Lcom/smedialink/storage/domain/model/Result;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
