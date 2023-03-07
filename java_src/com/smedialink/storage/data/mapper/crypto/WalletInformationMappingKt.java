package com.smedialink.storage.data.mapper.crypto;

import com.smedialink.storage.data.network.model.response.crypto.wallet.CryptoWalletInfoResponse;
import com.smedialink.storage.domain.model.crypto.CryptoWalletInfo;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WalletInformationMapping.kt */
/* loaded from: classes3.dex */
public final class WalletInformationMappingKt {
    public static final CryptoWalletInfo mapToDomain(CryptoWalletInfoResponse cryptoWalletInfoResponse) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(cryptoWalletInfoResponse, "<this>");
        String myEtherWalletAddress = cryptoWalletInfoResponse.getMyEtherWalletAddress();
        if (myEtherWalletAddress == null) {
            myEtherWalletAddress = "";
        }
        String tonWalletAddress = cryptoWalletInfoResponse.getTonWalletAddress();
        String str = tonWalletAddress != null ? tonWalletAddress : "";
        boolean isEtherWalletAddressOpened = cryptoWalletInfoResponse.isEtherWalletAddressOpened();
        List<String> usersWithAccessToEtherWalletAddress = cryptoWalletInfoResponse.getUsersWithAccessToEtherWalletAddress();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(usersWithAccessToEtherWalletAddress, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (String str2 : usersWithAccessToEtherWalletAddress) {
            arrayList.add(Long.valueOf(Long.parseLong(str2)));
        }
        return new CryptoWalletInfo(myEtherWalletAddress, str, isEtherWalletAddressOpened, arrayList);
    }
}
