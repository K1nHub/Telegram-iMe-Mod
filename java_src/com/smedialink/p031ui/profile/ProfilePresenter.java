package com.smedialink.p031ui.profile;

import com.smedialink.gateway.TelegramControllersGateway;
import com.smedialink.model.group.GroupMembersFilter;
import com.smedialink.p031ui.base.mvp.base.BasePresenter;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.storage.data.network.model.error.ErrorModel;
import com.smedialink.storage.domain.gateway.TelegramGateway;
import com.smedialink.storage.domain.interactor.crypto.level.AccountLevelInteractor;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.level.AccountLevelInformation;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.helper.wallet.WalletHelper;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import java.util.ArrayList;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.fork.utils.CollectionsUtilsKt;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserObject;
import org.telegram.tgnet.TLRPC$ChatParticipant;
import org.telegram.tgnet.TLRPC$TL_chatParticipantAdmin;
import org.telegram.tgnet.TLRPC$TL_chatParticipantCreator;
import timber.log.Timber;
/* compiled from: ProfilePresenter.kt */
@InjectViewState
/* renamed from: com.smedialink.ui.profile.ProfilePresenter */
/* loaded from: classes3.dex */
public final class ProfilePresenter extends BasePresenter<ProfileView> {
    private final AccountLevelInteractor accountLevelInteractor;
    private ArrayList<TLRPC$ChatParticipant> allNotMegagroupParticipants;
    private final ResourceManager resourceManager;
    private final SchedulersProvider schedulersProvider;
    private final TelegramControllersGateway telegramControllersGateway;
    private final TelegramGateway telegramGateway;
    private final long userId;

    /* compiled from: ProfilePresenter.kt */
    /* renamed from: com.smedialink.ui.profile.ProfilePresenter$WhenMappings */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[GroupMembersFilter.values().length];
            iArr[GroupMembersFilter.ALL.ordinal()] = 1;
            iArr[GroupMembersFilter.ADMINISTRATORS.ordinal()] = 2;
            iArr[GroupMembersFilter.BOTS.ordinal()] = 3;
            iArr[GroupMembersFilter.CONTACTS.ordinal()] = 4;
            iArr[GroupMembersFilter.RESTRICTED.ordinal()] = 5;
            iArr[GroupMembersFilter.BLOCKED.ordinal()] = 6;
            iArr[GroupMembersFilter.DELETED.ordinal()] = 7;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public ProfilePresenter(long j, TelegramGateway telegramGateway, TelegramControllersGateway telegramControllersGateway, AccountLevelInteractor accountLevelInteractor, SchedulersProvider schedulersProvider, ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(telegramGateway, "telegramGateway");
        Intrinsics.checkNotNullParameter(telegramControllersGateway, "telegramControllersGateway");
        Intrinsics.checkNotNullParameter(accountLevelInteractor, "accountLevelInteractor");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.userId = j;
        this.telegramGateway = telegramGateway;
        this.telegramControllersGateway = telegramControllersGateway;
        this.accountLevelInteractor = accountLevelInteractor;
        this.schedulersProvider = schedulersProvider;
        this.resourceManager = resourceManager;
        this.allNotMegagroupParticipants = new ArrayList<>();
    }

    public final void changeRankVisibility(boolean z) {
        Observable<Result<Boolean>> observeOn = this.accountLevelInteractor.changeLevelVisibility(z).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "accountLevelInteractor\n …(schedulersProvider.ui())");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = observeOn.subscribe(new Consumer() { // from class: com.smedialink.ui.profile.ProfilePresenter$changeRankVisibility$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                ResourceManager resourceManager;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result result = (Result) it;
                if (result instanceof Result.Error) {
                    ErrorModel error = ((Result.Error) result).getError();
                    resourceManager = ProfilePresenter.this.resourceManager;
                    ((ProfileView) ProfilePresenter.this.getViewState()).showToast(error.getMessage(resourceManager));
                }
            }
        }, new Consumer() { // from class: com.smedialink.ui.profile.ProfilePresenter$changeRankVisibility$$inlined$subscribeWithErrorHandle$default$2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Throwable th) {
                Timber.m4e(th);
                BaseView baseView2 = BaseView.this;
                if (baseView2 == null) {
                    return;
                }
                String message = th.getMessage();
                if (message == null) {
                    message = "";
                }
                baseView2.showToast(message);
            }
        });
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    public final void loadAccountLevelInfo(long j) {
        Observable<Result<AccountLevelInformation>> observeOn = this.accountLevelInteractor.getAccountLevelInformation(j).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "accountLevelInteractor\n …(schedulersProvider.ui())");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = observeOn.subscribe(new Consumer() { // from class: com.smedialink.ui.profile.ProfilePresenter$loadAccountLevelInfo$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result result = (Result) it;
                if (result instanceof Result.Success) {
                    ((ProfileView) ProfilePresenter.this.getViewState()).showUserAccountLevel((AccountLevelInformation) ((Result.Success) result).getData());
                }
            }
        }, new Consumer() { // from class: com.smedialink.ui.profile.ProfilePresenter$loadAccountLevelInfo$$inlined$subscribeWithErrorHandle$default$2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Throwable th) {
                Timber.m4e(th);
                BaseView baseView2 = BaseView.this;
                if (baseView2 == null) {
                    return;
                }
                String message = th.getMessage();
                if (message == null) {
                    message = "";
                }
                baseView2.showToast(message);
            }
        });
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    public final void setNotMegagroupParticipants(boolean z, ArrayList<TLRPC$ChatParticipant> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        if (z) {
            this.allNotMegagroupParticipants = items;
        } else if (this.allNotMegagroupParticipants.isEmpty()) {
            this.allNotMegagroupParticipants = items;
        }
    }

    public final void filterNotMegagroupParticipants(GroupMembersFilter membersFilter) {
        ArrayList arrayList;
        Intrinsics.checkNotNullParameter(membersFilter, "membersFilter");
        MessagesController messagesController$default = TelegramControllersGateway.DefaultImpls.getMessagesController$default(this.telegramControllersGateway, 0, 1, null);
        switch (WhenMappings.$EnumSwitchMapping$0[membersFilter.ordinal()]) {
            case 1:
                arrayList = this.allNotMegagroupParticipants;
                break;
            case 2:
                ArrayList<TLRPC$ChatParticipant> arrayList2 = this.allNotMegagroupParticipants;
                ArrayList arrayList3 = new ArrayList();
                for (Object obj : arrayList2) {
                    TLRPC$ChatParticipant tLRPC$ChatParticipant = (TLRPC$ChatParticipant) obj;
                    if ((tLRPC$ChatParticipant instanceof TLRPC$TL_chatParticipantAdmin) || (tLRPC$ChatParticipant instanceof TLRPC$TL_chatParticipantCreator)) {
                        arrayList3.add(obj);
                    }
                }
                arrayList = arrayList3;
                break;
            case 3:
                ArrayList<TLRPC$ChatParticipant> arrayList4 = this.allNotMegagroupParticipants;
                arrayList = new ArrayList();
                for (Object obj2 : arrayList4) {
                    if (messagesController$default.getUser(Long.valueOf(((TLRPC$ChatParticipant) obj2).user_id)).bot) {
                        arrayList.add(obj2);
                    }
                }
                break;
            case 4:
                ArrayList<TLRPC$ChatParticipant> arrayList5 = this.allNotMegagroupParticipants;
                arrayList = new ArrayList();
                for (Object obj3 : arrayList5) {
                    if (UserObject.isContact(messagesController$default.getUser(Long.valueOf(((TLRPC$ChatParticipant) obj3).user_id)))) {
                        arrayList.add(obj3);
                    }
                }
                break;
            case 5:
                arrayList = new ArrayList();
                break;
            case 6:
                arrayList = new ArrayList();
                break;
            case 7:
                ArrayList<TLRPC$ChatParticipant> arrayList6 = this.allNotMegagroupParticipants;
                arrayList = new ArrayList();
                for (Object obj4 : arrayList6) {
                    if (UserObject.isDeleted(messagesController$default.getUser(Long.valueOf(((TLRPC$ChatParticipant) obj4).user_id)))) {
                        arrayList.add(obj4);
                    }
                }
                break;
            default:
                throw new NoWhenBranchMatchedException();
        }
        ((ProfileView) getViewState()).onFilteredMembers(CollectionsUtilsKt.toArrayList(arrayList));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        if (this.userId == 0 || !WalletHelper.isWalletAuthorized()) {
            return;
        }
        loadAccountLevelInfo(this.userId);
    }
}
