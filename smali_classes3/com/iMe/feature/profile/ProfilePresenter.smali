.class public final Lcom/iMe/feature/profile/ProfilePresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "ProfilePresenter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/feature/profile/ProfilePresenter$Companion;,
        Lcom/iMe/feature/profile/ProfilePresenter$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/feature/profile/ProfileView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProfilePresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProfilePresenter.kt\ncom/iMe/feature/profile/ProfilePresenter\n+ 2 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,295:1\n63#2,12:296\n63#2,12:308\n63#2,12:320\n63#2,12:332\n63#2,12:347\n63#2,12:359\n63#2,12:371\n766#3:344\n857#3,2:345\n*S KotlinDebug\n*F\n+ 1 ProfilePresenter.kt\ncom/iMe/feature/profile/ProfilePresenter\n*L\n54#1:296,12\n121#1:308,12\n137#1:320,12\n150#1:332,12\n198#1:347,12\n214#1:359,12\n282#1:371,12\n160#1:344\n160#1:345,2\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final accountLevelInteractor:Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;

.field private final groupMembershipUseCase:Lcom/iMe/feature/profile/GroupMembershipUseCase;

.field private final profileData:Lcom/iMe/feature/profile/ProfileData;

.field private profileUiState:Lcom/iMe/feature/profile/ProfileUiState;

.field private final profileUseCase:Lcom/iMe/feature/profile/ProfileUseCase;

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field private final socialUseCase:Lcom/iMe/feature/socialMedias/SocialUseCase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/feature/profile/ProfilePresenter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/feature/profile/ProfilePresenter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/iMe/feature/profile/ProfileData;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;Lcom/iMe/feature/profile/ProfileUseCase;Lcom/iMe/feature/socialMedias/SocialUseCase;Lcom/iMe/feature/profile/GroupMembershipUseCase;)V
    .locals 8

    const-string v0, "profileData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "twitterInteractor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "accountLevelInteractor"

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "profileUseCase"

    invoke-static {p5, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "socialUseCase"

    invoke-static {p6, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "groupMembershipUseCase"

    invoke-static {p7, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/iMe/feature/profile/ProfilePresenter;->profileData:Lcom/iMe/feature/profile/ProfileData;

    .line 32
    iput-object p2, p0, Lcom/iMe/feature/profile/ProfilePresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 34
    iput-object p4, p0, Lcom/iMe/feature/profile/ProfilePresenter;->accountLevelInteractor:Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;

    .line 35
    iput-object p5, p0, Lcom/iMe/feature/profile/ProfilePresenter;->profileUseCase:Lcom/iMe/feature/profile/ProfileUseCase;

    .line 36
    iput-object p6, p0, Lcom/iMe/feature/profile/ProfilePresenter;->socialUseCase:Lcom/iMe/feature/socialMedias/SocialUseCase;

    .line 37
    iput-object p7, p0, Lcom/iMe/feature/profile/ProfilePresenter;->groupMembershipUseCase:Lcom/iMe/feature/profile/GroupMembershipUseCase;

    .line 40
    new-instance p1, Lcom/iMe/feature/profile/ProfileUiState;

    sget-object v2, Lcom/iMe/feature/socialMedias/ContentState;->NONE:Lcom/iMe/feature/socialMedias/ContentState;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1d

    const/4 v7, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/iMe/feature/profile/ProfileUiState;-><init>(Lcom/iMe/feature/profile/ProfileData;Lcom/iMe/feature/socialMedias/ContentState;ZLjava/util/List;Ljava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/iMe/feature/profile/ProfilePresenter;->profileUiState:Lcom/iMe/feature/profile/ProfileUiState;

    return-void
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/iMe/feature/profile/ProfilePresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/iMe/feature/profile/ProfilePresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$onLoadSocialResult(Lcom/iMe/feature/profile/ProfilePresenter;Lcom/iMe/storage/domain/model/Result;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/iMe/feature/profile/ProfilePresenter;->onLoadSocialResult(Lcom/iMe/storage/domain/model/Result;)V

    return-void
.end method

.method public static final synthetic access$onSocialLogoutResult(Lcom/iMe/feature/profile/ProfilePresenter;Lcom/iMe/storage/domain/model/Result;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/iMe/feature/profile/ProfilePresenter;->onSocialLogoutResult(Lcom/iMe/storage/domain/model/Result;)V

    return-void
.end method

.method private final loadAccountLevelInfo()V
    .locals 4

    .line 130
    iget-object v0, p0, Lcom/iMe/feature/profile/ProfilePresenter;->profileData:Lcom/iMe/feature/profile/ProfileData;

    invoke-virtual {v0}, Lcom/iMe/feature/profile/ProfileData;->getUserId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/iMe/utils/helper/wallet/WalletHelper;->isAuthorized()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/iMe/feature/profile/ProfilePresenter;->accountLevelInteractor:Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;

    .line 135
    iget-object v1, p0, Lcom/iMe/feature/profile/ProfilePresenter;->profileData:Lcom/iMe/feature/profile/ProfileData;

    invoke-virtual {v1}, Lcom/iMe/feature/profile/ProfileData;->getUserId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;->getAccountLevelInformation(J)Lio/reactivex/Observable;

    move-result-object v0

    .line 136
    invoke-static {v0}, Lcom/iMe/utils/extentions/rx/SchedulersExtKt;->scheduleIO(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object v0

    .line 137
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 68
    new-instance v2, Lcom/iMe/feature/profile/ProfilePresenter$loadAccountLevelInfo$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/iMe/feature/profile/ProfilePresenter$loadAccountLevelInfo$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/feature/profile/ProfilePresenter;)V

    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/feature/profile/ProfilePresenter$loadAccountLevelInfo$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/feature/profile/ProfilePresenter$loadAccountLevelInfo$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {v0, v3, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 143
    invoke-static {p0, v0, v2, v1, v2}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final loadSocials()V
    .locals 4

    .line 147
    iget-object v0, p0, Lcom/iMe/feature/profile/ProfilePresenter;->socialUseCase:Lcom/iMe/feature/socialMedias/SocialUseCase;

    .line 148
    iget-object v1, p0, Lcom/iMe/feature/profile/ProfilePresenter;->profileUiState:Lcom/iMe/feature/profile/ProfileUiState;

    invoke-virtual {v1}, Lcom/iMe/feature/profile/ProfileUiState;->getCurrentProfile()Lcom/iMe/feature/profile/ProfileData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/feature/socialMedias/SocialUseCase;->getAllSocials(Lcom/iMe/feature/profile/ProfileData;)Lio/reactivex/Observable;

    move-result-object v0

    .line 149
    invoke-static {v0}, Lcom/iMe/utils/extentions/rx/SchedulersExtKt;->scheduleIO(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object v0

    .line 150
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 68
    new-instance v2, Lcom/iMe/feature/profile/ProfilePresenter$loadSocials$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/iMe/feature/profile/ProfilePresenter$loadSocials$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/feature/profile/ProfilePresenter;)V

    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/feature/profile/ProfilePresenter$loadSocials$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/feature/profile/ProfilePresenter$loadSocials$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {v0, v3, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0, v0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->singleDispose(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method private final logoutSocialNetwork(Lcom/iMe/feature/socialMedias/SocialNetwork;)V
    .locals 4

    .line 193
    iget-object v0, p0, Lcom/iMe/feature/profile/ProfilePresenter;->socialUseCase:Lcom/iMe/feature/socialMedias/SocialUseCase;

    .line 194
    invoke-virtual {v0, p1}, Lcom/iMe/feature/socialMedias/SocialUseCase;->logout(Lcom/iMe/feature/socialMedias/SocialNetwork;)Lio/reactivex/Observable;

    move-result-object p1

    .line 195
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5dc

    invoke-virtual {p1, v1, v2, v0}, Lio/reactivex/Observable;->delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "socialUseCase\n          \u2026Y, TimeUnit.MILLISECONDS)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    invoke-static {p1}, Lcom/iMe/utils/extentions/rx/SchedulersExtKt;->scheduleIO(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p1

    .line 197
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    const-string v1, "viewState"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/iMe/ui/base/mvp/base/BaseView;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 198
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 68
    new-instance v1, Lcom/iMe/feature/profile/ProfilePresenter$logoutSocialNetwork$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/iMe/feature/profile/ProfilePresenter$logoutSocialNetwork$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/feature/profile/ProfilePresenter;)V

    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/feature/profile/ProfilePresenter$logoutSocialNetwork$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v1, v0}, Lcom/iMe/feature/profile/ProfilePresenter$logoutSocialNetwork$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v0, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v0, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {p1, v2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 199
    invoke-static {p0, p1, v3, v0, v3}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final onLoadSocialResult(Lcom/iMe/storage/domain/model/Result;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/feature/socialMedias/SocialDomain;",
            ">;)V"
        }
    .end annotation

    .line 157
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_4

    .line 158
    check-cast p1, Lcom/iMe/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/feature/socialMedias/SocialDomain;

    invoke-virtual {v0}, Lcom/iMe/feature/socialMedias/SocialDomain;->getHasUpdateAccess()Z

    move-result v4

    .line 159
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/feature/socialMedias/SocialDomain;

    invoke-virtual {v0}, Lcom/iMe/feature/socialMedias/SocialDomain;->getSocialNetworks()Ljava/util/List;

    move-result-object v0

    .line 766
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/iMe/feature/socialMedias/SocialNetwork;

    .line 160
    invoke-virtual {v5}, Lcom/iMe/feature/socialMedias/SocialNetwork;->isActive()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 857
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 163
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v4, :cond_2

    sget-object v0, Lcom/iMe/feature/socialMedias/ContentState;->NONE:Lcom/iMe/feature/socialMedias/ContentState;

    goto :goto_1

    .line 164
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/iMe/feature/socialMedias/ContentState;->EMPTY:Lcom/iMe/feature/socialMedias/ContentState;

    goto :goto_1

    .line 165
    :cond_3
    sget-object v0, Lcom/iMe/feature/socialMedias/ContentState;->CONTENT:Lcom/iMe/feature/socialMedias/ContentState;

    :goto_1
    move-object v3, v0

    .line 168
    iget-object v1, p0, Lcom/iMe/feature/profile/ProfilePresenter;->profileUiState:Lcom/iMe/feature/profile/ProfileUiState;

    const/4 v2, 0x0

    .line 171
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/feature/socialMedias/SocialDomain;

    invoke-virtual {p1}, Lcom/iMe/feature/socialMedias/SocialDomain;->getSocialNetworks()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x11

    const/4 v8, 0x0

    .line 168
    invoke-static/range {v1 .. v8}, Lcom/iMe/feature/profile/ProfileUiState;->copy$default(Lcom/iMe/feature/profile/ProfileUiState;Lcom/iMe/feature/profile/ProfileData;Lcom/iMe/feature/socialMedias/ContentState;ZLjava/util/List;Ljava/util/ArrayList;ILjava/lang/Object;)Lcom/iMe/feature/profile/ProfileUiState;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/feature/profile/ProfilePresenter;->profileUiState:Lcom/iMe/feature/profile/ProfileUiState;

    goto :goto_2

    .line 175
    :cond_4
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_5

    .line 176
    iget-object v1, p0, Lcom/iMe/feature/profile/ProfilePresenter;->profileUiState:Lcom/iMe/feature/profile/ProfileUiState;

    const/4 v2, 0x0

    sget-object v3, Lcom/iMe/feature/socialMedias/ContentState;->EMPTY:Lcom/iMe/feature/socialMedias/ContentState;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1d

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/iMe/feature/profile/ProfileUiState;->copy$default(Lcom/iMe/feature/profile/ProfileUiState;Lcom/iMe/feature/profile/ProfileData;Lcom/iMe/feature/socialMedias/ContentState;ZLjava/util/List;Ljava/util/ArrayList;ILjava/lang/Object;)Lcom/iMe/feature/profile/ProfileUiState;

    move-result-object p1

    .line 175
    iput-object p1, p0, Lcom/iMe/feature/profile/ProfilePresenter;->profileUiState:Lcom/iMe/feature/profile/ProfileUiState;

    goto :goto_2

    .line 178
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSocialResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " skipped"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    :goto_2
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/feature/profile/ProfileView;

    invoke-interface {p1}, Lcom/iMe/feature/profile/ProfileView;->updateSocialCell()V

    return-void
.end method

.method private final onSocialLogoutResult(Lcom/iMe/storage/domain/model/Result;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 203
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/iMe/feature/profile/ProfilePresenter;->loadSocials()V

    goto :goto_0

    .line 204
    :cond_0
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/feature/profile/ProfileView;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    iget-object v1, p0, Lcom/iMe/feature/profile/ProfilePresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    invoke-interface {v0, p1, v1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    goto :goto_0

    .line 205
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSocialLogoutResult skipped: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private final saveProfile()V
    .locals 8

    .line 125
    iget-object v0, p0, Lcom/iMe/feature/profile/ProfilePresenter;->profileUiState:Lcom/iMe/feature/profile/ProfileUiState;

    iget-object v1, p0, Lcom/iMe/feature/profile/ProfilePresenter;->profileData:Lcom/iMe/feature/profile/ProfileData;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1e

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/iMe/feature/profile/ProfileUiState;->copy$default(Lcom/iMe/feature/profile/ProfileUiState;Lcom/iMe/feature/profile/ProfileData;Lcom/iMe/feature/socialMedias/ContentState;ZLjava/util/List;Ljava/util/ArrayList;ILjava/lang/Object;)Lcom/iMe/feature/profile/ProfileUiState;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/feature/profile/ProfilePresenter;->profileUiState:Lcom/iMe/feature/profile/ProfileUiState;

    .line 126
    iget-object v1, p0, Lcom/iMe/feature/profile/ProfilePresenter;->profileUseCase:Lcom/iMe/feature/profile/ProfileUseCase;

    invoke-virtual {v0}, Lcom/iMe/feature/profile/ProfileUiState;->getCurrentProfile()Lcom/iMe/feature/profile/ProfileData;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/iMe/feature/profile/ProfileUseCase;->saveProfile(Lcom/iMe/feature/profile/ProfileData;)V

    return-void
.end method

.method private final showBeforeDialog(Lcom/iMe/feature/socialMedias/SocialNetwork;)V
    .locals 7

    .line 259
    invoke-virtual {p1}, Lcom/iMe/feature/socialMedias/SocialNetwork;->getSocialName()Ljava/lang/String;

    move-result-object v0

    .line 260
    invoke-virtual {p1}, Lcom/iMe/feature/socialMedias/SocialNetwork;->getBeforeConnectMessage()Ljava/lang/String;

    move-result-object v1

    .line 261
    iget-object v2, p0, Lcom/iMe/feature/profile/ProfilePresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->common_ok:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "this as java.lang.String).toUpperCase(Locale.ROOT)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    iget-object v5, p0, Lcom/iMe/feature/profile/ProfilePresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v6, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v5, v6}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    new-instance v4, Lcom/iMe/model/dialog/DialogModel;

    invoke-direct {v4, v0, v1, v3, v2}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/feature/profile/ProfileView;

    invoke-interface {v0, p1, v4}, Lcom/iMe/feature/profile/ProfileView;->showBeforeConnectMessage(Lcom/iMe/feature/socialMedias/SocialNetwork;Lcom/iMe/model/dialog/DialogModel;)V

    return-void
.end method

.method private final showNeedAuthorizeDialog()V
    .locals 6

    .line 247
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/feature/profile/ProfileView;

    .line 249
    iget-object v1, p0, Lcom/iMe/feature/profile/ProfilePresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_crypto_wallet_not_created_dialog_title:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 250
    iget-object v2, p0, Lcom/iMe/feature/profile/ProfilePresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_crypto_wallet_not_created_dialog_description:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 251
    iget-object v3, p0, Lcom/iMe/feature/profile/ProfilePresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->common_ok:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 252
    iget-object v4, p0, Lcom/iMe/feature/profile/ProfilePresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 248
    new-instance v5, Lcom/iMe/model/dialog/DialogModel;

    invoke-direct {v5, v1, v2, v4, v3}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-interface {v0, v5}, Lcom/iMe/feature/profile/ProfileView;->showNeedAuthorizeDialog(Lcom/iMe/model/dialog/DialogModel;)V

    return-void
.end method

.method private final showResetConfirmationDialog(Lcom/iMe/feature/socialMedias/SocialNetwork;)V
    .locals 8

    .line 229
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/feature/profile/ProfileView;

    .line 230
    new-instance v1, Lcom/iMe/model/dialog/DialogModel;

    .line 231
    iget-object v2, p0, Lcom/iMe/feature/profile/ProfilePresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 232
    sget v3, Lorg/telegram/messenger/R$string;->social_reset_account_title:I

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    .line 233
    invoke-virtual {p1}, Lcom/iMe/feature/socialMedias/SocialNetwork;->getSocialName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 231
    invoke-interface {v2, v3, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 235
    iget-object v3, p0, Lcom/iMe/feature/profile/ProfilePresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 236
    sget v5, Lorg/telegram/messenger/R$string;->social_reset_account_message:I

    new-array v4, v4, [Ljava/lang/Object;

    .line 237
    invoke-virtual {p1}, Lcom/iMe/feature/socialMedias/SocialNetwork;->getSocialName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    .line 235
    invoke-interface {v3, v5, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 239
    iget-object v4, p0, Lcom/iMe/feature/profile/ProfilePresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->social_reset_account_negative_button:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 240
    iget-object v5, p0, Lcom/iMe/feature/profile/ProfilePresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v6, Lorg/telegram/messenger/R$string;->social_reset_account_positive_button:I

    invoke-interface {v5, v6}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 230
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-interface {v0, v1, p1}, Lcom/iMe/feature/profile/ProfileView;->showResetConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/feature/socialMedias/SocialNetwork;)V

    return-void
.end method

.method private final startSocialAuth(Lcom/iMe/feature/socialMedias/SocialType;)V
    .locals 4

    .line 278
    iget-object v0, p0, Lcom/iMe/feature/profile/ProfilePresenter;->socialUseCase:Lcom/iMe/feature/socialMedias/SocialUseCase;

    .line 279
    iget-object v1, p0, Lcom/iMe/feature/profile/ProfilePresenter;->profileUiState:Lcom/iMe/feature/profile/ProfileUiState;

    invoke-virtual {v1}, Lcom/iMe/feature/profile/ProfileUiState;->getCurrentProfile()Lcom/iMe/feature/profile/ProfileData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/feature/profile/ProfileData;->getProfileId()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/iMe/feature/socialMedias/SocialUseCase;->startSocialAuth(Lcom/iMe/feature/socialMedias/SocialType;J)Lio/reactivex/Observable;

    move-result-object p1

    .line 280
    invoke-static {p1}, Lcom/iMe/utils/extentions/rx/SchedulersExtKt;->scheduleIO(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p1

    .line 281
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    const-string v1, "viewState"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/iMe/ui/base/mvp/base/BaseView;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 282
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 68
    new-instance v1, Lcom/iMe/feature/profile/ProfilePresenter$startSocialAuth$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/iMe/feature/profile/ProfilePresenter$startSocialAuth$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/feature/profile/ProfilePresenter;)V

    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/feature/profile/ProfilePresenter$startSocialAuth$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v1, v0}, Lcom/iMe/feature/profile/ProfilePresenter$startSocialAuth$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v0, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v0, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {p1, v2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 289
    invoke-static {p0, p1, v3, v0, v3}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final changeRankVisibility(Z)V
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/iMe/feature/profile/ProfilePresenter;->accountLevelInteractor:Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;

    .line 52
    invoke-virtual {v0, p1}, Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;->changeLevelVisibility(Z)Lio/reactivex/Observable;

    move-result-object p1

    .line 53
    invoke-static {p1}, Lcom/iMe/utils/extentions/rx/SchedulersExtKt;->scheduleIO(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p1

    .line 54
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 68
    new-instance v1, Lcom/iMe/feature/profile/ProfilePresenter$changeRankVisibility$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/iMe/feature/profile/ProfilePresenter$changeRankVisibility$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/feature/profile/ProfilePresenter;)V

    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/feature/profile/ProfilePresenter$changeRankVisibility$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v1, v0}, Lcom/iMe/feature/profile/ProfilePresenter$changeRankVisibility$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v0, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v0, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {p1, v2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 60
    invoke-static {p0, p1, v0, v1, v0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method public final filterNotMegagroupParticipants(Lcom/iMe/model/group/GroupMembersFilter;)V
    .locals 10

    const-string v0, "membersFilter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/iMe/feature/profile/ProfilePresenter;->profileUiState:Lcom/iMe/feature/profile/ProfileUiState;

    invoke-virtual {v0}, Lcom/iMe/feature/profile/ProfileUiState;->getAllNotMegaGroupMembers()Ljava/util/ArrayList;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/iMe/feature/profile/ProfilePresenter;->groupMembershipUseCase:Lcom/iMe/feature/profile/GroupMembershipUseCase;

    invoke-virtual {v1, v0, p1}, Lcom/iMe/feature/profile/GroupMembershipUseCase;->filterMembers(Ljava/util/ArrayList;Lcom/iMe/model/group/GroupMembersFilter;)Ljava/util/ArrayList;

    move-result-object p1

    .line 76
    iget-object v2, p0, Lcom/iMe/feature/profile/ProfilePresenter;->profileUiState:Lcom/iMe/feature/profile/ProfileUiState;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v8, 0xf

    const/4 v9, 0x0

    move-object v7, p1

    invoke-static/range {v2 .. v9}, Lcom/iMe/feature/profile/ProfileUiState;->copy$default(Lcom/iMe/feature/profile/ProfileUiState;Lcom/iMe/feature/profile/ProfileData;Lcom/iMe/feature/socialMedias/ContentState;ZLjava/util/List;Ljava/util/ArrayList;ILjava/lang/Object;)Lcom/iMe/feature/profile/ProfileUiState;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/feature/profile/ProfilePresenter;->profileUiState:Lcom/iMe/feature/profile/ProfileUiState;

    .line 77
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/feature/profile/ProfileView;

    invoke-interface {v0, p1}, Lcom/iMe/feature/profile/ProfileView;->onFilteredMembers(Ljava/util/ArrayList;)V

    return-void
.end method

.method public final getProfileUiState()Lcom/iMe/feature/profile/ProfileUiState;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/iMe/feature/profile/ProfilePresenter;->profileUiState:Lcom/iMe/feature/profile/ProfileUiState;

    return-object v0
.end method

.method protected onFirstViewAttach()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/iMe/feature/profile/ProfilePresenter;->saveProfile()V

    .line 44
    invoke-direct {p0}, Lcom/iMe/feature/profile/ProfilePresenter;->loadAccountLevelInfo()V

    return-void
.end method

.method public final onResetSocialNetwork(Lcom/iMe/feature/socialMedias/SocialNetwork;)V
    .locals 1

    const-string v0, "socialNetwork"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-direct {p0, p1}, Lcom/iMe/feature/profile/ProfilePresenter;->logoutSocialNetwork(Lcom/iMe/feature/socialMedias/SocialNetwork;)V

    return-void
.end method

.method public final onSocialAddClicked(Lcom/iMe/feature/socialMedias/SocialNetwork;)V
    .locals 4

    const-string v0, "socialNetwork"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/iMe/feature/profile/ProfilePresenter;->profileUiState:Lcom/iMe/feature/profile/ProfileUiState;

    invoke-virtual {v0}, Lcom/iMe/feature/profile/ProfileUiState;->getCurrentProfile()Lcom/iMe/feature/profile/ProfileData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/feature/profile/ProfileData;->getProfileId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/iMe/utils/helper/wallet/WalletHelper;->isAuthorized()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    .line 104
    invoke-direct {p0}, Lcom/iMe/feature/profile/ProfilePresenter;->showNeedAuthorizeDialog()V

    goto :goto_2

    .line 105
    :cond_2
    invoke-virtual {p1}, Lcom/iMe/feature/socialMedias/SocialNetwork;->getBeforeConnectMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_3

    move v1, v2

    :cond_3
    if-eqz v1, :cond_4

    invoke-direct {p0, p1}, Lcom/iMe/feature/profile/ProfilePresenter;->showBeforeDialog(Lcom/iMe/feature/socialMedias/SocialNetwork;)V

    goto :goto_2

    .line 106
    :cond_4
    invoke-virtual {p1}, Lcom/iMe/feature/socialMedias/SocialNetwork;->getSocial()Lcom/iMe/feature/socialMedias/SocialType;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/iMe/feature/profile/ProfilePresenter;->startSocialAuth(Lcom/iMe/feature/socialMedias/SocialType;)V

    :goto_2
    return-void
.end method

.method public final onSocialBeforeConfirmed(Lcom/iMe/feature/socialMedias/SocialNetwork;)V
    .locals 1

    const-string v0, "socialNetwork"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p1}, Lcom/iMe/feature/socialMedias/SocialNetwork;->getSocial()Lcom/iMe/feature/socialMedias/SocialType;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/iMe/feature/profile/ProfilePresenter;->startSocialAuth(Lcom/iMe/feature/socialMedias/SocialType;)V

    return-void
.end method

.method public final onSocialClicked(Lcom/iMe/feature/socialMedias/SocialNetwork;)V
    .locals 3

    const-string v0, "socialNetwork"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p1}, Lcom/iMe/feature/socialMedias/SocialNetwork;->getSocial()Lcom/iMe/feature/socialMedias/SocialType;

    move-result-object v0

    sget-object v1, Lcom/iMe/feature/socialMedias/SocialType;->TWITTER:Lcom/iMe/feature/socialMedias/SocialType;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/feature/profile/ProfileView;

    .line 93
    iget-object v1, p0, Lcom/iMe/feature/profile/ProfilePresenter;->profileUiState:Lcom/iMe/feature/profile/ProfileUiState;

    invoke-virtual {v1}, Lcom/iMe/feature/profile/ProfileUiState;->getCurrentProfile()Lcom/iMe/feature/profile/ProfileData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/feature/profile/ProfileData;->getProfileId()J

    move-result-wide v1

    .line 92
    invoke-interface {v0, v1, v2, p1}, Lcom/iMe/feature/profile/ProfileView;->openTwitterScreen(JLcom/iMe/feature/socialMedias/SocialNetwork;)V

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/feature/profile/ProfileView;

    invoke-interface {v0, p1}, Lcom/iMe/feature/profile/ProfileView;->openSocialWeb(Lcom/iMe/feature/socialMedias/SocialNetwork;)V

    :goto_0
    return-void
.end method

.method public final onSocialNetworkAction(Lcom/iMe/fork/enums/SocialDialogActions;Lcom/iMe/feature/socialMedias/SocialNetwork;)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "socialNetwork"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    sget-object v0, Lcom/iMe/feature/profile/ProfilePresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 86
    invoke-direct {p0, p2}, Lcom/iMe/feature/profile/ProfilePresenter;->showResetConfirmationDialog(Lcom/iMe/feature/socialMedias/SocialNetwork;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 85
    :cond_1
    invoke-virtual {p2}, Lcom/iMe/feature/socialMedias/SocialNetwork;->getSocialWebUrl()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2, v0, p2}, Lcom/iMe/utils/extentions/common/ContextExtKt;->copyToClipboard$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    .line 84
    :cond_2
    invoke-virtual {p0, p2}, Lcom/iMe/feature/profile/ProfilePresenter;->onSocialClicked(Lcom/iMe/feature/socialMedias/SocialNetwork;)V

    :goto_0
    return-void
.end method

.method public final setNotMegagroupParticipants(ZLjava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$ChatParticipant;",
            ">;)V"
        }
    .end annotation

    const-string v0, "participants"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_1

    .line 67
    iget-object p1, p0, Lcom/iMe/feature/profile/ProfilePresenter;->profileUiState:Lcom/iMe/feature/profile/ProfileUiState;

    invoke-virtual {p1}, Lcom/iMe/feature/profile/ProfileUiState;->hasNoParticipants()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "setNotMegagroupParticipants skipped"

    .line 69
    invoke-static {p2, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 68
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/iMe/feature/profile/ProfilePresenter;->profileUiState:Lcom/iMe/feature/profile/ProfileUiState;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v6, 0xf

    const/4 v7, 0x0

    move-object v5, p2

    invoke-static/range {v0 .. v7}, Lcom/iMe/feature/profile/ProfileUiState;->copy$default(Lcom/iMe/feature/profile/ProfileUiState;Lcom/iMe/feature/profile/ProfileData;Lcom/iMe/feature/socialMedias/ContentState;ZLjava/util/List;Ljava/util/ArrayList;ILjava/lang/Object;)Lcom/iMe/feature/profile/ProfileUiState;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/feature/profile/ProfilePresenter;->profileUiState:Lcom/iMe/feature/profile/ProfileUiState;

    :goto_1
    return-void
.end method
