package ru.tinkoff.scrollingpagerindicator;

import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import ru.tinkoff.scrollingpagerindicator.ScrollingPagerIndicator;
/* loaded from: classes7.dex */
public class RecyclerViewAttacher implements ScrollingPagerIndicator.PagerAttacher<RecyclerView> {
    private RecyclerView.Adapter<?> attachedAdapter;
    private RecyclerView.AdapterDataObserver dataObserver;
    private ScrollingPagerIndicator indicator;
    private LinearLayoutManager layoutManager;
    private int measuredChildHeight;
    private int measuredChildWidth;
    private RecyclerView recyclerView;
    private RecyclerView.OnScrollListener scrollListener;
    private final int currentPageOffset = 0;
    private final boolean centered = true;

    @Override // ru.tinkoff.scrollingpagerindicator.ScrollingPagerIndicator.PagerAttacher
    public void attachToPager(final ScrollingPagerIndicator scrollingPagerIndicator, RecyclerView recyclerView) {
        if (!(recyclerView.getLayoutManager() instanceof LinearLayoutManager)) {
            throw new IllegalStateException("Only LinearLayoutManager is supported");
        }
        if (recyclerView.getAdapter() == null) {
            throw new IllegalStateException("RecyclerView has not Adapter attached");
        }
        this.layoutManager = (LinearLayoutManager) recyclerView.getLayoutManager();
        this.recyclerView = recyclerView;
        this.attachedAdapter = recyclerView.getAdapter();
        this.indicator = scrollingPagerIndicator;
        RecyclerView.AdapterDataObserver adapterDataObserver = new RecyclerView.AdapterDataObserver() { // from class: ru.tinkoff.scrollingpagerindicator.RecyclerViewAttacher.1
            @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
            public void onChanged() {
                scrollingPagerIndicator.setDotCount(RecyclerViewAttacher.this.attachedAdapter.getItemCount());
                RecyclerViewAttacher.this.updateCurrentOffset();
            }

            @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
            public void onItemRangeChanged(int i, int i2) {
                onChanged();
            }

            @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
            public void onItemRangeChanged(int i, int i2, Object obj) {
                onChanged();
            }

            @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
            public void onItemRangeInserted(int i, int i2) {
                onChanged();
            }

            @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
            public void onItemRangeRemoved(int i, int i2) {
                onChanged();
            }

            @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
            public void onItemRangeMoved(int i, int i2, int i3) {
                onChanged();
            }
        };
        this.dataObserver = adapterDataObserver;
        this.attachedAdapter.registerAdapterDataObserver(adapterDataObserver);
        scrollingPagerIndicator.setDotCount(this.attachedAdapter.getItemCount());
        updateCurrentOffset();
        RecyclerView.OnScrollListener onScrollListener = new RecyclerView.OnScrollListener() { // from class: ru.tinkoff.scrollingpagerindicator.RecyclerViewAttacher.2
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView2, int i) {
                int findCompletelyVisiblePosition;
                if (i == 0 && RecyclerViewAttacher.this.isInIdleState() && (findCompletelyVisiblePosition = RecyclerViewAttacher.this.findCompletelyVisiblePosition()) != -1) {
                    scrollingPagerIndicator.setDotCount(RecyclerViewAttacher.this.attachedAdapter.getItemCount());
                    if (findCompletelyVisiblePosition < RecyclerViewAttacher.this.attachedAdapter.getItemCount()) {
                        scrollingPagerIndicator.setCurrentPosition(findCompletelyVisiblePosition);
                    }
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView2, int i, int i2) {
                RecyclerViewAttacher.this.updateCurrentOffset();
            }
        };
        this.scrollListener = onScrollListener;
        this.recyclerView.addOnScrollListener(onScrollListener);
    }

    @Override // ru.tinkoff.scrollingpagerindicator.ScrollingPagerIndicator.PagerAttacher
    public void detachFromPager() {
        this.attachedAdapter.unregisterAdapterDataObserver(this.dataObserver);
        this.recyclerView.removeOnScrollListener(this.scrollListener);
        this.measuredChildWidth = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCurrentOffset() {
        int childAdapterPosition;
        float currentFrameBottom;
        int measuredHeight;
        View findFirstVisibleView = findFirstVisibleView();
        if (findFirstVisibleView == null || (childAdapterPosition = this.recyclerView.getChildAdapterPosition(findFirstVisibleView)) == -1) {
            return;
        }
        int itemCount = this.attachedAdapter.getItemCount();
        if (childAdapterPosition >= itemCount && itemCount != 0) {
            childAdapterPosition %= itemCount;
        }
        if (this.layoutManager.getOrientation() == 0) {
            currentFrameBottom = getCurrentFrameLeft() - findFirstVisibleView.getX();
            measuredHeight = findFirstVisibleView.getMeasuredWidth();
        } else {
            currentFrameBottom = getCurrentFrameBottom() - findFirstVisibleView.getY();
            measuredHeight = findFirstVisibleView.getMeasuredHeight();
        }
        float f = currentFrameBottom / measuredHeight;
        if (f < BitmapDescriptorFactory.HUE_RED || f > 1.0f || childAdapterPosition >= itemCount) {
            return;
        }
        this.indicator.onPageScrolled(childAdapterPosition, f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int findCompletelyVisiblePosition() {
        RecyclerView.ViewHolder findContainingViewHolder;
        for (int i = 0; i < this.recyclerView.getChildCount(); i++) {
            View childAt = this.recyclerView.getChildAt(i);
            float x = childAt.getX();
            int measuredWidth = childAt.getMeasuredWidth();
            float currentFrameLeft = getCurrentFrameLeft();
            float currentFrameRight = getCurrentFrameRight();
            if (this.layoutManager.getOrientation() == 1) {
                x = childAt.getY();
                measuredWidth = childAt.getMeasuredHeight();
                currentFrameLeft = getCurrentFrameTop();
                currentFrameRight = getCurrentFrameBottom();
            }
            if (x >= currentFrameLeft && x + measuredWidth <= currentFrameRight && (findContainingViewHolder = this.recyclerView.findContainingViewHolder(childAt)) != null && findContainingViewHolder.getAdapterPosition() != -1) {
                return findContainingViewHolder.getAdapterPosition();
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isInIdleState() {
        return findCompletelyVisiblePosition() != -1;
    }

    private View findFirstVisibleView() {
        int y;
        int childCount = this.layoutManager.getChildCount();
        View view = null;
        if (childCount == 0) {
            return null;
        }
        int i = Integer.MAX_VALUE;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = this.layoutManager.getChildAt(i2);
            if (this.layoutManager.getOrientation() == 0) {
                y = (int) childAt.getX();
                if (childAt.getMeasuredWidth() + y < i) {
                    if (childAt.getMeasuredWidth() + y < getCurrentFrameLeft()) {
                    }
                    view = childAt;
                    i = y;
                }
            } else {
                y = (int) childAt.getY();
                if (childAt.getMeasuredHeight() + y < i) {
                    if (childAt.getMeasuredHeight() + y < getCurrentFrameBottom()) {
                    }
                    view = childAt;
                    i = y;
                }
            }
        }
        return view;
    }

    private float getCurrentFrameLeft() {
        if (this.centered) {
            return (this.recyclerView.getMeasuredWidth() - getChildWidth()) / 2.0f;
        }
        return this.currentPageOffset;
    }

    private float getCurrentFrameRight() {
        float f;
        float childWidth;
        if (this.centered) {
            f = (this.recyclerView.getMeasuredWidth() - getChildWidth()) / 2.0f;
            childWidth = getChildWidth();
        } else {
            f = this.currentPageOffset;
            childWidth = getChildWidth();
        }
        return f + childWidth;
    }

    private float getCurrentFrameTop() {
        if (this.centered) {
            return (this.recyclerView.getMeasuredHeight() - getChildHeight()) / 2.0f;
        }
        return this.currentPageOffset;
    }

    private float getCurrentFrameBottom() {
        float f;
        float childHeight;
        if (this.centered) {
            f = (this.recyclerView.getMeasuredHeight() - getChildHeight()) / 2.0f;
            childHeight = getChildHeight();
        } else {
            f = this.currentPageOffset;
            childHeight = getChildHeight();
        }
        return f + childHeight;
    }

    private float getChildWidth() {
        int i;
        if (this.measuredChildWidth == 0) {
            for (int i2 = 0; i2 < this.recyclerView.getChildCount(); i2++) {
                View childAt = this.recyclerView.getChildAt(i2);
                if (childAt.getMeasuredWidth() != 0) {
                    i = childAt.getMeasuredWidth();
                    this.measuredChildWidth = i;
                    break;
                }
            }
        }
        i = this.measuredChildWidth;
        return i;
    }

    private float getChildHeight() {
        int i;
        if (this.measuredChildHeight == 0) {
            for (int i2 = 0; i2 < this.recyclerView.getChildCount(); i2++) {
                View childAt = this.recyclerView.getChildAt(i2);
                if (childAt.getMeasuredHeight() != 0) {
                    i = childAt.getMeasuredHeight();
                    this.measuredChildHeight = i;
                    break;
                }
            }
        }
        i = this.measuredChildHeight;
        return i;
    }
}
