package com.smedialink.model.wallet.home;

import com.smedialink.model.common.NoChildNode;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ServicesBasicItem.kt */
/* loaded from: classes3.dex */
public final class ServicesBasicItem extends NoChildNode {
    private final ServicesCategory category;
    private final int icon;
    private final int subtitleResId;
    private final int titleResId;

    public static /* synthetic */ ServicesBasicItem copy$default(ServicesBasicItem servicesBasicItem, ServicesCategory servicesCategory, int i, int i2, int i3, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            servicesCategory = servicesBasicItem.category;
        }
        if ((i4 & 2) != 0) {
            i = servicesBasicItem.icon;
        }
        if ((i4 & 4) != 0) {
            i2 = servicesBasicItem.titleResId;
        }
        if ((i4 & 8) != 0) {
            i3 = servicesBasicItem.subtitleResId;
        }
        return servicesBasicItem.copy(servicesCategory, i, i2, i3);
    }

    public final ServicesCategory component1() {
        return this.category;
    }

    public final int component2() {
        return this.icon;
    }

    public final int component3() {
        return this.titleResId;
    }

    public final int component4() {
        return this.subtitleResId;
    }

    public final ServicesBasicItem copy(ServicesCategory category, int i, int i2, int i3) {
        Intrinsics.checkNotNullParameter(category, "category");
        return new ServicesBasicItem(category, i, i2, i3);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ServicesBasicItem) {
            ServicesBasicItem servicesBasicItem = (ServicesBasicItem) obj;
            return this.category == servicesBasicItem.category && this.icon == servicesBasicItem.icon && this.titleResId == servicesBasicItem.titleResId && this.subtitleResId == servicesBasicItem.subtitleResId;
        }
        return false;
    }

    public int hashCode() {
        return (((((this.category.hashCode() * 31) + this.icon) * 31) + this.titleResId) * 31) + this.subtitleResId;
    }

    public String toString() {
        return "ServicesBasicItem(category=" + this.category + ", icon=" + this.icon + ", titleResId=" + this.titleResId + ", subtitleResId=" + this.subtitleResId + ')';
    }

    public final ServicesCategory getCategory() {
        return this.category;
    }

    public final int getIcon() {
        return this.icon;
    }

    public final int getTitleResId() {
        return this.titleResId;
    }

    public final int getSubtitleResId() {
        return this.subtitleResId;
    }

    public ServicesBasicItem(ServicesCategory category, int i, int i2, int i3) {
        Intrinsics.checkNotNullParameter(category, "category");
        this.category = category;
        this.icon = i;
        this.titleResId = i2;
        this.subtitleResId = i3;
    }
}
