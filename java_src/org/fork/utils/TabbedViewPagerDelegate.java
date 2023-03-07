package org.fork.utils;

import android.view.View;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import java.util.List;
import org.fork.utils.AbstractTabbedViewPage;
/* loaded from: classes4.dex */
public interface TabbedViewPagerDelegate<T extends AbstractTabbedViewPage> {

    /* renamed from: org.fork.utils.TabbedViewPagerDelegate$-CC  reason: invalid class name */
    /* loaded from: classes4.dex */
    public final /* synthetic */ class CC {
        public static void $default$bind(TabbedViewPagerDelegate tabbedViewPagerDelegate, AbstractTabbedViewPage abstractTabbedViewPage, int i) {
        }

        public static View $default$getScrollableHeaderView(TabbedViewPagerDelegate tabbedViewPagerDelegate) {
            return null;
        }

        public static SwipeRefreshLayout $default$getSwipeRefreshLayout(TabbedViewPagerDelegate tabbedViewPagerDelegate) {
            return null;
        }
    }

    void bind(T t, int i);

    List<T> getPages();

    View getScrollableHeaderView();

    SwipeRefreshLayout getSwipeRefreshLayout();

    void onPageChanged(T t, T t2, int i, int i2);
}
