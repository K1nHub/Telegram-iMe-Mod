package org.telegram.p043ui;

import android.content.DialogInterface;
/* renamed from: org.telegram.ui.CacheControlActivity$$ExternalSyntheticLambda1 */
/* loaded from: classes5.dex */
public final /* synthetic */ class CacheControlActivity$$ExternalSyntheticLambda1 implements DialogInterface.OnCancelListener {
    public static final /* synthetic */ CacheControlActivity$$ExternalSyntheticLambda1 INSTANCE = new CacheControlActivity$$ExternalSyntheticLambda1();

    private /* synthetic */ CacheControlActivity$$ExternalSyntheticLambda1() {
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        CacheControlActivity.canceled = true;
    }
}
