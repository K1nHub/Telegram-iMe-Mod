package com.iMe.model.catalog;

import com.iMe.model.common.NoChildNode;
import com.iMe.storage.domain.model.catalog.CatalogCategory;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CategoryWithCampaignsItem.kt */
/* loaded from: classes4.dex */
public final class CategoryWithCampaignsItem extends NoChildNode {
    private final List<CampaignItem> campaigns;
    private final CatalogCategory category;
    private final boolean isEndReached;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CategoryWithCampaignsItem copy$default(CategoryWithCampaignsItem categoryWithCampaignsItem, CatalogCategory catalogCategory, List list, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            catalogCategory = categoryWithCampaignsItem.category;
        }
        if ((i & 2) != 0) {
            list = categoryWithCampaignsItem.campaigns;
        }
        if ((i & 4) != 0) {
            z = categoryWithCampaignsItem.isEndReached;
        }
        return categoryWithCampaignsItem.copy(catalogCategory, list, z);
    }

    public final CatalogCategory component1() {
        return this.category;
    }

    public final List<CampaignItem> component2() {
        return this.campaigns;
    }

    public final boolean component3() {
        return this.isEndReached;
    }

    public final CategoryWithCampaignsItem copy(CatalogCategory category, List<CampaignItem> campaigns, boolean z) {
        Intrinsics.checkNotNullParameter(category, "category");
        Intrinsics.checkNotNullParameter(campaigns, "campaigns");
        return new CategoryWithCampaignsItem(category, campaigns, z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CategoryWithCampaignsItem) {
            CategoryWithCampaignsItem categoryWithCampaignsItem = (CategoryWithCampaignsItem) obj;
            return Intrinsics.areEqual(this.category, categoryWithCampaignsItem.category) && Intrinsics.areEqual(this.campaigns, categoryWithCampaignsItem.campaigns) && this.isEndReached == categoryWithCampaignsItem.isEndReached;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((this.category.hashCode() * 31) + this.campaigns.hashCode()) * 31;
        boolean z = this.isEndReached;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return hashCode + i;
    }

    public String toString() {
        return "CategoryWithCampaignsItem(category=" + this.category + ", campaigns=" + this.campaigns + ", isEndReached=" + this.isEndReached + ')';
    }

    public final CatalogCategory getCategory() {
        return this.category;
    }

    public final List<CampaignItem> getCampaigns() {
        return this.campaigns;
    }

    public final boolean isEndReached() {
        return this.isEndReached;
    }

    public CategoryWithCampaignsItem(CatalogCategory category, List<CampaignItem> campaigns, boolean z) {
        Intrinsics.checkNotNullParameter(category, "category");
        Intrinsics.checkNotNullParameter(campaigns, "campaigns");
        this.category = category;
        this.campaigns = campaigns;
        this.isEndReached = z;
    }
}
