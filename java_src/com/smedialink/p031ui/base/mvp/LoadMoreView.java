package com.smedialink.p031ui.base.mvp;

import com.smedialink.p031ui.base.mvp.base.BaseView;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
/* compiled from: LoadMoreView.kt */
@AddToEndSingle
/* renamed from: com.smedialink.ui.base.mvp.LoadMoreView */
/* loaded from: classes3.dex */
public interface LoadMoreView<T> extends BaseView {
    void onLoadMoreComplete();

    void onLoadMoreError();

    void onLoadMoreItems(List<T> list);

    void resetLoadMore();
}
