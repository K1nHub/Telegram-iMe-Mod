package com.chad.library.adapter.base.provider;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.util.AdapterUtilsKt;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BaseItemProvider.kt */
/* loaded from: classes.dex */
public abstract class BaseItemProvider<T> {
    private final Lazy clickViewIds$delegate;
    private final Lazy longClickViewIds$delegate;
    private WeakReference<BaseProviderMultiAdapter<T>> weakAdapter;

    public abstract void convert(BaseViewHolder baseViewHolder, T t);

    public void convert(BaseViewHolder helper, T t, List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
    }

    public abstract int getItemViewType();

    public abstract int getLayoutId();

    public void onChildClick(BaseViewHolder helper, View view, T t, int i) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(view, "view");
    }

    public boolean onChildLongClick(BaseViewHolder helper, View view, T t, int i) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(view, "view");
        return false;
    }

    public void onClick(BaseViewHolder helper, View view, T t, int i) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(view, "view");
    }

    public boolean onLongClick(BaseViewHolder helper, View view, T t, int i) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(view, "view");
        return false;
    }

    public void onViewAttachedToWindow(BaseViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
    }

    public void onViewDetachedFromWindow(BaseViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
    }

    public void onViewHolderCreated(BaseViewHolder viewHolder, int i) {
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
    }

    public final void setContext(Context context) {
        Intrinsics.checkNotNullParameter(context, "<set-?>");
    }

    public BaseItemProvider() {
        Lazy lazy;
        Lazy lazy2;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        lazy = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, BaseItemProvider$clickViewIds$2.INSTANCE);
        this.clickViewIds$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, BaseItemProvider$longClickViewIds$2.INSTANCE);
        this.longClickViewIds$delegate = lazy2;
    }

    private final ArrayList<Integer> getClickViewIds() {
        return (ArrayList) this.clickViewIds$delegate.getValue();
    }

    private final ArrayList<Integer> getLongClickViewIds() {
        return (ArrayList) this.longClickViewIds$delegate.getValue();
    }

    public final void setAdapter$TMessagesProj_HA_public(BaseProviderMultiAdapter<T> adapter) {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        this.weakAdapter = new WeakReference<>(adapter);
    }

    public BaseProviderMultiAdapter<T> getAdapter() {
        WeakReference<BaseProviderMultiAdapter<T>> weakReference = this.weakAdapter;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public BaseViewHolder onCreateViewHolder(ViewGroup parent, int i) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new BaseViewHolder(AdapterUtilsKt.getItemView(parent, getLayoutId()));
    }

    public final ArrayList<Integer> getChildClickViewIds() {
        return getClickViewIds();
    }

    public final ArrayList<Integer> getChildLongClickViewIds() {
        return getLongClickViewIds();
    }
}
