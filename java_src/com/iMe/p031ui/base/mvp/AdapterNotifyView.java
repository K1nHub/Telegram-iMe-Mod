package com.iMe.p031ui.base.mvp;

import moxy.MvpView;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: AdapterNotifyView.kt */
@OneExecution
/* renamed from: com.iMe.ui.base.mvp.AdapterNotifyView */
/* loaded from: classes3.dex */
public interface AdapterNotifyView extends MvpView {
    void notifyDataSetChanged();
}
