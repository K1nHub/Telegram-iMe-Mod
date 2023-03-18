.class public final Lcom/smedialink/ui/profile/ProfilePresenter$startTwitterAuthFlow$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/profile/ProfilePresenter;->startTwitterAuthFlow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/smedialink/storage/domain/model/Result<",
        "+",
        "Lcom/smedialink/storage/domain/model/wallet/SessionTokens;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 ProfilePresenter.kt\ncom/smedialink/ui/profile/ProfilePresenter\n*L\n1#1,111:1\n133#2,9:112\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/profile/ProfilePresenter;


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/profile/ProfilePresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/profile/ProfilePresenter$startTwitterAuthFlow$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/profile/ProfilePresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/smedialink/ui/profile/ProfilePresenter$startTwitterAuthFlow$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/storage/domain/model/Result<",
            "+",
            "Lcom/smedialink/storage/domain/model/wallet/SessionTokens;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 45
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/smedialink/storage/domain/model/Result;

    .line 113
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Success;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smedialink/ui/profile/ProfilePresenter$startTwitterAuthFlow$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/profile/ProfilePresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/profile/ProfileView;

    .line 114
    sget-object v1, Lcom/smedialink/utils/helper/SocialAuthHelper;->INSTANCE:Lcom/smedialink/utils/helper/SocialAuthHelper;

    iget-object v2, p0, Lcom/smedialink/ui/profile/ProfilePresenter$startTwitterAuthFlow$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/profile/ProfilePresenter;

    invoke-static {v2}, Lcom/smedialink/ui/profile/ProfilePresenter;->access$getProfileId$p(Lcom/smedialink/ui/profile/ProfilePresenter;)J

    move-result-wide v2

    sget-object v4, Lcom/smedialink/model/common/SocialType;->TWITTER:Lcom/smedialink/model/common/SocialType;

    invoke-virtual {v1, v2, v3, v4}, Lcom/smedialink/utils/helper/SocialAuthHelper;->getSocialAuthUrl(JLcom/smedialink/model/common/SocialType;)Ljava/lang/String;

    move-result-object v1

    .line 115
    sget-object v2, Lcom/smedialink/storage/data/network/interceptor/MetadataInterceptor;->Companion:Lcom/smedialink/storage/data/network/interceptor/MetadataInterceptor$Companion;

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smedialink/storage/domain/model/wallet/SessionTokens;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/SessionTokens;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/smedialink/storage/data/network/interceptor/MetadataInterceptor$Companion;->formatAuthToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 113
    invoke-interface {v0, v1, p1}, Lcom/smedialink/ui/profile/ProfileView;->openTwitterAuthScreen(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_0
    instance-of v0, p1, Lcom/smedialink/storage/domain/model/Result$Error;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smedialink/ui/profile/ProfilePresenter$startTwitterAuthFlow$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/profile/ProfilePresenter;

    invoke-virtual {v0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/profile/ProfileView;

    check-cast p1, Lcom/smedialink/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/Result$Error;->getError()Lcom/smedialink/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    iget-object v1, p0, Lcom/smedialink/ui/profile/ProfilePresenter$startTwitterAuthFlow$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/profile/ProfilePresenter;

    invoke-static {v1}, Lcom/smedialink/ui/profile/ProfilePresenter;->access$getResourceManager$p(Lcom/smedialink/ui/profile/ProfilePresenter;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/smedialink/storage/data/network/model/error/ErrorModel;->getMessage(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/smedialink/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
