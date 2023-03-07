package com.chad.library.adapter.base;

import android.content.Context;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BaseProviderMultiAdapter.kt */
/* loaded from: classes.dex */
public abstract class BaseProviderMultiAdapter<T> extends BaseQuickAdapter<T, BaseViewHolder> {
    private final Lazy mItemProviders$delegate;

    public BaseProviderMultiAdapter() {
        this(null, 1, null);
    }

    protected abstract int getItemType(List<? extends T> list, int i);

    public /* synthetic */ BaseProviderMultiAdapter(List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : list);
    }

    public BaseProviderMultiAdapter(List<T> list) {
        super(0, list);
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, BaseProviderMultiAdapter$mItemProviders$2.INSTANCE);
        this.mItemProviders$delegate = lazy;
    }

    private final SparseArray<BaseItemProvider<T>> getMItemProviders() {
        return (SparseArray) this.mItemProviders$delegate.getValue();
    }

    public void addItemProvider(BaseItemProvider<T> provider) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        provider.setAdapter$TMessagesProj_release(this);
        getMItemProviders().put(provider.getItemViewType(), provider);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    protected BaseViewHolder onCreateDefViewHolder(ViewGroup parent, int i) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        BaseItemProvider<T> itemProvider = getItemProvider(i);
        if (itemProvider == null) {
            throw new IllegalStateException(("ViewType: " + i + " no such provider found，please use addItemProvider() first!").toString());
        }
        Context context = parent.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "parent.context");
        itemProvider.setContext(context);
        BaseViewHolder onCreateViewHolder = itemProvider.onCreateViewHolder(parent, i);
        itemProvider.onViewHolderCreated(onCreateViewHolder, i);
        return onCreateViewHolder;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    protected int getDefItemViewType(int i) {
        return getItemType(getData(), i);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    protected void convert(BaseViewHolder holder, T t) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        BaseItemProvider<T> itemProvider = getItemProvider(holder.getItemViewType());
        Intrinsics.checkNotNull(itemProvider);
        itemProvider.convert(holder, t);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    protected void convert(BaseViewHolder holder, T t, List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        BaseItemProvider<T> itemProvider = getItemProvider(holder.getItemViewType());
        Intrinsics.checkNotNull(itemProvider);
        itemProvider.convert(holder, t, payloads);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    protected void bindViewClickListener(BaseViewHolder viewHolder, int i) {
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        super.bindViewClickListener(viewHolder, i);
        bindClick(viewHolder);
        bindChildClick(viewHolder, i);
    }

    protected BaseItemProvider<T> getItemProvider(int i) {
        return getMItemProviders().get(i);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewAttachedToWindow(BaseViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        super.onViewAttachedToWindow((BaseProviderMultiAdapter<T>) holder);
        BaseItemProvider<T> itemProvider = getItemProvider(holder.getItemViewType());
        if (itemProvider == null) {
            return;
        }
        itemProvider.onViewAttachedToWindow(holder);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewDetachedFromWindow(BaseViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        super.onViewDetachedFromWindow((BaseProviderMultiAdapter<T>) holder);
        BaseItemProvider<T> itemProvider = getItemProvider(holder.getItemViewType());
        if (itemProvider == null) {
            return;
        }
        itemProvider.onViewDetachedFromWindow(holder);
    }

    protected void bindClick(final BaseViewHolder viewHolder) {
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        if (getOnItemClickListener() == null) {
            viewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.chad.library.adapter.base.BaseProviderMultiAdapter$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    BaseProviderMultiAdapter.m886bindClick$lambda2(BaseViewHolder.this, this, view);
                }
            });
        }
        if (getOnItemLongClickListener() == null) {
            viewHolder.itemView.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.chad.library.adapter.base.BaseProviderMultiAdapter$$ExternalSyntheticLambda2
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    boolean m887bindClick$lambda3;
                    m887bindClick$lambda3 = BaseProviderMultiAdapter.m887bindClick$lambda3(BaseViewHolder.this, this, view);
                    return m887bindClick$lambda3;
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: bindClick$lambda-2  reason: not valid java name */
    public static final void m886bindClick$lambda2(BaseViewHolder viewHolder, BaseProviderMultiAdapter this$0, View it) {
        Intrinsics.checkNotNullParameter(viewHolder, "$viewHolder");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        int adapterPosition = viewHolder.getAdapterPosition();
        if (adapterPosition == -1) {
            return;
        }
        int headerLayoutCount = adapterPosition - this$0.getHeaderLayoutCount();
        int itemViewType = viewHolder.getItemViewType();
        Intrinsics.checkNotNullExpressionValue(it, "it");
        this$0.getMItemProviders().get(itemViewType).onClick(viewHolder, it, this$0.getData().get(headerLayoutCount), headerLayoutCount);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: bindClick$lambda-3  reason: not valid java name */
    public static final boolean m887bindClick$lambda3(BaseViewHolder viewHolder, BaseProviderMultiAdapter this$0, View it) {
        Intrinsics.checkNotNullParameter(viewHolder, "$viewHolder");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        int adapterPosition = viewHolder.getAdapterPosition();
        if (adapterPosition == -1) {
            return false;
        }
        int headerLayoutCount = adapterPosition - this$0.getHeaderLayoutCount();
        int itemViewType = viewHolder.getItemViewType();
        Intrinsics.checkNotNullExpressionValue(it, "it");
        return this$0.getMItemProviders().get(itemViewType).onLongClick(viewHolder, it, this$0.getData().get(headerLayoutCount), headerLayoutCount);
    }

    protected void bindChildClick(final BaseViewHolder viewHolder, int i) {
        final BaseItemProvider<T> itemProvider;
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        if (getOnItemChildClickListener() == null) {
            final BaseItemProvider<T> itemProvider2 = getItemProvider(i);
            if (itemProvider2 == null) {
                return;
            }
            for (Number number : itemProvider2.getChildClickViewIds()) {
                View findViewById = viewHolder.itemView.findViewById(number.intValue());
                if (findViewById != null) {
                    if (!findViewById.isClickable()) {
                        findViewById.setClickable(true);
                    }
                    findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.chad.library.adapter.base.BaseProviderMultiAdapter$$ExternalSyntheticLambda1
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            BaseProviderMultiAdapter.m884bindChildClick$lambda6$lambda5$lambda4(BaseViewHolder.this, this, itemProvider2, view);
                        }
                    });
                }
            }
        }
        if (getOnItemChildLongClickListener() != null || (itemProvider = getItemProvider(i)) == null) {
            return;
        }
        for (Number number2 : itemProvider.getChildLongClickViewIds()) {
            View findViewById2 = viewHolder.itemView.findViewById(number2.intValue());
            if (findViewById2 != null) {
                if (!findViewById2.isLongClickable()) {
                    findViewById2.setLongClickable(true);
                }
                findViewById2.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.chad.library.adapter.base.BaseProviderMultiAdapter$$ExternalSyntheticLambda3
                    @Override // android.view.View.OnLongClickListener
                    public final boolean onLongClick(View view) {
                        boolean m885bindChildClick$lambda9$lambda8$lambda7;
                        m885bindChildClick$lambda9$lambda8$lambda7 = BaseProviderMultiAdapter.m885bindChildClick$lambda9$lambda8$lambda7(BaseViewHolder.this, this, itemProvider, view);
                        return m885bindChildClick$lambda9$lambda8$lambda7;
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: bindChildClick$lambda-6$lambda-5$lambda-4  reason: not valid java name */
    public static final void m884bindChildClick$lambda6$lambda5$lambda4(BaseViewHolder viewHolder, BaseProviderMultiAdapter this$0, BaseItemProvider provider, View v) {
        Intrinsics.checkNotNullParameter(viewHolder, "$viewHolder");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(provider, "$provider");
        int adapterPosition = viewHolder.getAdapterPosition();
        if (adapterPosition == -1) {
            return;
        }
        int headerLayoutCount = adapterPosition - this$0.getHeaderLayoutCount();
        Intrinsics.checkNotNullExpressionValue(v, "v");
        provider.onChildClick(viewHolder, v, this$0.getData().get(headerLayoutCount), headerLayoutCount);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: bindChildClick$lambda-9$lambda-8$lambda-7  reason: not valid java name */
    public static final boolean m885bindChildClick$lambda9$lambda8$lambda7(BaseViewHolder viewHolder, BaseProviderMultiAdapter this$0, BaseItemProvider provider, View v) {
        Intrinsics.checkNotNullParameter(viewHolder, "$viewHolder");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(provider, "$provider");
        int adapterPosition = viewHolder.getAdapterPosition();
        if (adapterPosition == -1) {
            return false;
        }
        int headerLayoutCount = adapterPosition - this$0.getHeaderLayoutCount();
        Intrinsics.checkNotNullExpressionValue(v, "v");
        return provider.onChildLongClick(viewHolder, v, this$0.getData().get(headerLayoutCount), headerLayoutCount);
    }
}
