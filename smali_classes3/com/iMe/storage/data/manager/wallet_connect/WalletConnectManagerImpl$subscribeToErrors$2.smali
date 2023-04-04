.class final Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$subscribeToErrors$2;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletConnectManagerImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl;->subscribeToErrors()V
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
        "Ljava/lang/Class<",
        "Ljava/lang/Throwable;",
        ">;",
        "Ljava/lang/Throwable;",
        ">;",
        "Lio/reactivex/Observable<",
        "Ljava/lang/Throwable;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$subscribeToErrors$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$subscribeToErrors$2;

    invoke-direct {v0}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$subscribeToErrors$2;-><init>()V

    sput-object v0, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$subscribeToErrors$2;->INSTANCE:Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$subscribeToErrors$2;

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
            "Ljava/lang/Class<",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {p1, v1, v2, v0}, Lio/reactivex/Observable;->debounce(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 315
    check-cast p1, Lio/reactivex/observables/GroupedObservable;

    invoke-virtual {p0, p1}, Lcom/iMe/storage/data/manager/wallet_connect/WalletConnectManagerImpl$subscribeToErrors$2;->invoke(Lio/reactivex/observables/GroupedObservable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
