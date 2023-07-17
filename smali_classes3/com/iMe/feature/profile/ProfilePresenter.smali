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
    value = "SMAP\nProfilePresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProfilePresenter.kt\ncom/iMe/feature/profile/ProfilePresenter\n+ 2 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,271:1\n42#2,12:272\n42#2,12:284\n42#2,12:296\n42#2,12:308\n42#2,12:323\n42#2,12:335\n42#2,12:347\n766#3:320\n857#3,2:321\n*S KotlinDebug\n*F\n+ 1 ProfilePresenter.kt\ncom/iMe/feature/profile/ProfilePresenter\n*L\n53#1:272,12\n108#1:284,12\n122#1:296,12\n135#1:308,12\n180#1:323,12\n196#1:335,12\n258#1:347,12\n145#1:320\n145#1:321,2\n*E\n"
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

.field private final twitterInteractor:Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iMe/feature/profile/ProfilePresenter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/feature/profile/ProfilePresenter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/iMe/feature/profile/ProfileData;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;Lcom/iMe/feature/profile/ProfileUseCase;Lcom/iMe/feature/socialMedias/SocialUseCase;Lcom/iMe/feature/profile/GroupMembershipUseCase;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    const-string v8, "profileData"

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "resourceManager"

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "twitterInteractor"

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "accountLevelInteractor"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "profileUseCase"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "socialUseCase"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "groupMembershipUseCase"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 31
    iput-object v1, v0, Lcom/iMe/feature/profile/ProfilePresenter;->profileData:Lcom/iMe/feature/profile/ProfileData;

    .line 32
    iput-object v2, v0, Lcom/iMe/feature/profile/ProfilePresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 33
    iput-object v3, v0, Lcom/iMe/feature/profile/ProfilePresenter;->twitterInteractor:Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;

    .line 34
    iput-object v4, v0, Lcom/iMe/feature/profile/ProfilePresenter;->accountLevelInteractor:Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;

    .line 35
    iput-object v5, v0, Lcom/iMe/feature/profile/ProfilePresenter;->profileUseCase:Lcom/iMe/feature/profile/ProfileUseCase;

    .line 36
    iput-object v6, v0, Lcom/iMe/feature/profile/ProfilePresenter;->socialUseCase:Lcom/iMe/feature/socialMedias/SocialUseCase;

    .line 37
    iput-object v7, v0, Lcom/iMe/feature/profile/ProfilePresenter;->groupMembershipUseCase:Lcom/iMe/feature/profile/GroupMembershipUseCase;

    .line 40
    new-instance v1, Lcom/iMe/feature/profile/ProfileUiState;

    sget-object v11, Lcom/iMe/feature/socialMedias/ContentState;->NONE:Lcom/iMe/feature/socialMedias/ContentState;

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x1d

    const/16 v16, 0x0

    move-object v9, v1

    invoke-direct/range {v9 .. v16}, Lcom/iMe/feature/profile/ProfileUiState;-><init>(Lcom/iMe/feature/profile/ProfileData;Lcom/iMe/feature/socialMedias/ContentState;ZLjava/util/List;Ljava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v0, Lcom/iMe/feature/profile/ProfilePresenter;->profileUiState:Lcom/iMe/feature/profile/ProfileUiState;

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

.method public static final synthetic access$onReattachSocialResult(Lcom/iMe/feature/profile/ProfilePresenter;Lcom/iMe/storage/domain/model/Result;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/iMe/feature/profile/ProfilePresenter;->onReattachSocialResult(Lcom/iMe/storage/domain/model/Result;)V

    return-void
.end method

.method public static final synthetic access$onSocialAuthResult(Lcom/iMe/feature/profile/ProfilePresenter;Lcom/iMe/model/twitter/SocialAuthResult;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/iMe/feature/profile/ProfilePresenter;->onSocialAuthResult(Lcom/iMe/model/twitter/SocialAuthResult;)V

    return-void
.end method

.method public static final synthetic access$onSocialLogoutResult(Lcom/iMe/feature/profile/ProfilePresenter;Lcom/iMe/storage/domain/model/Result;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/iMe/feature/profile/ProfilePresenter;->onSocialLogoutResult(Lcom/iMe/storage/domain/model/Result;)V

    return-void
.end method

.method private final listenSocialAuthResult()V
    .locals 4

    .line 192
    iget-object v0, p0, Lcom/iMe/feature/profile/ProfilePresenter;->socialUseCase:Lcom/iMe/feature/socialMedias/SocialUseCase;

    .line 193
    invoke-virtual {v0}, Lcom/iMe/feature/socialMedias/SocialUseCase;->listenSocialChanges()Lcom/jakewharton/rxrelay2/PublishRelay;

    move-result-object v0

    .line 194
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v2, v3, v1}, Lio/reactivex/Observable;->delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "socialUseCase\n          \u2026Y, TimeUnit.MILLISECONDS)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    invoke-static {v0}, Lcom/iMe/utils/extentions/rx/SchedulersExtKt;->scheduleIO(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object v0

    .line 196
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 47
    new-instance v2, Lcom/iMe/feature/profile/ProfilePresenter$listenSocialAuthResult$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/iMe/feature/profile/ProfilePresenter$listenSocialAuthResult$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/feature/profile/ProfilePresenter;)V

    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/feature/profile/ProfilePresenter$listenSocialAuthResult$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/feature/profile/ProfilePresenter$listenSocialAuthResult$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 49
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    invoke-virtual {v0, v3, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026Error.invoke()\n        })"

    .line 49
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 197
    invoke-static {p0, v0, v1, v2, v1}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final loadAccountLevelInfo()V
    .locals 4

    .line 117
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

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/iMe/feature/profile/ProfilePresenter;->accountLevelInteractor:Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;

    .line 120
    iget-object v1, p0, Lcom/iMe/feature/profile/ProfilePresenter;->profileData:Lcom/iMe/feature/profile/ProfileData;

    invoke-virtual {v1}, Lcom/iMe/feature/profile/ProfileData;->getUserId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;->getAccountLevelInformation(J)Lio/reactivex/Observable;

    move-result-object v0

    .line 121
    invoke-static {v0}, Lcom/iMe/utils/extentions/rx/SchedulersExtKt;->scheduleIO(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object v0

    .line 122
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 47
    new-instance v2, Lcom/iMe/feature/profile/ProfilePresenter$loadAccountLevelInfo$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/iMe/feature/profile/ProfilePresenter$loadAccountLevelInfo$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/feature/profile/ProfilePresenter;)V

    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/feature/profile/ProfilePresenter$loadAccountLevelInfo$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/feature/profile/ProfilePresenter$loadAccountLevelInfo$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 49
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    invoke-virtual {v0, v3, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026Error.invoke()\n        })"

    .line 49
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 128
    invoke-static {p0, v0, v2, v1, v2}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final loadSocials()V
    .locals 4

    .line 132
    iget-object v0, p0, Lcom/iMe/feature/profile/ProfilePresenter;->socialUseCase:Lcom/iMe/feature/socialMedias/SocialUseCase;

    .line 133
    iget-object v1, p0, Lcom/iMe/feature/profile/ProfilePresenter;->profileUiState:Lcom/iMe/feature/profile/ProfileUiState;

    invoke-virtual {v1}, Lcom/iMe/feature/profile/ProfileUiState;->getCurrentProfile()Lcom/iMe/feature/profile/ProfileData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iMe/feature/socialMedias/SocialUseCase;->getAllSocials(Lcom/iMe/feature/profile/ProfileData;)Lio/reactivex/Observable;

    move-result-object v0

    .line 134
    invoke-static {v0}, Lcom/iMe/utils/extentions/rx/SchedulersExtKt;->scheduleIO(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object v0

    .line 135
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 47
    new-instance v2, Lcom/iMe/feature/profile/ProfilePresenter$loadSocials$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/iMe/feature/profile/ProfilePresenter$loadSocials$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/feature/profile/ProfilePresenter;)V

    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/feature/profile/ProfilePresenter$loadSocials$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/feature/profile/ProfilePresenter$loadSocials$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 49
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    invoke-virtual {v0, v3, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026Error.invoke()\n        })"

    .line 49
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0, v0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->singleDispose(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method private final logoutSocialNetwork(Lcom/iMe/feature/socialMedias/SocialNetwork;)V
    .locals 4

    .line 175
    iget-object v0, p0, Lcom/iMe/feature/profile/ProfilePresenter;->socialUseCase:Lcom/iMe/feature/socialMedias/SocialUseCase;

    .line 176
    invoke-virtual {v0, p1}, Lcom/iMe/feature/socialMedias/SocialUseCase;->logout(Lcom/iMe/feature/socialMedias/SocialNetwork;)Lio/reactivex/Observable;

    move-result-object p1

    .line 177
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5dc

    invoke-virtual {p1, v1, v2, v0}, Lio/reactivex/Observable;->delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "socialUseCase\n          \u2026Y, TimeUnit.MILLISECONDS)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    invoke-static {p1}, Lcom/iMe/utils/extentions/rx/SchedulersExtKt;->scheduleIO(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p1

    .line 179
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

    .line 180
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 47
    new-instance v1, Lcom/iMe/feature/profile/ProfilePresenter$logoutSocialNetwork$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/iMe/feature/profile/ProfilePresenter$logoutSocialNetwork$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/feature/profile/ProfilePresenter;)V

    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/feature/profile/ProfilePresenter$logoutSocialNetwork$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v1, v0}, Lcom/iMe/feature/profile/ProfilePresenter$logoutSocialNetwork$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 49
    new-instance v0, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v0, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    invoke-virtual {p1, v2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "viewState: BaseView? = n\u2026Error.invoke()\n        })"

    .line 49
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 181
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

    .line 142
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_4

    .line 143
    check-cast p1, Lcom/iMe/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/feature/socialMedias/SocialDomain;

    invoke-virtual {v0}, Lcom/iMe/feature/socialMedias/SocialDomain;->getHasUpdateAccess()Z

    move-result v4

    .line 144
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

    .line 145
    invoke-virtual {v5}, Lcom/iMe/feature/socialMedias/SocialNetwork;->isActive()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 857
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 148
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v4, :cond_2

    sget-object v0, Lcom/iMe/feature/socialMedias/ContentState;->NONE:Lcom/iMe/feature/socialMedias/ContentState;

    goto :goto_1

    .line 149
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/iMe/feature/socialMedias/ContentState;->EMPTY:Lcom/iMe/feature/socialMedias/ContentState;

    goto :goto_1

    .line 150
    :cond_3
    sget-object v0, Lcom/iMe/feature/socialMedias/ContentState;->CONTENT:Lcom/iMe/feature/socialMedias/ContentState;

    :goto_1
    move-object v3, v0

    .line 153
    iget-object v1, p0, Lcom/iMe/feature/profile/ProfilePresenter;->profileUiState:Lcom/iMe/feature/profile/ProfileUiState;

    const/4 v2, 0x0

    .line 156
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/feature/socialMedias/SocialDomain;

    invoke-virtual {p1}, Lcom/iMe/feature/socialMedias/SocialDomain;->getSocialNetworks()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x11

    const/4 v8, 0x0

    .line 153
    invoke-static/range {v1 .. v8}, Lcom/iMe/feature/profile/ProfileUiState;->copy$default(Lcom/iMe/feature/profile/ProfileUiState;Lcom/iMe/feature/profile/ProfileData;Lcom/iMe/feature/socialMedias/ContentState;ZLjava/util/List;Ljava/util/ArrayList;ILjava/lang/Object;)Lcom/iMe/feature/profile/ProfileUiState;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/feature/profile/ProfilePresenter;->profileUiState:Lcom/iMe/feature/profile/ProfileUiState;

    goto :goto_2

    .line 159
    :cond_4
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_5

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

    iput-object p1, p0, Lcom/iMe/feature/profile/ProfilePresenter;->profileUiState:Lcom/iMe/feature/profile/ProfileUiState;

    goto :goto_2

    .line 160
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

    .line 162
    :goto_2
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/feature/profile/ProfileView;

    invoke-interface {p1}, Lcom/iMe/feature/profile/ProfileView;->updateSocialCell()V

    return-void
.end method

.method private final onReattachSocialResult(Lcom/iMe/storage/domain/model/Result;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 167
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/iMe/feature/profile/ProfilePresenter;->loadSocials()V

    goto :goto_0

    .line 168
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

    .line 169
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReattachSocialResult skipped: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    :goto_0
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/feature/profile/ProfileView;

    invoke-interface {p1}, Lcom/iMe/feature/profile/ProfileView;->updateSocialCell()V

    return-void
.end method

.method private final onSocialAuthResult(Lcom/iMe/model/twitter/SocialAuthResult;)V
    .locals 3

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSocialAuthResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    instance-of v0, p1, Lcom/iMe/model/twitter/SocialAuthResult$Success;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/iMe/feature/profile/ProfilePresenter;->loadSocials()V

    goto :goto_0

    .line 204
    :cond_0
    instance-of v0, p1, Lcom/iMe/model/twitter/SocialAuthResult$Verification;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/iMe/model/twitter/SocialAuthResult$Verification;

    invoke-virtual {p1}, Lcom/iMe/model/twitter/SocialAuthResult$Verification;->getSocialId()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/iMe/feature/profile/ProfilePresenter;->showLinkConfirmationDialog(J)V

    goto :goto_0

    .line 205
    :cond_1
    sget-object v0, Lcom/iMe/model/twitter/SocialAuthResult$Logout;->INSTANCE:Lcom/iMe/model/twitter/SocialAuthResult$Logout;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/iMe/feature/profile/ProfilePresenter;->loadSocials()V

    goto :goto_0

    .line 206
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSocialAuthResult skipped: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
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

    .line 185
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/iMe/feature/profile/ProfilePresenter;->loadSocials()V

    goto :goto_0

    .line 186
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

    .line 187
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

    .line 112
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

    .line 113
    iget-object v1, p0, Lcom/iMe/feature/profile/ProfilePresenter;->profileUseCase:Lcom/iMe/feature/profile/ProfileUseCase;

    invoke-virtual {v0}, Lcom/iMe/feature/profile/ProfileUiState;->getCurrentProfile()Lcom/iMe/feature/profile/ProfileData;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/iMe/feature/profile/ProfileUseCase;->saveProfile(Lcom/iMe/feature/profile/ProfileData;)V

    return-void
.end method

.method private final showBeforeDialog(Lcom/iMe/feature/socialMedias/SocialNetwork;)V
    .locals 7

    .line 235
    invoke-virtual {p1}, Lcom/iMe/feature/socialMedias/SocialNetwork;->getSocialName()Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-virtual {p1}, Lcom/iMe/feature/socialMedias/SocialNetwork;->getBeforeConnectMessage()Ljava/lang/String;

    move-result-object v1

    .line 237
    iget-object v2, p0, Lcom/iMe/feature/profile/ProfilePresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->common_ok:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "this as java.lang.String).toUpperCase(Locale.ROOT)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    iget-object v5, p0, Lcom/iMe/feature/profile/ProfilePresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v6, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v5, v6}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    new-instance v4, Lcom/iMe/model/dialog/DialogModel;

    invoke-direct {v4, v0, v1, v3, v2}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/feature/profile/ProfileView;

    invoke-interface {v0, p1, v4}, Lcom/iMe/feature/profile/ProfileView;->showBeforeConnectMessage(Lcom/iMe/feature/socialMedias/SocialNetwork;Lcom/iMe/model/dialog/DialogModel;)V

    return-void
.end method

.method private final showLinkConfirmationDialog(J)V
    .locals 6

    .line 244
    new-instance v0, Lcom/iMe/model/dialog/DialogModel;

    .line 245
    iget-object v1, p0, Lcom/iMe/feature/profile/ProfilePresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->profile_twitter_link_confirmation_alert_title:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 246
    iget-object v2, p0, Lcom/iMe/feature/profile/ProfilePresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->profile_twitter_link_confirmation_alert_description:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 247
    iget-object v3, p0, Lcom/iMe/feature/profile/ProfilePresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 248
    iget-object v4, p0, Lcom/iMe/feature/profile/ProfilePresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->common_confirm:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 244
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/feature/profile/ProfileView;

    invoke-interface {v1, v0, p1, p2}, Lcom/iMe/feature/profile/ProfileView;->showLinkConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;J)V

    return-void
.end method

.method private final showNeedAuthorizeDialog()V
    .locals 6

    .line 223
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/feature/profile/ProfileView;

    .line 225
    iget-object v1, p0, Lcom/iMe/feature/profile/ProfilePresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v2, Lorg/telegram/messenger/R$string;->wallet_crypto_wallet_not_created_dialog_title:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 226
    iget-object v2, p0, Lcom/iMe/feature/profile/ProfilePresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->wallet_crypto_wallet_not_created_dialog_description:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 227
    iget-object v3, p0, Lcom/iMe/feature/profile/ProfilePresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->common_ok:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 228
    iget-object v4, p0, Lcom/iMe/feature/profile/ProfilePresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 224
    new-instance v5, Lcom/iMe/model/dialog/DialogModel;

    invoke-direct {v5, v1, v2, v4, v3}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-interface {v0, v5}, Lcom/iMe/feature/profile/ProfileView;->showNeedAuthorizeDialog(Lcom/iMe/model/dialog/DialogModel;)V

    return-void
.end method

.method private final showResetConfirmationDialog(Lcom/iMe/feature/socialMedias/SocialNetwork;)V
    .locals 8

    .line 211
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/feature/profile/ProfileView;

    .line 212
    new-instance v1, Lcom/iMe/model/dialog/DialogModel;

    .line 213
    iget-object v2, p0, Lcom/iMe/feature/profile/ProfilePresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->social_reset_account_title:I

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/iMe/feature/socialMedias/SocialNetwork;->getSocialName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-interface {v2, v3, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 214
    iget-object v3, p0, Lcom/iMe/feature/profile/ProfilePresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->social_reset_account_message:I

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/iMe/feature/socialMedias/SocialNetwork;->getSocialName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    invoke-interface {v3, v5, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 215
    iget-object v4, p0, Lcom/iMe/feature/profile/ProfilePresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->social_reset_account_negative_button:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 216
    iget-object v5, p0, Lcom/iMe/feature/profile/ProfilePresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v6, Lorg/telegram/messenger/R$string;->social_reset_account_positive_button:I

    invoke-interface {v5, v6}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 212
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-interface {v0, v1, p1}, Lcom/iMe/feature/profile/ProfileView;->showResetConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/feature/socialMedias/SocialNetwork;)V

    return-void
.end method

.method private final startSocialAuth(Lcom/iMe/feature/socialMedias/SocialType;)V
    .locals 4

    .line 254
    iget-object v0, p0, Lcom/iMe/feature/profile/ProfilePresenter;->socialUseCase:Lcom/iMe/feature/socialMedias/SocialUseCase;

    .line 255
    iget-object v1, p0, Lcom/iMe/feature/profile/ProfilePresenter;->profileUiState:Lcom/iMe/feature/profile/ProfileUiState;

    invoke-virtual {v1}, Lcom/iMe/feature/profile/ProfileUiState;->getCurrentProfile()Lcom/iMe/feature/profile/ProfileData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/feature/profile/ProfileData;->getProfileId()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/iMe/feature/socialMedias/SocialUseCase;->startSocialAuth(Lcom/iMe/feature/socialMedias/SocialType;J)Lio/reactivex/Observable;

    move-result-object p1

    .line 256
    invoke-static {p1}, Lcom/iMe/utils/extentions/rx/SchedulersExtKt;->scheduleIO(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p1

    .line 257
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

    .line 258
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 47
    new-instance v1, Lcom/iMe/feature/profile/ProfilePresenter$startSocialAuth$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/iMe/feature/profile/ProfilePresenter$startSocialAuth$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/feature/profile/ProfilePresenter;)V

    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/feature/profile/ProfilePresenter$startSocialAuth$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v1, v0}, Lcom/iMe/feature/profile/ProfilePresenter$startSocialAuth$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 49
    new-instance v0, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v0, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    invoke-virtual {p1, v2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "viewState: BaseView? = n\u2026Error.invoke()\n        })"

    .line 49
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 265
    invoke-static {p0, p1, v3, v0, v3}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final changeRankVisibility(Z)V
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/iMe/feature/profile/ProfilePresenter;->accountLevelInteractor:Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;

    .line 51
    invoke-virtual {v0, p1}, Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;->changeLevelVisibility(Z)Lio/reactivex/Observable;

    move-result-object p1

    .line 52
    invoke-static {p1}, Lcom/iMe/utils/extentions/rx/SchedulersExtKt;->scheduleIO(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p1

    .line 53
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 47
    new-instance v1, Lcom/iMe/feature/profile/ProfilePresenter$changeRankVisibility$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/iMe/feature/profile/ProfilePresenter$changeRankVisibility$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/feature/profile/ProfilePresenter;)V

    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/feature/profile/ProfilePresenter$changeRankVisibility$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v1, v0}, Lcom/iMe/feature/profile/ProfilePresenter$changeRankVisibility$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 49
    new-instance v0, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v0, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    invoke-virtual {p1, v2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "viewState: BaseView? = n\u2026Error.invoke()\n        })"

    .line 49
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 59
    invoke-static {p0, p1, v0, v1, v0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method public final filterNotMegagroupParticipants(Lcom/iMe/model/group/GroupMembersFilter;)V
    .locals 10

    const-string v0, "membersFilter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/iMe/feature/profile/ProfilePresenter;->profileUiState:Lcom/iMe/feature/profile/ProfileUiState;

    invoke-virtual {v0}, Lcom/iMe/feature/profile/ProfileUiState;->getAllNotMegaGroupMembers()Ljava/util/ArrayList;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/iMe/feature/profile/ProfilePresenter;->groupMembershipUseCase:Lcom/iMe/feature/profile/GroupMembershipUseCase;

    invoke-virtual {v1, v0, p1}, Lcom/iMe/feature/profile/GroupMembershipUseCase;->filterMembers(Ljava/util/ArrayList;Lcom/iMe/model/group/GroupMembersFilter;)Ljava/util/ArrayList;

    move-result-object p1

    .line 71
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

    .line 72
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

    .line 45
    invoke-direct {p0}, Lcom/iMe/feature/profile/ProfilePresenter;->loadSocials()V

    .line 46
    invoke-direct {p0}, Lcom/iMe/feature/profile/ProfilePresenter;->listenSocialAuthResult()V

    return-void
.end method

.method public final onReattachSocialConfirmed(J)V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/iMe/feature/profile/ProfilePresenter;->twitterInteractor:Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;

    .line 105
    iget-object v1, p0, Lcom/iMe/feature/profile/ProfilePresenter;->profileUiState:Lcom/iMe/feature/profile/ProfileUiState;

    invoke-virtual {v1}, Lcom/iMe/feature/profile/ProfileUiState;->getCurrentProfile()Lcom/iMe/feature/profile/ProfileData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/feature/profile/ProfileData;->getProfileId()J

    move-result-wide v1

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;->acceptConnection(JJ)Lio/reactivex/Observable;

    move-result-object p1

    .line 106
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p2

    const-string v0, "viewState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/iMe/ui/base/mvp/base/BaseView;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 107
    invoke-static {p1}, Lcom/iMe/utils/extentions/rx/SchedulersExtKt;->scheduleIO(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p1

    .line 108
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p2

    check-cast p2, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 47
    new-instance v0, Lcom/iMe/feature/profile/ProfilePresenter$onReattachSocialConfirmed$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v0, p0}, Lcom/iMe/feature/profile/ProfilePresenter$onReattachSocialConfirmed$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/feature/profile/ProfilePresenter;)V

    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v0}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Lcom/iMe/feature/profile/ProfilePresenter$onReattachSocialConfirmed$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v0, p2}, Lcom/iMe/feature/profile/ProfilePresenter$onReattachSocialConfirmed$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 49
    new-instance p2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {p2, v0}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    invoke-virtual {p1, v1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p2, "viewState: BaseView? = n\u2026Error.invoke()\n        })"

    .line 49
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0, p1}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->singleDispose(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public final onResetSocialNetwork(Lcom/iMe/feature/socialMedias/SocialNetwork;)V
    .locals 1

    const-string v0, "socialNetwork"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-direct {p0, p1}, Lcom/iMe/feature/profile/ProfilePresenter;->logoutSocialNetwork(Lcom/iMe/feature/socialMedias/SocialNetwork;)V

    return-void
.end method

.method public final onSocialAddClicked(Lcom/iMe/feature/socialMedias/SocialNetwork;)V
    .locals 4

    const-string v0, "socialNetwork"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
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

    .line 95
    invoke-direct {p0}, Lcom/iMe/feature/profile/ProfilePresenter;->showNeedAuthorizeDialog()V

    goto :goto_2

    .line 96
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

    .line 97
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

    .line 101
    invoke-virtual {p1}, Lcom/iMe/feature/socialMedias/SocialNetwork;->getSocial()Lcom/iMe/feature/socialMedias/SocialType;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/iMe/feature/profile/ProfilePresenter;->startSocialAuth(Lcom/iMe/feature/socialMedias/SocialType;)V

    return-void
.end method

.method public final onSocialClicked(Lcom/iMe/feature/socialMedias/SocialNetwork;)V
    .locals 3

    const-string v0, "socialNetwork"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1}, Lcom/iMe/feature/socialMedias/SocialNetwork;->getSocial()Lcom/iMe/feature/socialMedias/SocialType;

    move-result-object v0

    sget-object v1, Lcom/iMe/feature/socialMedias/SocialType;->TWITTER:Lcom/iMe/feature/socialMedias/SocialType;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/feature/profile/ProfileView;

    iget-object v1, p0, Lcom/iMe/feature/profile/ProfilePresenter;->profileUiState:Lcom/iMe/feature/profile/ProfileUiState;

    invoke-virtual {v1}, Lcom/iMe/feature/profile/ProfileUiState;->getCurrentProfile()Lcom/iMe/feature/profile/ProfileData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/feature/profile/ProfileData;->getProfileId()J

    move-result-wide v1

    invoke-interface {v0, v1, v2, p1}, Lcom/iMe/feature/profile/ProfileView;->openTwitterScreen(JLcom/iMe/feature/socialMedias/SocialNetwork;)V

    goto :goto_0

    .line 88
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

    .line 78
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

    .line 81
    invoke-direct {p0, p2}, Lcom/iMe/feature/profile/ProfilePresenter;->showResetConfirmationDialog(Lcom/iMe/feature/socialMedias/SocialNetwork;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 80
    :cond_1
    invoke-virtual {p2}, Lcom/iMe/feature/socialMedias/SocialNetwork;->getSocialWebUrl()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2, v0, p2}, Lcom/iMe/utils/extentions/common/ContextExtKt;->copyToClipboard$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    .line 79
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

    .line 63
    iget-object p1, p0, Lcom/iMe/feature/profile/ProfilePresenter;->profileUiState:Lcom/iMe/feature/profile/ProfileUiState;

    invoke-virtual {p1}, Lcom/iMe/feature/profile/ProfileUiState;->hasNoParticipants()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "setNotMegagroupParticipants skipped"

    .line 65
    invoke-static {p2, p1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 64
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
