package com.iMe.p030ui.base.mvp;

import com.iMe.p030ui.base.mvp.base.BaseView;
import moxy.viewstate.strategy.alias.AddToEndSingle;
/* compiled from: SwipeRefreshView.kt */
@AddToEndSingle
/* renamed from: com.iMe.ui.base.mvp.SwipeRefreshView */
/* loaded from: classes.dex */
public interface SwipeRefreshView extends BaseView {
    void showRefreshing(boolean z);
}
