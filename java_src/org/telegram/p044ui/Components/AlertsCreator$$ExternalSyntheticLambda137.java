package org.telegram.p044ui.Components;

import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_error;
/* renamed from: org.telegram.ui.Components.AlertsCreator$$ExternalSyntheticLambda137 */
/* loaded from: classes6.dex */
public final /* synthetic */ class AlertsCreator$$ExternalSyntheticLambda137 implements RequestDelegate {
    public static final /* synthetic */ AlertsCreator$$ExternalSyntheticLambda137 INSTANCE = new AlertsCreator$$ExternalSyntheticLambda137();

    private /* synthetic */ AlertsCreator$$ExternalSyntheticLambda137() {
    }

    @Override // org.telegram.tgnet.RequestDelegate
    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AlertsCreator.lambda$createChangeNameAlert$69(tLObject, tLRPC$TL_error);
    }
}
