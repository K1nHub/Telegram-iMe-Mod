package com.chad.library.adapter.base.diff;

import androidx.recyclerview.widget.DiffUtil;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BrvahAsyncDifferConfig.kt */
/* loaded from: classes.dex */
public final class BrvahAsyncDifferConfig<T> {
    private final Executor backgroundThreadExecutor;
    private final DiffUtil.ItemCallback<T> diffCallback;
    private final Executor mainThreadExecutor;

    public BrvahAsyncDifferConfig(Executor executor, Executor backgroundThreadExecutor, DiffUtil.ItemCallback<T> diffCallback) {
        Intrinsics.checkNotNullParameter(backgroundThreadExecutor, "backgroundThreadExecutor");
        Intrinsics.checkNotNullParameter(diffCallback, "diffCallback");
        this.mainThreadExecutor = executor;
        this.backgroundThreadExecutor = backgroundThreadExecutor;
        this.diffCallback = diffCallback;
    }

    public final Executor getMainThreadExecutor() {
        return this.mainThreadExecutor;
    }

    public final Executor getBackgroundThreadExecutor() {
        return this.backgroundThreadExecutor;
    }

    public final DiffUtil.ItemCallback<T> getDiffCallback() {
        return this.diffCallback;
    }

    /* compiled from: BrvahAsyncDifferConfig.kt */
    /* loaded from: classes.dex */
    public static final class Builder<T> {
        private static Executor sDiffExecutor;
        private Executor mBackgroundThreadExecutor;
        private final DiffUtil.ItemCallback<T> mDiffCallback;
        private Executor mMainThreadExecutor;
        public static final Companion Companion = new Companion(null);
        private static final Object sExecutorLock = new Object();

        public Builder(DiffUtil.ItemCallback<T> mDiffCallback) {
            Intrinsics.checkNotNullParameter(mDiffCallback, "mDiffCallback");
            this.mDiffCallback = mDiffCallback;
        }

        public final BrvahAsyncDifferConfig<T> build() {
            if (this.mBackgroundThreadExecutor == null) {
                synchronized (sExecutorLock) {
                    if (sDiffExecutor == null) {
                        sDiffExecutor = Executors.newFixedThreadPool(2);
                    }
                    Unit unit = Unit.INSTANCE;
                }
                this.mBackgroundThreadExecutor = sDiffExecutor;
            }
            Executor executor = this.mMainThreadExecutor;
            Executor executor2 = this.mBackgroundThreadExecutor;
            Intrinsics.checkNotNull(executor2);
            return new BrvahAsyncDifferConfig<>(executor, executor2, this.mDiffCallback);
        }

        /* compiled from: BrvahAsyncDifferConfig.kt */
        /* loaded from: classes.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }
        }
    }
}
