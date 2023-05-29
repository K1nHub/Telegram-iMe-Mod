package com.iMe.fork.p024ui.view;

import com.iMe.p031ui.custom.NetworkTypeView;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: HeaderCellWithNetwork.kt */
/* renamed from: com.iMe.fork.ui.view.HeaderCellWithNetwork$networkTypeView$2 */
/* loaded from: classes3.dex */
public final class HeaderCellWithNetwork$networkTypeView$2 extends Lambda implements Function0<NetworkTypeView> {
    final /* synthetic */ HeaderCellWithNetwork this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HeaderCellWithNetwork$networkTypeView$2(HeaderCellWithNetwork headerCellWithNetwork) {
        super(0);
        this.this$0 = headerCellWithNetwork;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final NetworkTypeView invoke() {
        NetworkTypeView initNetworkView;
        initNetworkView = this.this$0.initNetworkView();
        return initNetworkView;
    }
}
