package org.solovyev.android.checkout;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public interface RequestRunnable {
    void cancel();

    Request getRequest();

    Object getTag();

    boolean run();
}
