.class final Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$listenEvents$2;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletHomeCryptoPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->listenEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lio/reactivex/observables/GroupedObservable<",
        "Ljava/lang/Boolean;",
        "Lcom/iMe/storage/domain/utils/rx/event/RxEvent;",
        ">;",
        "Lio/reactivex/Observable<",
        "Lcom/iMe/storage/domain/utils/rx/event/RxEvent;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$listenEvents$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$listenEvents$2;

    invoke-direct {v0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$listenEvents$2;-><init>()V

    sput-object v0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$listenEvents$2;->INSTANCE:Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$listenEvents$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lio/reactivex/observables/GroupedObservable;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/observables/GroupedObservable<",
            "Ljava/lang/Boolean;",
            "Lcom/iMe/storage/domain/utils/rx/event/RxEvent;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/utils/rx/event/RxEvent;",
            ">;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 514
    invoke-virtual {p1}, Lio/reactivex/observables/GroupedObservable;->getKey()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1f4

    .line 515
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lio/reactivex/Observable;->debounce(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 513
    check-cast p1, Lio/reactivex/observables/GroupedObservable;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$listenEvents$2;->invoke(Lio/reactivex/observables/GroupedObservable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
