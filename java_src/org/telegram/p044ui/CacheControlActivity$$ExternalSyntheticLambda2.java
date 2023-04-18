package org.telegram.p044ui;

import android.content.DialogInterface;
/* renamed from: org.telegram.ui.CacheControlActivity$$ExternalSyntheticLambda2 */
/* loaded from: classes5.dex */
public final /* synthetic */ class CacheControlActivity$$ExternalSyntheticLambda2 implements DialogInterface.OnCancelListener {
    public static final /* synthetic */ CacheControlActivity$$ExternalSyntheticLambda2 INSTANCE = new CacheControlActivity$$ExternalSyntheticLambda2();

    private /* synthetic */ CacheControlActivity$$ExternalSyntheticLambda2() {
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        CacheControlActivity.canceled = true;
    }
}
