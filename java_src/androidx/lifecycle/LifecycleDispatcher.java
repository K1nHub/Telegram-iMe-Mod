package androidx.lifecycle;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: LifecycleDispatcher.kt */
/* loaded from: classes.dex */
public final class LifecycleDispatcher {
    private static final AtomicBoolean initialized;

    private LifecycleDispatcher() {
    }

    static {
        new LifecycleDispatcher();
        initialized = new AtomicBoolean(false);
    }

    public static final void init(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (initialized.getAndSet(true)) {
            return;
        }
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNull(applicationContext, "null cannot be cast to non-null type android.app.Application");
        ((Application) applicationContext).registerActivityLifecycleCallbacks(new DispatcherActivityCallback());
    }

    /* compiled from: LifecycleDispatcher.kt */
    /* loaded from: classes.dex */
    public static final class DispatcherActivityCallback extends EmptyActivityLifecycleCallbacks {
        @Override // androidx.lifecycle.EmptyActivityLifecycleCallbacks, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            Intrinsics.checkNotNullParameter(activity, "activity");
            ReportFragment.Companion.injectIfNeededIn(activity);
        }
    }
}
