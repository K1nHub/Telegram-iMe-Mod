package com.iMe.utils.helper.wallet;

import android.app.Activity;
import android.net.Uri;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import com.iMe.fork.controller.ForkCommonController;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.dialog.AnimatedSpannableDialogModel;
import com.iMe.model.dialog.DialogModel;
import com.iMe.navigation.wallet.coordinator.WalletFlowCoordinator;
import com.iMe.p030ui.wallet.common.WalletRootFragment;
import com.iMe.storage.common.AppConfiguration$Bots;
import com.iMe.storage.domain.manager.auth.AuthManager;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.utils.p029rx.RxEventBus;
import com.iMe.storage.domain.utils.p029rx.event.DomainRxEvents;
import com.iMe.utils.dialogs.DialogUtils;
import com.iMe.utils.dialogs.DialogsFactoryKt;
import com.iMe.utils.helper.AuthHelper;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt__StringsKt;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.core.component.KoinScopeComponent;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.p041mp.KoinPlatformTools;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C3630R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.browser.Browser;
import org.telegram.p042ui.ActionBar.BaseFragment;
import org.telegram.p042ui.ActionBar.INavigationLayout;
import org.telegram.p042ui.ActionBar.Theme;
import org.telegram.p042ui.Components.URLSpanNoUnderline;
import org.telegram.p042ui.LaunchActivity;
/* compiled from: WalletHelper.kt */
/* loaded from: classes4.dex */
public final class WalletHelper implements KoinComponent {
    public static final WalletHelper INSTANCE;
    private static final Lazy authManager$delegate;
    private static final Lazy cryptoAccessManager$delegate;
    private static final Lazy rxEventBus$delegate;
    private static final Lazy walletFlowCoordinator$delegate;

    private WalletHelper() {
    }

    @Override // org.koin.core.component.KoinComponent
    public Koin getKoin() {
        return KoinComponent.DefaultImpls.getKoin(this);
    }

    private final AuthManager getAuthManager() {
        return (AuthManager) authManager$delegate.getValue();
    }

    private final CryptoAccessManager getCryptoAccessManager() {
        return (CryptoAccessManager) cryptoAccessManager$delegate.getValue();
    }

    private final RxEventBus getRxEventBus() {
        return (RxEventBus) rxEventBus$delegate.getValue();
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
        Lazy lazy4;
        final WalletHelper walletHelper = new WalletHelper();
        INSTANCE = walletHelper;
        KoinPlatformTools koinPlatformTools = KoinPlatformTools.INSTANCE;
        lazy = LazyKt__LazyJVMKt.lazy(koinPlatformTools.defaultLazyMode(), new Function0<AuthManager>() { // from class: com.iMe.utils.helper.wallet.WalletHelper$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.storage.domain.manager.auth.AuthManager, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final AuthManager invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function0 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(AuthManager.class), qualifier, function0);
            }
        });
        authManager$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(koinPlatformTools.defaultLazyMode(), new Function0<CryptoAccessManager>() { // from class: com.iMe.utils.helper.wallet.WalletHelper$special$$inlined$inject$default$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.storage.domain.manager.crypto.CryptoAccessManager, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final CryptoAccessManager invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function0 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(CryptoAccessManager.class), qualifier, function0);
            }
        });
        cryptoAccessManager$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(koinPlatformTools.defaultLazyMode(), new Function0<RxEventBus>() { // from class: com.iMe.utils.helper.wallet.WalletHelper$special$$inlined$inject$default$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.storage.domain.utils.rx.RxEventBus, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final RxEventBus invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function0 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(RxEventBus.class), qualifier, function0);
            }
        });
        rxEventBus$delegate = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(koinPlatformTools.defaultLazyMode(), new Function0<WalletFlowCoordinator>() { // from class: com.iMe.utils.helper.wallet.WalletHelper$special$$inlined$inject$default$4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.navigation.wallet.coordinator.WalletFlowCoordinator, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final WalletFlowCoordinator invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function0 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(WalletFlowCoordinator.class), qualifier, function0);
            }
        });
        walletFlowCoordinator$delegate = lazy4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void runWithCheckIsCryptoWalletCreated$lambda$1$lambda$0(Callbacks$Callback callbacks$Callback, BaseFragment this_with) {
        Intrinsics.checkNotNullParameter(this_with, "$this_with");
        if (callbacks$Callback != null) {
            callbacks$Callback.invoke();
        }
        safeRunWalletScreen$default(this_with, null, 1, null);
    }

    public static final boolean isWalletIntent(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        String authority = Uri.parse(url).getAuthority();
        if (authority == null) {
            authority = "";
        }
        return Intrinsics.areEqual(authority, "imem.app");
    }

    public static final boolean isWalletAuthBot(long j) {
        return j == AppConfiguration$Bots.getAuthBotId();
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
        List<BaseFragment> fragmentStack = this_safeRunWalletScreen.getParentLayout().getFragmentStack();
        Intrinsics.checkNotNullExpressionValue(fragmentStack, "parentLayout.fragmentStack");
        if (CollectionsKt.lastOrNull((List<? extends Object>) fragmentStack) instanceof WalletRootFragment) {
            INSTANCE.getRxEventBus().publish(DomainRxEvents.SelectWalletCryptoTab.INSTANCE);
            return;
        }
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

    public static final void showManualAuthDialog(final LaunchActivity launchActivity, final MessageObject botAuthButtonMessage, final Callbacks$Callback activateClickAction) {
        Intrinsics.checkNotNullParameter(launchActivity, "<this>");
        Intrinsics.checkNotNullParameter(botAuthButtonMessage, "botAuthButtonMessage");
        Intrinsics.checkNotNullParameter(activateClickAction, "activateClickAction");
        int i = C3630R.raw.fork_auth;
        String internalString = LocaleController.getInternalString(C3630R.string.auth_dialog_title);
        Intrinsics.checkNotNullExpressionValue(internalString, "getInternalString(R.string.auth_dialog_title)");
        SpannableStringBuilder authSpannableStringBuilder = INSTANCE.getAuthSpannableStringBuilder();
        String internalString2 = LocaleController.getInternalString(C3630R.string.common_next);
        Intrinsics.checkNotNullExpressionValue(internalString2, "getInternalString(R.string.common_next)");
        DialogsFactoryKt.createDialogWithAnimation(launchActivity, new AnimatedSpannableDialogModel(i, internalString, authSpannableStringBuilder, internalString2), new Callbacks$Callback() { // from class: com.iMe.utils.helper.wallet.WalletHelper$$ExternalSyntheticLambda4
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletHelper.showManualAuthDialog$lambda$4(LaunchActivity.this, activateClickAction, botAuthButtonMessage);
            }
        }).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showManualAuthDialog$lambda$4(LaunchActivity this_showManualAuthDialog, Callbacks$Callback activateClickAction, MessageObject botAuthButtonMessage) {
        Intrinsics.checkNotNullParameter(this_showManualAuthDialog, "$this_showManualAuthDialog");
        Intrinsics.checkNotNullParameter(activateClickAction, "$activateClickAction");
        Intrinsics.checkNotNullParameter(botAuthButtonMessage, "$botAuthButtonMessage");
        AuthHelper.Delegate authDelegate = this_showManualAuthDialog.getAuthDelegate(activateClickAction);
        Intrinsics.checkNotNullExpressionValue(authDelegate, "getAuthDelegate(activateClickAction)");
        AuthHelper.manualAuth$default(authDelegate, true, 0, botAuthButtonMessage, 4, null);
    }

    private final boolean isUpdateRequired() {
        String appVersionRequiredUpdate = ForkCommonController.Companion.getInstance(UserConfig.selectedAccount).getAppVersionRequiredUpdate();
        return appVersionRequiredUpdate != null && Intrinsics.areEqual(appVersionRequiredUpdate, BuildVars.BUILD_VERSION_STRING);
    }

    private final void showAppUpdateDialog(final LaunchActivity launchActivity) {
        DialogUtils.createDialog$default(launchActivity, new DialogModel(LocaleController.getInternalString(C3630R.string.wallet_app_update_dialog_title), LocaleController.getInternalString(C3630R.string.wallet_app_update_dialog_description), LocaleController.getInternalString(C3630R.string.common_cancel), LocaleController.getInternalString(C3630R.string.wallet_app_update_dialog_action_btn)), new Callbacks$Callback() { // from class: com.iMe.utils.helper.wallet.WalletHelper$$ExternalSyntheticLambda2
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletHelper.showAppUpdateDialog$lambda$5(LaunchActivity.this);
            }
        }, null, 8, null).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showAppUpdateDialog$lambda$5(LaunchActivity activity) {
        Intrinsics.checkNotNullParameter(activity, "$activity");
        Browser.openUrl(activity, BuildVars.PLAYSTORE_APP_URL);
    }

    private final void showAuthDialog(final LaunchActivity launchActivity, final Callbacks$Callback callbacks$Callback) {
        int i = C3630R.raw.fork_auth;
        String internalString = LocaleController.getInternalString(C3630R.string.auth_dialog_title);
        Intrinsics.checkNotNullExpressionValue(internalString, "getInternalString(R.string.auth_dialog_title)");
        SpannableStringBuilder authSpannableStringBuilder = getAuthSpannableStringBuilder();
        String internalString2 = LocaleController.getInternalString(C3630R.string.common_next);
        Intrinsics.checkNotNullExpressionValue(internalString2, "getInternalString(R.string.common_next)");
        DialogsFactoryKt.createDialogWithAnimation(launchActivity, new AnimatedSpannableDialogModel(i, internalString, authSpannableStringBuilder, internalString2), new Callbacks$Callback() { // from class: com.iMe.utils.helper.wallet.WalletHelper$$ExternalSyntheticLambda3
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletHelper.showAuthDialog$lambda$6(LaunchActivity.this, callbacks$Callback);
            }
        }).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showAuthDialog$lambda$6(LaunchActivity this_showAuthDialog, Callbacks$Callback activateClickAction) {
        Intrinsics.checkNotNullParameter(this_showAuthDialog, "$this_showAuthDialog");
        Intrinsics.checkNotNullParameter(activateClickAction, "$activateClickAction");
        AuthHelper.Delegate authDelegate = this_showAuthDialog.getAuthDelegate(activateClickAction);
        Intrinsics.checkNotNullExpressionValue(authDelegate, "getAuthDelegate(activateClickAction)");
        AuthHelper.auth$default(authDelegate, true, 0, 4, null);
    }

    private final SpannableStringBuilder getAuthSpannableStringBuilder() {
        int indexOf$default;
        int lastIndexOf$default;
        List<Object> listOf;
        String descriptionText = LocaleController.getInternalString(C3630R.string.auth_dialog_description);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(descriptionText);
        Intrinsics.checkNotNullExpressionValue(descriptionText, "descriptionText");
        indexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) descriptionText, "*", 0, false, 6, (Object) null);
        lastIndexOf$default = StringsKt__StringsKt.lastIndexOf$default((CharSequence) descriptionText, "*", 0, false, 6, (Object) null);
        if (indexOf$default != -1 && lastIndexOf$default != -1 && indexOf$default != lastIndexOf$default) {
            spannableStringBuilder.replace(lastIndexOf$default, lastIndexOf$default + 1, (CharSequence) "");
            spannableStringBuilder.replace(indexOf$default, indexOf$default + 1, (CharSequence) "");
            listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Object[]{new URLSpanNoUnderline(LocaleController.getString("PrivacyPolicyUrl", C3630R.string.PrivacyPolicyUrl)), new ForegroundColorSpan(Theme.getColor(Theme.key_windowBackgroundWhiteLinkText))});
            for (Object obj : listOf) {
                spannableStringBuilder.setSpan(obj, indexOf$default, lastIndexOf$default - 1, 33);
            }
        }
        return spannableStringBuilder;
    }
}
