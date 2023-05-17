package org.solovyev.android.checkout;

import android.util.Log;
/* loaded from: classes4.dex */
class DefaultLogger implements Logger {
    private boolean mEnabled = false;

    @Override // org.solovyev.android.checkout.Logger
    /* renamed from: e */
    public void mo58e(String str, String str2) {
        if (this.mEnabled) {
            Log.e(str, str2);
        }
    }

    @Override // org.solovyev.android.checkout.Logger
    /* renamed from: w */
    public void mo56w(String str, String str2) {
        if (this.mEnabled) {
            Log.w(str, str2);
        }
    }

    @Override // org.solovyev.android.checkout.Logger
    /* renamed from: d */
    public void mo59d(String str, String str2) {
        if (this.mEnabled) {
            Log.d(str, str2);
        }
    }

    @Override // org.solovyev.android.checkout.Logger
    /* renamed from: e */
    public void mo57e(String str, String str2, Throwable th) {
        if (this.mEnabled) {
            Log.e(str, str2, th);
        }
    }
}
