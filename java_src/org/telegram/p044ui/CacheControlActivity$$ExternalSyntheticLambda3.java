package org.telegram.p044ui;

import android.content.DialogInterface;
/* renamed from: org.telegram.ui.CacheControlActivity$$ExternalSyntheticLambda3 */
/* loaded from: classes5.dex */
public final /* synthetic */ class CacheControlActivity$$ExternalSyntheticLambda3 implements DialogInterface.OnCancelListener {
    public static final /* synthetic */ CacheControlActivity$$ExternalSyntheticLambda3 INSTANCE = new CacheControlActivity$$ExternalSyntheticLambda3();

    private /* synthetic */ CacheControlActivity$$ExternalSyntheticLambda3() {
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        CacheControlActivity.canceled = true;
    }
}
