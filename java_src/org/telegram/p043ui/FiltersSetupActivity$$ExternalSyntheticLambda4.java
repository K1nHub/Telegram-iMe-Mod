package org.telegram.p043ui;

import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_error;
/* renamed from: org.telegram.ui.FiltersSetupActivity$$ExternalSyntheticLambda4 */
/* loaded from: classes5.dex */
public final /* synthetic */ class FiltersSetupActivity$$ExternalSyntheticLambda4 implements RequestDelegate {
    public static final /* synthetic */ FiltersSetupActivity$$ExternalSyntheticLambda4 INSTANCE = new FiltersSetupActivity$$ExternalSyntheticLambda4();

    private /* synthetic */ FiltersSetupActivity$$ExternalSyntheticLambda4() {
    }

    @Override // org.telegram.tgnet.RequestDelegate
    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        FiltersSetupActivity.lambda$onFragmentDestroy$2(tLObject, tLRPC$TL_error);
    }
}
