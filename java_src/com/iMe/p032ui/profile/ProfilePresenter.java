package com.iMe.p032ui.profile;

import com.iMe.common.TelegramConstants;
import com.iMe.fork.enums.ProfileTwitterAction;
import com.iMe.fork.utils.CollectionsUtilsKt;
import com.iMe.gateway.TelegramControllersGateway;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.group.GroupMembersFilter;
import com.iMe.model.twitter.TwitterAccountStatus;
import com.iMe.model.twitter.TwitterAuthResult;
import com.iMe.p032ui.base.mvp.base.BasePresenter;
import com.iMe.p032ui.base.mvp.base.BaseView;
import com.iMe.storage.common.AppConfiguration$Wallet;
import com.iMe.storage.data.utils.extentions.DateExtKt;
import com.iMe.storage.data.utils.extentions.NumberExtKt;
import com.iMe.storage.domain.gateway.TelegramGateway;
import com.iMe.storage.domain.interactor.crypto.level.AccountLevelInteractor;
import com.iMe.storage.domain.interactor.twitter.TwitterInteractor;
import com.iMe.storage.domain.interactor.wallet.WalletSessionInteractor;
import com.iMe.storage.domain.manager.auth.AuthManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.level.AccountLevelInformation;
import com.iMe.storage.domain.model.twitter.TwitterAccountData;
import com.iMe.storage.domain.model.twitter.TwitterAuthStatus;
import com.iMe.storage.domain.model.twitter.TwitterProfileInfo;
import com.iMe.storage.domain.model.wallet.SessionTokens;
import com.iMe.storage.domain.storage.TwitterPreferenceHelper;
import com.iMe.storage.domain.utils.p031rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p034rx.RxExtKt;
import com.iMe.utils.extentions.p034rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import com.iMe.utils.helper.wallet.WalletHelper;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import java.util.ArrayList;
import java.util.concurrent.TimeUnit;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.telegram.messenger.C3316R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserObject;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$ChatParticipant;
import org.telegram.tgnet.TLRPC$TL_chatAdminRights;
import org.telegram.tgnet.TLRPC$TL_chatParticipantAdmin;
import org.telegram.tgnet.TLRPC$TL_chatParticipantCreator;
/* compiled from: ProfilePresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.profile.ProfilePresenter */
/* loaded from: classes3.dex */
public final class ProfilePresenter extends BasePresenter<ProfileView> {
    private final AccountLevelInteractor accountLevelInteractor;
    private ArrayList<TLRPC$ChatParticipant> allNotMegagroupParticipants;
    private final AuthManager authManager;
    private final long chatId;
    private final boolean isCurrentUser;
    private final long profileId;
    private final ResourceManager resourceManager;
    private final SchedulersProvider schedulersProvider;
    private final TelegramControllersGateway telegramControllersGateway;
    private final TelegramGateway telegramGateway;
    private TwitterAccountStatus twitterAccountStatus;
    private final TwitterInteractor twitterInteractor;
    private final TwitterPreferenceHelper twitterPreferenceHelper;
    private TwitterProfileInfo twitterProfileInfo;
    private final long userId;
    private final WalletSessionInteractor walletSessionInteractor;

    /* compiled from: ProfilePresenter.kt */
    /* renamed from: com.iMe.ui.profile.ProfilePresenter$WhenMappings */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;
        public static final /* synthetic */ int[] $EnumSwitchMapping$2;

        static {
            int[] iArr = new int[GroupMembersFilter.values().length];
            try {
                iArr[GroupMembersFilter.ALL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[GroupMembersFilter.ADMINISTRATORS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[GroupMembersFilter.BOTS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[GroupMembersFilter.CONTACTS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[GroupMembersFilter.RESTRICTED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[GroupMembersFilter.BLOCKED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[GroupMembersFilter.DELETED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[ProfileTwitterAction.values().length];
            try {
                iArr2[ProfileTwitterAction.OPEN.ordinal()] = 1;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr2[ProfileTwitterAction.RESET.ordinal()] = 2;
            } catch (NoSuchFieldError unused9) {
            }
            $EnumSwitchMapping$1 = iArr2;
            int[] iArr3 = new int[TwitterAuthStatus.values().length];
            try {
                iArr3[TwitterAuthStatus.ACTIVE.ordinal()] = 1;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr3[TwitterAuthStatus.VERIFICATION.ordinal()] = 2;
            } catch (NoSuchFieldError unused11) {
            }
            $EnumSwitchMapping$2 = iArr3;
        }
    }

    public ProfilePresenter(long j, long j2, AccountLevelInteractor accountLevelInteractor, AuthManager authManager, ResourceManager resourceManager, SchedulersProvider schedulersProvider, TelegramControllersGateway telegramControllersGateway, TelegramGateway telegramGateway, TwitterInteractor twitterInteractor, TwitterPreferenceHelper twitterPreferenceHelper, WalletSessionInteractor walletSessionInteractor) {
        Intrinsics.checkNotNullParameter(accountLevelInteractor, "accountLevelInteractor");
        Intrinsics.checkNotNullParameter(authManager, "authManager");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(telegramControllersGateway, "telegramControllersGateway");
        Intrinsics.checkNotNullParameter(telegramGateway, "telegramGateway");
        Intrinsics.checkNotNullParameter(twitterInteractor, "twitterInteractor");
        Intrinsics.checkNotNullParameter(twitterPreferenceHelper, "twitterPreferenceHelper");
        Intrinsics.checkNotNullParameter(walletSessionInteractor, "walletSessionInteractor");
        this.userId = j;
        this.chatId = j2;
        this.accountLevelInteractor = accountLevelInteractor;
        this.authManager = authManager;
        this.resourceManager = resourceManager;
        this.schedulersProvider = schedulersProvider;
        this.telegramControllersGateway = telegramControllersGateway;
        this.telegramGateway = telegramGateway;
        this.twitterInteractor = twitterInteractor;
        this.twitterPreferenceHelper = twitterPreferenceHelper;
        this.walletSessionInteractor = walletSessionInteractor;
        this.twitterAccountStatus = TwitterAccountStatus.None.INSTANCE;
        this.profileId = getProfileId();
        this.isCurrentUser = telegramGateway.getSelectedAccountId() == j;
        this.allNotMegagroupParticipants = new ArrayList<>();
    }

    public final TwitterAccountStatus getTwitterAccountStatus() {
        return this.twitterAccountStatus;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TwitterAccountData getSavedAccountData() {
        return this.twitterPreferenceHelper.getAccountsData().getDataByTelegramId(this.profileId);
    }

    public final void changeRankVisibility(boolean z) {
        Observable<Result<Boolean>> observeOn = this.accountLevelInteractor.changeLevelVisibility(z).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "accountLevelInteractor\n …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1998x21fa58d6(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1999x21fa58d7((BaseView) getViewState())));
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
        MessagesController messagesController$default = TelegramControllersGateway.CC.getMessagesController$default(this.telegramControllersGateway, 0, 1, null);
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

    public final void onTwitterCellClick() {
        TwitterAccountStatus twitterAccountStatus = this.twitterAccountStatus;
        if (twitterAccountStatus instanceof TwitterAccountStatus.Active) {
            if (getSavedAccountData() != null) {
                ((ProfileView) getViewState()).showTwitterAccountActionsDialog();
            } else {
                onTwitterAccountActionSelected(ProfileTwitterAction.OPEN);
            }
        } else if (twitterAccountStatus instanceof TwitterAccountStatus.Error) {
            showTwitterUnlinkedErrorDialog();
        } else if (twitterAccountStatus instanceof TwitterAccountStatus.None) {
            showVpnWarningDialog();
        }
    }

    public final void startTwitterAuthFlow() {
        WalletSessionInteractor walletSessionInteractor = this.walletSessionInteractor;
        String refreshToken = this.authManager.getRefreshToken();
        if (refreshToken == null) {
            refreshToken = "";
        }
        Observable<Result<SessionTokens>> observeOn = walletSessionInteractor.refreshToken(refreshToken).startWith((Observable<Result<SessionTokens>>) Result.Companion.loading$default(Result.Companion, null, 1, null)).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "walletSessionInteractor\n…(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Disposable subscribe = RxExtKt.withLoadingDialog$default((Observable) observeOn, (BaseView) viewState, false, 2, (Object) null).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2008x3fe6b4ef(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2009x3fe6b4f0((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    public final void prepareTwitterAuthFlow() {
        if (this.userId != 0) {
            startTwitterAuthFlow();
        } else {
            showTwitterBotConfirmationDialog();
        }
    }

    public final void acceptTwitterConnection() {
        TwitterProfileInfo twitterProfileInfo = this.twitterProfileInfo;
        if (twitterProfileInfo == null) {
            return;
        }
        Observable<Result<Boolean>> observeOn = this.twitterInteractor.acceptConnection(twitterProfileInfo.getTwitterUserId(), this.profileId).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "twitterInteractor\n      …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1996xa60791c7(this, twitterProfileInfo)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1997xa60791c8((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    public final void declineConnection() {
        TwitterInteractor twitterInteractor = this.twitterInteractor;
        TwitterProfileInfo twitterProfileInfo = this.twitterProfileInfo;
        if (twitterProfileInfo != null) {
            Observable<Result<Boolean>> observeOn = twitterInteractor.declineConnection(twitterProfileInfo.getTwitterUserId(), this.profileId).observeOn(this.schedulersProvider.mo707ui());
            Intrinsics.checkNotNullExpressionValue(observeOn, "twitterInteractor\n      …(schedulersProvider.ui())");
            Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2000x99db2a72(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2001x99db2a73((BaseView) getViewState())));
            Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
            BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
        }
    }

    public final void logoutTwitter() {
        Observable<Result<Boolean>> observeOn = this.twitterInteractor.logout(this.profileId).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "twitterInteractor\n      …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2006x5e3b2f87(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2007x5e3b2f88((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    public final void onTwitterAccountActionSelected(ProfileTwitterAction action) {
        Intrinsics.checkNotNullParameter(action, "action");
        int i = WhenMappings.$EnumSwitchMapping$1[action.ordinal()];
        if (i != 1) {
            if (i != 2) {
                return;
            }
            showTwitterResetConfirmationDialog();
            return;
        }
        ProfileView profileView = (ProfileView) getViewState();
        long j = this.profileId;
        TwitterProfileInfo twitterProfileInfo = this.twitterProfileInfo;
        long orZero = NumberExtKt.orZero(twitterProfileInfo != null ? Long.valueOf(twitterProfileInfo.getTwitterUserId()) : null);
        TwitterProfileInfo twitterProfileInfo2 = this.twitterProfileInfo;
        String twitterUserName = twitterProfileInfo2 != null ? twitterProfileInfo2.getTwitterUserName() : null;
        profileView.openTwitterScreen(j, orZero, twitterUserName == null ? "" : twitterUserName);
    }

    public final void onTwitterAuthResult(TwitterAuthResult authResult) {
        Intrinsics.checkNotNullParameter(authResult, "authResult");
        if (authResult instanceof TwitterAuthResult.Failure) {
            ((ProfileView) getViewState()).showToast(((TwitterAuthResult.Failure) authResult).getMessage());
        } else if (authResult instanceof TwitterAuthResult.Success) {
            onTwitterAuthSuccess((TwitterAuthResult.Success) authResult);
        } else {
            boolean z = authResult instanceof TwitterAuthResult.Cancelled;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        if (this.userId != 0 && WalletHelper.isWalletAuthorized()) {
            loadAccountLevelInfo();
        }
        showTwitterProfile();
    }

    private final long getProfileId() {
        long j = this.userId;
        long j2 = this.chatId;
        return j > j2 ? j : TelegramConstants.INSTANCE.prepareChatIdForBotAPI(j2);
    }

    private final void showTwitterProfile() {
        TwitterAccountData savedAccountData = getSavedAccountData();
        if (savedAccountData != null) {
            updateTwitterStatusAndRender(new TwitterAccountStatus.Active(savedAccountData.getTwitterUsername()));
        } else {
            updateTwitterStatusAndRender(TwitterAccountStatus.None.INSTANCE);
        }
        loadTwitterProfile();
    }

    private final void loadTwitterProfile() {
        Observable<Result<TwitterProfileInfo>> observeOn = getTwitterProfileObservable().observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "getTwitterProfileObserva…(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2004x153b6724(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2005x153b6725((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    private final Observable<Result<TwitterProfileInfo>> getTwitterProfileObservable() {
        TLRPC$TL_chatAdminRights tLRPC$TL_chatAdminRights;
        if (this.isCurrentUser) {
            return this.twitterInteractor.getSelfTwitterProfile(this.profileId);
        }
        TLRPC$Chat chat = TelegramControllersGateway.CC.getMessagesController$default(this.telegramControllersGateway, 0, 1, null).getChat(Long.valueOf(this.chatId));
        if (chat != null && (chat.creator || ((tLRPC$TL_chatAdminRights = chat.admin_rights) != null && tLRPC$TL_chatAdminRights.add_admins))) {
            return this.twitterInteractor.getSelfChatTwitterProfile(this.profileId);
        }
        return this.twitterInteractor.getUserTwitterProfile(this.profileId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateTwitterStatusAndRender(TwitterAccountStatus twitterAccountStatus) {
        this.twitterAccountStatus = twitterAccountStatus;
        ((ProfileView) getViewState()).updateTwitterItem();
    }

    private final void onTwitterAuthSuccess(TwitterAuthResult.Success success) {
        this.twitterPreferenceHelper.getAccountsData().put(this.profileId, new TwitterAccountData(success.getTwitterUserId(), success.getTwitterUsername(), success.getAccessToken(), success.getRefreshToken(), DateExtKt.now() + TimeUnit.SECONDS.toMillis(success.getExpiresIn())));
        this.twitterProfileInfo = new TwitterProfileInfo(success.getTwitterUserId(), success.getTwitterUserId(), this.profileId, success.getTwitterUsername(), false);
        int i = WhenMappings.$EnumSwitchMapping$2[TwitterAuthStatus.Companion.map(success.getStatus()).ordinal()];
        if (i == 1) {
            updateTwitterStatusAndRender(new TwitterAccountStatus.Active(success.getTwitterUsername()));
        } else if (i != 2) {
        } else {
            showTwitterLinkConfirmationDialog();
        }
    }

    private final void loadAccountLevelInfo() {
        Observable<Result<AccountLevelInformation>> observeOn = this.accountLevelInteractor.getAccountLevelInformation(this.userId).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "accountLevelInteractor\n …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2002xe14e28d3(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2003xe14e28d4((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    private final void showVpnWarningDialog() {
        ((ProfileView) getViewState()).showVpnWarningDialog(new DialogModel(this.resourceManager.getString(C3316R.string.profile_twitter_vpn_alert_title), this.resourceManager.getString(C3316R.string.profile_twitter_vpn_alert_description), this.resourceManager.getString(C3316R.string.common_cancel), this.resourceManager.getString(C3316R.string.common_ok)));
    }

    private final void showTwitterBotConfirmationDialog() {
        ((ProfileView) getViewState()).showTwitterBotConfirmationDialogIfNeeded(new DialogModel(this.resourceManager.getString(C3316R.string.profile_twitter_bot_confirmation_alert_title), this.resourceManager.getString(C3316R.string.profile_twitter_bot_confirmation_alert_description, AppConfiguration$Wallet.getWalletBotUsernameWithAT()), this.resourceManager.getString(C3316R.string.common_cancel), LocaleController.getString("Add", C3316R.string.Add)));
    }

    private final void showTwitterUnlinkedErrorDialog() {
        ((ProfileView) getViewState()).showTwitterUnlinkedErrorDialog(new DialogModel(this.resourceManager.getString(C3316R.string.profile_twitter_unlinked_error_alert_title), this.resourceManager.getString(C3316R.string.profile_twitter_unlinked_error_alert_description), this.resourceManager.getString(C3316R.string.profile_twitter_unlinked_error_alert_log_out), this.resourceManager.getString(C3316R.string.profile_twitter_unlinked_error_alert_link)));
    }

    private final void showTwitterLinkConfirmationDialog() {
        ((ProfileView) getViewState()).showTwitterLinkConfirmationDialog(new DialogModel(this.resourceManager.getString(C3316R.string.profile_twitter_link_confirmation_alert_title), this.resourceManager.getString(C3316R.string.profile_twitter_link_confirmation_alert_description), LocaleController.getString("Cancel", C3316R.string.Cancel), this.resourceManager.getString(C3316R.string.common_confirm)));
    }

    private final void showTwitterResetConfirmationDialog() {
        ((ProfileView) getViewState()).showTwitterResetConfirmationDialog(new DialogModel(this.resourceManager.getString(C3316R.string.profile_twitter_reset_confirmation_alert_title), this.resourceManager.getString(C3316R.string.profile_twitter_reset_confirmation_alert_description), LocaleController.getString("Cancel", C3316R.string.Cancel), LocaleController.getString("Reset", C3316R.string.Reset)));
    }
}
