package org.telegram.p044ui.Components;

import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_error;
/* renamed from: org.telegram.ui.Components.FilterTabsView$$ExternalSyntheticLambda0 */
/* loaded from: classes6.dex */
public final /* synthetic */ class FilterTabsView$$ExternalSyntheticLambda0 implements RequestDelegate {
    public static final /* synthetic */ FilterTabsView$$ExternalSyntheticLambda0 INSTANCE = new FilterTabsView$$ExternalSyntheticLambda0();

    private /* synthetic */ FilterTabsView$$ExternalSyntheticLambda0() {
    }

    @Override // org.telegram.tgnet.RequestDelegate
    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        FilterTabsView.lambda$setIsEditing$2(tLObject, tLRPC$TL_error);
    }
}