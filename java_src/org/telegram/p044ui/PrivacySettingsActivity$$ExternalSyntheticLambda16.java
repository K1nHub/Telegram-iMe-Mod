package org.telegram.p044ui;

import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_error;
/* renamed from: org.telegram.ui.PrivacySettingsActivity$$ExternalSyntheticLambda16 */
/* loaded from: classes5.dex */
public final /* synthetic */ class PrivacySettingsActivity$$ExternalSyntheticLambda16 implements RequestDelegate {
    public static final /* synthetic */ PrivacySettingsActivity$$ExternalSyntheticLambda16 INSTANCE = new PrivacySettingsActivity$$ExternalSyntheticLambda16();

    private /* synthetic */ PrivacySettingsActivity$$ExternalSyntheticLambda16() {
    }

    @Override // org.telegram.tgnet.RequestDelegate
    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        PrivacySettingsActivity.lambda$onFragmentDestroy$1(tLObject, tLRPC$TL_error);
    }
}
