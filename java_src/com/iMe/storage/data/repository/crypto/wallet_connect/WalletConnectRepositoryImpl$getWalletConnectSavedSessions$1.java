package com.iMe.storage.data.repository.crypto.wallet_connect;

import com.iMe.storage.data.locale.p028db.model.wallet.WalletConnectSessionDb;
import com.iMe.storage.data.mapper.wallet.WalletConnectSessionMappingKt;
import com.iMe.storage.domain.model.Result;
import com.trustwallet.walletconnect.WCSessionStoreItem;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: WalletConnectRepositoryImpl.kt */
/* loaded from: classes3.dex */
final class WalletConnectRepositoryImpl$getWalletConnectSavedSessions$1 extends Lambda implements Function1<List<? extends WalletConnectSessionDb>, Result<? extends List<? extends WCSessionStoreItem>>> {
    public static final WalletConnectRepositoryImpl$getWalletConnectSavedSessions$1 INSTANCE = new WalletConnectRepositoryImpl$getWalletConnectSavedSessions$1();

    WalletConnectRepositoryImpl$getWalletConnectSavedSessions$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Result<? extends List<? extends WCSessionStoreItem>> invoke(List<? extends WalletConnectSessionDb> list) {
        return invoke2((List<WalletConnectSessionDb>) list);
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Result<List<WCSessionStoreItem>> invoke2(List<WalletConnectSessionDb> sessions) {
        int collectionSizeOrDefault;
        List sortedWith;
        Intrinsics.checkNotNullParameter(sessions, "sessions");
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(sessions, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (WalletConnectSessionDb walletConnectSessionDb : sessions) {
            arrayList.add(WalletConnectSessionMappingKt.mapToDomain(walletConnectSessionDb));
        }
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(arrayList, new Comparator() { // from class: com.iMe.storage.data.repository.crypto.wallet_connect.WalletConnectRepositoryImpl$getWalletConnectSavedSessions$1$invoke$$inlined$sortedBy$1
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                int compareValues;
                compareValues = ComparisonsKt__ComparisonsKt.compareValues(((WCSessionStoreItem) t).getDate(), ((WCSessionStoreItem) t2).getDate());
                return compareValues;
            }
        });
        return Result.Companion.success(sortedWith);
    }
}
