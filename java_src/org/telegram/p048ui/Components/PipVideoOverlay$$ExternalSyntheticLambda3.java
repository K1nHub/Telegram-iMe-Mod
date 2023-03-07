package org.telegram.p048ui.Components;

import android.view.View;
/* renamed from: org.telegram.ui.Components.PipVideoOverlay$$ExternalSyntheticLambda3 */
/* loaded from: classes6.dex */
public final /* synthetic */ class PipVideoOverlay$$ExternalSyntheticLambda3 implements View.OnClickListener {
    public static final /* synthetic */ PipVideoOverlay$$ExternalSyntheticLambda3 INSTANCE = new PipVideoOverlay$$ExternalSyntheticLambda3();

    private /* synthetic */ PipVideoOverlay$$ExternalSyntheticLambda3() {
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        PipVideoOverlay.dimissAndDestroy();
    }
}
