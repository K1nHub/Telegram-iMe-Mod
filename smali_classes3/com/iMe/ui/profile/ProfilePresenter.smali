.class public final Lcom/iMe/ui/profile/ProfilePresenter;
.super Lcom/iMe/ui/base/mvp/base/BasePresenter;
.source "ProfilePresenter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/profile/ProfilePresenter$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iMe/ui/base/mvp/base/BasePresenter<",
        "Lcom/iMe/ui/profile/ProfileView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProfilePresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProfilePresenter.kt\ncom/iMe/ui/profile/ProfilePresenter\n+ 2 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,414:1\n39#2,8:415\n39#2,8:435\n39#2,8:443\n39#2,8:451\n39#2,8:459\n39#2,8:467\n39#2,8:475\n766#3:423\n857#3,2:424\n766#3:426\n857#3,2:427\n766#3:429\n857#3,2:430\n766#3:432\n857#3,2:433\n*S KotlinDebug\n*F\n+ 1 ProfilePresenter.kt\ncom/iMe/ui/profile/ProfilePresenter\n*L\n79#1:415,8\n132#1:435,8\n161#1:443,8\n180#1:451,8\n198#1:459,8\n265#1:467,8\n345#1:475,8\n103#1:423\n103#1:424,2\n104#1:426\n104#1:427,2\n105#1:429\n105#1:430,2\n108#1:432\n108#1:433,2\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final accountLevelInteractor:Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;

.field private allNotMegagroupParticipants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$ChatParticipant;",
            ">;"
        }
    .end annotation
.end field

.field private final authManager:Lcom/iMe/storage/domain/manager/auth/AuthManager;

.field private final chatId:J

.field private final isCurrentUser:Z

.field private final profileId:J

.field private final resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

.field private final schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

.field private final telegramControllersGateway:Lcom/iMe/gateway/TelegramControllersGateway;

.field private final telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

.field private twitterAccountStatus:Lcom/iMe/model/twitter/TwitterAccountStatus;

.field private final twitterInteractor:Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;

.field private final twitterPreferenceHelper:Lcom/iMe/storage/domain/storage/TwitterPreferenceHelper;

.field private twitterProfileInfo:Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;

.field private final userId:J

.field private final walletSessionInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor;


# direct methods
.method public constructor <init>(JJLcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;Lcom/iMe/storage/domain/manager/auth/AuthManager;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/gateway/TelegramControllersGateway;Lcom/iMe/storage/domain/gateway/TelegramGateway;Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;Lcom/iMe/storage/domain/storage/TwitterPreferenceHelper;Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor;)V
    .locals 1

    const-string v0, "accountLevelInteractor"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authManager"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telegramControllersGateway"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telegramGateway"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "twitterInteractor"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "twitterPreferenceHelper"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "walletSessionInteractor"

    invoke-static {p13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 48
    iput-wide p1, p0, Lcom/iMe/ui/profile/ProfilePresenter;->userId:J

    .line 49
    iput-wide p3, p0, Lcom/iMe/ui/profile/ProfilePresenter;->chatId:J

    .line 50
    iput-object p5, p0, Lcom/iMe/ui/profile/ProfilePresenter;->accountLevelInteractor:Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;

    .line 51
    iput-object p6, p0, Lcom/iMe/ui/profile/ProfilePresenter;->authManager:Lcom/iMe/storage/domain/manager/auth/AuthManager;

    .line 52
    iput-object p7, p0, Lcom/iMe/ui/profile/ProfilePresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 53
    iput-object p8, p0, Lcom/iMe/ui/profile/ProfilePresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    .line 54
    iput-object p9, p0, Lcom/iMe/ui/profile/ProfilePresenter;->telegramControllersGateway:Lcom/iMe/gateway/TelegramControllersGateway;

    .line 55
    iput-object p10, p0, Lcom/iMe/ui/profile/ProfilePresenter;->telegramGateway:Lcom/iMe/storage/domain/gateway/TelegramGateway;

    .line 56
    iput-object p11, p0, Lcom/iMe/ui/profile/ProfilePresenter;->twitterInteractor:Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;

    .line 57
    iput-object p12, p0, Lcom/iMe/ui/profile/ProfilePresenter;->twitterPreferenceHelper:Lcom/iMe/storage/domain/storage/TwitterPreferenceHelper;

    .line 58
    iput-object p13, p0, Lcom/iMe/ui/profile/ProfilePresenter;->walletSessionInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor;

    .line 62
    sget-object p3, Lcom/iMe/model/twitter/TwitterAccountStatus$None;->INSTANCE:Lcom/iMe/model/twitter/TwitterAccountStatus$None;

    iput-object p3, p0, Lcom/iMe/ui/profile/ProfilePresenter;->twitterAccountStatus:Lcom/iMe/model/twitter/TwitterAccountStatus;

    .line 66
    invoke-direct {p0}, Lcom/iMe/ui/profile/ProfilePresenter;->getProfileId()J

    move-result-wide p3

    iput-wide p3, p0, Lcom/iMe/ui/profile/ProfilePresenter;->profileId:J

    .line 67
    invoke-interface {p10}, Lcom/iMe/storage/domain/gateway/TelegramGateway;->getSelectedAccountId()J

    move-result-wide p3

    cmp-long p1, p3, p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/iMe/ui/profile/ProfilePresenter;->isCurrentUser:Z

    .line 70
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/profile/ProfilePresenter;->allNotMegagroupParticipants:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic access$getProfileId$p(Lcom/iMe/ui/profile/ProfilePresenter;)J
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/iMe/ui/profile/ProfilePresenter;->profileId:J

    return-wide v0
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/iMe/ui/profile/ProfilePresenter;)Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/iMe/ui/profile/ProfilePresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method

.method public static final synthetic access$getSavedAccountData(Lcom/iMe/ui/profile/ProfilePresenter;)Lcom/iMe/storage/domain/model/twitter/TwitterAccountData;
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/iMe/ui/profile/ProfilePresenter;->getSavedAccountData()Lcom/iMe/storage/domain/model/twitter/TwitterAccountData;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTwitterPreferenceHelper$p(Lcom/iMe/ui/profile/ProfilePresenter;)Lcom/iMe/storage/domain/storage/TwitterPreferenceHelper;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/iMe/ui/profile/ProfilePresenter;->twitterPreferenceHelper:Lcom/iMe/storage/domain/storage/TwitterPreferenceHelper;

    return-object p0
.end method

.method public static final synthetic access$isCurrentUser$p(Lcom/iMe/ui/profile/ProfilePresenter;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/iMe/ui/profile/ProfilePresenter;->isCurrentUser:Z

    return p0
.end method

.method public static final synthetic access$setTwitterProfileInfo$p(Lcom/iMe/ui/profile/ProfilePresenter;Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/iMe/ui/profile/ProfilePresenter;->twitterProfileInfo:Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;

    return-void
.end method

.method public static final synthetic access$updateTwitterStatusAndRender(Lcom/iMe/ui/profile/ProfilePresenter;Lcom/iMe/model/twitter/TwitterAccountStatus;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/iMe/ui/profile/ProfilePresenter;->updateTwitterStatusAndRender(Lcom/iMe/model/twitter/TwitterAccountStatus;)V

    return-void
.end method

.method private final getProfileId()J
    .locals 5

    .line 249
    iget-wide v0, p0, Lcom/iMe/ui/profile/ProfilePresenter;->userId:J

    iget-wide v2, p0, Lcom/iMe/ui/profile/ProfilePresenter;->chatId:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    .line 250
    :cond_0
    sget-object v0, Lcom/iMe/common/TelegramConstants;->INSTANCE:Lcom/iMe/common/TelegramConstants;

    invoke-virtual {v0, v2, v3}, Lcom/iMe/common/TelegramConstants;->prepareChatIdForBotAPI(J)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method private final getSavedAccountData()Lcom/iMe/storage/domain/model/twitter/TwitterAccountData;
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/iMe/ui/profile/ProfilePresenter;->twitterPreferenceHelper:Lcom/iMe/storage/domain/storage/TwitterPreferenceHelper;

    invoke-interface {v0}, Lcom/iMe/storage/domain/storage/TwitterPreferenceHelper;->getAccountsData()Lcom/iMe/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;

    move-result-object v0

    iget-wide v1, p0, Lcom/iMe/ui/profile/ProfilePresenter;->profileId:J

    invoke-virtual {v0, v1, v2}, Lcom/iMe/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;->getDataByTelegramId(J)Lcom/iMe/storage/domain/model/twitter/TwitterAccountData;

    move-result-object v0

    return-object v0
.end method

.method private final getTwitterProfileObservable()Lio/reactivex/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/iMe/storage/domain/model/Result<",
            "Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;",
            ">;>;"
        }
    .end annotation

    .line 295
    iget-boolean v0, p0, Lcom/iMe/ui/profile/ProfilePresenter;->isCurrentUser:Z

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/iMe/ui/profile/ProfilePresenter;->twitterInteractor:Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;

    iget-wide v1, p0, Lcom/iMe/ui/profile/ProfilePresenter;->profileId:J

    invoke-virtual {v0, v1, v2}, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;->getSelfTwitterProfile(J)Lio/reactivex/Observable;

    move-result-object v0

    goto :goto_0

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/profile/ProfilePresenter;->telegramControllersGateway:Lcom/iMe/gateway/TelegramControllersGateway;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/iMe/gateway/TelegramControllersGateway$-CC;->getMessagesController$default(Lcom/iMe/gateway/TelegramControllersGateway;IILjava/lang/Object;)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lcom/iMe/ui/profile/ProfilePresenter;->chatId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 299
    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v1, :cond_1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    if-eqz v0, :cond_2

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/iMe/ui/profile/ProfilePresenter;->twitterInteractor:Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;

    iget-wide v1, p0, Lcom/iMe/ui/profile/ProfilePresenter;->profileId:J

    invoke-virtual {v0, v1, v2}, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;->getSelfChatTwitterProfile(J)Lio/reactivex/Observable;

    move-result-object v0

    goto :goto_0

    .line 302
    :cond_2
    iget-object v0, p0, Lcom/iMe/ui/profile/ProfilePresenter;->twitterInteractor:Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;

    iget-wide v1, p0, Lcom/iMe/ui/profile/ProfilePresenter;->profileId:J

    invoke-virtual {v0, v1, v2}, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;->getUserTwitterProfile(J)Lio/reactivex/Observable;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private final loadAccountLevelInfo()V
    .locals 4

    .line 342
    iget-object v0, p0, Lcom/iMe/ui/profile/ProfilePresenter;->accountLevelInteractor:Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;

    .line 343
    iget-wide v1, p0, Lcom/iMe/ui/profile/ProfilePresenter;->userId:J

    invoke-virtual {v0, v1, v2}, Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;->getAccountLevelInformation(J)Lio/reactivex/Observable;

    move-result-object v0

    .line 344
    iget-object v1, p0, Lcom/iMe/ui/profile/ProfilePresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "accountLevelInteractor\n \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v2, Lcom/iMe/ui/profile/ProfilePresenter$loadAccountLevelInfo$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/profile/ProfilePresenter$loadAccountLevelInfo$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/profile/ProfilePresenter;)V

    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/ui/profile/ProfilePresenter$loadAccountLevelInfo$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/profile/ProfilePresenter$loadAccountLevelInfo$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v0, v3, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 351
    invoke-static {p0, v0, v1, v2, v1}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final loadTwitterProfile()V
    .locals 4

    .line 263
    invoke-direct {p0}, Lcom/iMe/ui/profile/ProfilePresenter;->getTwitterProfileObservable()Lio/reactivex/Observable;

    move-result-object v0

    .line 264
    iget-object v1, p0, Lcom/iMe/ui/profile/ProfilePresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "getTwitterProfileObserva\u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v2, Lcom/iMe/ui/profile/ProfilePresenter$loadTwitterProfile$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/profile/ProfilePresenter$loadTwitterProfile$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/profile/ProfilePresenter;)V

    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/ui/profile/ProfilePresenter$loadTwitterProfile$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/profile/ProfilePresenter$loadTwitterProfile$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v0, v3, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 291
    invoke-static {p0, v0, v1, v2, v1}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method private final onTwitterAuthSuccess(Lcom/iMe/model/twitter/TwitterAuthResult$Success;)V
    .locals 22

    move-object/from16 v0, p0

    .line 313
    iget-object v1, v0, Lcom/iMe/ui/profile/ProfilePresenter;->twitterPreferenceHelper:Lcom/iMe/storage/domain/storage/TwitterPreferenceHelper;

    invoke-interface {v1}, Lcom/iMe/storage/domain/storage/TwitterPreferenceHelper;->getAccountsData()Lcom/iMe/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;

    move-result-object v1

    .line 314
    iget-wide v2, v0, Lcom/iMe/ui/profile/ProfilePresenter;->profileId:J

    .line 315
    new-instance v12, Lcom/iMe/storage/domain/model/twitter/TwitterAccountData;

    .line 316
    invoke-virtual/range {p1 .. p1}, Lcom/iMe/model/twitter/TwitterAuthResult$Success;->getTwitterUserId()J

    move-result-wide v5

    .line 317
    invoke-virtual/range {p1 .. p1}, Lcom/iMe/model/twitter/TwitterAuthResult$Success;->getTwitterUsername()Ljava/lang/String;

    move-result-object v7

    .line 318
    invoke-virtual/range {p1 .. p1}, Lcom/iMe/model/twitter/TwitterAuthResult$Success;->getAccessToken()Ljava/lang/String;

    move-result-object v8

    .line 319
    invoke-virtual/range {p1 .. p1}, Lcom/iMe/model/twitter/TwitterAuthResult$Success;->getRefreshToken()Ljava/lang/String;

    move-result-object v9

    .line 320
    invoke-static {}, Lcom/iMe/storage/data/utils/extentions/DateExtKt;->now()J

    move-result-wide v10

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {p1 .. p1}, Lcom/iMe/model/twitter/TwitterAuthResult$Success;->getExpiresIn()J

    move-result-wide v13

    invoke-virtual {v4, v13, v14}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v13

    add-long/2addr v10, v13

    move-object v4, v12

    .line 315
    invoke-direct/range {v4 .. v11}, Lcom/iMe/storage/domain/model/twitter/TwitterAccountData;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 313
    invoke-virtual {v1, v2, v3, v12}, Lcom/iMe/storage/domain/model/twitter/PreferenceTwitterTelegramIdMappedData;->put(JLcom/iMe/storage/domain/model/twitter/TwitterAccountData;)V

    .line 323
    new-instance v1, Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;

    .line 324
    invoke-virtual/range {p1 .. p1}, Lcom/iMe/model/twitter/TwitterAuthResult$Success;->getTwitterUserId()J

    move-result-wide v14

    .line 325
    invoke-virtual/range {p1 .. p1}, Lcom/iMe/model/twitter/TwitterAuthResult$Success;->getTwitterUserId()J

    move-result-wide v16

    .line 326
    iget-wide v2, v0, Lcom/iMe/ui/profile/ProfilePresenter;->profileId:J

    .line 327
    invoke-virtual/range {p1 .. p1}, Lcom/iMe/model/twitter/TwitterAuthResult$Success;->getTwitterUsername()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object v13, v1

    move-wide/from16 v18, v2

    .line 323
    invoke-direct/range {v13 .. v21}, Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;-><init>(JJJLjava/lang/String;Z)V

    iput-object v1, v0, Lcom/iMe/ui/profile/ProfilePresenter;->twitterProfileInfo:Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;

    .line 330
    sget-object v1, Lcom/iMe/storage/domain/model/twitter/TwitterAuthStatus;->Companion:Lcom/iMe/storage/domain/model/twitter/TwitterAuthStatus$Companion;

    invoke-virtual/range {p1 .. p1}, Lcom/iMe/model/twitter/TwitterAuthResult$Success;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iMe/storage/domain/model/twitter/TwitterAuthStatus$Companion;->map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/twitter/TwitterAuthStatus;

    move-result-object v1

    sget-object v2, Lcom/iMe/ui/profile/ProfilePresenter$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 336
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/profile/ProfilePresenter;->showTwitterLinkConfirmationDialog()V

    goto :goto_0

    .line 333
    :cond_1
    new-instance v1, Lcom/iMe/model/twitter/TwitterAccountStatus$Active;

    invoke-virtual/range {p1 .. p1}, Lcom/iMe/model/twitter/TwitterAuthResult$Success;->getTwitterUsername()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/iMe/model/twitter/TwitterAccountStatus$Active;-><init>(Ljava/lang/String;)V

    .line 332
    invoke-direct {v0, v1}, Lcom/iMe/ui/profile/ProfilePresenter;->updateTwitterStatusAndRender(Lcom/iMe/model/twitter/TwitterAccountStatus;)V

    :goto_0
    return-void
.end method

.method private final showTwitterBotConfirmationDialog()V
    .locals 8

    .line 366
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/profile/ProfileView;

    .line 367
    new-instance v1, Lcom/iMe/model/dialog/DialogModel;

    .line 368
    iget-object v2, p0, Lcom/iMe/ui/profile/ProfilePresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->profile_twitter_bot_confirmation_alert_title:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 369
    iget-object v3, p0, Lcom/iMe/ui/profile/ProfilePresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    .line 370
    sget v4, Lorg/telegram/messenger/R$string;->profile_twitter_bot_confirmation_alert_description:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 371
    invoke-static {}, Lcom/iMe/storage/common/AppConfiguration$Wallet;->getWalletBotUsernameWithAT()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 369
    invoke-interface {v3, v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 373
    iget-object v4, p0, Lcom/iMe/ui/profile/ProfilePresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 374
    sget v5, Lorg/telegram/messenger/R$string;->Add:I

    const-string v6, "Add"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 367
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    invoke-interface {v0, v1}, Lcom/iMe/ui/profile/ProfileView;->showTwitterBotConfirmationDialogIfNeeded(Lcom/iMe/model/dialog/DialogModel;)V

    return-void
.end method

.method private final showTwitterLinkConfirmationDialog()V
    .locals 7

    .line 391
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/profile/ProfileView;

    .line 392
    new-instance v1, Lcom/iMe/model/dialog/DialogModel;

    .line 393
    iget-object v2, p0, Lcom/iMe/ui/profile/ProfilePresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->profile_twitter_link_confirmation_alert_title:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 394
    iget-object v3, p0, Lcom/iMe/ui/profile/ProfilePresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->profile_twitter_link_confirmation_alert_description:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 395
    sget v4, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v5, "Cancel"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 396
    iget-object v5, p0, Lcom/iMe/ui/profile/ProfilePresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v6, Lorg/telegram/messenger/R$string;->common_confirm:I

    invoke-interface {v5, v6}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 392
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-interface {v0, v1}, Lcom/iMe/ui/profile/ProfileView;->showTwitterLinkConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;)V

    return-void
.end method

.method private final showTwitterProfile()V
    .locals 2

    .line 253
    invoke-direct {p0}, Lcom/iMe/ui/profile/ProfilePresenter;->getSavedAccountData()Lcom/iMe/storage/domain/model/twitter/TwitterAccountData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 255
    new-instance v1, Lcom/iMe/model/twitter/TwitterAccountStatus$Active;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/twitter/TwitterAccountData;->getTwitterUsername()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/iMe/model/twitter/TwitterAccountStatus$Active;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/iMe/ui/profile/ProfilePresenter;->updateTwitterStatusAndRender(Lcom/iMe/model/twitter/TwitterAccountStatus;)V

    goto :goto_0

    .line 257
    :cond_0
    sget-object v0, Lcom/iMe/model/twitter/TwitterAccountStatus$None;->INSTANCE:Lcom/iMe/model/twitter/TwitterAccountStatus$None;

    invoke-direct {p0, v0}, Lcom/iMe/ui/profile/ProfilePresenter;->updateTwitterStatusAndRender(Lcom/iMe/model/twitter/TwitterAccountStatus;)V

    .line 259
    :goto_0
    invoke-direct {p0}, Lcom/iMe/ui/profile/ProfilePresenter;->loadTwitterProfile()V

    return-void
.end method

.method private final showTwitterResetConfirmationDialog()V
    .locals 7

    .line 402
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/profile/ProfileView;

    .line 403
    new-instance v1, Lcom/iMe/model/dialog/DialogModel;

    .line 404
    iget-object v2, p0, Lcom/iMe/ui/profile/ProfilePresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->profile_twitter_reset_confirmation_alert_title:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 405
    iget-object v3, p0, Lcom/iMe/ui/profile/ProfilePresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->profile_twitter_reset_confirmation_alert_description:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 406
    sget v4, Lorg/telegram/messenger/R$string;->Cancel:I

    const-string v5, "Cancel"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 407
    sget v5, Lorg/telegram/messenger/R$string;->Reset:I

    const-string v6, "Reset"

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 403
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    invoke-interface {v0, v1}, Lcom/iMe/ui/profile/ProfileView;->showTwitterResetConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;)V

    return-void
.end method

.method private final showTwitterUnlinkedErrorDialog()V
    .locals 7

    .line 380
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/profile/ProfileView;

    .line 381
    new-instance v1, Lcom/iMe/model/dialog/DialogModel;

    .line 382
    iget-object v2, p0, Lcom/iMe/ui/profile/ProfilePresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->profile_twitter_unlinked_error_alert_title:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 383
    iget-object v3, p0, Lcom/iMe/ui/profile/ProfilePresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->profile_twitter_unlinked_error_alert_description:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 384
    iget-object v4, p0, Lcom/iMe/ui/profile/ProfilePresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->profile_twitter_unlinked_error_alert_log_out:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 385
    iget-object v5, p0, Lcom/iMe/ui/profile/ProfilePresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v6, Lorg/telegram/messenger/R$string;->profile_twitter_unlinked_error_alert_link:I

    invoke-interface {v5, v6}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 381
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    invoke-interface {v0, v1}, Lcom/iMe/ui/profile/ProfileView;->showTwitterUnlinkedErrorDialog(Lcom/iMe/model/dialog/DialogModel;)V

    return-void
.end method

.method private final showVpnWarningDialog()V
    .locals 7

    .line 355
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/profile/ProfileView;

    .line 356
    new-instance v1, Lcom/iMe/model/dialog/DialogModel;

    .line 357
    iget-object v2, p0, Lcom/iMe/ui/profile/ProfilePresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v3, Lorg/telegram/messenger/R$string;->profile_twitter_vpn_alert_title:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 358
    iget-object v3, p0, Lcom/iMe/ui/profile/ProfilePresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v4, Lorg/telegram/messenger/R$string;->profile_twitter_vpn_alert_description:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 359
    iget-object v4, p0, Lcom/iMe/ui/profile/ProfilePresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v5, Lorg/telegram/messenger/R$string;->common_cancel:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 360
    iget-object v5, p0, Lcom/iMe/ui/profile/ProfilePresenter;->resourceManager:Lcom/iMe/storage/domain/utils/system/ResourceManager;

    sget v6, Lorg/telegram/messenger/R$string;->common_ok:I

    invoke-interface {v5, v6}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 356
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/iMe/model/dialog/DialogModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    invoke-interface {v0, v1}, Lcom/iMe/ui/profile/ProfileView;->showVpnWarningDialog(Lcom/iMe/model/dialog/DialogModel;)V

    return-void
.end method

.method private final updateTwitterStatusAndRender(Lcom/iMe/model/twitter/TwitterAccountStatus;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/iMe/ui/profile/ProfilePresenter;->twitterAccountStatus:Lcom/iMe/model/twitter/TwitterAccountStatus;

    .line 308
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/profile/ProfileView;

    invoke-interface {p1}, Lcom/iMe/ui/profile/ProfileView;->updateTwitterItem()V

    return-void
.end method


# virtual methods
.method public final acceptTwitterConnection()V
    .locals 6

    .line 154
    iget-object v0, p0, Lcom/iMe/ui/profile/ProfilePresenter;->twitterProfileInfo:Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;

    if-nez v0, :cond_0

    return-void

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/iMe/ui/profile/ProfilePresenter;->twitterInteractor:Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;

    .line 157
    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;->getTwitterUserId()J

    move-result-wide v2

    .line 158
    iget-wide v4, p0, Lcom/iMe/ui/profile/ProfilePresenter;->profileId:J

    .line 156
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;->acceptConnection(JJ)Lio/reactivex/Observable;

    move-result-object v1

    .line 160
    iget-object v2, p0, Lcom/iMe/ui/profile/ProfilePresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v2}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    const-string v2, "twitterInteractor\n      \u2026(schedulersProvider.ui())"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v2

    check-cast v2, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v3, Lcom/iMe/ui/profile/ProfilePresenter$acceptTwitterConnection$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v3, p0, v0}, Lcom/iMe/ui/profile/ProfilePresenter$acceptTwitterConnection$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/profile/ProfilePresenter;Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;)V

    new-instance v0, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v0, v3}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v3, Lcom/iMe/ui/profile/ProfilePresenter$acceptTwitterConnection$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v3, v2}, Lcom/iMe/ui/profile/ProfilePresenter$acceptTwitterConnection$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v3}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v1, v0, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 170
    invoke-static {p0, v0, v2, v1, v2}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method public final changeRankVisibility(Z)V
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/iMe/ui/profile/ProfilePresenter;->accountLevelInteractor:Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;

    .line 77
    invoke-virtual {v0, p1}, Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;->changeLevelVisibility(Z)Lio/reactivex/Observable;

    move-result-object p1

    .line 78
    iget-object v0, p0, Lcom/iMe/ui/profile/ProfilePresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "accountLevelInteractor\n \u2026(schedulersProvider.ui())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v1, Lcom/iMe/ui/profile/ProfilePresenter$changeRankVisibility$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/profile/ProfilePresenter$changeRankVisibility$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/profile/ProfilePresenter;)V

    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/ui/profile/ProfilePresenter$changeRankVisibility$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v1, v0}, Lcom/iMe/ui/profile/ProfilePresenter$changeRankVisibility$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v0, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v0, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {p1, v2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 85
    invoke-static {p0, p1, v0, v1, v0}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method public final declineConnection()V
    .locals 5

    .line 174
    iget-object v0, p0, Lcom/iMe/ui/profile/ProfilePresenter;->twitterInteractor:Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;

    .line 176
    iget-object v1, p0, Lcom/iMe/ui/profile/ProfilePresenter;->twitterProfileInfo:Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;->getTwitterUserId()J

    move-result-wide v1

    .line 177
    iget-wide v3, p0, Lcom/iMe/ui/profile/ProfilePresenter;->profileId:J

    .line 175
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;->declineConnection(JJ)Lio/reactivex/Observable;

    move-result-object v0

    .line 179
    iget-object v1, p0, Lcom/iMe/ui/profile/ProfilePresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "twitterInteractor\n      \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v2, Lcom/iMe/ui/profile/ProfilePresenter$declineConnection$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/profile/ProfilePresenter$declineConnection$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/profile/ProfilePresenter;)V

    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/ui/profile/ProfilePresenter$declineConnection$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/profile/ProfilePresenter$declineConnection$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v0, v3, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 191
    invoke-static {p0, v0, v2, v1, v2}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final filterNotMegagroupParticipants(Lcom/iMe/model/group/GroupMembersFilter;)V
    .locals 6

    const-string v0, "membersFilter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/iMe/ui/profile/ProfilePresenter;->telegramControllersGateway:Lcom/iMe/gateway/TelegramControllersGateway;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/iMe/gateway/TelegramControllersGateway$-CC;->getMessagesController$default(Lcom/iMe/gateway/TelegramControllersGateway;IILjava/lang/Object;)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    .line 101
    sget-object v3, Lcom/iMe/ui/profile/ProfilePresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v3, p1

    packed-switch p1, :pswitch_data_0

    .line 766
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 108
    :pswitch_0
    iget-object p1, p0, Lcom/iMe/ui/profile/ProfilePresenter;->allNotMegagroupParticipants:Ljava/util/ArrayList;

    .line 766
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 108
    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->isDeleted(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 857
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 107
    :pswitch_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_6

    .line 106
    :pswitch_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_6

    .line 105
    :pswitch_3
    iget-object p1, p0, Lcom/iMe/ui/profile/ProfilePresenter;->allNotMegagroupParticipants:Ljava/util/ArrayList;

    .line 766
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 105
    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->isContact(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 857
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 104
    :pswitch_4
    iget-object p1, p0, Lcom/iMe/ui/profile/ProfilePresenter;->allNotMegagroupParticipants:Ljava/util/ArrayList;

    .line 766
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 104
    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v3, :cond_2

    .line 857
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 103
    :pswitch_5
    iget-object p1, p0, Lcom/iMe/ui/profile/ProfilePresenter;->allNotMegagroupParticipants:Ljava/util/ArrayList;

    .line 766
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 103
    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantAdmin;

    if-nez v5, :cond_5

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantCreator;

    if-eqz v4, :cond_4

    goto :goto_4

    :cond_4
    move v4, v1

    goto :goto_5

    :cond_5
    :goto_4
    move v4, v2

    :goto_5
    if-eqz v4, :cond_3

    .line 857
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    move-object v1, v0

    goto :goto_6

    .line 102
    :pswitch_6
    iget-object v1, p0, Lcom/iMe/ui/profile/ProfilePresenter;->allNotMegagroupParticipants:Ljava/util/ArrayList;

    .line 109
    :cond_7
    :goto_6
    invoke-static {v1}, Lcom/iMe/fork/utils/CollectionsUtilsKt;->toArrayList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    .line 111
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/profile/ProfileView;

    invoke-interface {v0, p1}, Lcom/iMe/ui/profile/ProfileView;->onFilteredMembers(Ljava/util/ArrayList;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getTwitterAccountStatus()Lcom/iMe/model/twitter/TwitterAccountStatus;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/iMe/ui/profile/ProfilePresenter;->twitterAccountStatus:Lcom/iMe/model/twitter/TwitterAccountStatus;

    return-object v0
.end method

.method public final logoutTwitter()V
    .locals 4

    .line 195
    iget-object v0, p0, Lcom/iMe/ui/profile/ProfilePresenter;->twitterInteractor:Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;

    .line 196
    iget-wide v1, p0, Lcom/iMe/ui/profile/ProfilePresenter;->profileId:J

    invoke-virtual {v0, v1, v2}, Lcom/iMe/storage/domain/interactor/twitter/TwitterInteractor;->logout(J)Lio/reactivex/Observable;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lcom/iMe/ui/profile/ProfilePresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "twitterInteractor\n      \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v2, Lcom/iMe/ui/profile/ProfilePresenter$logoutTwitter$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v2, p0}, Lcom/iMe/ui/profile/ProfilePresenter$logoutTwitter$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/profile/ProfilePresenter;)V

    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/iMe/ui/profile/ProfilePresenter$logoutTwitter$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v1}, Lcom/iMe/ui/profile/ProfilePresenter$logoutTwitter$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v0, v3, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 208
    invoke-static {p0, v0, v1, v2, v1}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method protected onFirstViewAttach()V
    .locals 4

    .line 236
    iget-wide v0, p0, Lcom/iMe/ui/profile/ProfilePresenter;->userId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 237
    invoke-static {}, Lcom/iMe/utils/helper/wallet/WalletHelper;->isWalletAuthorized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    invoke-direct {p0}, Lcom/iMe/ui/profile/ProfilePresenter;->loadAccountLevelInfo()V

    .line 241
    :cond_0
    invoke-direct {p0}, Lcom/iMe/ui/profile/ProfilePresenter;->showTwitterProfile()V

    return-void
.end method

.method public final onTwitterAccountActionSelected(Lcom/iMe/fork/enums/ProfileTwitterAction;)V
    .locals 6

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    sget-object v0, Lcom/iMe/ui/profile/ProfilePresenter$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_2

    .line 218
    :cond_0
    invoke-direct {p0}, Lcom/iMe/ui/profile/ProfilePresenter;->showTwitterResetConfirmationDialog()V

    goto :goto_2

    .line 213
    :cond_1
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/iMe/ui/profile/ProfileView;

    .line 214
    iget-wide v1, p0, Lcom/iMe/ui/profile/ProfilePresenter;->profileId:J

    .line 215
    iget-object p1, p0, Lcom/iMe/ui/profile/ProfilePresenter;->twitterProfileInfo:Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;->getTwitterUserId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_2
    move-object p1, v3

    :goto_0
    invoke-static {p1}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->orZero(Ljava/lang/Long;)J

    move-result-wide v4

    .line 216
    iget-object p1, p0, Lcom/iMe/ui/profile/ProfilePresenter;->twitterProfileInfo:Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/twitter/TwitterProfileInfo;->getTwitterUserName()Ljava/lang/String;

    move-result-object v3

    :cond_3
    if-nez v3, :cond_4

    const-string p1, ""

    goto :goto_1

    :cond_4
    move-object p1, v3

    :goto_1
    move-wide v3, v4

    move-object v5, p1

    .line 213
    invoke-interface/range {v0 .. v5}, Lcom/iMe/ui/profile/ProfileView;->openTwitterScreen(JJLjava/lang/String;)V

    :goto_2
    return-void
.end method

.method public final onTwitterAuthResult(Lcom/iMe/model/twitter/TwitterAuthResult;)V
    .locals 1

    const-string v0, "authResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    instance-of v0, p1, Lcom/iMe/model/twitter/TwitterAuthResult$Failure;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/profile/ProfileView;

    check-cast p1, Lcom/iMe/model/twitter/TwitterAuthResult$Failure;

    invoke-virtual {p1}, Lcom/iMe/model/twitter/TwitterAuthResult$Failure;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 225
    :cond_0
    instance-of v0, p1, Lcom/iMe/model/twitter/TwitterAuthResult$Success;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/iMe/model/twitter/TwitterAuthResult$Success;

    invoke-direct {p0, p1}, Lcom/iMe/ui/profile/ProfilePresenter;->onTwitterAuthSuccess(Lcom/iMe/model/twitter/TwitterAuthResult$Success;)V

    goto :goto_0

    .line 226
    :cond_1
    instance-of p1, p1, Lcom/iMe/model/twitter/TwitterAuthResult$Cancelled;

    :goto_0
    return-void
.end method

.method public final onTwitterCellClick()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/iMe/ui/profile/ProfilePresenter;->twitterAccountStatus:Lcom/iMe/model/twitter/TwitterAccountStatus;

    .line 116
    instance-of v1, v0, Lcom/iMe/model/twitter/TwitterAccountStatus$Active;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/iMe/ui/profile/ProfilePresenter;->getSavedAccountData()Lcom/iMe/storage/domain/model/twitter/TwitterAccountData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/profile/ProfileView;

    invoke-interface {v0}, Lcom/iMe/ui/profile/ProfileView;->showTwitterAccountActionsDialog()V

    goto :goto_0

    .line 119
    :cond_0
    sget-object v0, Lcom/iMe/fork/enums/ProfileTwitterAction;->OPEN:Lcom/iMe/fork/enums/ProfileTwitterAction;

    invoke-virtual {p0, v0}, Lcom/iMe/ui/profile/ProfilePresenter;->onTwitterAccountActionSelected(Lcom/iMe/fork/enums/ProfileTwitterAction;)V

    goto :goto_0

    .line 121
    :cond_1
    instance-of v1, v0, Lcom/iMe/model/twitter/TwitterAccountStatus$Error;

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/iMe/ui/profile/ProfilePresenter;->showTwitterUnlinkedErrorDialog()V

    goto :goto_0

    .line 122
    :cond_2
    instance-of v0, v0, Lcom/iMe/model/twitter/TwitterAccountStatus$None;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/iMe/ui/profile/ProfilePresenter;->showVpnWarningDialog()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final prepareTwitterAuthFlow()V
    .locals 4

    .line 146
    iget-wide v0, p0, Lcom/iMe/ui/profile/ProfilePresenter;->userId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/iMe/ui/profile/ProfilePresenter;->startTwitterAuthFlow()V

    goto :goto_0

    .line 149
    :cond_0
    invoke-direct {p0}, Lcom/iMe/ui/profile/ProfilePresenter;->showTwitterBotConfirmationDialog()V

    :goto_0
    return-void
.end method

.method public final setNotMegagroupParticipants(ZLjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$ChatParticipant;",
            ">;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 90
    iput-object p2, p0, Lcom/iMe/ui/profile/ProfilePresenter;->allNotMegagroupParticipants:Ljava/util/ArrayList;

    goto :goto_0

    .line 92
    :cond_0
    iget-object p1, p0, Lcom/iMe/ui/profile/ProfilePresenter;->allNotMegagroupParticipants:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 93
    iput-object p2, p0, Lcom/iMe/ui/profile/ProfilePresenter;->allNotMegagroupParticipants:Ljava/util/ArrayList;

    :cond_1
    :goto_0
    return-void
.end method

.method public final startTwitterAuthFlow()V
    .locals 6

    .line 127
    iget-object v0, p0, Lcom/iMe/ui/profile/ProfilePresenter;->walletSessionInteractor:Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor;

    .line 128
    iget-object v1, p0, Lcom/iMe/ui/profile/ProfilePresenter;->authManager:Lcom/iMe/storage/domain/manager/auth/AuthManager;

    invoke-interface {v1}, Lcom/iMe/storage/domain/manager/auth/AuthManager;->getRefreshToken()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/interactor/wallet/WalletSessionInteractor;->refreshToken(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 129
    sget-object v1, Lcom/iMe/storage/domain/model/Result;->Companion:Lcom/iMe/storage/domain/model/Result$Companion;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v2}, Lcom/iMe/storage/domain/model/Result$Companion;->loading$default(Lcom/iMe/storage/domain/model/Result$Companion;Ljava/lang/Object;ILjava/lang/Object;)Lcom/iMe/storage/domain/model/Result;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/iMe/ui/profile/ProfilePresenter;->schedulersProvider:Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v1}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "walletSessionInteractor\n\u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    const-string v4, "viewState"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v0, v1, v4, v5, v2}, Lcom/iMe/utils/extentions/rx/RxExtKt;->withLoadingDialog$default(Lio/reactivex/Observable;Lcom/iMe/ui/base/mvp/base/BaseView;ZILjava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 132
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v4, Lcom/iMe/ui/profile/ProfilePresenter$startTwitterAuthFlow$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v4, p0}, Lcom/iMe/ui/profile/ProfilePresenter$startTwitterAuthFlow$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/profile/ProfilePresenter;)V

    new-instance v5, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v5, v4}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v4, Lcom/iMe/ui/profile/ProfilePresenter$startTwitterAuthFlow$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v4, v1}, Lcom/iMe/ui/profile/ProfilePresenter$startTwitterAuthFlow$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v1, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v1, v4}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v0, v5, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    invoke-static {p0, v0, v2, v3, v2}, Lcom/iMe/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/iMe/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method
