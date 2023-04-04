package com.iMe.utils.helper.wallet;

import android.app.Activity;
import android.net.Uri;
import com.iMe.fork.controller.ForkCommonController;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.dialog.DialogModel;
import com.iMe.navigation.wallet.coordinator.WalletFlowCoordinator;
import com.iMe.p032ui.wallet.common.WalletRootFragment;
import com.iMe.storage.common.AppConfiguration$Wallet;
import com.iMe.storage.domain.manager.auth.AuthManager;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.utils.dialogs.DialogUtils;
import com.iMe.utils.dialogs.DialogsFactoryKt;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.p047mp.KoinPlatformTools;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C3316R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.browser.Browser;
import org.telegram.p048ui.ActionBar.BaseFragment;
import org.telegram.p048ui.ActionBar.INavigationLayout;
import org.telegram.p048ui.LaunchActivity;
/* compiled from: WalletHelper.kt */
/* loaded from: classes4.dex */
public final class WalletHelper implements KoinComponent {
    public static final WalletHelper INSTANCE;
    private static final Lazy authManager$delegate;
    private static final Lazy cryptoAccessManager$delegate;
    private static final Lazy walletFlowCoordinator$delegate;

    public static final boolean isWalletAuthBot(long j) {
        return j == 995696546 || j == 1076186499;
    }

    public static final void safeRunWalletScreen$lambda$3() {
    }

    public static final void safeRunWalletScreen$lambda$4() {
    }

    private WalletHelper() {
    }

    @Override // org.koin.core.component.KoinComponent
    public Koin getKoin() {
        return KoinComponent.DefaultImpls.getKoin(this);
    }

    private final CryptoAccessManager getCryptoAccessManager() {
        return (CryptoAccessManager) cryptoAccessManager$delegate.getValue();
    }

    private final AuthManager getAuthManager() {
        return (AuthManager) authManager$delegate.getValue();
    }

    private final WalletFlowCoordinator getWalletFlowCoordinator() {
        return (WalletFlowCoordinator) walletFlowCoordinator$delegate.getValue();
    }

    public static final void runWithCheckIsCryptoWalletCreated(final BaseFragment fragment, final Callbacks$Callback callbacks$Callback, BlockchainType blockchainType, Callbacks$Callback walletCreatedAction) {
        boolean isCurrentBlockchainWalletCreated;
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        Intrinsics.checkNotNullParameter(walletCreatedAction, "walletCreatedAction");
        if (blockchainType != null) {
            isCurrentBlockchainWalletCreated = INSTANCE.getCryptoAccessManager().isWalletCreated(blockchainType);
        } else {
            isCurrentBlockchainWalletCreated = INSTANCE.getCryptoAccessManager().isCurrentBlockchainWalletCreated();
        }
        if (isCurrentBlockchainWalletCreated) {
            walletCreatedAction.invoke();
        } else {
            fragment.showDialog(DialogsFactoryKt.createWalletCreatedRequiredDialog(fragment, blockchainType, new Callbacks$Callback() { // from class: com.iMe.utils.helper.wallet.WalletHelper$$ExternalSyntheticLambda0
                @Override // com.iMe.fork.utils.Callbacks$Callback
                public final void invoke() {
                    WalletHelper.runWithCheckIsCryptoWalletCreated$lambda$2$lambda$1(Callbacks$Callback.this, fragment);
                }
            }));
        }
    }

    public static final void runWithCheckIsCryptoWalletCreated$lambda$2$lambda$1(Callbacks$Callback callbacks$Callback, final BaseFragment this_with) {
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        if (callbacks$Callback != null) {
            callbacks$Callback.invoke();
        }
        safeRunWalletScreen$default(this_with, null, null, new Callbacks$Callback() { // from class: com.iMe.utils.helper.wallet.WalletHelper$$ExternalSyntheticLambda1
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletHelper.runWithCheckIsCryptoWalletCreated$lambda$2$lambda$1$lambda$0(BaseFragment.this);
            }
        }, 3, null);
    }

    public static final void runWithCheckIsCryptoWalletCreated$lambda$2$lambda$1$lambda$0(BaseFragment this_with) {
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        WalletFlowCoordinator walletFlowCoordinator = INSTANCE.getWalletFlowCoordinator();
        INavigationLayout parentLayout = this_with.getParentLayout();
        Intrinsics.checkNotNullExpressionValue(parentLayout, "parentLayout");
        WalletFlowCoordinator.start$default(walletFlowCoordinator, parentLayout, WalletRootFragment.Companion.newInstance(), false, 4, null);
    }

    static {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        WalletHelper walletHelper = new WalletHelper();
        INSTANCE = walletHelper;
        KoinPlatformTools koinPlatformTools = KoinPlatformTools.INSTANCE;
        lazy = LazyKt__LazyJVMKt.lazy(koinPlatformTools.defaultLazyMode(), new WalletHelper$special$$inlined$inject$default$1(walletHelper, null, null));
        cryptoAccessManager$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(koinPlatformTools.defaultLazyMode(), new WalletHelper$special$$inlined$inject$default$2(walletHelper, null, null));
        authManager$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(koinPlatformTools.defaultLazyMode(), new WalletHelper$special$$inlined$inject$default$3(walletHelper, null, null));
        walletFlowCoordinator$delegate = lazy3;
    }

    public static final boolean isWalletIntent(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        String authority = Uri.parse(url).getAuthority();
        if (authority == null) {
            authority = "";
        }
        return Intrinsics.areEqual(authority, "ime_wallet");
    }

    public static /* synthetic */ void safeRunWalletScreen$default(BaseFragment baseFragment, String str, Callbacks$Callback callbacks$Callback, Callbacks$Callback callbacks$Callback2, int i, Object obj) {
        if ((i & 1) != 0) {
            str = LocaleController.getInternalString(C3316R.string.wallet_auth_dialog_description);
            Intrinsics.checkNotNullExpressionValue(str, "getInternalString(R.stri…_auth_dialog_description)");
        }
        if ((i & 2) != 0) {
            callbacks$Callback = WalletHelper$$ExternalSyntheticLambda4.INSTANCE;
        }
        if ((i & 4) != 0) {
            callbacks$Callback2 = WalletHelper$$ExternalSyntheticLambda5.INSTANCE;
        }
        safeRunWalletScreen(baseFragment, str, callbacks$Callback, callbacks$Callback2);
    }

    public static final void safeRunWalletScreen(BaseFragment baseFragment, String dialogMessage, Callbacks$Callback activateClickAction, Callbacks$Callback walletAuthorizedAction) {
        Intrinsics.checkNotNullParameter(baseFragment, "<this>");
        Intrinsics.checkNotNullParameter(dialogMessage, "dialogMessage");
        Intrinsics.checkNotNullParameter(activateClickAction, "activateClickAction");
        Intrinsics.checkNotNullParameter(walletAuthorizedAction, "walletAuthorizedAction");
        Activity parentActivity = baseFragment.getParentActivity();
        LaunchActivity launchActivity = parentActivity instanceof LaunchActivity ? (LaunchActivity) parentActivity : null;
        if (launchActivity != null) {
            safeRunWalletScreen(launchActivity, dialogMessage, activateClickAction, walletAuthorizedAction);
        }
    }

    public static final void safeRunWalletScreen(LaunchActivity launchActivity, String dialogMessage, Callbacks$Callback activateClickAction, Callbacks$Callback walletAuthorizedAction) {
        Intrinsics.checkNotNullParameter(launchActivity, "<this>");
        Intrinsics.checkNotNullParameter(dialogMessage, "dialogMessage");
        Intrinsics.checkNotNullParameter(activateClickAction, "activateClickAction");
        Intrinsics.checkNotNullParameter(walletAuthorizedAction, "walletAuthorizedAction");
        WalletHelper walletHelper = INSTANCE;
        if (walletHelper.isNeedUpdateApp()) {
            walletHelper.showAppUpdateDialog(launchActivity);
        } else if (isWalletAuthorized()) {
            walletAuthorizedAction.invoke();
        } else {
            walletHelper.showWalletAuthDialog(launchActivity, dialogMessage, activateClickAction);
        }
    }

    public static final boolean isWalletAuthorized() {
        return INSTANCE.getAuthManager().isAuthorized();
    }

    public static final void openAuthBotChat(LaunchActivity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        BaseFragment lastFragment = activity.getActionBarLayout().getLastFragment();
        lastFragment.getMessagesController().openByUserName(AppConfiguration$Wallet.getWalletBotUsernameLowerCase(), lastFragment, 99);
    }

    private final boolean isNeedUpdateApp() {
        String appVersionRequiredUpdate = ForkCommonController.Companion.getInstance(UserConfig.selectedAccount).getAppVersionRequiredUpdate();
        return appVersionRequiredUpdate != null && Intrinsics.areEqual(appVersionRequiredUpdate, BuildVars.BUILD_VERSION_STRING);
    }

    private final void showAppUpdateDialog(final LaunchActivity launchActivity) {
        DialogUtils.createDialog$default(launchActivity, new DialogModel(LocaleController.getInternalString(C3316R.string.wallet_app_update_dialog_title), LocaleController.getInternalString(C3316R.string.wallet_app_update_dialog_description), LocaleController.getInternalString(C3316R.string.common_cancel), LocaleController.getInternalString(C3316R.string.wallet_app_update_dialog_action_btn)), new Callbacks$Callback() { // from class: com.iMe.utils.helper.wallet.WalletHelper$$ExternalSyntheticLambda2
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletHelper.showAppUpdateDialog$lambda$6(LaunchActivity.this);
            }
        }, null, 8, null).show();
    }

    public static final void showAppUpdateDialog$lambda$6(LaunchActivity activity) {
        Intrinsics.checkNotNullParameter(activity, "$activity");
        Browser.openUrl(activity, BuildVars.PLAYSTORE_APP_URL);
    }

    private final void showWalletAuthDialog(final LaunchActivity launchActivity, String str, final Callbacks$Callback callbacks$Callback) {
        DialogUtils.createDialog$default(launchActivity, new DialogModel(LocaleController.getInternalString(C3316R.string.wallet_auth_dialog_title), str, LocaleController.getInternalString(C3316R.string.wallet_auth_dialog_cancel_btn), LocaleController.getInternalString(C3316R.string.wallet_auth_dialog_action_btn)), new Callbacks$Callback() { // from class: com.iMe.utils.helper.wallet.WalletHelper$$ExternalSyntheticLambda3
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletHelper.showWalletAuthDialog$lambda$7(LaunchActivity.this, callbacks$Callback);
            }
        }, null, 8, null).show();
    }

    public static final void showWalletAuthDialog$lambda$7(LaunchActivity activity, Callbacks$Callback activateClickAction) {
        Intrinsics.checkNotNullParameter(activity, "$activity");
        Intrinsics.checkNotNullParameter(activateClickAction, "$activateClickAction");
        openAuthBotChat(activity);
        activateClickAction.invoke();
    }
}
