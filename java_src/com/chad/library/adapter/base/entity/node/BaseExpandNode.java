package com.chad.library.adapter.base.entity.node;
/* compiled from: BaseExpandNode.kt */
/* loaded from: classes.dex */
public abstract class BaseExpandNode extends BaseNode {
    private boolean isExpanded = true;

    public final boolean isExpanded() {
        return this.isExpanded;
    }

    public final void setExpanded(boolean z) {
        this.isExpanded = z;
    }
}
