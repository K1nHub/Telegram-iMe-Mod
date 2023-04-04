package com.iMe.common;

import android.os.Handler;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.OnLifecycleEvent;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.p047mp.KoinPlatformTools;
import org.telegram.messenger.ApplicationLoader;
/* compiled from: AppLifecycleObserver.kt */
/* loaded from: classes3.dex */
public final class AppLifecycleObserver implements LifecycleObserver, KoinComponent {
    private final Lazy accessManager$delegate;
    private final Handler handler;
    private final Runnable logoutWalletRunnable;

    static {
        new Companion(null);
    }

    public AppLifecycleObserver() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new AppLifecycleObserver$special$$inlined$inject$default$1(this, null, null));
        this.accessManager$delegate = lazy;
        Handler applicationHandler = ApplicationLoader.applicationHandler;
        Intrinsics.checkNotNullExpressionValue(applicationHandler, "applicationHandler");
        this.handler = applicationHandler;
        this.logoutWalletRunnable = new Runnable() { // from class: com.iMe.common.AppLifecycleObserver$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                AppLifecycleObserver.logoutWalletRunnable$lambda$0(AppLifecycleObserver.this);
            }
        };
    }

    @Override // org.koin.core.component.KoinComponent
    public Koin getKoin() {
        return KoinComponent.DefaultImpls.getKoin(this);
    }

    private final CryptoAccessManager getAccessManager() {
        return (CryptoAccessManager) this.accessManager$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void logoutWalletRunnable$lambda$0(AppLifecycleObserver this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getAccessManager().logoutAllWallets();
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_START)
    public final void onEnterForeground() {
        this.handler.removeCallbacks(this.logoutWalletRunnable);
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_STOP)
    public final void onEnterBackground() {
        this.handler.postDelayed(this.logoutWalletRunnable, 60000L);
    }

    /* compiled from: AppLifecycleObserver.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
