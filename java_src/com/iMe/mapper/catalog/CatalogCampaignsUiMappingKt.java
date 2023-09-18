package com.iMe.mapper.catalog;

import com.iMe.model.catalog.CampaignItem;
import com.iMe.storage.domain.model.catalog.Campaign;
import com.iMe.storage.domain.model.catalog.ChannelTag;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CatalogCampaignsUiMapping.kt */
/* loaded from: classes4.dex */
public final class CatalogCampaignsUiMappingKt {
    public static final List<CampaignItem> mapToUi(List<Campaign> list) {
        int collectionSizeOrDefault;
        List<CampaignItem> mutableList;
        int collectionSizeOrDefault2;
        Intrinsics.checkNotNullParameter(list, "<this>");
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Campaign campaign = (Campaign) it.next();
            String title = campaign.getCategory().getTitle();
            String description = campaign.getChannel().getDescription();
            long telegramId = campaign.getChannel().getTelegramId();
            boolean verified = campaign.getChannel().getVerified();
            String title2 = campaign.getLanguage().getTitle();
            long membersCount = campaign.getChannel().getMembersCount();
            String photo = campaign.getChannel().getPhoto();
            String shortname = campaign.getChannel().getShortname();
            List<ChannelTag> tags = campaign.getTags();
            Iterator it2 = it;
            collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(tags, 10);
            ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
            for (ChannelTag channelTag : tags) {
                arrayList2.add(channelTag.getTitle());
            }
            arrayList.add(new CampaignItem(title, description, telegramId, verified, title2, membersCount, photo, shortname, arrayList2, campaign.getChannel().getTitle()));
            it = it2;
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
        return mutableList;
    }
}
