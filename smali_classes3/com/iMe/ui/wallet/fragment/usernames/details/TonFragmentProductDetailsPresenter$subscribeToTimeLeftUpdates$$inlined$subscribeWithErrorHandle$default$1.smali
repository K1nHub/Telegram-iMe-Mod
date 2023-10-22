.class public final Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsPresenter$subscribeToTimeLeftUpdates$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsPresenter;->subscribeToTimeLeftUpdates()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Long;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 TonFragmentProductDetailsPresenter.kt\ncom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsPresenter\n*L\n1#1,132:1\n60#2,6:133\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsPresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsPresenter$subscribeToTimeLeftUpdates$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsPresenter$subscribeToTimeLeftUpdates$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    const-string v0, "it"

    .line 69
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Long;

    .line 133
    iget-object p1, p0, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsPresenter$subscribeToTimeLeftUpdates$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsPresenter;->access$getExpiresAt$p(Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsPresenter;)J

    move-result-wide v0

    invoke-static {}, Lcom/iMe/storage/data/utils/extentions/DateExtKt;->now()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    .line 134
    iget-object p1, p0, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsPresenter$subscribeToTimeLeftUpdates$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsView;

    invoke-interface {p1}, Lcom/iMe/ui/base/mvp/base/BaseView;->finishScreen()V

    goto :goto_0

    .line 136
    :cond_0
    iget-object p1, p0, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsPresenter$subscribeToTimeLeftUpdates$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsView;

    iget-object v0, p0, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsPresenter$subscribeToTimeLeftUpdates$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsPresenter;->access$getFormattedTimeLeft(Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsPresenter;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsView;->renderTimeLeft(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
