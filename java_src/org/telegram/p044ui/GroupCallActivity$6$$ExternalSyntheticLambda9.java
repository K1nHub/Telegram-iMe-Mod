package org.telegram.p044ui;

import org.telegram.p044ui.GroupCallActivity;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_error;
/* renamed from: org.telegram.ui.GroupCallActivity$6$$ExternalSyntheticLambda9 */
/* loaded from: classes5.dex */
public final /* synthetic */ class GroupCallActivity$6$$ExternalSyntheticLambda9 implements RequestDelegate {
    public static final /* synthetic */ GroupCallActivity$6$$ExternalSyntheticLambda9 INSTANCE = new GroupCallActivity$6$$ExternalSyntheticLambda9();

    private /* synthetic */ GroupCallActivity$6$$ExternalSyntheticLambda9() {
    }

    @Override // org.telegram.tgnet.RequestDelegate
    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        GroupCallActivity.C57196.lambda$onItemClick$8(tLObject, tLRPC$TL_error);
    }
}
