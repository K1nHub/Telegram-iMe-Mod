.class public final Lcom/iMe/ui/profile/ProfilePresenter$startTwitterAuthFlow$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/profile/ProfilePresenter;->startTwitterAuthFlow()V
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
        "Lcom/iMe/storage/domain/model/wallet/SessionTokens;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 ProfilePresenter.kt\ncom/iMe/ui/profile/ProfilePresenter\n*L\n1#1,111:1\n133#2,9:112\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/profile/ProfilePresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/profile/ProfilePresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/profile/ProfilePresenter$startTwitterAuthFlow$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/profile/ProfilePresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/iMe/ui/profile/ProfilePresenter$startTwitterAuthFlow$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Lcom/iMe/storage/domain/model/wallet/SessionTokens;",
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

    iget-object v0, p0, Lcom/iMe/ui/profile/ProfilePresenter$startTwitterAuthFlow$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/profile/ProfilePresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/profile/ProfileView;

    .line 114
    sget-object v1, Lcom/iMe/utils/helper/SocialAuthHelper;->INSTANCE:Lcom/iMe/utils/helper/SocialAuthHelper;

    iget-object v2, p0, Lcom/iMe/ui/profile/ProfilePresenter$startTwitterAuthFlow$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/profile/ProfilePresenter;

    invoke-static {v2}, Lcom/iMe/ui/profile/ProfilePresenter;->access$getProfileId$p(Lcom/iMe/ui/profile/ProfilePresenter;)J

    move-result-wide v2

    sget-object v4, Lcom/iMe/model/common/SocialType;->TWITTER:Lcom/iMe/model/common/SocialType;

    invoke-virtual {v1, v2, v3, v4}, Lcom/iMe/utils/helper/SocialAuthHelper;->getSocialAuthUrl(JLcom/iMe/model/common/SocialType;)Ljava/lang/String;

    move-result-object v1

    .line 115
    sget-object v2, Lcom/iMe/storage/data/network/interceptor/MetadataInterceptor;->Companion:Lcom/iMe/storage/data/network/interceptor/MetadataInterceptor$Companion;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/domain/model/wallet/SessionTokens;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/SessionTokens;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/iMe/storage/data/network/interceptor/MetadataInterceptor$Companion;->formatAuthToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 113
    invoke-interface {v0, v1, p1}, Lcom/iMe/ui/profile/ProfileView;->openTwitterAuthScreen(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_0
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iMe/ui/profile/ProfilePresenter$startTwitterAuthFlow$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/profile/ProfilePresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/profile/ProfileView;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    iget-object v1, p0, Lcom/iMe/ui/profile/ProfilePresenter$startTwitterAuthFlow$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/profile/ProfilePresenter;

    invoke-static {v1}, Lcom/iMe/ui/profile/ProfilePresenter;->access$getResourceManager$p(Lcom/iMe/ui/profile/ProfilePresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    :cond_1
    :goto_0
    return-void
.end method
