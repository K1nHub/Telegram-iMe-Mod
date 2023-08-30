package com.chad.library.adapter.base.module;

import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.listener.OnLoadMoreListener;
import com.chad.library.adapter.base.loadmore.BaseLoadMoreView;
import com.chad.library.adapter.base.loadmore.LoadMoreStatus;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: LoadMoreModule.kt */
/* loaded from: classes.dex */
public class BaseLoadMoreModule {
    private final BaseQuickAdapter<?, ?> baseQuickAdapter;
    private boolean enableLoadMoreEndClick;
    private boolean isAutoLoadMore;
    private boolean isEnableLoadMore;
    private boolean isEnableLoadMoreIfNotFullPage;
    private boolean isLoadEndMoreGone;
    private LoadMoreStatus loadMoreStatus;
    private BaseLoadMoreView loadMoreView;
    private OnLoadMoreListener mLoadMoreListener;
    private boolean mNextLoadEnable;
    private int preLoadNumber;

    public BaseLoadMoreModule(BaseQuickAdapter<?, ?> baseQuickAdapter) {
        Intrinsics.checkNotNullParameter(baseQuickAdapter, "baseQuickAdapter");
        this.baseQuickAdapter = baseQuickAdapter;
        this.mNextLoadEnable = true;
        this.loadMoreStatus = LoadMoreStatus.Complete;
        this.loadMoreView = LoadMoreModuleConfig.getDefLoadMoreView();
        this.isAutoLoadMore = true;
        this.isEnableLoadMoreIfNotFullPage = true;
        this.preLoadNumber = 1;
    }

    public final LoadMoreStatus getLoadMoreStatus() {
        return this.loadMoreStatus;
    }

    public final BaseLoadMoreView getLoadMoreView() {
        return this.loadMoreView;
    }

    public final void setLoadMoreView(BaseLoadMoreView baseLoadMoreView) {
        Intrinsics.checkNotNullParameter(baseLoadMoreView, "<set-?>");
        this.loadMoreView = baseLoadMoreView;
    }

    public final void setPreLoadNumber(int i) {
        if (i > 1) {
            this.preLoadNumber = i;
        }
    }

    public final int getLoadMoreViewPosition() {
        if (this.baseQuickAdapter.hasEmptyView()) {
            return -1;
        }
        BaseQuickAdapter<?, ?> baseQuickAdapter = this.baseQuickAdapter;
        return baseQuickAdapter.getHeaderLayoutCount() + baseQuickAdapter.getData().size() + baseQuickAdapter.getFooterLayoutCount();
    }

    public final void setEnableLoadMore(boolean z) {
        boolean hasLoadMoreView = hasLoadMoreView();
        this.isEnableLoadMore = z;
        boolean hasLoadMoreView2 = hasLoadMoreView();
        if (hasLoadMoreView) {
            if (hasLoadMoreView2) {
                return;
            }
            this.baseQuickAdapter.notifyItemRemoved(getLoadMoreViewPosition());
        } else if (hasLoadMoreView2) {
            this.loadMoreStatus = LoadMoreStatus.Complete;
            this.baseQuickAdapter.notifyItemInserted(getLoadMoreViewPosition());
        }
    }

    public final void setupViewHolder$TMessagesProj_HA_public(BaseViewHolder viewHolder) {
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        viewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.chad.library.adapter.base.module.BaseLoadMoreModule$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BaseLoadMoreModule.setupViewHolder$lambda$1(BaseLoadMoreModule.this, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupViewHolder$lambda$1(BaseLoadMoreModule this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        LoadMoreStatus loadMoreStatus = this$0.loadMoreStatus;
        if (loadMoreStatus == LoadMoreStatus.Fail) {
            this$0.loadMoreToLoading();
        } else if (loadMoreStatus == LoadMoreStatus.Complete) {
            this$0.loadMoreToLoading();
        } else if (this$0.enableLoadMoreEndClick && loadMoreStatus == LoadMoreStatus.End) {
            this$0.loadMoreToLoading();
        }
    }

    public final void loadMoreToLoading() {
        LoadMoreStatus loadMoreStatus = this.loadMoreStatus;
        LoadMoreStatus loadMoreStatus2 = LoadMoreStatus.Loading;
        if (loadMoreStatus == loadMoreStatus2) {
            return;
        }
        this.loadMoreStatus = loadMoreStatus2;
        this.baseQuickAdapter.notifyItemChanged(getLoadMoreViewPosition());
        invokeLoadMoreListener();
    }

    public final boolean hasLoadMoreView() {
        if (this.mLoadMoreListener == null || !this.isEnableLoadMore) {
            return false;
        }
        if (this.loadMoreStatus == LoadMoreStatus.End && this.isLoadEndMoreGone) {
            return false;
        }
        return !this.baseQuickAdapter.getData().isEmpty();
    }

    public final void autoLoadMore$TMessagesProj_HA_public(int i) {
        LoadMoreStatus loadMoreStatus;
        if (this.isAutoLoadMore && hasLoadMoreView() && i >= this.baseQuickAdapter.getItemCount() - this.preLoadNumber && (loadMoreStatus = this.loadMoreStatus) == LoadMoreStatus.Complete && loadMoreStatus != LoadMoreStatus.Loading && this.mNextLoadEnable) {
            invokeLoadMoreListener();
        }
    }

    private final void invokeLoadMoreListener() {
        this.loadMoreStatus = LoadMoreStatus.Loading;
        RecyclerView mRecyclerView$TMessagesProj_HA_public = this.baseQuickAdapter.getMRecyclerView$TMessagesProj_HA_public();
        if (mRecyclerView$TMessagesProj_HA_public != null) {
            mRecyclerView$TMessagesProj_HA_public.post(new Runnable() { // from class: com.chad.library.adapter.base.module.BaseLoadMoreModule$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    BaseLoadMoreModule.invokeLoadMoreListener$lambda$3$lambda$2(BaseLoadMoreModule.this);
                }
            });
            return;
        }
        OnLoadMoreListener onLoadMoreListener = this.mLoadMoreListener;
        if (onLoadMoreListener != null) {
            onLoadMoreListener.onLoadMore();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokeLoadMoreListener$lambda$3$lambda$2(BaseLoadMoreModule this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        OnLoadMoreListener onLoadMoreListener = this$0.mLoadMoreListener;
        if (onLoadMoreListener != null) {
            onLoadMoreListener.onLoadMore();
        }
    }

    public final void checkDisableLoadMoreIfNotFullPage() {
        final RecyclerView.LayoutManager layoutManager;
        if (this.isEnableLoadMoreIfNotFullPage) {
            return;
        }
        this.mNextLoadEnable = false;
        RecyclerView mRecyclerView$TMessagesProj_HA_public = this.baseQuickAdapter.getMRecyclerView$TMessagesProj_HA_public();
        if (mRecyclerView$TMessagesProj_HA_public == null || (layoutManager = mRecyclerView$TMessagesProj_HA_public.getLayoutManager()) == null) {
            return;
        }
        if (layoutManager instanceof LinearLayoutManager) {
            mRecyclerView$TMessagesProj_HA_public.postDelayed(new Runnable() { // from class: com.chad.library.adapter.base.module.BaseLoadMoreModule$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    BaseLoadMoreModule.checkDisableLoadMoreIfNotFullPage$lambda$4(BaseLoadMoreModule.this, layoutManager);
                }
            }, 50L);
        } else if (layoutManager instanceof StaggeredGridLayoutManager) {
            mRecyclerView$TMessagesProj_HA_public.postDelayed(new Runnable() { // from class: com.chad.library.adapter.base.module.BaseLoadMoreModule$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    BaseLoadMoreModule.checkDisableLoadMoreIfNotFullPage$lambda$5(RecyclerView.LayoutManager.this, this);
                }
            }, 50L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void checkDisableLoadMoreIfNotFullPage$lambda$4(BaseLoadMoreModule this$0, RecyclerView.LayoutManager manager) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(manager, "$manager");
        if (this$0.isFullScreen((LinearLayoutManager) manager)) {
            this$0.mNextLoadEnable = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void checkDisableLoadMoreIfNotFullPage$lambda$5(RecyclerView.LayoutManager manager, BaseLoadMoreModule this$0) {
        Intrinsics.checkNotNullParameter(manager, "$manager");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) manager;
        int[] iArr = new int[staggeredGridLayoutManager.getSpanCount()];
        staggeredGridLayoutManager.findLastCompletelyVisibleItemPositions(iArr);
        if (this$0.getTheBiggestNumber(iArr) + 1 != this$0.baseQuickAdapter.getItemCount()) {
            this$0.mNextLoadEnable = true;
        }
    }

    private final boolean isFullScreen(LinearLayoutManager linearLayoutManager) {
        return (linearLayoutManager.findLastCompletelyVisibleItemPosition() + 1 == this.baseQuickAdapter.getItemCount() && linearLayoutManager.findFirstCompletelyVisibleItemPosition() == 0) ? false : true;
    }

    private final int getTheBiggestNumber(int[] iArr) {
        int i = -1;
        if (iArr != null) {
            if (!(iArr.length == 0)) {
                for (int i2 : iArr) {
                    if (i2 > i) {
                        i = i2;
                    }
                }
            }
        }
        return i;
    }

    public static /* synthetic */ void loadMoreEnd$default(BaseLoadMoreModule baseLoadMoreModule, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: loadMoreEnd");
        }
        if ((i & 1) != 0) {
            z = false;
        }
        baseLoadMoreModule.loadMoreEnd(z);
    }

    public final void loadMoreEnd(boolean z) {
        if (hasLoadMoreView()) {
            this.isLoadEndMoreGone = z;
            this.loadMoreStatus = LoadMoreStatus.End;
            if (z) {
                this.baseQuickAdapter.notifyItemRemoved(getLoadMoreViewPosition());
            } else {
                this.baseQuickAdapter.notifyItemChanged(getLoadMoreViewPosition());
            }
        }
    }

    public final void loadMoreComplete() {
        if (hasLoadMoreView()) {
            this.loadMoreStatus = LoadMoreStatus.Complete;
            this.baseQuickAdapter.notifyItemChanged(getLoadMoreViewPosition());
            checkDisableLoadMoreIfNotFullPage();
        }
    }

    public final void loadMoreFail() {
        if (hasLoadMoreView()) {
            this.loadMoreStatus = LoadMoreStatus.Fail;
            this.baseQuickAdapter.notifyItemChanged(getLoadMoreViewPosition());
        }
    }

    public void setOnLoadMoreListener(OnLoadMoreListener onLoadMoreListener) {
        this.mLoadMoreListener = onLoadMoreListener;
        setEnableLoadMore(true);
    }

    public final void reset$TMessagesProj_HA_public() {
        if (this.mLoadMoreListener != null) {
            setEnableLoadMore(true);
            this.loadMoreStatus = LoadMoreStatus.Complete;
        }
    }
}
