package com.iMe.feature.socialMedias;

import com.iMe.feature.socialMedias.SocialType;
import com.iMe.storage.data.locale.p026db.model.social.SocialNetworkDb;
import com.iMe.storage.data.network.model.response.social.Network;
import com.iMe.storage.data.network.model.response.social.SocialNetworksRaw;
import com.iMe.utils.extentions.common.StringExtKt;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SocialDataMapper.kt */
/* loaded from: classes3.dex */
public final class SocialDataMapperKt {
    public static final SocialDomain toDomain(SocialNetworksRaw socialNetworksRaw) {
        ArrayList arrayList;
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(socialNetworksRaw, "<this>");
        List<Network> networks = socialNetworksRaw.getNetworks();
        if (networks == null) {
            arrayList = new ArrayList();
        } else {
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(networks, 10);
            arrayList = new ArrayList(collectionSizeOrDefault);
            for (Network network : networks) {
                arrayList.add(toDomain(network));
            }
        }
        return new SocialDomain(false, arrayList, 1, null);
    }

    private static final SocialNetwork toDomain(Network network) {
        SocialType.Companion companion = SocialType.Companion;
        String social = network.getSocial();
        if (social == null) {
            social = "";
        }
        SocialType defineType = companion.defineType(social);
        String social2 = network.getSocial();
        if (social2 == null) {
            social2 = "";
        }
        String capitalizeOnlyFirstSymbol = StringExtKt.capitalizeOnlyFirstSymbol(companion.defineType(social2).name());
        String icon = network.getIcon();
        String str = icon == null ? "" : icon;
        String socialElementId = network.getSocialElementId();
        String str2 = socialElementId == null ? "" : socialElementId;
        String socialElementAvatarUrl = network.getSocialElementAvatarUrl();
        String str3 = socialElementAvatarUrl == null ? "" : socialElementAvatarUrl;
        String socialUserName = network.getSocialUserName();
        String str4 = socialUserName == null ? "" : socialUserName;
        String socialWebUrl = network.getSocialWebUrl();
        String str5 = socialWebUrl == null ? "" : socialWebUrl;
        Boolean isActive = network.isActive();
        boolean booleanValue = isActive != null ? isActive.booleanValue() : false;
        String beforeConnectMessage = network.getBeforeConnectMessage();
        if (beforeConnectMessage == null) {
            beforeConnectMessage = "";
        }
        return new SocialNetwork(defineType, capitalizeOnlyFirstSymbol, str, 0, str2, str3, str4, str5, booleanValue, false, beforeConnectMessage, 520, null);
    }

    public static final List<SocialNetworkDb> toDb(SocialDomain socialDomain, long j) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(socialDomain, "<this>");
        List<SocialNetwork> socialNetworks = socialDomain.getSocialNetworks();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(socialNetworks, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        int i = 0;
        for (Object obj : socialNetworks) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            arrayList.add(toDb((SocialNetwork) obj, j, i));
            i = i2;
        }
        return arrayList;
    }

    public static final SocialNetworkDb toDb(SocialNetwork socialNetwork, long j, int i) {
        Intrinsics.checkNotNullParameter(socialNetwork, "<this>");
        return new SocialNetworkDb(j, socialNetwork.getSocial().name(), socialNetwork.getIcon(), i, socialNetwork.getSocialElementId(), socialNetwork.getSocialElementAvatarUrl(), socialNetwork.getSocialUserName(), socialNetwork.getSocialWebUrl(), socialNetwork.isActive(), socialNetwork.getBeforeConnectMessage());
    }

    public static final SocialNetwork toDomain(SocialNetworkDb socialNetworkDb) {
        Intrinsics.checkNotNullParameter(socialNetworkDb, "<this>");
        return new SocialNetwork(SocialType.valueOf(socialNetworkDb.getSocial()), StringExtKt.capitalizeOnlyFirstSymbol(SocialType.valueOf(socialNetworkDb.getSocial()).name()), socialNetworkDb.getIconUrl(), 0, socialNetworkDb.getSocialElementId(), socialNetworkDb.getSocialElementAvatarUrl(), socialNetworkDb.getSocialUserName(), socialNetworkDb.getSocialWebUrl(), socialNetworkDb.isActive(), false, socialNetworkDb.getBeforeConnectMessage(), 520, null);
    }

    public static final SocialDomain toDomain(List<SocialNetworkDb> list) {
        int collectionSizeOrDefault;
        List sortedWith;
        Intrinsics.checkNotNullParameter(list, "<this>");
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (SocialNetworkDb socialNetworkDb : list) {
            arrayList.add(toDomain(socialNetworkDb));
        }
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(arrayList, new Comparator() { // from class: com.iMe.feature.socialMedias.SocialDataMapperKt$toDomain$$inlined$sortedByDescending$1
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                int compareValues;
                compareValues = ComparisonsKt__ComparisonsKt.compareValues(Integer.valueOf(((SocialNetwork) t2).getSocialPosition()), Integer.valueOf(((SocialNetwork) t).getSocialPosition()));
                return compareValues;
            }
        });
        return new SocialDomain(false, sortedWith, 1, null);
    }
}
