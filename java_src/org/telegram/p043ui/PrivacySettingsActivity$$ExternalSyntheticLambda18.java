package org.telegram.p043ui;

import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_error;
/* renamed from: org.telegram.ui.PrivacySettingsActivity$$ExternalSyntheticLambda18 */
/* loaded from: classes5.dex */
public final /* synthetic */ class PrivacySettingsActivity$$ExternalSyntheticLambda18 implements RequestDelegate {
    public static final /* synthetic */ PrivacySettingsActivity$$ExternalSyntheticLambda18 INSTANCE = new PrivacySettingsActivity$$ExternalSyntheticLambda18();

    private /* synthetic */ PrivacySettingsActivity$$ExternalSyntheticLambda18() {
    }

    @Override // org.telegram.tgnet.RequestDelegate
    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        PrivacySettingsActivity.lambda$createView$15(tLObject, tLRPC$TL_error);
    }
}
