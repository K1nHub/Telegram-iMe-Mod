package com.iMe.storage.data.mapper.catalog;

import com.iMe.storage.data.network.model.response.catalog.CampaignResponse;
import com.iMe.storage.data.network.model.response.catalog.CampaignsCursoredResponse;
import com.iMe.storage.domain.model.catalog.CampaignsCursored;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CampaignsCursoredMapping.kt */
/* loaded from: classes3.dex */
public final class CampaignsCursoredMappingKt {
    public static final CampaignsCursored mapToDomain(CampaignsCursoredResponse campaignsCursoredResponse) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(campaignsCursoredResponse, "<this>");
        List<CampaignResponse> items = campaignsCursoredResponse.getItems();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(items, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (CampaignResponse campaignResponse : items) {
            arrayList.add(CampaignMappingKt.mapToDomain(campaignResponse));
        }
        return new CampaignsCursored(arrayList, CursorMetaMappingKt.mapToDomain(campaignsCursoredResponse.getMeta()));
    }
}
