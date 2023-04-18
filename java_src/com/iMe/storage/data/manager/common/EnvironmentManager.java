package com.iMe.storage.data.manager.common;

import android.os.Handler;
import android.os.Looper;
import com.google.android.exoplayer2.ExoPlayer;
import com.iMe.storage.domain.gateway.ActionGateway;
import com.iMe.storage.domain.manager.auth.AuthManager;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.common.Environment;
import com.iMe.storage.domain.model.common.EnvironmentInformation;
import com.iMe.storage.domain.storage.PreferenceHelper;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.p043mp.KoinPlatformTools;
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

    static {
        EnvironmentManager environmentManager = new EnvironmentManager();
        INSTANCE = environmentManager;
        KoinPlatformTools koinPlatformTools = KoinPlatformTools.INSTANCE;
        preferenceHelper$delegate = LazyKt.lazy(koinPlatformTools.defaultLazyMode(), new EnvironmentManager$special$$inlined$inject$default$1(environmentManager, null, null));
        actionGateway$delegate = LazyKt.lazy(koinPlatformTools.defaultLazyMode(), new EnvironmentManager$special$$inlined$inject$default$2(environmentManager, null, null));
        telegramGateway$delegate = LazyKt.lazy(koinPlatformTools.defaultLazyMode(), new EnvironmentManager$special$$inlined$inject$default$3(environmentManager, null, null));
        cryptoAccessManager$delegate = LazyKt.lazy(koinPlatformTools.defaultLazyMode(), new EnvironmentManager$special$$inlined$inject$default$4(environmentManager, null, null));
        authManager$delegate = LazyKt.lazy(koinPlatformTools.defaultLazyMode(), new EnvironmentManager$special$$inlined$inject$default$5(environmentManager, null, null));
        applicationHandler = new Handler(Looper.getMainLooper());
        exitRunnable = EnvironmentManager$$ExternalSyntheticLambda0.INSTANCE;
    }
}
