package com.smedialink.p031ui.base.mvp;

import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: SwitchNetworkView.kt */
@AddToEndSingle
/* renamed from: com.smedialink.ui.base.mvp.SwitchNetworkView */
/* loaded from: classes3.dex */
public interface SwitchNetworkView extends BaseView {
    void setupNetworkType(NetworkType networkType);

    @OneExecution
    void showChooseNetworkDialog(NetworkType networkType, List<? extends NetworkType> list, Function1<? super NetworkType, Unit> function1);
}
