package org.telegram.p048ui.Components;

import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_error;
/* renamed from: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda129 */
/* loaded from: classes6.dex */
public final /* synthetic */ class AlertsCreator$$ExternalSyntheticLambda129 implements RequestDelegate {
    public static final /* synthetic */ AlertsCreator$$ExternalSyntheticLambda129 INSTANCE = new AlertsCreator$$ExternalSyntheticLambda129();

    private /* synthetic */ AlertsCreator$$ExternalSyntheticLambda129() {
    }

    @Override // org.telegram.tgnet.RequestDelegate
    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AlertsCreator.lambda$createReportAlert$121(tLObject, tLRPC$TL_error);
    }
}
