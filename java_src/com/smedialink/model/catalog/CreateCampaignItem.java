package com.smedialink.model.catalog;

import com.smedialink.model.common.NoChildNode;
/* compiled from: CreateCampaignItem.kt */
/* loaded from: classes3.dex */
public final class CreateCampaignItem extends NoChildNode {
    private final int icon;
    private final int titleResId;

    public static /* synthetic */ CreateCampaignItem copy$default(CreateCampaignItem createCampaignItem, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = createCampaignItem.icon;
        }
        if ((i3 & 2) != 0) {
            i2 = createCampaignItem.titleResId;
        }
        return createCampaignItem.copy(i, i2);
    }

    public final int component1() {
        return this.icon;
    }

    public final int component2() {
        return this.titleResId;
    }

    public final CreateCampaignItem copy(int i, int i2) {
        return new CreateCampaignItem(i, i2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CreateCampaignItem) {
            CreateCampaignItem createCampaignItem = (CreateCampaignItem) obj;
            return this.icon == createCampaignItem.icon && this.titleResId == createCampaignItem.titleResId;
        }
        return false;
    }

    public int hashCode() {
        return (this.icon * 31) + this.titleResId;
    }

    public String toString() {
        return "CreateCampaignItem(icon=" + this.icon + ", titleResId=" + this.titleResId + ')';
    }

    public final int getIcon() {
        return this.icon;
    }

    public final int getTitleResId() {
        return this.titleResId;
    }

    public CreateCampaignItem(int i, int i2) {
        this.icon = i;
        this.titleResId = i2;
    }
}
