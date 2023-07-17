package com.iMe.p031ui.base.mvp;

import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.crypto.Network;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: SwitchNetworkView.kt */
@AddToEndSingle
/* renamed from: com.iMe.ui.base.mvp.SwitchNetworkView */
/* loaded from: classes.dex */
public interface SwitchNetworkView extends BaseView {
    void setupNetwork(Network network);

    @OneExecution
    void showChooseNetworkDialog(Network network, List<Network> list, Function1<? super Network, Unit> function1);
}
