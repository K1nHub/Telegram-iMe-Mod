.class public final Lcom/iMe/ui/profile/ProfilePresenter$acceptTwitterConnection$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/profile/ProfilePresenter;->acceptTwitterConnection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Ljava/lang/Boolean;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 ProfilePresenter.kt\ncom/iMe/ui/profile/ProfilePresenter\n*L\n1#1,111:1\n162#2,8:112\n*E\n"
.end annotation


# instance fields
.field final synthetic $profileInfo$inlined:Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;

.field final synthetic this$0:Lcom/iMe/ui/profile/ProfilePresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/profile/ProfilePresenter;Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/profile/ProfilePresenter$acceptTwitterConnection$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/profile/ProfilePresenter;

    iput-object p2, p0, Lcom/iMe/ui/profile/ProfilePresenter$acceptTwitterConnection$$inlined$subscribeWithErrorHandle$default$1;->$profileInfo$inlined:Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/iMe/ui/profile/ProfilePresenter$acceptTwitterConnection$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 45
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    .line 113
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/iMe/ui/profile/ProfilePresenter$acceptTwitterConnection$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/profile/ProfilePresenter;

    .line 114
    new-instance v0, Lcom/iMe/model/twitter/TwitterAccountStatus$Active;

    iget-object v1, p0, Lcom/iMe/ui/profile/ProfilePresenter$acceptTwitterConnection$$inlined$subscribeWithErrorHandle$default$1;->$profileInfo$inlined:Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;->getTwitterUserName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/iMe/model/twitter/TwitterAccountStatus$Active;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-static {p1, v0}, Lcom/iMe/ui/profile/ProfilePresenter;->access$updateTwitterStatusAndRender(Lcom/iMe/ui/profile/ProfilePresenter;Lcom/iMe/model/twitter/TwitterAccountStatus;)V

    goto :goto_0

    .line 116
    :cond_0
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iMe/ui/profile/ProfilePresenter$acceptTwitterConnection$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/profile/ProfilePresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/profile/ProfileView;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    iget-object v1, p0, Lcom/iMe/ui/profile/ProfilePresenter$acceptTwitterConnection$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/profile/ProfilePresenter;

    invoke-static {v1}, Lcom/iMe/ui/profile/ProfilePresenter;->access$getResourceManager$p(Lcom/iMe/ui/profile/ProfilePresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    :cond_1
    :goto_0
    return-void
.end method