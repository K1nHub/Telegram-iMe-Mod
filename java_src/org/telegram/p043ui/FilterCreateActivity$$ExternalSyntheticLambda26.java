package org.telegram.p043ui;

import org.telegram.messenger.Utilities;
import org.telegram.tgnet.p042tl.TL_chatlists$TL_exportedChatlistInvite;
/* renamed from: org.telegram.ui.FilterCreateActivity$$ExternalSyntheticLambda26 */
/* loaded from: classes5.dex */
public final /* synthetic */ class FilterCreateActivity$$ExternalSyntheticLambda26 implements Utilities.Callback {
    public final /* synthetic */ FilterCreateActivity f$0;

    public /* synthetic */ FilterCreateActivity$$ExternalSyntheticLambda26(FilterCreateActivity filterCreateActivity) {
        this.f$0 = filterCreateActivity;
    }

    @Override // org.telegram.messenger.Utilities.Callback
    public final void run(Object obj) {
        this.f$0.onDelete((TL_chatlists$TL_exportedChatlistInvite) obj);
    }
}
