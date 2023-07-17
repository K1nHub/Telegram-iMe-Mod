package org.telegram.p043ui.Components;

import org.telegram.p043ui.Components.ViewPagerFixed;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_error;
/* renamed from: org.telegram.ui.Components.ViewPagerFixed$TabsView$$ExternalSyntheticLambda0 */
/* loaded from: classes6.dex */
public final /* synthetic */ class ViewPagerFixed$TabsView$$ExternalSyntheticLambda0 implements RequestDelegate {
    public static final /* synthetic */ ViewPagerFixed$TabsView$$ExternalSyntheticLambda0 INSTANCE = new ViewPagerFixed$TabsView$$ExternalSyntheticLambda0();

    private /* synthetic */ ViewPagerFixed$TabsView$$ExternalSyntheticLambda0() {
    }

    @Override // org.telegram.tgnet.RequestDelegate
    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        ViewPagerFixed.TabsView.lambda$setIsEditing$1(tLObject, tLRPC$TL_error);
    }
}
