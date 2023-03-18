package org.telegram.p048ui.Components;

import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_error;
/* renamed from: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda127 */
/* loaded from: classes6.dex */
public final /* synthetic */ class AlertsCreator$$ExternalSyntheticLambda127 implements RequestDelegate {
    public static final /* synthetic */ AlertsCreator$$ExternalSyntheticLambda127 INSTANCE = new AlertsCreator$$ExternalSyntheticLambda127();

    private /* synthetic */ AlertsCreator$$ExternalSyntheticLambda127() {
    }

    @Override // org.telegram.tgnet.RequestDelegate
    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AlertsCreator.lambda$createDeleteMessagesAlert$152(tLObject, tLRPC$TL_error);
    }
}
