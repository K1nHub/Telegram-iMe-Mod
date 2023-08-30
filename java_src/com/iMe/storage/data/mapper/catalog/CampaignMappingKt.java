package com.iMe.storage.data.mapper.catalog;

import com.iMe.storage.data.network.model.response.catalog.CampaignResponse;
import com.iMe.storage.data.network.model.response.catalog.ChannelCountryResponse;
import com.iMe.storage.data.network.model.response.catalog.ChannelTagResponse;
import com.iMe.storage.domain.model.catalog.Campaign;
import com.iMe.storage.domain.model.catalog.CampaignStatus;
import com.iMe.storage.domain.model.catalog.CatalogCategory;
import com.iMe.storage.domain.model.catalog.CatalogLanguage;
import com.iMe.storage.domain.model.catalog.Channel;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CampaignMapping.kt */
/* loaded from: classes3.dex */
public final class CampaignMappingKt {
    public static final Campaign mapToDomain(CampaignResponse campaignResponse) {
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        Intrinsics.checkNotNullParameter(campaignResponse, "<this>");
        CatalogCategory mapToDomain = ChannelCategoryMappingKt.mapToDomain(campaignResponse.getCategory());
        Channel mapToDomain2 = ChannelMappingKt.mapToDomain(campaignResponse.getChannel());
        List<ChannelCountryResponse> countries = campaignResponse.getCountries();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(countries, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (ChannelCountryResponse channelCountryResponse : countries) {
            arrayList.add(ChannelCountryMappingKt.mapToDomain(channelCountryResponse));
        }
        String createdAt = campaignResponse.getCreatedAt();
        long id = campaignResponse.getId();
        String invalidReason = campaignResponse.getInvalidReason();
        if (invalidReason == null) {
            invalidReason = "";
        }
        String str = invalidReason;
        CatalogLanguage mapToDomain3 = ChannelLanguageMappingKt.mapToDomain(campaignResponse.getLanguage());
        CampaignStatus byName = CampaignStatus.Companion.getByName(campaignResponse.getStatus());
        List<ChannelTagResponse> tags = campaignResponse.getTags();
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(tags, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
        for (ChannelTagResponse channelTagResponse : tags) {
            arrayList2.add(ChannelTagMappingKt.mapToDomain(channelTagResponse));
        }
        return new Campaign(mapToDomain, mapToDomain2, arrayList, createdAt, id, str, mapToDomain3, byName, arrayList2);
    }
}
