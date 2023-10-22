.class public final Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsPresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "TonFragmentProductDetailsPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTonFragmentProductDetailsPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TonFragmentProductDetailsPresenter.kt\ncom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsPresenter\n+ 2 CommonExt.kt\ncom/iMe/storage/data/utils/extentions/CommonExtKt\n+ 3 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n*L\n1#1,93:1\n6#2,6:94\n63#3,12:100\n*S KotlinDebug\n*F\n+ 1 TonFragmentProductDetailsPresenter.kt\ncom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsPresenter\n*L\n28#1:94,6\n59#1:100,12\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final expiresAt:J

.field private final productItem:Lcom/iMe/model/wallet/fragment/TonFragmentItem$Product;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;


# direct methods
.method public constructor <init>(Lcom/iMe/model/wallet/fragment/TonFragmentItem$Product;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;)V
    .locals 7

    const-string v0, "productItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsPresenter;->productItem:Lcom/iMe/model/wallet/fragment/TonFragmentItem$Product;

    .line 22
    iput-object p2, p0, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 26
    invoke-virtual {p1}, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Product;->getTimestamp()Ljava/lang/String;

    move-result-object v2

    .line 30
    :try_start_0
    sget-object v1, Lcom/iMe/utils/formatter/DateFormatter$DateType;->ISO_EXTENDED:Lcom/iMe/utils/formatter/DateFormatter$DateType;

    const/4 v3, 0x0

    const-string p1, "UTC"

    .line 32
    invoke-static {p1}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 29
    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/formatter/DateFormatter;->parse$default(Lcom/iMe/utils/formatter/DateFormatter$DateType;Ljava/lang/String;Ljava/lang/String;Ljava/util/TimeZone;ILjava/lang/Object;)Ljava/util/Date;

    move-result-object p1

    .line 33
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-static {p1}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    const-wide/16 p1, 0x0

    .line 26
    :goto_0
    iput-wide p1, p0, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsPresenter;->expiresAt:J

    return-void
.end method

.method public static final synthetic access$getExpiresAt$p(Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsPresenter;)J
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsPresenter;->expiresAt:J

    return-wide v0
.end method

.method public static final synthetic access$getFormattedTimeLeft(Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsPresenter;)Ljava/lang/String;
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsPresenter;->getFormattedTimeLeft()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final getFormattedTimeLeft()Ljava/lang/String;
    .locals 13

    .line 70
    iget-wide v0, p0, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsPresenter;->expiresAt:J

    invoke-static {}, Lcom/iMe/storage/data/utils/extentions/DateExtKt;->now()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 72
    sget v0, Lorg/telegram/messenger/R$string;->Expired:I

    const-string v1, "Expired"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(\"Expired\", R.string.Expired)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 75
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v0, v1}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v5

    cmp-long v2, v5, v2

    const/4 v3, 0x0

    if-lez v2, :cond_1

    long-to-int v2, v5

    new-array v7, v3, [Ljava/lang/Object;

    const-string v8, "Days"

    .line 78
    invoke-static {v8, v2, v7}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    :cond_1
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v3, 0x1

    :cond_2
    if-eqz v3, :cond_3

    const-string v2, " "

    .line 81
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    :cond_3
    sget-object v7, Lcom/iMe/utils/formatter/DateFormatter$DateType;->ONLY_TIME_SECONDS:Lcom/iMe/utils/formatter/DateFormatter$DateType;

    .line 86
    new-instance v8, Ljava/util/Date;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-direct {v8, v0, v1}, Ljava/util/Date;-><init>(J)V

    const/4 v9, 0x0

    const-string v0, "UTC"

    .line 87
    invoke-static {v0}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v10

    const/4 v11, 0x4

    const/4 v12, 0x0

    .line 84
    invoke-static/range {v7 .. v12}, Lcom/iMe/utils/formatter/DateFormatter;->format$default(Lcom/iMe/utils/formatter/DateFormatter$DateType;Ljava/util/Date;Ljava/lang/String;Ljava/util/TimeZone;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply {\n\u2026   )\n        }.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final subscribeToTimeLeftUpdates()V
    .locals 5

    .line 56
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-static {v1, v2, v0}, Lio/reactivex/Observable;->interval(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsPresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "interval(1, TimeUnit.SEC\u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance v1, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsPresenter$subscribeToTimeLeftUpdates$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsPresenter$subscribeToTimeLeftUpdates$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsPresenter;)V

    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsPresenter$subscribeToTimeLeftUpdates$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsPresenter$subscribeToTimeLeftUpdates$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v4, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v4, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {v0, v2, v4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 66
    invoke-static {p0, v0, v3, v1, v3}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onFirstViewAttach()V
    .locals 4

    .line 39
    iget-object v0, p0, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsPresenter;->productItem:Lcom/iMe/model/wallet/fragment/TonFragmentItem$Product;

    .line 40
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsView;

    .line 41
    invoke-virtual {v0}, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Product;->getUsername()Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-virtual {v0}, Lcom/iMe/model/wallet/fragment/TonFragmentItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 43
    invoke-virtual {v0}, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Product;->getPriceText()Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-interface {v1, v3, v2, v0}, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsView;->renderScreenData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-wide v0, p0, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsPresenter;->expiresAt:J

    invoke-static {}, Lcom/iMe/storage/data/utils/extentions/DateExtKt;->now()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsView;

    sget v1, Lorg/telegram/messenger/R$string;->Expired:I

    const-string v2, "Expired"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(\"Expired\", R.string.Expired)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsView;->renderTimeLeft(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsView;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsPresenter;->getFormattedTimeLeft()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsView;->renderTimeLeft(Ljava/lang/String;)V

    .line 50
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsPresenter;->subscribeToTimeLeftUpdates()V

    :goto_0
    return-void
.end method
