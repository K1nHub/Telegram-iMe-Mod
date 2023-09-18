.class final Lcom/iMe/utils/helper/wallet/AuthHelper$subscribeToAuthSubject$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AuthHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/utils/helper/wallet/AuthHelper;->subscribeToAuthSubject()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Lio/reactivex/ObservableSource<",
        "+",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Lcom/iMe/storage/domain/model/wallet/SessionTokens;",
        ">;>;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/utils/helper/wallet/AuthHelper$subscribeToAuthSubject$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/utils/helper/wallet/AuthHelper$subscribeToAuthSubject$1$1;

    invoke-direct {v0}, Lcom/iMe/utils/helper/wallet/AuthHelper$subscribeToAuthSubject$1$1;-><init>()V

    sput-object v0, Lcom/iMe/utils/helper/wallet/AuthHelper$subscribeToAuthSubject$1$1;->INSTANCE:Lcom/iMe/utils/helper/wallet/AuthHelper$subscribeToAuthSubject$1$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/String;)Lio/reactivex/ObservableSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/wallet/SessionTokens;",
            ">;>;"
        }
    .end annotation

    const-string v0, "authUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    sget-object v0, Lcom/iMe/utils/helper/wallet/AuthHelper;->INSTANCE:Lcom/iMe/utils/helper/wallet/AuthHelper;

    invoke-static {v0}, Lcom/iMe/utils/helper/wallet/AuthHelper;->access$getWalletSessionInteractor(Lcom/iMe/utils/helper/wallet/AuthHelper;)Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor;->login(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 221
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iMe/utils/helper/wallet/AuthHelper$subscribeToAuthSubject$1$1;->invoke(Ljava/lang/String;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
