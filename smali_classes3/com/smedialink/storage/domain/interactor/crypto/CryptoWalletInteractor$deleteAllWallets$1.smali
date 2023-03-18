.class final Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor$deleteAllWallets$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CryptoWalletInteractor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor;->deleteAllWallets(Z)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "[",
        "Ljava/lang/Object;",
        "Lcom/smedialink/storage/domain/model/Result<",
        "+",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCryptoWalletInteractor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CryptoWalletInteractor.kt\ncom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor$deleteAllWallets$1\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 ResultExt.kt\ncom/smedialink/storage/domain/utils/extentions/ResultExtKt\n*L\n1#1,232:1\n4098#2,11:233\n766#3:244\n857#3,2:245\n8#4:247\n*S KotlinDebug\n*F\n+ 1 CryptoWalletInteractor.kt\ncom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor$deleteAllWallets$1\n*L\n114#1:233,11\n114#1:244\n114#1:245,2\n115#1:247\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor$deleteAllWallets$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor$deleteAllWallets$1;

    invoke-direct {v0}, Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor$deleteAllWallets$1;-><init>()V

    sput-object v0, Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor$deleteAllWallets$1;->INSTANCE:Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor$deleteAllWallets$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke([Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/smedialink/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "results"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4098
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4107
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    instance-of v5, v4, Lcom/smedialink/storage/domain/model/Result$Success;

    if-eqz v5, :cond_0

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 766
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/smedialink/storage/domain/model/Result$Success;

    .line 114
    invoke-virtual {v4}, Lcom/smedialink/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 857
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 115
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    array-length p1, p1

    if-ne v0, p1, :cond_4

    const/4 v2, 0x1

    :cond_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 8
    sget-object v0, Lcom/smedialink/storage/domain/model/Result;->Companion:Lcom/smedialink/storage/domain/model/Result$Companion;

    invoke-virtual {v0, p1}, Lcom/smedialink/storage/domain/model/Result$Companion;->success(Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 113
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/smedialink/storage/domain/interactor/crypto/CryptoWalletInteractor$deleteAllWallets$1;->invoke([Ljava/lang/Object;)Lcom/smedialink/storage/domain/model/Result;

    move-result-object p1

    return-object p1
.end method
