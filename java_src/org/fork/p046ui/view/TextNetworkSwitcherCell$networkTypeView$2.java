package org.fork.p046ui.view;

import com.smedialink.p031ui.custom.NetworkTypeView;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TextNetworkSwitcherCell.kt */
/* renamed from: org.fork.ui.view.TextNetworkSwitcherCell$networkTypeView$2 */
/* loaded from: classes4.dex */
public final class TextNetworkSwitcherCell$networkTypeView$2 extends Lambda implements Function0<NetworkTypeView> {
    final /* synthetic */ TextNetworkSwitcherCell this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextNetworkSwitcherCell$networkTypeView$2(TextNetworkSwitcherCell textNetworkSwitcherCell) {
        super(0);
        this.this$0 = textNetworkSwitcherCell;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final NetworkTypeView invoke() {
        NetworkTypeView initNetworkTypeView;
        initNetworkTypeView = this.this$0.initNetworkTypeView();
        return initNetworkTypeView;
    }
}
