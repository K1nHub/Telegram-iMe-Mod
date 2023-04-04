package com.iMe.model.common;

import com.chad.library.adapter.base.entity.node.BaseNode;
import java.util.List;
/* compiled from: NoChildNode.kt */
/* loaded from: classes3.dex */
public class NoChildNode extends BaseNode {
    private final List<BaseNode> childNode;
    private final int itemType;

    @Override // com.chad.library.adapter.base.entity.node.BaseNode
    public List<BaseNode> getChildNode() {
        return this.childNode;
    }

    public int getItemType() {
        return this.itemType;
    }
}
