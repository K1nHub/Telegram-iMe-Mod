package com.iMe.utils.helper.binancepay;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import com.iMe.common.AppRxEvents;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.dialog.DialogModel;
import com.iMe.navigation.wallet.coordinator.WalletFlowCoordinator;
import com.iMe.p031ui.wallet.common.WalletRootFragment;
import com.iMe.storage.common.AppConfiguration$Binance;
import com.iMe.storage.domain.manager.binancepay.BinancePayManager;
import com.iMe.storage.domain.utils.p030rx.RxEventBus;
import com.iMe.utils.dialogs.DialogUtils;
import com.iMe.utils.helper.wallet.WalletHelper;
import java.util.HashMap;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt__StringsJVMKt;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.core.component.KoinScopeComponent;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.p042mp.KoinPlatformTools;
import org.telegram.messenger.C3473R;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.INavigationLayout;
/* compiled from: BinancePayHelper.kt */
/* loaded from: classes6.dex */
public final class BinancePayHelper implements KoinComponent {
    public static final BinancePayHelper INSTANCE;
    private static final Lazy binancePayManager$delegate;
    private static final Lazy refererHeader$delegate;
    private static final Lazy rxEventBus$delegate;
    private static final Lazy walletFlowCoordinator$delegate;

    private BinancePayHelper() {
    }

    @Override // org.koin.core.component.KoinComponent
    public Koin getKoin() {
        return KoinComponent.DefaultImpls.getKoin(this);
    }

    static {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Lazy lazy4;
        final BinancePayHelper binancePayHelper = new BinancePayHelper();
        INSTANCE = binancePayHelper;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<HashMap<String, String>>() { // from class: com.iMe.utils.helper.binancepay.BinancePayHelper$refererHeader$2
            @Override // kotlin.jvm.functions.Function0
            public final HashMap<String, String> invoke() {
                HashMap<String, String> hashMapOf;
                hashMapOf = MapsKt__MapsKt.hashMapOf(TuplesKt.m103to("referer", "https://www.binance.com/"));
                return hashMapOf;
            }
        });
        refererHeader$delegate = lazy;
        KoinPlatformTools koinPlatformTools = KoinPlatformTools.INSTANCE;
        lazy2 = LazyKt__LazyJVMKt.lazy(koinPlatformTools.defaultLazyMode(), new Function0<RxEventBus>() { // from class: com.iMe.utils.helper.binancepay.BinancePayHelper$special$$inlined$inject$default$1
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
        rxEventBus$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(koinPlatformTools.defaultLazyMode(), new Function0<BinancePayManager>() { // from class: com.iMe.utils.helper.binancepay.BinancePayHelper$special$$inlined$inject$default$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.storage.domain.manager.binancepay.BinancePayManager, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final BinancePayManager invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function0 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(BinancePayManager.class), qualifier, function0);
            }
        });
        binancePayManager$delegate = lazy3;
        lazy4 = LazyKt__LazyJVMKt.lazy(koinPlatformTools.defaultLazyMode(), new Function0<WalletFlowCoordinator>() { // from class: com.iMe.utils.helper.binancepay.BinancePayHelper$special$$inlined$inject$default$3
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

    public final HashMap<String, String> getRefererHeader() {
        return (HashMap) refererHeader$delegate.getValue();
    }

    private final RxEventBus getRxEventBus() {
        return (RxEventBus) rxEventBus$delegate.getValue();
    }

    private final BinancePayManager getBinancePayManager() {
        return (BinancePayManager) binancePayManager$delegate.getValue();
    }

    private final WalletFlowCoordinator getWalletFlowCoordinator() {
        return (WalletFlowCoordinator) walletFlowCoordinator$delegate.getValue();
    }

    public static final boolean isBinancePayAuthIntent(Intent intent) {
        String uri;
        boolean startsWith$default;
        Intrinsics.checkNotNullParameter(intent, "intent");
        Uri data = intent.getData();
        if (data == null || (uri = data.toString()) == null) {
            return false;
        }
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(uri, AppConfiguration$Binance.INSTANCE.getAUTH_REDIRECT_URL(), false, 2, null);
        return startsWith$default;
    }

    public static final boolean isProcessBinancePayUrl(String url) {
        boolean startsWith$default;
        Intrinsics.checkNotNullParameter(url, "url");
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(url, AppConfiguration$Binance.INSTANCE.getProcessPayUrl(), false, 2, null);
        return startsWith$default;
    }

    public static final void handleIntent(Intent intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        INSTANCE.getRxEventBus().publish(new AppRxEvents.BinanceAuthHandled(intent));
    }

    public static final void runWithCheckIsBinancePayActivated(final BaseFragment fragment, final Callbacks$Callback callbacks$Callback, Callbacks$Callback action) {
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        Intrinsics.checkNotNullParameter(action, "action");
        if (INSTANCE.getBinancePayManager().isAuthorized()) {
            action.invoke();
            return;
        }
        DialogModel dialogModel = new DialogModel(LocaleController.getInternalString(C3473R.string.wallet_binance_pay_not_activated_dialog_title), LocaleController.getInternalString(C3473R.string.wallet_binance_pay_not_activated_dialog_description), LocaleController.getInternalString(C3473R.string.common_cancel), LocaleController.getInternalString(C3473R.string.wallet_button_auth_dialog_action_btn));
        Activity parentActivity = fragment.getParentActivity();
        Intrinsics.checkNotNullExpressionValue(parentActivity, "fragment.parentActivity");
        DialogUtils.createDialog$default(parentActivity, dialogModel, new Callbacks$Callback() { // from class: com.iMe.utils.helper.binancepay.BinancePayHelper$$ExternalSyntheticLambda1
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                BinancePayHelper.runWithCheckIsBinancePayActivated$lambda$1(BaseFragment.this, callbacks$Callback);
            }
        }, null, 8, null).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void runWithCheckIsBinancePayActivated$lambda$1(final BaseFragment fragment, Callbacks$Callback callbacks$Callback) {
        Intrinsics.checkNotNullParameter(fragment, "$fragment");
        WalletHelper.safeRunWithActivationCheck(fragment, new Callbacks$Callback() { // from class: com.iMe.utils.helper.binancepay.BinancePayHelper$$ExternalSyntheticLambda0
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                BinancePayHelper.runWithCheckIsBinancePayActivated$lambda$1$lambda$0(BaseFragment.this);
            }
        });
        if (callbacks$Callback != null) {
            callbacks$Callback.invoke();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void runWithCheckIsBinancePayActivated$lambda$1$lambda$0(BaseFragment fragment) {
        Intrinsics.checkNotNullParameter(fragment, "$fragment");
        WalletFlowCoordinator walletFlowCoordinator = INSTANCE.getWalletFlowCoordinator();
        INavigationLayout parentLayout = fragment.getParentLayout();
        Intrinsics.checkNotNullExpressionValue(parentLayout, "fragment.parentLayout");
        WalletFlowCoordinator.start$default(walletFlowCoordinator, parentLayout, WalletRootFragment.Companion.newInstance(), false, 4, null);
    }
}
