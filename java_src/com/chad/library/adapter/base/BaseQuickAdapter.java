package com.chad.library.adapter.base;

import android.animation.Animator;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.chad.library.adapter.base.BaseQuickAdapterModuleImp;
import com.chad.library.adapter.base.animation.AlphaInAnimation;
import com.chad.library.adapter.base.animation.BaseAnimation;
import com.chad.library.adapter.base.diff.BrvahAsyncDiffer;
import com.chad.library.adapter.base.diff.BrvahAsyncDifferConfig;
import com.chad.library.adapter.base.listener.GridSpanSizeLookup;
import com.chad.library.adapter.base.listener.OnItemChildClickListener;
import com.chad.library.adapter.base.listener.OnItemChildLongClickListener;
import com.chad.library.adapter.base.listener.OnItemClickListener;
import com.chad.library.adapter.base.listener.OnItemLongClickListener;
import com.chad.library.adapter.base.module.BaseDraggableModule;
import com.chad.library.adapter.base.module.BaseLoadMoreModule;
import com.chad.library.adapter.base.module.BaseUpFetchModule;
import com.chad.library.adapter.base.module.LoadMoreModule;
import com.chad.library.adapter.base.util.AdapterUtilsKt;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.GenericSignatureFormatError;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.MalformedParameterizedTypeException;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import timber.log.Timber;
/* compiled from: BaseQuickAdapter.kt */
/* loaded from: classes.dex */
public abstract class BaseQuickAdapter<T, VH extends BaseViewHolder> extends RecyclerView.Adapter<VH> implements BaseQuickAdapterModuleImp {
    private BaseAnimation adapterAnimation;
    private boolean animationEnable;
    private final LinkedHashSet<Integer> childClickViewIds;
    private final LinkedHashSet<Integer> childLongClickViewIds;
    private List<T> data;
    private boolean footerViewAsFlow;
    private boolean footerWithEmptyEnable;
    private boolean headerViewAsFlow;
    private boolean headerWithEmptyEnable;
    private boolean isAnimationFirstOnly;
    private boolean isUseEmpty;
    private final int layoutResId;
    private BrvahAsyncDiffer<T> mDiffHelper;
    private BaseDraggableModule mDraggableModule;
    private FrameLayout mEmptyLayout;
    private LinearLayout mFooterLayout;
    private LinearLayout mHeaderLayout;
    private int mLastPosition;
    private BaseLoadMoreModule mLoadMoreModule;
    private OnItemChildClickListener mOnItemChildClickListener;
    private OnItemChildLongClickListener mOnItemChildLongClickListener;
    private OnItemClickListener mOnItemClickListener;
    private OnItemLongClickListener mOnItemLongClickListener;
    private RecyclerView mRecyclerView;
    private GridSpanSizeLookup mSpanSizeLookup;
    private BaseUpFetchModule mUpFetchModule;

    static {
        new Companion(null);
    }

    protected abstract void convert(VH vh, T t);

    protected void convert(VH holder, T t, List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        return i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean isFixedViewType(int i) {
        return i == 268436821 || i == 268435729 || i == 268436275 || i == 268436002;
    }

    protected void onItemViewHolderCreated(VH viewHolder, int i) {
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
    }

    public final void setWeakRecyclerView(WeakReference<RecyclerView> weakReference) {
        Intrinsics.checkNotNullParameter(weakReference, "<set-?>");
    }

    public BaseLoadMoreModule addLoadMoreModule(BaseQuickAdapter<?, ?> baseQuickAdapter) {
        return BaseQuickAdapterModuleImp.DefaultImpls.addLoadMoreModule(this, baseQuickAdapter);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public /* bridge */ /* synthetic */ void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        onBindViewHolder((BaseQuickAdapter<T, VH>) ((BaseViewHolder) viewHolder), i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public /* bridge */ /* synthetic */ void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i, List list) {
        onBindViewHolder((BaseQuickAdapter<T, VH>) ((BaseViewHolder) viewHolder), i, (List<Object>) list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public /* bridge */ /* synthetic */ void onViewAttachedToWindow(RecyclerView.ViewHolder viewHolder) {
        onViewAttachedToWindow((BaseQuickAdapter<T, VH>) ((BaseViewHolder) viewHolder));
    }

    public /* synthetic */ BaseQuickAdapter(int i, List list, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, (i2 & 2) != 0 ? null : list);
    }

    public BaseQuickAdapter(int i, List<T> list) {
        this.layoutResId = i;
        this.data = list == null ? new ArrayList<>() : list;
        this.isUseEmpty = true;
        this.isAnimationFirstOnly = true;
        this.mLastPosition = -1;
        checkModule();
        this.childClickViewIds = new LinkedHashSet<>();
        this.childLongClickViewIds = new LinkedHashSet<>();
    }

    /* compiled from: BaseQuickAdapter.kt */
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public final List<T> getData() {
        return this.data;
    }

    public final void setData$TMessagesProj_release(List<T> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.data = list;
    }

    public final boolean getHeaderViewAsFlow() {
        return this.headerViewAsFlow;
    }

    public final boolean getFooterViewAsFlow() {
        return this.footerViewAsFlow;
    }

    public final void setAnimationEnable(boolean z) {
        this.animationEnable = z;
    }

    public final BaseLoadMoreModule getLoadMoreModule() {
        BaseLoadMoreModule baseLoadMoreModule = this.mLoadMoreModule;
        if (baseLoadMoreModule == null) {
            throw new IllegalStateException("Please first implements LoadMoreModule".toString());
        }
        Intrinsics.checkNotNull(baseLoadMoreModule);
        return baseLoadMoreModule;
    }

    public final BaseLoadMoreModule getMLoadMoreModule$TMessagesProj_release() {
        return this.mLoadMoreModule;
    }

    public final RecyclerView getMRecyclerView$TMessagesProj_release() {
        return this.mRecyclerView;
    }

    private final void checkModule() {
        if (this instanceof LoadMoreModule) {
            this.mLoadMoreModule = addLoadMoreModule(this);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public VH onCreateViewHolder(ViewGroup parent, int i) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        FrameLayout frameLayout = null;
        switch (i) {
            case 268435729:
                LinearLayout linearLayout = this.mHeaderLayout;
                if (linearLayout == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mHeaderLayout");
                    linearLayout = null;
                }
                ViewParent parent2 = linearLayout.getParent();
                if (parent2 instanceof ViewGroup) {
                    ViewGroup viewGroup = (ViewGroup) parent2;
                    LinearLayout linearLayout2 = this.mHeaderLayout;
                    if (linearLayout2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("mHeaderLayout");
                        linearLayout2 = null;
                    }
                    viewGroup.removeView(linearLayout2);
                }
                LinearLayout linearLayout3 = this.mHeaderLayout;
                if (linearLayout3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mHeaderLayout");
                } else {
                    frameLayout = linearLayout3;
                }
                return createBaseViewHolder(frameLayout);
            case 268436002:
                BaseLoadMoreModule baseLoadMoreModule = this.mLoadMoreModule;
                Intrinsics.checkNotNull(baseLoadMoreModule);
                VH createBaseViewHolder = createBaseViewHolder(baseLoadMoreModule.getLoadMoreView().getRootView(parent));
                BaseLoadMoreModule baseLoadMoreModule2 = this.mLoadMoreModule;
                Intrinsics.checkNotNull(baseLoadMoreModule2);
                baseLoadMoreModule2.setupViewHolder$TMessagesProj_release(createBaseViewHolder);
                return createBaseViewHolder;
            case 268436275:
                LinearLayout linearLayout4 = this.mFooterLayout;
                if (linearLayout4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mFooterLayout");
                    linearLayout4 = null;
                }
                ViewParent parent3 = linearLayout4.getParent();
                if (parent3 instanceof ViewGroup) {
                    ViewGroup viewGroup2 = (ViewGroup) parent3;
                    LinearLayout linearLayout5 = this.mFooterLayout;
                    if (linearLayout5 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("mFooterLayout");
                        linearLayout5 = null;
                    }
                    viewGroup2.removeView(linearLayout5);
                }
                LinearLayout linearLayout6 = this.mFooterLayout;
                if (linearLayout6 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mFooterLayout");
                } else {
                    frameLayout = linearLayout6;
                }
                return createBaseViewHolder(frameLayout);
            case 268436821:
                FrameLayout frameLayout2 = this.mEmptyLayout;
                if (frameLayout2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mEmptyLayout");
                    frameLayout2 = null;
                }
                ViewParent parent4 = frameLayout2.getParent();
                if (parent4 instanceof ViewGroup) {
                    ViewGroup viewGroup3 = (ViewGroup) parent4;
                    FrameLayout frameLayout3 = this.mEmptyLayout;
                    if (frameLayout3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("mEmptyLayout");
                        frameLayout3 = null;
                    }
                    viewGroup3.removeView(frameLayout3);
                }
                FrameLayout frameLayout4 = this.mEmptyLayout;
                if (frameLayout4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("mEmptyLayout");
                } else {
                    frameLayout = frameLayout4;
                }
                return createBaseViewHolder(frameLayout);
            default:
                VH onCreateDefViewHolder = onCreateDefViewHolder(parent, i);
                bindViewClickListener(onCreateDefViewHolder, i);
                BaseDraggableModule baseDraggableModule = this.mDraggableModule;
                if (baseDraggableModule != null) {
                    baseDraggableModule.initView$TMessagesProj_release(onCreateDefViewHolder);
                }
                onItemViewHolderCreated(onCreateDefViewHolder, i);
                return onCreateDefViewHolder;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        int i = 1;
        if (hasEmptyView()) {
            if (this.headerWithEmptyEnable && hasHeaderLayout()) {
                i = 2;
            }
            return (this.footerWithEmptyEnable && hasFooterLayout()) ? i + 1 : i;
        }
        BaseLoadMoreModule baseLoadMoreModule = this.mLoadMoreModule;
        if (baseLoadMoreModule == null || !baseLoadMoreModule.hasLoadMoreView()) {
            i = 0;
        }
        return getHeaderLayoutCount() + getDefItemCount() + getFooterLayoutCount() + i;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [boolean] */
    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        if (hasEmptyView()) {
            boolean z = this.headerWithEmptyEnable && hasHeaderLayout();
            if (i != 0) {
                return i != 1 ? 268436275 : 268436275;
            } else if (z) {
                return 268435729;
            }
            return 268436821;
        }
        boolean hasHeaderLayout = hasHeaderLayout();
        if (hasHeaderLayout && i == 0) {
            return 268435729;
        }
        if (hasHeaderLayout) {
            i--;
        }
        int size = this.data.size();
        if (i < size) {
            return getDefItemViewType(i);
        }
        return i - size < hasFooterLayout() ? 268436275 : 268436002;
    }

    public void onBindViewHolder(VH holder, int i) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        try {
            BaseUpFetchModule baseUpFetchModule = this.mUpFetchModule;
            if (baseUpFetchModule != null) {
                baseUpFetchModule.autoUpFetch$TMessagesProj_release(i);
            }
            BaseLoadMoreModule baseLoadMoreModule = this.mLoadMoreModule;
            if (baseLoadMoreModule != null) {
                baseLoadMoreModule.autoLoadMore$TMessagesProj_release(i);
            }
            switch (holder.getItemViewType()) {
                case 268435729:
                case 268436275:
                case 268436821:
                    return;
                case 268436002:
                    BaseLoadMoreModule baseLoadMoreModule2 = this.mLoadMoreModule;
                    if (baseLoadMoreModule2 != null) {
                        baseLoadMoreModule2.getLoadMoreView().convert(holder, i, baseLoadMoreModule2.getLoadMoreStatus());
                        return;
                    }
                    return;
                default:
                    convert(holder, getItem(i - getHeaderLayoutCount()));
                    return;
            }
        } catch (Exception e) {
            Timber.m4e(e);
        }
    }

    public void onBindViewHolder(VH holder, int i, List<Object> payloads) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        try {
            if (payloads.isEmpty()) {
                onBindViewHolder((BaseQuickAdapter<T, VH>) holder, i);
                return;
            }
            BaseUpFetchModule baseUpFetchModule = this.mUpFetchModule;
            if (baseUpFetchModule != null) {
                baseUpFetchModule.autoUpFetch$TMessagesProj_release(i);
            }
            BaseLoadMoreModule baseLoadMoreModule = this.mLoadMoreModule;
            if (baseLoadMoreModule != null) {
                baseLoadMoreModule.autoLoadMore$TMessagesProj_release(i);
            }
            switch (holder.getItemViewType()) {
                case 268435729:
                case 268436275:
                case 268436821:
                    return;
                case 268436002:
                    BaseLoadMoreModule baseLoadMoreModule2 = this.mLoadMoreModule;
                    if (baseLoadMoreModule2 != null) {
                        baseLoadMoreModule2.getLoadMoreView().convert(holder, i, baseLoadMoreModule2.getLoadMoreStatus());
                        return;
                    }
                    return;
                default:
                    convert(holder, getItem(i - getHeaderLayoutCount()), payloads);
                    return;
            }
        } catch (Exception e) {
            Timber.m4e(e);
        }
    }

    public void onViewAttachedToWindow(VH holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        super.onViewAttachedToWindow((BaseQuickAdapter<T, VH>) holder);
        if (isFixedViewType(holder.getItemViewType())) {
            setFullSpan(holder);
        } else {
            addAnimation(holder);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        super.onAttachedToRecyclerView(recyclerView);
        setWeakRecyclerView(new WeakReference<>(recyclerView));
        this.mRecyclerView = recyclerView;
        BaseDraggableModule baseDraggableModule = this.mDraggableModule;
        if (baseDraggableModule != null) {
            baseDraggableModule.attachToRecyclerView(recyclerView);
        }
        final RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            GridLayoutManager gridLayoutManager = (GridLayoutManager) layoutManager;
            final GridLayoutManager.SpanSizeLookup spanSizeLookup = gridLayoutManager.getSpanSizeLookup();
            gridLayoutManager.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup(this) { // from class: com.chad.library.adapter.base.BaseQuickAdapter$onAttachedToRecyclerView$1
                final /* synthetic */ BaseQuickAdapter<T, VH> this$0;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.this$0 = this;
                }

                @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
                public int getSpanSize(int i) {
                    GridSpanSizeLookup gridSpanSizeLookup;
                    GridSpanSizeLookup gridSpanSizeLookup2;
                    int itemViewType = this.this$0.getItemViewType(i);
                    if (itemViewType == 268435729 && this.this$0.getHeaderViewAsFlow()) {
                        return 1;
                    }
                    if (itemViewType == 268436275 && this.this$0.getFooterViewAsFlow()) {
                        return 1;
                    }
                    gridSpanSizeLookup = ((BaseQuickAdapter) this.this$0).mSpanSizeLookup;
                    if (gridSpanSizeLookup == null) {
                        return this.this$0.isFixedViewType(itemViewType) ? ((GridLayoutManager) layoutManager).getSpanCount() : spanSizeLookup.getSpanSize(i);
                    } else if (!this.this$0.isFixedViewType(itemViewType)) {
                        gridSpanSizeLookup2 = ((BaseQuickAdapter) this.this$0).mSpanSizeLookup;
                        Intrinsics.checkNotNull(gridSpanSizeLookup2);
                        return gridSpanSizeLookup2.getSpanSize((GridLayoutManager) layoutManager, itemViewType, i - this.this$0.getHeaderLayoutCount());
                    } else {
                        return ((GridLayoutManager) layoutManager).getSpanCount();
                    }
                }
            });
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        super.onDetachedFromRecyclerView(recyclerView);
        this.mRecyclerView = null;
    }

    public T getItem(int i) {
        return this.data.get(i);
    }

    public final LinkedHashSet<Integer> getChildClickViewIds() {
        return this.childClickViewIds;
    }

    public final void addChildClickViewIds(int... viewIds) {
        Intrinsics.checkNotNullParameter(viewIds, "viewIds");
        for (int i : viewIds) {
            this.childClickViewIds.add(Integer.valueOf(i));
        }
    }

    public final LinkedHashSet<Integer> getChildLongClickViewIds() {
        return this.childLongClickViewIds;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void bindViewClickListener(final VH viewHolder, int i) {
        Intrinsics.checkNotNullParameter(viewHolder, "viewHolder");
        if (this.mOnItemClickListener != null) {
            viewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.chad.library.adapter.base.BaseQuickAdapter$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    BaseQuickAdapter.bindViewClickListener$lambda$7$lambda$6(BaseViewHolder.this, this, view);
                }
            });
        }
        if (this.mOnItemLongClickListener != null) {
            viewHolder.itemView.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.chad.library.adapter.base.BaseQuickAdapter$$ExternalSyntheticLambda2
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    boolean bindViewClickListener$lambda$9$lambda$8;
                    bindViewClickListener$lambda$9$lambda$8 = BaseQuickAdapter.bindViewClickListener$lambda$9$lambda$8(BaseViewHolder.this, this, view);
                    return bindViewClickListener$lambda$9$lambda$8;
                }
            });
        }
        if (this.mOnItemChildClickListener != null) {
            Iterator<Integer> it = getChildClickViewIds().iterator();
            while (it.hasNext()) {
                Integer id = it.next();
                View view = viewHolder.itemView;
                Intrinsics.checkNotNullExpressionValue(id, "id");
                View findViewById = view.findViewById(id.intValue());
                if (findViewById != null) {
                    Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById<View>(id)");
                    if (!findViewById.isClickable()) {
                        findViewById.setClickable(true);
                    }
                    findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.chad.library.adapter.base.BaseQuickAdapter$$ExternalSyntheticLambda1
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            BaseQuickAdapter.bindViewClickListener$lambda$12$lambda$11$lambda$10(BaseViewHolder.this, this, view2);
                        }
                    });
                }
            }
        }
        if (this.mOnItemChildLongClickListener != null) {
            Iterator<Integer> it2 = getChildLongClickViewIds().iterator();
            while (it2.hasNext()) {
                Integer id2 = it2.next();
                View view2 = viewHolder.itemView;
                Intrinsics.checkNotNullExpressionValue(id2, "id");
                View findViewById2 = view2.findViewById(id2.intValue());
                if (findViewById2 != null) {
                    Intrinsics.checkNotNullExpressionValue(findViewById2, "findViewById<View>(id)");
                    if (!findViewById2.isLongClickable()) {
                        findViewById2.setLongClickable(true);
                    }
                    findViewById2.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.chad.library.adapter.base.BaseQuickAdapter$$ExternalSyntheticLambda3
                        @Override // android.view.View.OnLongClickListener
                        public final boolean onLongClick(View view3) {
                            boolean bindViewClickListener$lambda$15$lambda$14$lambda$13;
                            bindViewClickListener$lambda$15$lambda$14$lambda$13 = BaseQuickAdapter.bindViewClickListener$lambda$15$lambda$14$lambda$13(BaseViewHolder.this, this, view3);
                            return bindViewClickListener$lambda$15$lambda$14$lambda$13;
                        }
                    });
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void bindViewClickListener$lambda$7$lambda$6(BaseViewHolder viewHolder, BaseQuickAdapter this$0, View v) {
        Intrinsics.checkNotNullParameter(viewHolder, "$viewHolder");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        int adapterPosition = viewHolder.getAdapterPosition();
        if (adapterPosition == -1) {
            return;
        }
        Intrinsics.checkNotNullExpressionValue(v, "v");
        this$0.setOnItemClick(v, adapterPosition - this$0.getHeaderLayoutCount());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean bindViewClickListener$lambda$9$lambda$8(BaseViewHolder viewHolder, BaseQuickAdapter this$0, View v) {
        Intrinsics.checkNotNullParameter(viewHolder, "$viewHolder");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        int adapterPosition = viewHolder.getAdapterPosition();
        if (adapterPosition == -1) {
            return false;
        }
        Intrinsics.checkNotNullExpressionValue(v, "v");
        return this$0.setOnItemLongClick(v, adapterPosition - this$0.getHeaderLayoutCount());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void bindViewClickListener$lambda$12$lambda$11$lambda$10(BaseViewHolder viewHolder, BaseQuickAdapter this$0, View v) {
        Intrinsics.checkNotNullParameter(viewHolder, "$viewHolder");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        int adapterPosition = viewHolder.getAdapterPosition();
        if (adapterPosition == -1) {
            return;
        }
        Intrinsics.checkNotNullExpressionValue(v, "v");
        this$0.setOnItemChildClick(v, adapterPosition - this$0.getHeaderLayoutCount());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean bindViewClickListener$lambda$15$lambda$14$lambda$13(BaseViewHolder viewHolder, BaseQuickAdapter this$0, View v) {
        Intrinsics.checkNotNullParameter(viewHolder, "$viewHolder");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        int adapterPosition = viewHolder.getAdapterPosition();
        if (adapterPosition == -1) {
            return false;
        }
        Intrinsics.checkNotNullExpressionValue(v, "v");
        return this$0.setOnItemChildLongClick(v, adapterPosition - this$0.getHeaderLayoutCount());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setOnItemClick(View v, int i) {
        Intrinsics.checkNotNullParameter(v, "v");
        OnItemClickListener onItemClickListener = this.mOnItemClickListener;
        if (onItemClickListener != null) {
            onItemClickListener.onItemClick(this, v, i);
        }
    }

    protected boolean setOnItemLongClick(View v, int i) {
        Intrinsics.checkNotNullParameter(v, "v");
        OnItemLongClickListener onItemLongClickListener = this.mOnItemLongClickListener;
        if (onItemLongClickListener != null) {
            return onItemLongClickListener.onItemLongClick(this, v, i);
        }
        return false;
    }

    protected void setOnItemChildClick(View v, int i) {
        Intrinsics.checkNotNullParameter(v, "v");
        OnItemChildClickListener onItemChildClickListener = this.mOnItemChildClickListener;
        if (onItemChildClickListener != null) {
            onItemChildClickListener.onItemChildClick(this, v, i);
        }
    }

    protected boolean setOnItemChildLongClick(View v, int i) {
        Intrinsics.checkNotNullParameter(v, "v");
        OnItemChildLongClickListener onItemChildLongClickListener = this.mOnItemChildLongClickListener;
        if (onItemChildLongClickListener != null) {
            return onItemChildLongClickListener.onItemChildLongClick(this, v, i);
        }
        return false;
    }

    protected int getDefItemCount() {
        return this.data.size();
    }

    protected int getDefItemViewType(int i) {
        return super.getItemViewType(i);
    }

    protected VH onCreateDefViewHolder(ViewGroup parent, int i) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        return createBaseViewHolder(parent, this.layoutResId);
    }

    protected VH createBaseViewHolder(ViewGroup parent, int i) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        return createBaseViewHolder(AdapterUtilsKt.getItemView(parent, i));
    }

    protected VH createBaseViewHolder(View view) {
        VH createBaseGenericKInstance;
        Intrinsics.checkNotNullParameter(view, "view");
        Class<?> cls = null;
        for (Class<?> cls2 = getClass(); cls == null && cls2 != null; cls2 = cls2.getSuperclass()) {
            cls = getInstancedGenericKClass(cls2);
        }
        if (cls == null) {
            createBaseGenericKInstance = (VH) new BaseViewHolder(view);
        } else {
            createBaseGenericKInstance = createBaseGenericKInstance(cls, view);
        }
        return createBaseGenericKInstance == null ? (VH) new BaseViewHolder(view) : createBaseGenericKInstance;
    }

    private final Class<?> getInstancedGenericKClass(Class<?> cls) {
        try {
            Type genericSuperclass = cls.getGenericSuperclass();
            if (genericSuperclass instanceof ParameterizedType) {
                Type[] types = ((ParameterizedType) genericSuperclass).getActualTypeArguments();
                Intrinsics.checkNotNullExpressionValue(types, "types");
                for (Type type : types) {
                    if (type instanceof Class) {
                        if (BaseViewHolder.class.isAssignableFrom((Class) type)) {
                            return (Class) type;
                        }
                    } else if (type instanceof ParameterizedType) {
                        Type rawType = ((ParameterizedType) type).getRawType();
                        if ((rawType instanceof Class) && BaseViewHolder.class.isAssignableFrom((Class) rawType)) {
                            return (Class) rawType;
                        }
                    } else {
                        continue;
                    }
                }
                return null;
            }
            return null;
        } catch (TypeNotPresentException e) {
            e.printStackTrace();
            return null;
        } catch (GenericSignatureFormatError e2) {
            e2.printStackTrace();
            return null;
        } catch (MalformedParameterizedTypeException e3) {
            e3.printStackTrace();
            return null;
        }
    }

    private final VH createBaseGenericKInstance(Class<?> cls, View view) {
        try {
            if (cls.isMemberClass() && !Modifier.isStatic(cls.getModifiers())) {
                Constructor<?> declaredConstructor = cls.getDeclaredConstructor(getClass(), View.class);
                Intrinsics.checkNotNullExpressionValue(declaredConstructor, "z.getDeclaredConstructor…aClass, View::class.java)");
                declaredConstructor.setAccessible(true);
                Object newInstance = declaredConstructor.newInstance(this, view);
                Intrinsics.checkNotNull(newInstance, "null cannot be cast to non-null type VH of com.chad.library.adapter.base.BaseQuickAdapter");
                return (VH) newInstance;
            }
            Constructor<?> declaredConstructor2 = cls.getDeclaredConstructor(View.class);
            Intrinsics.checkNotNullExpressionValue(declaredConstructor2, "z.getDeclaredConstructor(View::class.java)");
            declaredConstructor2.setAccessible(true);
            Object newInstance2 = declaredConstructor2.newInstance(view);
            Intrinsics.checkNotNull(newInstance2, "null cannot be cast to non-null type VH of com.chad.library.adapter.base.BaseQuickAdapter");
            return (VH) newInstance2;
        } catch (IllegalAccessException e) {
            e.printStackTrace();
            return null;
        } catch (InstantiationException e2) {
            e2.printStackTrace();
            return null;
        } catch (NoSuchMethodException e3) {
            e3.printStackTrace();
            return null;
        } catch (InvocationTargetException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    protected void setFullSpan(RecyclerView.ViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        ViewGroup.LayoutParams layoutParams = holder.itemView.getLayoutParams();
        if (layoutParams instanceof StaggeredGridLayoutManager.LayoutParams) {
            ((StaggeredGridLayoutManager.LayoutParams) layoutParams).setFullSpan(true);
        }
    }

    public final View getViewByPosition(int i, int i2) {
        BaseViewHolder baseViewHolder;
        RecyclerView recyclerView = this.mRecyclerView;
        if (recyclerView == null || (baseViewHolder = (BaseViewHolder) recyclerView.findViewHolderForLayoutPosition(i)) == null) {
            return null;
        }
        return baseViewHolder.getViewOrNull(i2);
    }

    public final boolean hasHeaderLayout() {
        LinearLayout linearLayout = this.mHeaderLayout;
        if (linearLayout != null) {
            if (linearLayout == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mHeaderLayout");
                linearLayout = null;
            }
            return linearLayout.getChildCount() > 0;
        }
        return false;
    }

    public final int getHeaderLayoutCount() {
        return hasHeaderLayout() ? 1 : 0;
    }

    public final boolean hasFooterLayout() {
        LinearLayout linearLayout = this.mFooterLayout;
        if (linearLayout != null) {
            if (linearLayout == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mFooterLayout");
                linearLayout = null;
            }
            return linearLayout.getChildCount() > 0;
        }
        return false;
    }

    public final int getFooterLayoutCount() {
        return hasFooterLayout() ? 1 : 0;
    }

    public final boolean hasEmptyView() {
        FrameLayout frameLayout = this.mEmptyLayout;
        if (frameLayout != null) {
            if (frameLayout == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mEmptyLayout");
                frameLayout = null;
            }
            if (frameLayout.getChildCount() != 0 && this.isUseEmpty) {
                return this.data.isEmpty();
            }
            return false;
        }
        return false;
    }

    private final void addAnimation(RecyclerView.ViewHolder viewHolder) {
        if (this.animationEnable) {
            if (!this.isAnimationFirstOnly || viewHolder.getLayoutPosition() > this.mLastPosition) {
                BaseAnimation baseAnimation = this.adapterAnimation;
                if (baseAnimation == null) {
                    baseAnimation = new AlphaInAnimation(BitmapDescriptorFactory.HUE_RED, 1, null);
                }
                View view = viewHolder.itemView;
                Intrinsics.checkNotNullExpressionValue(view, "holder.itemView");
                Animator[] animators = baseAnimation.animators(view);
                for (Animator animator : animators) {
                    startAnim(animator, viewHolder.getLayoutPosition());
                }
                this.mLastPosition = viewHolder.getLayoutPosition();
            }
        }
    }

    protected void startAnim(Animator anim, int i) {
        Intrinsics.checkNotNullParameter(anim, "anim");
        anim.start();
    }

    public void setNewInstance(List<T> list) {
        if (list == this.data) {
            return;
        }
        if (list == null) {
            list = new ArrayList<>();
        }
        this.data = list;
        BaseLoadMoreModule baseLoadMoreModule = this.mLoadMoreModule;
        if (baseLoadMoreModule != null) {
            baseLoadMoreModule.reset$TMessagesProj_release();
        }
        this.mLastPosition = -1;
        notifyDataSetChanged();
        BaseLoadMoreModule baseLoadMoreModule2 = this.mLoadMoreModule;
        if (baseLoadMoreModule2 != null) {
            baseLoadMoreModule2.checkDisableLoadMoreIfNotFullPage();
        }
    }

    public void setData(int i, T t) {
        if (i >= this.data.size()) {
            return;
        }
        this.data.set(i, t);
        notifyItemChanged(i + getHeaderLayoutCount());
    }

    public void addData(int i, T t) {
        this.data.add(i, t);
        notifyItemInserted(i + getHeaderLayoutCount());
        compatibilityDataSizeChanged(1);
    }

    public void addData(Collection<? extends T> newData) {
        Intrinsics.checkNotNullParameter(newData, "newData");
        this.data.addAll(newData);
        notifyItemRangeInserted((this.data.size() - newData.size()) + getHeaderLayoutCount(), newData.size());
        compatibilityDataSizeChanged(newData.size());
    }

    public void removeAt(int i) {
        if (i >= this.data.size()) {
            return;
        }
        this.data.remove(i);
        int headerLayoutCount = i + getHeaderLayoutCount();
        notifyItemRemoved(headerLayoutCount);
        compatibilityDataSizeChanged(0);
        notifyItemRangeChanged(headerLayoutCount, this.data.size() - headerLayoutCount);
    }

    protected final void compatibilityDataSizeChanged(int i) {
        if (this.data.size() == i) {
            notifyDataSetChanged();
        }
    }

    public final void setDiffCallback(DiffUtil.ItemCallback<T> diffCallback) {
        Intrinsics.checkNotNullParameter(diffCallback, "diffCallback");
        setDiffConfig(new BrvahAsyncDifferConfig.Builder(diffCallback).build());
    }

    public final void setDiffConfig(BrvahAsyncDifferConfig<T> config) {
        Intrinsics.checkNotNullParameter(config, "config");
        this.mDiffHelper = new BrvahAsyncDiffer<>(this, config);
    }

    public static /* synthetic */ void setDiffNewData$default(BaseQuickAdapter baseQuickAdapter, List list, Runnable runnable, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setDiffNewData");
        }
        if ((i & 2) != 0) {
            runnable = null;
        }
        baseQuickAdapter.setDiffNewData(list, runnable);
    }

    public void setDiffNewData(List<T> list, Runnable runnable) {
        if (hasEmptyView()) {
            setNewInstance(list);
            if (runnable != null) {
                runnable.run();
                return;
            }
            return;
        }
        BrvahAsyncDiffer<T> brvahAsyncDiffer = this.mDiffHelper;
        if (brvahAsyncDiffer != null) {
            brvahAsyncDiffer.submitList(list, runnable);
        }
    }

    public void setGridSpanSizeLookup(GridSpanSizeLookup gridSpanSizeLookup) {
        this.mSpanSizeLookup = gridSpanSizeLookup;
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.mOnItemClickListener = onItemClickListener;
    }

    public void setOnItemChildClickListener(OnItemChildClickListener onItemChildClickListener) {
        this.mOnItemChildClickListener = onItemChildClickListener;
    }

    public final OnItemClickListener getOnItemClickListener() {
        return this.mOnItemClickListener;
    }

    public final OnItemLongClickListener getOnItemLongClickListener() {
        return this.mOnItemLongClickListener;
    }

    public final OnItemChildClickListener getOnItemChildClickListener() {
        return this.mOnItemChildClickListener;
    }

    public final OnItemChildLongClickListener getOnItemChildLongClickListener() {
        return this.mOnItemChildLongClickListener;
    }
}
