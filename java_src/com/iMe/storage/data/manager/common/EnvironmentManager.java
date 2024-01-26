package com.iMe.storage.data.manager.common;

import android.os.Handler;
import android.os.Looper;
import com.google.android.exoplayer2.ExoPlayer;
import com.iMe.storage.domain.gateway.ActionGateway;
import com.iMe.storage.domain.gateway.TelegramGateway;
import com.iMe.storage.domain.manager.auth.AuthManager;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.common.Environment;
import com.iMe.storage.domain.model.common.EnvironmentInformation;
import com.iMe.storage.domain.storage.PreferenceHelper;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.core.component.KoinScopeComponent;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.p041mp.KoinPlatformTools;
/* compiled from: EnvironmentManager.kt */
/* loaded from: classes3.dex */
public final class EnvironmentManager implements KoinComponent {
    public static final EnvironmentManager INSTANCE;
    private static final Lazy actionGateway$delegate;
    private static final Handler applicationHandler;
    private static final Lazy authManager$delegate;
    private static final Lazy cryptoAccessManager$delegate;
    private static final Runnable exitRunnable;
    private static final Lazy preferenceHelper$delegate;
    private static final Lazy telegramGateway$delegate;

    /* compiled from: EnvironmentManager.kt */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Environment.values().length];
            try {
                iArr[Environment.PRODUCTION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Environment.STAGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Environment.DEVELOPMENT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private EnvironmentManager() {
    }

    @Override // org.koin.core.component.KoinComponent
    public Koin getKoin() {
        return KoinComponent.DefaultImpls.getKoin(this);
    }

    private final PreferenceHelper getPreferenceHelper() {
        return (PreferenceHelper) preferenceHelper$delegate.getValue();
    }

    private final ActionGateway getActionGateway() {
        return (ActionGateway) actionGateway$delegate.getValue();
    }

    private final CryptoAccessManager getCryptoAccessManager() {
        return (CryptoAccessManager) cryptoAccessManager$delegate.getValue();
    }

    private final AuthManager getAuthManager() {
        return (AuthManager) authManager$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void exitRunnable$lambda$0() {
        INSTANCE.getActionGateway().finishApplication();
    }

    public Environment getEnvironment() {
        try {
            return getPreferenceHelper().getEnvironment();
        } catch (Exception unused) {
            return Environment.PRODUCTION;
        }
    }

    public EnvironmentInformation getEnvironmentInformation() {
        return getEnvironmentInformationBy(getEnvironment());
    }

    public EnvironmentInformation getEnvironmentInformationBy(Environment environment) {
        Intrinsics.checkNotNullParameter(environment, "environment");
        int i = WhenMappings.$EnumSwitchMapping$0[environment.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i == 3) {
                    return EnvironmentInformation.Development.INSTANCE;
                }
                throw new NoWhenBranchMatchedException();
            }
            return EnvironmentInformation.Stage.INSTANCE;
        }
        return EnvironmentInformation.Production.INSTANCE;
    }

    public void switchEnvironmentTo(Environment environment) {
        Intrinsics.checkNotNullParameter(environment, "environment");
        getPreferenceHelper().setEnvironment(environment);
        getCryptoAccessManager().deleteAllWallets();
        getAuthManager().logout();
        applicationHandler.postDelayed(exitRunnable, ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
    }

    public boolean isProductionActive() {
        return getEnvironment() == Environment.PRODUCTION;
    }

    static {
        final EnvironmentManager environmentManager = new EnvironmentManager();
        INSTANCE = environmentManager;
        KoinPlatformTools koinPlatformTools = KoinPlatformTools.INSTANCE;
        preferenceHelper$delegate = LazyKt.lazy(koinPlatformTools.defaultLazyMode(), new Function0<PreferenceHelper>() { // from class: com.iMe.storage.data.manager.common.EnvironmentManager$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.storage.domain.storage.PreferenceHelper, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final PreferenceHelper invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function0 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(PreferenceHelper.class), qualifier, function0);
            }
        });
        actionGateway$delegate = LazyKt.lazy(koinPlatformTools.defaultLazyMode(), new Function0<ActionGateway>() { // from class: com.iMe.storage.data.manager.common.EnvironmentManager$special$$inlined$inject$default$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.iMe.storage.domain.gateway.ActionGateway] */
            @Override // kotlin.jvm.functions.Function0
            public final ActionGateway invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function0 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(ActionGateway.class), qualifier, function0);
            }
        });
        telegramGateway$delegate = LazyKt.lazy(koinPlatformTools.defaultLazyMode(), new Function0<TelegramGateway>() { // from class: com.iMe.storage.data.manager.common.EnvironmentManager$special$$inlined$inject$default$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.iMe.storage.domain.gateway.TelegramGateway, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final TelegramGateway invoke() {
                Scope rootScope;
                KoinComponent koinComponent = KoinComponent.this;
                Qualifier qualifier = r2;
                Function0<? extends ParametersHolder> function0 = r3;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(TelegramGateway.class), qualifier, function0);
            }
        });
        cryptoAccessManager$delegate = LazyKt.lazy(koinPlatformTools.defaultLazyMode(), new Function0<CryptoAccessManager>() { // from class: com.iMe.storage.data.manager.common.EnvironmentManager$special$$inlined$inject$default$4
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
        authManager$delegate = LazyKt.lazy(koinPlatformTools.defaultLazyMode(), new Function0<AuthManager>() { // from class: com.iMe.storage.data.manager.common.EnvironmentManager$special$$inlined$inject$default$5
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
        applicationHandler = new Handler(Looper.getMainLooper());
        exitRunnable = new Runnable() { // from class: com.iMe.storage.data.manager.common.EnvironmentManager$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                EnvironmentManager.exitRunnable$lambda$0();
            }
        };
    }
}
