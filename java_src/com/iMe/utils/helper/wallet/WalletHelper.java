package com.iMe.utils.helper.wallet;

import android.app.Activity;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import com.iMe.fork.controller.ForkCommonController;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.dialog.AnimatedSpannableDialogModel;
import com.iMe.model.dialog.DialogModel;
import com.iMe.navigation.wallet.coordinator.WalletFlowCoordinator;
import com.iMe.p031ui.wallet.common.WalletRootFragment;
import com.iMe.storage.domain.manager.auth.AuthManager;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.utils.dialogs.DialogUtils;
import com.iMe.utils.dialogs.DialogsFactoryKt;
import com.iMe.utils.helper.wallet.AuthHelper;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.p043mp.KoinPlatformTools;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C3290R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.browser.Browser;
import org.telegram.p044ui.ActionBar.BaseFragment;
import org.telegram.p044ui.ActionBar.INavigationLayout;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.Components.URLSpanNoUnderline;
import org.telegram.p044ui.LaunchActivity;
/* compiled from: WalletHelper.kt */
/* loaded from: classes4.dex */
public final class WalletHelper implements KoinComponent {
    public static final WalletHelper INSTANCE;
    private static final Lazy authManager$delegate;
    private static final Lazy cryptoAccessManager$delegate;
    private static final Lazy walletFlowCoordinator$delegate;

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
                    WalletHelper.runWithCheckIsCryptoWalletCreated$lambda$1$lambda$0(Callbacks$Callback.this, fragment);
                }
            }));
        }
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

    /* JADX INFO: Access modifiers changed from: private */
    public static final void runWithCheckIsCryptoWalletCreated$lambda$1$lambda$0(Callbacks$Callback callbacks$Callback, BaseFragment this_with) {
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        if (callbacks$Callback != null) {
            callbacks$Callback.invoke();
        }
        safeRunWalletScreen$default(this_with, null, 1, null);
    }

    public static /* synthetic */ void safeRunWalletScreen$default(final BaseFragment baseFragment, Callbacks$Callback callbacks$Callback, int i, Object obj) {
        if ((i & 1) != 0) {
            callbacks$Callback = new Callbacks$Callback() { // from class: com.iMe.utils.helper.wallet.WalletHelper$$ExternalSyntheticLambda1
                @Override // com.iMe.fork.utils.Callbacks$Callback
                public final void invoke() {
                    WalletHelper.safeRunWalletScreen$lambda$2(BaseFragment.this);
                }
            };
        }
        safeRunWalletScreen(baseFragment, callbacks$Callback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void safeRunWalletScreen$lambda$2(BaseFragment this_safeRunWalletScreen) {
        Intrinsics.checkNotNullParameter(this_safeRunWalletScreen, "$this_safeRunWalletScreen");
        WalletFlowCoordinator walletFlowCoordinator = INSTANCE.getWalletFlowCoordinator();
        INavigationLayout parentLayout = this_safeRunWalletScreen.getParentLayout();
        Intrinsics.checkNotNullExpressionValue(parentLayout, "parentLayout");
        WalletFlowCoordinator.start$default(walletFlowCoordinator, parentLayout, WalletRootFragment.Companion.newInstance(), false, 4, null);
    }

    public static final void safeRunWalletScreen(BaseFragment baseFragment, Callbacks$Callback authorizedAction) {
        Intrinsics.checkNotNullParameter(baseFragment, "<this>");
        Intrinsics.checkNotNullParameter(authorizedAction, "authorizedAction");
        safeRunWithActivationCheck(baseFragment, authorizedAction);
    }

    public static final void safeRunWithActivationCheck(BaseFragment baseFragment, Callbacks$Callback authorizedAction) {
        Intrinsics.checkNotNullParameter(baseFragment, "<this>");
        Intrinsics.checkNotNullParameter(authorizedAction, "authorizedAction");
        Activity parentActivity = baseFragment.getParentActivity();
        LaunchActivity launchActivity = parentActivity instanceof LaunchActivity ? (LaunchActivity) parentActivity : null;
        if (launchActivity != null) {
            safeRunWithActivationCheck(launchActivity, authorizedAction);
        }
    }

    public static final void safeRunWithActivationCheck(LaunchActivity launchActivity, Callbacks$Callback authorizedAction) {
        Intrinsics.checkNotNullParameter(launchActivity, "<this>");
        Intrinsics.checkNotNullParameter(authorizedAction, "authorizedAction");
        WalletHelper walletHelper = INSTANCE;
        if (walletHelper.isUpdateRequired()) {
            walletHelper.showAppUpdateDialog(launchActivity);
        } else if (isAuthorized()) {
            authorizedAction.invoke();
        } else {
            walletHelper.showAuthDialog(launchActivity, authorizedAction);
        }
    }

    public static final boolean isAuthorized() {
        return INSTANCE.getAuthManager().isAuthorized();
    }

    private final boolean isUpdateRequired() {
        String appVersionRequiredUpdate = ForkCommonController.Companion.getInstance(UserConfig.selectedAccount).getAppVersionRequiredUpdate();
        return appVersionRequiredUpdate != null && Intrinsics.areEqual(appVersionRequiredUpdate, BuildVars.BUILD_VERSION_STRING);
    }

    private final void showAppUpdateDialog(final LaunchActivity launchActivity) {
        DialogUtils.createDialog$default(launchActivity, new DialogModel(LocaleController.getInternalString(C3290R.string.wallet_app_update_dialog_title), LocaleController.getInternalString(C3290R.string.wallet_app_update_dialog_description), LocaleController.getInternalString(C3290R.string.common_cancel), LocaleController.getInternalString(C3290R.string.wallet_app_update_dialog_action_btn)), new Callbacks$Callback() { // from class: com.iMe.utils.helper.wallet.WalletHelper$$ExternalSyntheticLambda2
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletHelper.showAppUpdateDialog$lambda$4(LaunchActivity.this);
            }
        }, null, 8, null).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showAppUpdateDialog$lambda$4(LaunchActivity activity) {
        Intrinsics.checkNotNullParameter(activity, "$activity");
        Browser.openUrl(activity, BuildVars.PLAYSTORE_APP_URL);
    }

    private final void showAuthDialog(final LaunchActivity launchActivity, final Callbacks$Callback callbacks$Callback) {
        int i = C3290R.raw.fork_auth;
        String internalString = LocaleController.getInternalString(C3290R.string.auth_dialog_title);
        Intrinsics.checkNotNullExpressionValue(internalString, "getInternalString(R.string.auth_dialog_title)");
        SpannableStringBuilder authSpannableStringBuilder = getAuthSpannableStringBuilder();
        String internalString2 = LocaleController.getInternalString(C3290R.string.common_next);
        Intrinsics.checkNotNullExpressionValue(internalString2, "getInternalString(R.string.common_next)");
        DialogsFactoryKt.createDialogWithAnimation(launchActivity, new AnimatedSpannableDialogModel(i, internalString, authSpannableStringBuilder, internalString2), new Callbacks$Callback() { // from class: com.iMe.utils.helper.wallet.WalletHelper$$ExternalSyntheticLambda3
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletHelper.showAuthDialog$lambda$5(LaunchActivity.this, callbacks$Callback);
            }
        }).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showAuthDialog$lambda$5(LaunchActivity this_showAuthDialog, Callbacks$Callback activateClickAction) {
        Intrinsics.checkNotNullParameter(this_showAuthDialog, "$this_showAuthDialog");
        Intrinsics.checkNotNullParameter(activateClickAction, "$activateClickAction");
        AuthHelper.Delegate authDelegate = this_showAuthDialog.getAuthDelegate(activateClickAction);
        Intrinsics.checkNotNullExpressionValue(authDelegate, "getAuthDelegate(activateClickAction)");
        AuthHelper.auth(authDelegate, true);
    }

    private final SpannableStringBuilder getAuthSpannableStringBuilder() {
        int indexOf$default;
        int lastIndexOf$default;
        List<Object> listOf;
        String descriptionText = LocaleController.getInternalString(C3290R.string.auth_dialog_description);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(descriptionText);
        Intrinsics.checkNotNullExpressionValue(descriptionText, "descriptionText");
        indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) descriptionText, "*", 0, false, 6, (Object) null);
        lastIndexOf$default = StringsKt__StringsKt.lastIndexOf$default((CharSequence) descriptionText, "*", 0, false, 6, (Object) null);
        if (indexOf$default != -1 && lastIndexOf$default != -1 && indexOf$default != lastIndexOf$default) {
            spannableStringBuilder.replace(lastIndexOf$default, lastIndexOf$default + 1, (CharSequence) "");
            spannableStringBuilder.replace(indexOf$default, indexOf$default + 1, (CharSequence) "");
            listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Object[]{new URLSpanNoUnderline(LocaleController.getString("PrivacyPolicyUrl", C3290R.string.PrivacyPolicyUrl)), new ForegroundColorSpan(Theme.getColor(Theme.key_windowBackgroundWhiteLinkText))});
            for (Object obj : listOf) {
                spannableStringBuilder.setSpan(obj, indexOf$default, lastIndexOf$default - 1, 33);
            }
        }
        return spannableStringBuilder;
    }
}
