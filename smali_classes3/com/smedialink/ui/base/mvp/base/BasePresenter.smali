.class public Lcom/smedialink/ui/base/mvp/base/BasePresenter;
.super Lmoxy/MvpPresenter;
.source "BasePresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lmoxy/MvpView;",
        ">",
        "Lmoxy/MvpPresenter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final subscriptions:Lio/reactivex/disposables/CompositeDisposable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Lmoxy/MvpPresenter;-><init>()V

    .line 11
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method

.method public static synthetic autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 15
    iget-object p2, p0, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: autoDispose"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected final autoDispose(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p2, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method protected clearSubscriptions()V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 28
    invoke-virtual {p0}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->clearSubscriptions()V

    .line 29
    invoke-super {p0}, Lmoxy/MvpPresenter;->onDestroy()V

    return-void
.end method
