package com.smedialink.model.common;

import com.smedialink.common.IdFabric$ViewTypes;
import com.smedialink.model.state.GlobalState;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: GlobalStateItem.kt */
/* loaded from: classes3.dex */
public final class GlobalStateItem extends NoChildNode {
    private final int itemType;
    private final GlobalState state;

    public static /* synthetic */ GlobalStateItem copy$default(GlobalStateItem globalStateItem, GlobalState globalState, int i, Object obj) {
        if ((i & 1) != 0) {
            globalState = globalStateItem.state;
        }
        return globalStateItem.copy(globalState);
    }

    public final GlobalState component1() {
        return this.state;
    }

    public final GlobalStateItem copy(GlobalState state) {
        Intrinsics.checkNotNullParameter(state, "state");
        return new GlobalStateItem(state);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof GlobalStateItem) && Intrinsics.areEqual(this.state, ((GlobalStateItem) obj).state);
    }

    public int hashCode() {
        return this.state.hashCode();
    }

    public String toString() {
        return "GlobalStateItem(state=" + this.state + ')';
    }

    public GlobalStateItem(GlobalState state) {
        Intrinsics.checkNotNullParameter(state, "state");
        this.state = state;
        this.itemType = IdFabric$ViewTypes.GLOBAL_STATE;
    }

    public final GlobalState getState() {
        return this.state;
    }

    @Override // com.smedialink.model.common.NoChildNode
    public int getItemType() {
        return this.itemType;
    }
}
