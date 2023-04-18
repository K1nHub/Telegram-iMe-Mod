package com.iMe.model.wallet.home;

import com.iMe.model.common.NoChildNode;
import java.util.List;
import java.util.Objects;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SelectableHeaderItem.kt */
/* loaded from: classes3.dex */
public final class SelectableHeaderItem extends NoChildNode {
    private final int icon;

    /* renamed from: id */
    private final int f278id;
    private final Function2<Integer, String, Unit> onSelected;
    private final List<Integer> options;
    private final int titleResId;

    public static /* synthetic */ SelectableHeaderItem copy$default(SelectableHeaderItem selectableHeaderItem, int i, int i2, int i3, List list, Function2 function2, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            i = selectableHeaderItem.f278id;
        }
        if ((i4 & 2) != 0) {
            i2 = selectableHeaderItem.icon;
        }
        int i5 = i2;
        if ((i4 & 4) != 0) {
            i3 = selectableHeaderItem.titleResId;
        }
        int i6 = i3;
        List<Integer> list2 = list;
        if ((i4 & 8) != 0) {
            list2 = selectableHeaderItem.options;
        }
        List list3 = list2;
        Function2<Integer, String, Unit> function22 = function2;
        if ((i4 & 16) != 0) {
            function22 = selectableHeaderItem.onSelected;
        }
        return selectableHeaderItem.copy(i, i5, i6, list3, function22);
    }

    public final int component1() {
        return this.f278id;
    }

    public final int component2() {
        return this.icon;
    }

    public final int component3() {
        return this.titleResId;
    }

    public final List<Integer> component4() {
        return this.options;
    }

    public final Function2<Integer, String, Unit> component5() {
        return this.onSelected;
    }

    public final SelectableHeaderItem copy(int i, int i2, int i3, List<Integer> options, Function2<? super Integer, ? super String, Unit> onSelected) {
        Intrinsics.checkNotNullParameter(options, "options");
        Intrinsics.checkNotNullParameter(onSelected, "onSelected");
        return new SelectableHeaderItem(i, i2, i3, options, onSelected);
    }

    public String toString() {
        return "SelectableHeaderItem(id=" + this.f278id + ", icon=" + this.icon + ", titleResId=" + this.titleResId + ", options=" + this.options + ", onSelected=" + this.onSelected + ')';
    }

    public final int getId() {
        return this.f278id;
    }

    public final int getIcon() {
        return this.icon;
    }

    public final int getTitleResId() {
        return this.titleResId;
    }

    public final List<Integer> getOptions() {
        return this.options;
    }

    public final Function2<Integer, String, Unit> getOnSelected() {
        return this.onSelected;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SelectableHeaderItem(int i, int i2, int i3, List<Integer> options, Function2<? super Integer, ? super String, Unit> onSelected) {
        Intrinsics.checkNotNullParameter(options, "options");
        Intrinsics.checkNotNullParameter(onSelected, "onSelected");
        this.f278id = i;
        this.icon = i2;
        this.titleResId = i3;
        this.options = options;
        this.onSelected = onSelected;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (Intrinsics.areEqual(SelectableHeaderItem.class, obj != null ? obj.getClass() : null)) {
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type com.iMe.model.wallet.home.SelectableHeaderItem");
            SelectableHeaderItem selectableHeaderItem = (SelectableHeaderItem) obj;
            return this.f278id == selectableHeaderItem.f278id && this.icon == selectableHeaderItem.icon && this.titleResId == selectableHeaderItem.titleResId && Intrinsics.areEqual(this.options, selectableHeaderItem.options);
        }
        return false;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.f278id), Integer.valueOf(this.icon), Integer.valueOf(this.titleResId), this.options);
    }
}
