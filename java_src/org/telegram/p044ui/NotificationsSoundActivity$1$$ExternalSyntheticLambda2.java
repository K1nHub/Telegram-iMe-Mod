package org.telegram.p044ui;

import org.telegram.p044ui.NotificationsSoundActivity;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_error;
/* renamed from: org.telegram.ui.NotificationsSoundActivity$1$$ExternalSyntheticLambda2 */
/* loaded from: classes5.dex */
public final /* synthetic */ class NotificationsSoundActivity$1$$ExternalSyntheticLambda2 implements RequestDelegate {
    public static final /* synthetic */ NotificationsSoundActivity$1$$ExternalSyntheticLambda2 INSTANCE = new NotificationsSoundActivity$1$$ExternalSyntheticLambda2();

    private /* synthetic */ NotificationsSoundActivity$1$$ExternalSyntheticLambda2() {
    }

    @Override // org.telegram.tgnet.RequestDelegate
    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        NotificationsSoundActivity.C60501.lambda$deleteSelectedMessages$2(tLObject, tLRPC$TL_error);
    }
}
