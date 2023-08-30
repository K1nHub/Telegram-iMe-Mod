package com.iMe.p031ui.base.mvp;

import com.iMe.model.wallet.crypto.NetworkItem;
import com.iMe.p031ui.base.mvp.base.BaseView;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: SwitchNetworkView.kt */
@AddToEndSingle
/* renamed from: com.iMe.ui.base.mvp.SwitchNetworkView */
/* loaded from: classes3.dex */
public interface SwitchNetworkView extends BaseView {
    void setupNetwork(NetworkItem networkItem);

    @OneExecution
    void showChooseNetworkDialog(NetworkItem networkItem, List<? extends NetworkItem> list);
}
