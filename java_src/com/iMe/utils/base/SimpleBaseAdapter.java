package com.iMe.utils.base;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.iMe.utils.extentions.common.ViewExtKt;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SimpleBaseAdapter.kt */
/* loaded from: classes6.dex */
public final class SimpleBaseAdapter<Item> extends RecyclerView.Adapter<BaseViewHolder> {
    private final Function3<View, Item, Integer, Unit> bindItem;
    private List<? extends Item> items;
    private final int layout;

    /* JADX WARN: Multi-variable type inference failed */
    public SimpleBaseAdapter(List<? extends Item> items, int i, Function3<? super View, ? super Item, ? super Integer, Unit> bindItem) {
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(bindItem, "bindItem");
        this.items = items;
        this.layout = i;
        this.bindItem = bindItem;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public BaseViewHolder onCreateViewHolder(ViewGroup parent, int i) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        return new BaseViewHolder(ViewExtKt.inflate$default(parent, this.layout, false, 2, null));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.items.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(BaseViewHolder holder, int i) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Item item = this.items.get(i);
        Function3<View, Item, Integer, Unit> function3 = this.bindItem;
        View view = holder.itemView;
        Intrinsics.checkNotNullExpressionValue(view, "holder.itemView");
        function3.invoke(view, item, Integer.valueOf(i));
    }

    /* compiled from: SimpleBaseAdapter.kt */
    /* loaded from: classes6.dex */
    public static final class BaseViewHolder extends RecyclerView.ViewHolder {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public BaseViewHolder(View itemView) {
            super(itemView);
            Intrinsics.checkNotNullParameter(itemView, "itemView");
        }
    }
}
