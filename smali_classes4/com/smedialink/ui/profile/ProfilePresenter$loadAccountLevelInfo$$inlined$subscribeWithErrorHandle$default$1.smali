.class public final Lcom/smedialink/ui/profile/ProfilePresenter$loadAccountLevelInfo$$inlined$subscribeWithErrorHandle$default$1;
.super Ljava/lang/Object;
.source "RxExt.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/profile/ProfilePresenter;->loadAccountLevelInfo(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 ProfilePresenter.kt\ncom/smedialink/ui/profile/ProfilePresenter\n*L\n1#1,111:1\n53#2,5:112\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/profile/ProfilePresenter;


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/profile/ProfilePresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/profile/ProfilePresenter$loadAccountLevelInfo$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/profile/ProfilePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 45
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/smedialink/storage/domain/model/Result;

    .line 113
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Success;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smedialink/ui/profile/ProfilePresenter$loadAccountLevelInfo$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/profile/ProfilePresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/profile/ProfileView;

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smedialink/storage/domain/model/crypto/level/AccountLevelInformation;

    invoke-interface {v0, p1}, Lcom/smedialink/ui/profile/ProfileView;->showUserAccountLevel(Lcom/smedialink/storage/domain/model/crypto/level/AccountLevelInformation;)V

    :cond_0
    return-void
.end method
