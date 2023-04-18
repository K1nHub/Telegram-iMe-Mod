package org.telegram.p044ui;

import org.telegram.p044ui.Components.SlideChooseView;
import org.telegram.p044ui.ProxyListActivity;
/* renamed from: org.telegram.ui.ProxyListActivity$ListAdapter$$ExternalSyntheticLambda0 */
/* loaded from: classes5.dex */
public final /* synthetic */ class ProxyListActivity$ListAdapter$$ExternalSyntheticLambda0 implements SlideChooseView.Callback {
    public static final /* synthetic */ ProxyListActivity$ListAdapter$$ExternalSyntheticLambda0 INSTANCE = new ProxyListActivity$ListAdapter$$ExternalSyntheticLambda0();

    private /* synthetic */ ProxyListActivity$ListAdapter$$ExternalSyntheticLambda0() {
    }

    @Override // org.telegram.p044ui.Components.SlideChooseView.Callback
    public final void onOptionSelected(int i) {
        ProxyListActivity.ListAdapter.lambda$onBindViewHolder$0(i);
    }

    @Override // org.telegram.p044ui.Components.SlideChooseView.Callback
    public /* synthetic */ void onTouchEnd() {
        SlideChooseView.Callback.CC.$default$onTouchEnd(this);
    }
}
