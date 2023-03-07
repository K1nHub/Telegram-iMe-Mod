package com.chad.library.adapter.base.diff;

import android.os.Handler;
import android.os.Looper;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.ListUpdateCallback;
import com.chad.library.adapter.base.BaseQuickAdapter;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BrvahAsyncDiffer.kt */
/* loaded from: classes.dex */
public final class BrvahAsyncDiffer<T> {
    private final BaseQuickAdapter<T, ?> adapter;
    private final BrvahAsyncDifferConfig<T> config;
    private final List<ListChangeListener<T>> mListeners;
    private Executor mMainThreadExecutor;
    private int mMaxScheduledGeneration;
    private final ListUpdateCallback mUpdateCallback;
    private final Executor sMainThreadExecutor;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.util.concurrent.Executor] */
    public BrvahAsyncDiffer(BaseQuickAdapter<T, ?> adapter, BrvahAsyncDifferConfig<T> config) {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Intrinsics.checkNotNullParameter(config, "config");
        this.adapter = adapter;
        this.config = config;
        this.mUpdateCallback = new BrvahListUpdateCallback(adapter);
        MainThreadExecutor mainThreadExecutor = new MainThreadExecutor();
        this.sMainThreadExecutor = mainThreadExecutor;
        ?? mainThreadExecutor2 = config.getMainThreadExecutor();
        this.mMainThreadExecutor = mainThreadExecutor2 != 0 ? mainThreadExecutor2 : mainThreadExecutor;
        this.mListeners = new CopyOnWriteArrayList();
    }

    /* compiled from: BrvahAsyncDiffer.kt */
    /* loaded from: classes.dex */
    private static final class MainThreadExecutor implements Executor {
        private final Handler mHandler = new Handler(Looper.getMainLooper());

        @Override // java.util.concurrent.Executor
        public void execute(Runnable command) {
            Intrinsics.checkNotNullParameter(command, "command");
            this.mHandler.post(command);
        }
    }

    public final void submitList(final List<T> list, final Runnable runnable) {
        final int i = this.mMaxScheduledGeneration + 1;
        this.mMaxScheduledGeneration = i;
        if (list == this.adapter.getData()) {
            if (runnable == null) {
                return;
            }
            runnable.run();
            return;
        }
        final List<? extends T> data = this.adapter.getData();
        if (list == null) {
            int size = this.adapter.getData().size();
            this.adapter.setData$TMessagesProj_release(new ArrayList());
            this.mUpdateCallback.onRemoved(0, size);
            onCurrentListChanged(data, runnable);
        } else if (this.adapter.getData().isEmpty()) {
            this.adapter.setData$TMessagesProj_release(list);
            this.mUpdateCallback.onInserted(0, list.size());
            onCurrentListChanged(data, runnable);
        } else {
            this.config.getBackgroundThreadExecutor().execute(new Runnable() { // from class: com.chad.library.adapter.base.diff.BrvahAsyncDiffer$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    BrvahAsyncDiffer.m894submitList$lambda1(BrvahAsyncDiffer.this, data, list, i, runnable);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: submitList$lambda-1  reason: not valid java name */
    public static final void m894submitList$lambda1(final BrvahAsyncDiffer this$0, final List oldList, final List list, final int i, final Runnable runnable) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(oldList, "$oldList");
        final DiffUtil.DiffResult calculateDiff = DiffUtil.calculateDiff(new DiffUtil.Callback() { // from class: com.chad.library.adapter.base.diff.BrvahAsyncDiffer$submitList$1$result$1
            @Override // androidx.recyclerview.widget.DiffUtil.Callback
            public int getOldListSize() {
                return oldList.size();
            }

            @Override // androidx.recyclerview.widget.DiffUtil.Callback
            public int getNewListSize() {
                return list.size();
            }

            @Override // androidx.recyclerview.widget.DiffUtil.Callback
            public boolean areItemsTheSame(int i2, int i3) {
                BrvahAsyncDifferConfig brvahAsyncDifferConfig;
                Object obj = oldList.get(i2);
                Object obj2 = list.get(i3);
                if (obj == null || obj2 == null) {
                    return obj == null && obj2 == null;
                }
                brvahAsyncDifferConfig = ((BrvahAsyncDiffer) this$0).config;
                return brvahAsyncDifferConfig.getDiffCallback().areItemsTheSame(obj, obj2);
            }

            @Override // androidx.recyclerview.widget.DiffUtil.Callback
            public boolean areContentsTheSame(int i2, int i3) {
                BrvahAsyncDifferConfig brvahAsyncDifferConfig;
                Object obj = oldList.get(i2);
                Object obj2 = list.get(i3);
                if (obj != null && obj2 != null) {
                    brvahAsyncDifferConfig = ((BrvahAsyncDiffer) this$0).config;
                    return brvahAsyncDifferConfig.getDiffCallback().areContentsTheSame(obj, obj2);
                } else if (obj == null && obj2 == null) {
                    return true;
                } else {
                    throw new AssertionError();
                }
            }

            @Override // androidx.recyclerview.widget.DiffUtil.Callback
            public Object getChangePayload(int i2, int i3) {
                BrvahAsyncDifferConfig brvahAsyncDifferConfig;
                Object obj = oldList.get(i2);
                Object obj2 = list.get(i3);
                if (obj != null && obj2 != null) {
                    brvahAsyncDifferConfig = ((BrvahAsyncDiffer) this$0).config;
                    return brvahAsyncDifferConfig.getDiffCallback().getChangePayload(obj, obj2);
                }
                throw new AssertionError();
            }
        });
        Intrinsics.checkNotNullExpressionValue(calculateDiff, "@JvmOverloads\n    fun su…        }\n        }\n    }");
        this$0.mMainThreadExecutor.execute(new Runnable() { // from class: com.chad.library.adapter.base.diff.BrvahAsyncDiffer$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                BrvahAsyncDiffer.m895submitList$lambda1$lambda0(BrvahAsyncDiffer.this, i, list, calculateDiff, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: submitList$lambda-1$lambda-0  reason: not valid java name */
    public static final void m895submitList$lambda1$lambda0(BrvahAsyncDiffer this$0, int i, List list, DiffUtil.DiffResult result, Runnable runnable) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(result, "$result");
        if (this$0.mMaxScheduledGeneration == i) {
            this$0.latchList(list, result, runnable);
        }
    }

    private final void latchList(List<T> list, DiffUtil.DiffResult diffResult, Runnable runnable) {
        List<? extends T> data = this.adapter.getData();
        this.adapter.setData$TMessagesProj_release(list);
        diffResult.dispatchUpdatesTo(this.mUpdateCallback);
        onCurrentListChanged(data, runnable);
    }

    private final void onCurrentListChanged(List<? extends T> list, Runnable runnable) {
        for (ListChangeListener<T> listChangeListener : this.mListeners) {
            listChangeListener.onCurrentListChanged(list, this.adapter.getData());
        }
        if (runnable == null) {
            return;
        }
        runnable.run();
    }
}
