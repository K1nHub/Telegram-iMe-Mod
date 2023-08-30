package com.chad.library.adapter.base;

import com.chad.library.adapter.base.entity.node.BaseExpandNode;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.chad.library.adapter.base.entity.node.NodeFooterImp;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.provider.BaseNodeProvider;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BaseNodeAdapter.kt */
/* loaded from: classes.dex */
public abstract class BaseNodeAdapter<T extends BaseNode> extends BaseProviderMultiAdapter<T> {
    private final HashSet<Integer> fullSpanNodeTypeSet;

    public BaseNodeAdapter() {
        this(null, 1, null);
    }

    public /* synthetic */ BaseNodeAdapter(List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : list);
    }

    public BaseNodeAdapter(List<T> list) {
        super(null);
        this.fullSpanNodeTypeSet = new HashSet<>();
        if (list == null || list.isEmpty()) {
            return;
        }
        getData().addAll(flatData$default(this, list, null, 2, null));
    }

    public final void baseAddData(int i, T data) {
        Intrinsics.checkNotNullParameter(data, "data");
        super.addData(i, data);
    }

    public final void baseRemoveAt(int i) {
        super.removeAt(i);
    }

    public final void addFullSpanNodeProvider(BaseNodeProvider<T> provider) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        this.fullSpanNodeTypeSet.add(Integer.valueOf(provider.getItemViewType()));
        addItemProvider(provider);
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter
    public void addItemProvider(BaseItemProvider<T> provider) {
        Intrinsics.checkNotNullParameter(provider, "provider");
        if (provider instanceof BaseNodeProvider) {
            super.addItemProvider(provider);
            return;
        }
        throw new IllegalStateException("Please add BaseNodeProvider, no BaseItemProvider!");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public boolean isFixedViewType(int i) {
        return super.isFixedViewType(i) || this.fullSpanNodeTypeSet.contains(Integer.valueOf(i));
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void setNewInstance(List<T> list) {
        if (list == null) {
            list = new ArrayList<>();
        }
        super.setNewInstance(flatData$default(this, list, null, 2, null));
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    public void setDiffNewData(List<T> list, Runnable runnable) {
        if (hasEmptyView()) {
            setNewInstance(list);
            return;
        }
        if (list == null) {
            list = new ArrayList<>();
        }
        super.setDiffNewData(flatData$default(this, list, null, 2, null), runnable);
    }

    static /* synthetic */ List flatData$default(BaseNodeAdapter baseNodeAdapter, Collection collection, Boolean bool, int i, Object obj) {
        if (obj == null) {
            if ((i & 2) != 0) {
                bool = null;
            }
            return baseNodeAdapter.flatData(collection, bool);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: flatData");
    }

    private final List<T> flatData(Collection<? extends T> collection, Boolean bool) {
        BaseNode footerNode;
        ArrayList arrayList = new ArrayList();
        for (T t : collection) {
            arrayList.add(t);
            boolean z = false;
            if (t instanceof BaseExpandNode) {
                if (Intrinsics.areEqual(bool, Boolean.TRUE) || ((BaseExpandNode) t).isExpanded()) {
                    List<BaseNode> childNode = t.getChildNode();
                    if (!((childNode == null || childNode.isEmpty()) ? true : true)) {
                        Intrinsics.checkNotNull(childNode, "null cannot be cast to non-null type kotlin.collections.Collection<T of com.chad.library.adapter.base.BaseNodeAdapter>");
                        arrayList.addAll(flatData(childNode, bool));
                    }
                }
                if (bool != null) {
                    ((BaseExpandNode) t).setExpanded(bool.booleanValue());
                }
            } else {
                List<BaseNode> childNode2 = t.getChildNode();
                if (!((childNode2 == null || childNode2.isEmpty()) ? true : true)) {
                    Intrinsics.checkNotNull(childNode2, "null cannot be cast to non-null type kotlin.collections.Collection<T of com.chad.library.adapter.base.BaseNodeAdapter>");
                    arrayList.addAll(flatData(childNode2, bool));
                }
            }
            if ((t instanceof NodeFooterImp) && (footerNode = ((NodeFooterImp) t).getFooterNode()) != null) {
                arrayList.add(footerNode);
            }
        }
        return arrayList;
    }

    private final int collapse(int i, boolean z, boolean z2, boolean z3, Object obj) {
        BaseNode baseNode = (BaseNode) getData().get(i);
        if (baseNode instanceof BaseExpandNode) {
            BaseExpandNode baseExpandNode = (BaseExpandNode) baseNode;
            if (baseExpandNode.isExpanded()) {
                int headerLayoutCount = i + getHeaderLayoutCount();
                baseExpandNode.setExpanded(false);
                List<BaseNode> childNode = baseNode.getChildNode();
                if (childNode == null || childNode.isEmpty()) {
                    notifyItemChanged(headerLayoutCount, obj);
                    return 0;
                }
                List<BaseNode> childNode2 = baseNode.getChildNode();
                Intrinsics.checkNotNull(childNode2);
                List<T> flatData = flatData(childNode2, z ? Boolean.FALSE : null);
                int size = flatData.size();
                getData().removeAll(flatData);
                if (z3) {
                    if (z2) {
                        notifyItemChanged(headerLayoutCount, obj);
                        notifyItemRangeRemoved(headerLayoutCount + 1, size);
                    } else {
                        notifyDataSetChanged();
                    }
                }
                return size;
            }
        }
        return 0;
    }

    private final int expand(int i, boolean z, boolean z2, boolean z3, Object obj) {
        BaseNode baseNode = (BaseNode) getData().get(i);
        if (baseNode instanceof BaseExpandNode) {
            BaseExpandNode baseExpandNode = (BaseExpandNode) baseNode;
            if (!baseExpandNode.isExpanded()) {
                int headerLayoutCount = getHeaderLayoutCount() + i;
                baseExpandNode.setExpanded(true);
                List<BaseNode> childNode = baseNode.getChildNode();
                if (childNode == null || childNode.isEmpty()) {
                    notifyItemChanged(headerLayoutCount, obj);
                    return 0;
                }
                List<BaseNode> childNode2 = baseNode.getChildNode();
                Intrinsics.checkNotNull(childNode2);
                List<T> flatData = flatData(childNode2, z ? Boolean.TRUE : null);
                int size = flatData.size();
                getData().addAll(i + 1, flatData);
                if (z3) {
                    if (z2) {
                        notifyItemChanged(headerLayoutCount, obj);
                        notifyItemRangeInserted(headerLayoutCount + 1, size);
                    } else {
                        notifyDataSetChanged();
                    }
                }
                return size;
            }
        }
        return 0;
    }

    public static /* synthetic */ int expandOrCollapse$default(BaseNodeAdapter baseNodeAdapter, int i, boolean z, boolean z2, Object obj, int i2, Object obj2) {
        if (obj2 == null) {
            if ((i2 & 2) != 0) {
                z = true;
            }
            if ((i2 & 4) != 0) {
                z2 = true;
            }
            if ((i2 & 8) != 0) {
                obj = null;
            }
            return baseNodeAdapter.expandOrCollapse(i, z, z2, obj);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: expandOrCollapse");
    }

    public final int expandOrCollapse(int i, boolean z, boolean z2, Object obj) {
        BaseNode baseNode = (BaseNode) getData().get(i);
        if (baseNode instanceof BaseExpandNode) {
            if (((BaseExpandNode) baseNode).isExpanded()) {
                return collapse(i, false, z, z2, obj);
            }
            return expand(i, false, z, z2, obj);
        }
        return 0;
    }
}
