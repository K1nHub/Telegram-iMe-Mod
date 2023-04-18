package org.telegram.p044ui;

import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_error;
/* renamed from: org.telegram.ui.NotificationsSettingsActivity$$ExternalSyntheticLambda8 */
/* loaded from: classes5.dex */
public final /* synthetic */ class NotificationsSettingsActivity$$ExternalSyntheticLambda8 implements RequestDelegate {
    public static final /* synthetic */ NotificationsSettingsActivity$$ExternalSyntheticLambda8 INSTANCE = new NotificationsSettingsActivity$$ExternalSyntheticLambda8();

    private /* synthetic */ NotificationsSettingsActivity$$ExternalSyntheticLambda8() {
    }

    @Override // org.telegram.tgnet.RequestDelegate
    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        NotificationsSettingsActivity.lambda$createView$5(tLObject, tLRPC$TL_error);
    }
}
