package androidx.core.p010os;

import android.os.Bundle;
import android.os.IBinder;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: Bundle.kt */
/* renamed from: androidx.core.os.BundleApi18ImplKt */
/* loaded from: classes.dex */
final class BundleApi18ImplKt {
    static {
        new BundleApi18ImplKt();
    }

    private BundleApi18ImplKt() {
    }

    public static final void putBinder(Bundle bundle, String key, IBinder iBinder) {
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        Intrinsics.checkNotNullParameter(key, "key");
        bundle.putBinder(key, iBinder);
    }
}
