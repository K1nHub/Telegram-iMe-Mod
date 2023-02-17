.class public final Lcom/smedialink/ui/profile/ProfilePresenter;
.super Lcom/smedialink/ui/base/mvp/base/BasePresenter;
.source "ProfilePresenter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/profile/ProfilePresenter$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smedialink/ui/base/mvp/base/BasePresenter<",
        "Lcom/smedialink/ui/profile/ProfileView;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProfilePresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProfilePresenter.kt\ncom/smedialink/ui/profile/ProfilePresenter\n+ 2 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,99:1\n39#2,6:100\n39#2,6:106\n764#3:112\n855#3,2:113\n764#3:115\n855#3,2:116\n764#3:118\n855#3,2:119\n764#3:121\n855#3,2:122\n*S KotlinDebug\n*F\n+ 1 ProfilePresenter.kt\ncom/smedialink/ui/profile/ProfilePresenter\n*L\n39#1:100,6\n52#1:106,6\n76#1:112\n76#1:113,2\n77#1:115\n77#1:116,2\n78#1:118\n78#1:119,2\n81#1:121\n81#1:122,2\n*E\n"
.end annotation

.annotation runtime Lmoxy/InjectViewState;
.end annotation


# instance fields
.field private final accountLevelInteractor:Lcom/smedialink/storage/domain/interactor/crypto/level/AccountLevelInteractor;

.field private allNotMegagroupParticipants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$ChatParticipant;",
            ">;"
        }
    .end annotation
.end field

.field private final resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

.field private final schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

.field private final telegramControllersGateway:Lcom/smedialink/gateway/TelegramControllersGateway;

.field private final telegramGateway:Lcom/smedialink/storage/domain/gateway/TelegramGateway;

.field private final userId:J


# direct methods
.method public constructor <init>(JLcom/smedialink/storage/domain/gateway/TelegramGateway;Lcom/smedialink/gateway/TelegramControllersGateway;Lcom/smedialink/storage/domain/interactor/crypto/level/AccountLevelInteractor;Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;Lcom/smedialink/storage/domain/utils/system/ResourceManager;)V
    .locals 1

    const-string v0, "telegramGateway"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telegramControllersGateway"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountLevelInteractor"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "schedulersProvider"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceManager"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;-><init>()V

    .line 22
    iput-wide p1, p0, Lcom/smedialink/ui/profile/ProfilePresenter;->userId:J

    .line 23
    iput-object p3, p0, Lcom/smedialink/ui/profile/ProfilePresenter;->telegramGateway:Lcom/smedialink/storage/domain/gateway/TelegramGateway;

    .line 24
    iput-object p4, p0, Lcom/smedialink/ui/profile/ProfilePresenter;->telegramControllersGateway:Lcom/smedialink/gateway/TelegramControllersGateway;

    .line 25
    iput-object p5, p0, Lcom/smedialink/ui/profile/ProfilePresenter;->accountLevelInteractor:Lcom/smedialink/storage/domain/interactor/crypto/level/AccountLevelInteractor;

    .line 26
    iput-object p6, p0, Lcom/smedialink/ui/profile/ProfilePresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    .line 27
    iput-object p7, p0, Lcom/smedialink/ui/profile/ProfilePresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    .line 31
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/smedialink/ui/profile/ProfilePresenter;->allNotMegagroupParticipants:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic access$getResourceManager$p(Lcom/smedialink/ui/profile/ProfilePresenter;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/smedialink/ui/profile/ProfilePresenter;->resourceManager:Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    return-object p0
.end method


# virtual methods
.method public final changeRankVisibility(Z)V
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/smedialink/ui/profile/ProfilePresenter;->accountLevelInteractor:Lcom/smedialink/storage/domain/interactor/crypto/level/AccountLevelInteractor;

    .line 37
    invoke-virtual {v0, p1}, Lcom/smedialink/storage/domain/interactor/crypto/level/AccountLevelInteractor;->changeLevelVisibility(Z)Lio/reactivex/Observable;

    move-result-object p1

    .line 38
    iget-object v0, p0, Lcom/smedialink/ui/profile/ProfilePresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {v0}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string v0, "accountLevelInteractor\n \u2026(schedulersProvider.ui())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v1, Lcom/smedialink/ui/profile/ProfilePresenter$changeRankVisibility$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/profile/ProfilePresenter$changeRankVisibility$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/profile/ProfilePresenter;)V

    new-instance v2, Lcom/smedialink/ui/profile/ProfilePresenter$changeRankVisibility$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v2, v0}, Lcom/smedialink/ui/profile/ProfilePresenter$changeRankVisibility$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    invoke-virtual {p1, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string v0, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 45
    invoke-static {p0, p1, v0, v1, v0}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method public final filterNotMegagroupParticipants(Lcom/smedialink/model/group/GroupMembersFilter;)V
    .locals 6

    const-string v0, "membersFilter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/smedialink/ui/profile/ProfilePresenter;->telegramControllersGateway:Lcom/smedialink/gateway/TelegramControllersGateway;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/smedialink/gateway/TelegramControllersGateway$DefaultImpls;->getMessagesController$default(Lcom/smedialink/gateway/TelegramControllersGateway;IILjava/lang/Object;)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    .line 74
    sget-object v3, Lcom/smedialink/ui/profile/ProfilePresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v3, p1

    packed-switch p1, :pswitch_data_0

    .line 764
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 81
    :pswitch_0
    iget-object p1, p0, Lcom/smedialink/ui/profile/ProfilePresenter;->allNotMegagroupParticipants:Ljava/util/ArrayList;

    .line 764
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 855
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

    .line 81
    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->isDeleted(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 80
    :pswitch_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_6

    .line 79
    :pswitch_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_6

    .line 78
    :pswitch_3
    iget-object p1, p0, Lcom/smedialink/ui/profile/ProfilePresenter;->allNotMegagroupParticipants:Ljava/util/ArrayList;

    .line 764
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 855
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

    .line 78
    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->isContact(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 77
    :pswitch_4
    iget-object p1, p0, Lcom/smedialink/ui/profile/ProfilePresenter;->allNotMegagroupParticipants:Ljava/util/ArrayList;

    .line 764
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 855
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

    .line 77
    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v3, :cond_2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 76
    :pswitch_5
    iget-object p1, p0, Lcom/smedialink/ui/profile/ProfilePresenter;->allNotMegagroupParticipants:Ljava/util/ArrayList;

    .line 764
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 855
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

    .line 76
    instance-of v5, v4, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantAdmin;

    if-nez v5, :cond_5

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantCreator;

    if-eqz v4, :cond_4

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v4, 0x1

    :goto_5
    if-eqz v4, :cond_3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    move-object v1, v0

    goto :goto_6

    .line 75
    :pswitch_6
    iget-object v1, p0, Lcom/smedialink/ui/profile/ProfilePresenter;->allNotMegagroupParticipants:Ljava/util/ArrayList;

    .line 82
    :cond_7
    :goto_6
    invoke-static {v1}, Lorg/fork/utils/CollectionsUtilsKt;->toArrayList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    .line 84
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/profile/ProfileView;

    invoke-interface {v0, p1}, Lcom/smedialink/ui/profile/ProfileView;->onFilteredMembers(Ljava/util/ArrayList;)V

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

.method public final loadAccountLevelInfo(J)V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/smedialink/ui/profile/ProfilePresenter;->accountLevelInteractor:Lcom/smedialink/storage/domain/interactor/crypto/level/AccountLevelInteractor;

    .line 50
    invoke-virtual {v0, p1, p2}, Lcom/smedialink/storage/domain/interactor/crypto/level/AccountLevelInteractor;->getAccountLevelInformation(J)Lio/reactivex/Observable;

    move-result-object p1

    .line 51
    iget-object p2, p0, Lcom/smedialink/ui/profile/ProfilePresenter;->schedulersProvider:Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    invoke-interface {p2}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "accountLevelInteractor\n \u2026(schedulersProvider.ui())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p2

    check-cast p2, Lcom/smedialink/ui/base/mvp/base/BaseView;

    .line 44
    new-instance v0, Lcom/smedialink/ui/profile/ProfilePresenter$loadAccountLevelInfo$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/profile/ProfilePresenter$loadAccountLevelInfo$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/profile/ProfilePresenter;)V

    new-instance v1, Lcom/smedialink/ui/profile/ProfilePresenter$loadAccountLevelInfo$$inlined$subscribeWithErrorHandle$default$2;

    invoke-direct {v1, p2}, Lcom/smedialink/ui/profile/ProfilePresenter$loadAccountLevelInfo$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    const-string p2, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 58
    invoke-static {p0, p1, p2, v0, p2}, Lcom/smedialink/ui/base/mvp/base/BasePresenter;->autoDispose$default(Lcom/smedialink/ui/base/mvp/base/BasePresenter;Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;ILjava/lang/Object;)V

    return-void
.end method

.method protected onFirstViewAttach()V
    .locals 5

    .line 92
    iget-wide v0, p0, Lcom/smedialink/ui/profile/ProfilePresenter;->userId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/smedialink/utils/helper/wallet/WalletHelper;->isWalletAuthorized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-wide v0, p0, Lcom/smedialink/ui/profile/ProfilePresenter;->userId:J

    invoke-virtual {p0, v0, v1}, Lcom/smedialink/ui/profile/ProfilePresenter;->loadAccountLevelInfo(J)V

    :cond_0
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

    .line 63
    iput-object p2, p0, Lcom/smedialink/ui/profile/ProfilePresenter;->allNotMegagroupParticipants:Ljava/util/ArrayList;

    goto :goto_0

    .line 65
    :cond_0
    iget-object p1, p0, Lcom/smedialink/ui/profile/ProfilePresenter;->allNotMegagroupParticipants:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 66
    iput-object p2, p0, Lcom/smedialink/ui/profile/ProfilePresenter;->allNotMegagroupParticipants:Ljava/util/ArrayList;

    :cond_1
    :goto_0
    return-void
.end method
