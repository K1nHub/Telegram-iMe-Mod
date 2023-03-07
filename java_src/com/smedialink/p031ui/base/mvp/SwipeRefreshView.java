package com.smedialink.p031ui.base.mvp;

import com.smedialink.p031ui.base.mvp.base.BaseView;
import moxy.viewstate.strategy.alias.AddToEndSingle;
/* compiled from: SwipeRefreshView.kt */
@AddToEndSingle
/* renamed from: com.smedialink.ui.base.mvp.SwipeRefreshView */
/* loaded from: classes3.dex */
public interface SwipeRefreshView extends BaseView {
    void showRefreshing(boolean z);
}
