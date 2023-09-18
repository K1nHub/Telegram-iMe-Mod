package com.iMe.utils.common;

import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ViewBindingAdapterHolder.kt */
/* loaded from: classes6.dex */
public final class ViewBindingAdapterHolder<T extends ViewBinding> extends RecyclerView.ViewHolder {
    private final T binding;

    public final T getBinding() {
        return this.binding;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ViewBindingAdapterHolder(T binding) {
        super(binding.getRoot());
        Intrinsics.checkNotNullParameter(binding, "binding");
        this.binding = binding;
    }
}
