package com.chad.library.adapter.base.provider;

import com.chad.library.adapter.base.BaseNodeAdapter;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.entity.node.BaseNode;
/* compiled from: BaseNodeProvider.kt */
/* loaded from: classes.dex */
public abstract class BaseNodeProvider<T extends BaseNode> extends BaseItemProvider<T> {
    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public BaseNodeAdapter<T> getAdapter() {
        BaseProviderMultiAdapter adapter = super.getAdapter();
        if (adapter instanceof BaseNodeAdapter) {
            return (BaseNodeAdapter) adapter;
        }
        return null;
    }
}
