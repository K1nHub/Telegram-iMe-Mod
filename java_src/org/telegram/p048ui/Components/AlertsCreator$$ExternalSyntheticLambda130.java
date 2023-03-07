package org.telegram.p048ui.Components;

import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_error;
/* renamed from: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda130 */
/* loaded from: classes6.dex */
public final /* synthetic */ class AlertsCreator$$ExternalSyntheticLambda130 implements RequestDelegate {
    public static final /* synthetic */ AlertsCreator$$ExternalSyntheticLambda130 INSTANCE = new AlertsCreator$$ExternalSyntheticLambda130();

    private /* synthetic */ AlertsCreator$$ExternalSyntheticLambda130() {
    }

    @Override // org.telegram.tgnet.RequestDelegate
    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AlertsCreator.lambda$sendReport$119(tLObject, tLRPC$TL_error);
    }
}
