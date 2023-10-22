package com.iMe.p030ui.base.mvp;

import com.iMe.p030ui.base.mvp.base.BaseView;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
/* compiled from: LoadMoreView.kt */
@AddToEndSingle
/* renamed from: com.iMe.ui.base.mvp.LoadMoreView */
/* loaded from: classes3.dex */
public interface LoadMoreView<T> extends BaseView {

    /* compiled from: LoadMoreView.kt */
    /* renamed from: com.iMe.ui.base.mvp.LoadMoreView$-CC  reason: invalid class name */
    /* loaded from: classes3.dex */
    public final /* synthetic */ class CC {
        public static void $default$resetLoadMore(LoadMoreView loadMoreView) {
        }
    }

    void onLoadMoreComplete();

    void onLoadMoreError();

    void onLoadMoreItems(List<T> list);

    void resetLoadMore();
}
