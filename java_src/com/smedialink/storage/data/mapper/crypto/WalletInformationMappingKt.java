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
        String str = myEtherWalletAddress == null ? "" : myEtherWalletAddress;
        String tonWalletAddress = cryptoWalletInfoResponse.getTonWalletAddress();
        String str2 = tonWalletAddress == null ? "" : tonWalletAddress;
        String tronWalletAddress = cryptoWalletInfoResponse.getTronWalletAddress();
        String str3 = tronWalletAddress == null ? "" : tronWalletAddress;
        boolean isEtherWalletAddressOpened = cryptoWalletInfoResponse.isEtherWalletAddressOpened();
        List<String> usersWithAccessToEtherWalletAddress = cryptoWalletInfoResponse.getUsersWithAccessToEtherWalletAddress();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(usersWithAccessToEtherWalletAddress, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (String str4 : usersWithAccessToEtherWalletAddress) {
            arrayList.add(Long.valueOf(Long.parseLong(str4)));
        }
        return new CryptoWalletInfo(str, str2, str3, isEtherWalletAddressOpened, arrayList);
    }
}
