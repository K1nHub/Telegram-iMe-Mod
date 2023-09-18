package com.iMe.storage.data.network.model.request.catalog;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CreateCampaignRequest.kt */
/* loaded from: classes4.dex */
public final class CreateCampaignRequest {
    private final int categoryId;
    private final List<Integer> countryIds;
    private final int languageId;
    private final String shortnameOrId;
    private final List<Integer> tagIds;

    public static /* synthetic */ CreateCampaignRequest copy$default(CreateCampaignRequest createCampaignRequest, int i, List list, int i2, String str, List list2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = createCampaignRequest.categoryId;
        }
        List<Integer> list3 = list;
        if ((i3 & 2) != 0) {
            list3 = createCampaignRequest.countryIds;
        }
        List list4 = list3;
        if ((i3 & 4) != 0) {
            i2 = createCampaignRequest.languageId;
        }
        int i4 = i2;
        if ((i3 & 8) != 0) {
            str = createCampaignRequest.shortnameOrId;
        }
        String str2 = str;
        List<Integer> list5 = list2;
        if ((i3 & 16) != 0) {
            list5 = createCampaignRequest.tagIds;
        }
        return createCampaignRequest.copy(i, list4, i4, str2, list5);
    }

    public final int component1() {
        return this.categoryId;
    }

    public final List<Integer> component2() {
        return this.countryIds;
    }

    public final int component3() {
        return this.languageId;
    }

    public final String component4() {
        return this.shortnameOrId;
    }

    public final List<Integer> component5() {
        return this.tagIds;
    }

    public final CreateCampaignRequest copy(int i, List<Integer> countryIds, int i2, String shortnameOrId, List<Integer> tagIds) {
        Intrinsics.checkNotNullParameter(countryIds, "countryIds");
        Intrinsics.checkNotNullParameter(shortnameOrId, "shortnameOrId");
        Intrinsics.checkNotNullParameter(tagIds, "tagIds");
        return new CreateCampaignRequest(i, countryIds, i2, shortnameOrId, tagIds);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CreateCampaignRequest) {
            CreateCampaignRequest createCampaignRequest = (CreateCampaignRequest) obj;
            return this.categoryId == createCampaignRequest.categoryId && Intrinsics.areEqual(this.countryIds, createCampaignRequest.countryIds) && this.languageId == createCampaignRequest.languageId && Intrinsics.areEqual(this.shortnameOrId, createCampaignRequest.shortnameOrId) && Intrinsics.areEqual(this.tagIds, createCampaignRequest.tagIds);
        }
        return false;
    }

    public int hashCode() {
        return (((((((this.categoryId * 31) + this.countryIds.hashCode()) * 31) + this.languageId) * 31) + this.shortnameOrId.hashCode()) * 31) + this.tagIds.hashCode();
    }

    public String toString() {
        return "CreateCampaignRequest(categoryId=" + this.categoryId + ", countryIds=" + this.countryIds + ", languageId=" + this.languageId + ", shortnameOrId=" + this.shortnameOrId + ", tagIds=" + this.tagIds + ')';
    }

    public CreateCampaignRequest(int i, List<Integer> countryIds, int i2, String shortnameOrId, List<Integer> tagIds) {
        Intrinsics.checkNotNullParameter(countryIds, "countryIds");
        Intrinsics.checkNotNullParameter(shortnameOrId, "shortnameOrId");
        Intrinsics.checkNotNullParameter(tagIds, "tagIds");
        this.categoryId = i;
        this.countryIds = countryIds;
        this.languageId = i2;
        this.shortnameOrId = shortnameOrId;
        this.tagIds = tagIds;
    }

    public final int getCategoryId() {
        return this.categoryId;
    }

    public final List<Integer> getCountryIds() {
        return this.countryIds;
    }

    public final int getLanguageId() {
        return this.languageId;
    }

    public final String getShortnameOrId() {
        return this.shortnameOrId;
    }

    public final List<Integer> getTagIds() {
        return this.tagIds;
    }
}
