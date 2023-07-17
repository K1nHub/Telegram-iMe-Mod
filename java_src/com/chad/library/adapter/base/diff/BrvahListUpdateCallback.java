package com.chad.library.adapter.base.diff;

import androidx.recyclerview.widget.ListUpdateCallback;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.module.BaseLoadMoreModule;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BrvahListUpdateCallback.kt */
/* loaded from: classes.dex */
public final class BrvahListUpdateCallback implements ListUpdateCallback {
    private final BaseQuickAdapter<?, ?> mAdapter;

    public BrvahListUpdateCallback(BaseQuickAdapter<?, ?> mAdapter) {
        Intrinsics.checkNotNullParameter(mAdapter, "mAdapter");
        this.mAdapter = mAdapter;
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onInserted(int i, int i2) {
        BaseQuickAdapter<?, ?> baseQuickAdapter = this.mAdapter;
        baseQuickAdapter.notifyItemRangeInserted(i + baseQuickAdapter.getHeaderLayoutCount(), i2);
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onRemoved(int i, int i2) {
        BaseLoadMoreModule mLoadMoreModule$TMessagesProj_HA_public = this.mAdapter.getMLoadMoreModule$TMessagesProj_HA_public();
        boolean z = false;
        if (mLoadMoreModule$TMessagesProj_HA_public != null && mLoadMoreModule$TMessagesProj_HA_public.hasLoadMoreView()) {
            z = true;
        }
        if (z && this.mAdapter.getItemCount() == 0) {
            BaseQuickAdapter<?, ?> baseQuickAdapter = this.mAdapter;
            baseQuickAdapter.notifyItemRangeRemoved(i + baseQuickAdapter.getHeaderLayoutCount(), i2 + 1);
            return;
        }
        BaseQuickAdapter<?, ?> baseQuickAdapter2 = this.mAdapter;
        baseQuickAdapter2.notifyItemRangeRemoved(i + baseQuickAdapter2.getHeaderLayoutCount(), i2);
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onMoved(int i, int i2) {
        BaseQuickAdapter<?, ?> baseQuickAdapter = this.mAdapter;
        baseQuickAdapter.notifyItemMoved(i + baseQuickAdapter.getHeaderLayoutCount(), i2 + this.mAdapter.getHeaderLayoutCount());
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    public void onChanged(int i, int i2, Object obj) {
        BaseQuickAdapter<?, ?> baseQuickAdapter = this.mAdapter;
        baseQuickAdapter.notifyItemRangeChanged(i + baseQuickAdapter.getHeaderLayoutCount(), i2, obj);
    }
}
