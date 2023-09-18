package org.solovyev.android.checkout;
/* loaded from: classes6.dex */
public interface RequestListener<R> {
    void onError(int i, Exception exc);

    void onSuccess(R r);
}
