package com.iMe.feature.profile;

import com.iMe.feature.socialMedias.ContentState;
import com.iMe.feature.socialMedias.SocialDomain;
import com.iMe.feature.socialMedias.SocialNetwork;
import com.iMe.feature.socialMedias.SocialType;
import com.iMe.feature.socialMedias.SocialUseCase;
import com.iMe.fork.enums.SocialDialogActions;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.group.GroupMembersFilter;
import com.iMe.model.twitter.SocialAuthResult;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.interactor.crypto.level.AccountLevelInteractor;
import com.iMe.storage.domain.interactor.twitter.TwitterInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.ContextExtKt;
import com.iMe.utils.extentions.p033rx.RxExtKt;
import com.iMe.utils.extentions.p033rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import com.iMe.utils.extentions.p033rx.SchedulersExtKt;
import com.iMe.utils.helper.wallet.WalletHelper;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.telegram.messenger.C3290R;
import org.telegram.tgnet.TLRPC$ChatParticipant;
import timber.log.Timber;
/* compiled from: ProfilePresenter.kt */
@InjectViewState
/* loaded from: classes3.dex */
public final class ProfilePresenter extends BasePresenter<ProfileView> {
    private final AccountLevelInteractor accountLevelInteractor;
    private final GroupMembershipUseCase groupMembershipUseCase;
    private final ProfileData profileData;
    private ProfileUiState profileUiState;
    private final ProfileUseCase profileUseCase;
    private final ResourceManager resourceManager;
    private final SocialUseCase socialUseCase;
    private final TwitterInteractor twitterInteractor;

    /* compiled from: ProfilePresenter.kt */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[SocialDialogActions.values().length];
            try {
                iArr[SocialDialogActions.OPEN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SocialDialogActions.COPY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[SocialDialogActions.RESET.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    static {
        new Companion(null);
    }

    public ProfilePresenter(ProfileData profileData, ResourceManager resourceManager, TwitterInteractor twitterInteractor, AccountLevelInteractor accountLevelInteractor, ProfileUseCase profileUseCase, SocialUseCase socialUseCase, GroupMembershipUseCase groupMembershipUseCase) {
        Intrinsics.checkNotNullParameter(profileData, "profileData");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(twitterInteractor, "twitterInteractor");
        Intrinsics.checkNotNullParameter(accountLevelInteractor, "accountLevelInteractor");
        Intrinsics.checkNotNullParameter(profileUseCase, "profileUseCase");
        Intrinsics.checkNotNullParameter(socialUseCase, "socialUseCase");
        Intrinsics.checkNotNullParameter(groupMembershipUseCase, "groupMembershipUseCase");
        this.profileData = profileData;
        this.resourceManager = resourceManager;
        this.twitterInteractor = twitterInteractor;
        this.accountLevelInteractor = accountLevelInteractor;
        this.profileUseCase = profileUseCase;
        this.socialUseCase = socialUseCase;
        this.groupMembershipUseCase = groupMembershipUseCase;
        this.profileUiState = new ProfileUiState(null, ContentState.NONE, false, null, null, 29, null);
    }

    public final ProfileUiState getProfileUiState() {
        return this.profileUiState;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        saveProfile();
        loadAccountLevelInfo();
        loadSocials();
        listenSocialAuthResult();
    }

    public final void changeRankVisibility(boolean z) {
        Disposable subscribe = SchedulersExtKt.scheduleIO(this.accountLevelInteractor.changeLevelVisibility(z)).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1437x21fa58d6(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1438x21fa58d7((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    public final void setNotMegagroupParticipants(boolean z, ArrayList<TLRPC$ChatParticipant> participants) {
        Intrinsics.checkNotNullParameter(participants, "participants");
        if (z || this.profileUiState.hasNoParticipants()) {
            this.profileUiState = ProfileUiState.copy$default(this.profileUiState, null, null, false, null, participants, 15, null);
        } else {
            Timber.m9d("setNotMegagroupParticipants skipped", new Object[0]);
        }
    }

    public final void filterNotMegagroupParticipants(GroupMembersFilter membersFilter) {
        Intrinsics.checkNotNullParameter(membersFilter, "membersFilter");
        ArrayList<TLRPC$ChatParticipant> filterMembers = this.groupMembershipUseCase.filterMembers(this.profileUiState.getAllNotMegaGroupMembers(), membersFilter);
        this.profileUiState = ProfileUiState.copy$default(this.profileUiState, null, null, false, null, filterMembers, 15, null);
        ((ProfileView) getViewState()).onFilteredMembers(filterMembers);
    }

    public final void onSocialNetworkAction(SocialDialogActions action, SocialNetwork socialNetwork) {
        Intrinsics.checkNotNullParameter(action, "action");
        Intrinsics.checkNotNullParameter(socialNetwork, "socialNetwork");
        int i = WhenMappings.$EnumSwitchMapping$0[action.ordinal()];
        if (i == 1) {
            onSocialClicked(socialNetwork);
        } else if (i == 2) {
            ContextExtKt.copyToClipboard$default(socialNetwork.getSocialWebUrl(), null, 2, null);
        } else if (i != 3) {
            throw new NoWhenBranchMatchedException();
        } else {
            showResetConfirmationDialog(socialNetwork);
        }
    }

    public final void onResetSocialNetwork(SocialNetwork socialNetwork) {
        Intrinsics.checkNotNullParameter(socialNetwork, "socialNetwork");
        logoutSocialNetwork(socialNetwork);
    }

    public final void onSocialClicked(SocialNetwork socialNetwork) {
        Intrinsics.checkNotNullParameter(socialNetwork, "socialNetwork");
        if (socialNetwork.getSocial() == SocialType.TWITTER) {
            ((ProfileView) getViewState()).openTwitterScreen(this.profileUiState.getCurrentProfile().getProfileId(), socialNetwork);
        } else {
            ((ProfileView) getViewState()).openSocialWeb(socialNetwork);
        }
    }

    public final void onSocialAddClicked(SocialNetwork socialNetwork) {
        Intrinsics.checkNotNullParameter(socialNetwork, "socialNetwork");
        if (this.profileUiState.getCurrentProfile().getProfileId() == 0 || !WalletHelper.isAuthorized()) {
            showNeedAuthorizeDialog();
            return;
        }
        if (socialNetwork.getBeforeConnectMessage().length() > 0) {
            showBeforeDialog(socialNetwork);
        } else {
            startSocialAuth(socialNetwork.getSocial());
        }
    }

    public final void onSocialBeforeConfirmed(SocialNetwork socialNetwork) {
        Intrinsics.checkNotNullParameter(socialNetwork, "socialNetwork");
        startSocialAuth(socialNetwork.getSocial());
    }

    public final void onReattachSocialConfirmed(long j) {
        Observable<Result<Boolean>> acceptConnection = this.twitterInteractor.acceptConnection(j, this.profileUiState.getCurrentProfile().getProfileId());
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Disposable subscribe = SchedulersExtKt.scheduleIO(RxExtKt.withLoadingDialog$default((Observable) acceptConnection, (BaseView) viewState, false, 2, (Object) null)).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1447x43d01ab9(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1448x43d01aba((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        singleDispose(subscribe);
    }

    private final void saveProfile() {
        ProfileUiState copy$default = ProfileUiState.copy$default(this.profileUiState, this.profileData, null, false, null, null, 30, null);
        this.profileUiState = copy$default;
        this.profileUseCase.saveProfile(copy$default.getCurrentProfile());
    }

    private final void loadAccountLevelInfo() {
        if (this.profileData.getUserId() == 0 || !WalletHelper.isAuthorized()) {
            return;
        }
        Disposable subscribe = SchedulersExtKt.scheduleIO(this.accountLevelInteractor.getAccountLevelInformation(this.profileData.getUserId())).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1441xe14e28d3(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1442xe14e28d4((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    private final void loadSocials() {
        Disposable subscribe = SchedulersExtKt.scheduleIO(this.socialUseCase.getAllSocials(this.profileUiState.getCurrentProfile())).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1443x6d91f91e(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1444x6d91f91f((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        singleDispose(subscribe);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onLoadSocialResult(Result<SocialDomain> result) {
        ContentState contentState;
        if (result instanceof Result.Success) {
            Result.Success success = (Result.Success) result;
            boolean hasUpdateAccess = ((SocialDomain) success.getData()).getHasUpdateAccess();
            List<SocialNetwork> socialNetworks = ((SocialDomain) success.getData()).getSocialNetworks();
            ArrayList arrayList = new ArrayList();
            for (Object obj : socialNetworks) {
                if (((SocialNetwork) obj).isActive()) {
                    arrayList.add(obj);
                }
            }
            if (!arrayList.isEmpty() || hasUpdateAccess) {
                contentState = socialNetworks.isEmpty() ? ContentState.EMPTY : ContentState.CONTENT;
            } else {
                contentState = ContentState.NONE;
            }
            this.profileUiState = ProfileUiState.copy$default(this.profileUiState, null, contentState, hasUpdateAccess, ((SocialDomain) success.getData()).getSocialNetworks(), null, 17, null);
        } else if (result instanceof Result.Error) {
            this.profileUiState = ProfileUiState.copy$default(this.profileUiState, null, ContentState.EMPTY, false, null, null, 29, null);
        } else {
            Timber.m5i("onSocialResult: " + result + " skipped", new Object[0]);
        }
        ((ProfileView) getViewState()).updateSocialCell();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onReattachSocialResult(Result<Boolean> result) {
        if (result instanceof Result.Success) {
            loadSocials();
        } else if (result instanceof Result.Error) {
            ((ProfileView) getViewState()).showErrorToast((Result.Error) result, this.resourceManager);
        } else {
            Timber.m5i("onReattachSocialResult skipped: " + result, new Object[0]);
        }
        ((ProfileView) getViewState()).updateSocialCell();
    }

    private final void logoutSocialNetwork(SocialNetwork socialNetwork) {
        Observable<Result<Boolean>> delay = this.socialUseCase.logout(socialNetwork).delay(1500L, TimeUnit.MILLISECONDS);
        Intrinsics.checkNotNullExpressionValue(delay, "socialUseCase\n          …Y, TimeUnit.MILLISECONDS)");
        Observable scheduleIO = SchedulersExtKt.scheduleIO(delay);
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Disposable subscribe = RxExtKt.withLoadingDialog$default(scheduleIO, (BaseView) viewState, false, 2, (Object) null).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1445xc4e15d55(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1446xc4e15d56((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onSocialLogoutResult(Result<Boolean> result) {
        if (result instanceof Result.Success) {
            loadSocials();
        } else if (result instanceof Result.Error) {
            ((ProfileView) getViewState()).showErrorToast((Result.Error) result, this.resourceManager);
        } else {
            Timber.m7e("onSocialLogoutResult skipped: " + result, new Object[0]);
        }
    }

    private final void listenSocialAuthResult() {
        Observable<SocialAuthResult> delay = this.socialUseCase.listenSocialChanges().delay(1500L, TimeUnit.MILLISECONDS);
        Intrinsics.checkNotNullExpressionValue(delay, "socialUseCase\n          …Y, TimeUnit.MILLISECONDS)");
        Disposable subscribe = SchedulersExtKt.scheduleIO(delay).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1439xaa523601(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1440xaa523602((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onSocialAuthResult(SocialAuthResult socialAuthResult) {
        Timber.m7e("onSocialAuthResult: " + socialAuthResult, new Object[0]);
        if (socialAuthResult instanceof SocialAuthResult.Success) {
            loadSocials();
        } else if (socialAuthResult instanceof SocialAuthResult.Verification) {
            showLinkConfirmationDialog(((SocialAuthResult.Verification) socialAuthResult).getSocialId());
        } else if (Intrinsics.areEqual(socialAuthResult, SocialAuthResult.Logout.INSTANCE)) {
            loadSocials();
        } else {
            Timber.m9d("onSocialAuthResult skipped: " + socialAuthResult, new Object[0]);
        }
    }

    private final void showResetConfirmationDialog(SocialNetwork socialNetwork) {
        ((ProfileView) getViewState()).showResetConfirmationDialog(new DialogModel(this.resourceManager.getString(C3290R.string.social_reset_account_title, socialNetwork.getSocialName()), this.resourceManager.getString(C3290R.string.social_reset_account_message, socialNetwork.getSocialName()), this.resourceManager.getString(C3290R.string.social_reset_account_negative_button), this.resourceManager.getString(C3290R.string.social_reset_account_positive_button)), socialNetwork);
    }

    private final void showNeedAuthorizeDialog() {
        ((ProfileView) getViewState()).showNeedAuthorizeDialog(new DialogModel(this.resourceManager.getString(C3290R.string.wallet_crypto_wallet_not_created_dialog_title), this.resourceManager.getString(C3290R.string.wallet_crypto_wallet_not_created_dialog_description), this.resourceManager.getString(C3290R.string.common_cancel), this.resourceManager.getString(C3290R.string.common_ok)));
    }

    private final void showBeforeDialog(SocialNetwork socialNetwork) {
        String socialName = socialNetwork.getSocialName();
        String beforeConnectMessage = socialNetwork.getBeforeConnectMessage();
        String string = this.resourceManager.getString(C3290R.string.common_ok);
        Locale locale = Locale.ROOT;
        String upperCase = string.toUpperCase(locale);
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(Locale.ROOT)");
        String upperCase2 = this.resourceManager.getString(C3290R.string.common_cancel).toUpperCase(locale);
        Intrinsics.checkNotNullExpressionValue(upperCase2, "this as java.lang.String).toUpperCase(Locale.ROOT)");
        ((ProfileView) getViewState()).showBeforeConnectMessage(socialNetwork, new DialogModel(socialName, beforeConnectMessage, upperCase2, upperCase));
    }

    private final void showLinkConfirmationDialog(long j) {
        ((ProfileView) getViewState()).showLinkConfirmationDialog(new DialogModel(this.resourceManager.getString(C3290R.string.profile_twitter_link_confirmation_alert_title), this.resourceManager.getString(C3290R.string.profile_twitter_link_confirmation_alert_description), this.resourceManager.getString(C3290R.string.Cancel), this.resourceManager.getString(C3290R.string.common_confirm)), j);
    }

    private final void startSocialAuth(SocialType socialType) {
        Observable scheduleIO = SchedulersExtKt.scheduleIO(this.socialUseCase.startSocialAuth(socialType, this.profileUiState.getCurrentProfile().getProfileId()));
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Disposable subscribe = RxExtKt.withLoadingDialog$default(scheduleIO, (BaseView) viewState, false, 2, (Object) null).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1449xd1f41af5(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1450xd1f41af6((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* compiled from: ProfilePresenter.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
