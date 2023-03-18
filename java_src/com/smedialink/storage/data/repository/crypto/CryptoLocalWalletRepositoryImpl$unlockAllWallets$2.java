package com.smedialink.storage.data.repository.crypto;

import com.smedialink.storage.domain.manager.crypto.CryptoAccessManager;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.Wallet;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: CryptoLocalWalletRepositoryImpl.kt */
/* loaded from: classes3.dex */
final class CryptoLocalWalletRepositoryImpl$unlockAllWallets$2 extends Lambda implements Function1<Object[], Result<? extends List<? extends Wallet>>> {
    final /* synthetic */ String $password;
    final /* synthetic */ CryptoLocalWalletRepositoryImpl this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CryptoLocalWalletRepositoryImpl$unlockAllWallets$2(CryptoLocalWalletRepositoryImpl cryptoLocalWalletRepositoryImpl, String str) {
        super(1);
        this.this$0 = cryptoLocalWalletRepositoryImpl;
        this.$password = str;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<List<Wallet>> invoke(Object[] results) {
        int collectionSizeOrDefault;
        CryptoAccessManager cryptoAccessManager;
        Intrinsics.checkNotNullParameter(results, "results");
        ArrayList<Result.Success> arrayList = new ArrayList();
        for (Object obj : results) {
            if (obj instanceof Result.Success) {
                arrayList.add(obj);
            }
        }
        CryptoLocalWalletRepositoryImpl cryptoLocalWalletRepositoryImpl = this.this$0;
        String str = this.$password;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        for (Result.Success success : arrayList) {
            Wallet wallet = (Wallet) success.getData();
            cryptoAccessManager = cryptoLocalWalletRepositoryImpl.cryptoAccessManager;
            cryptoAccessManager.setWallet(wallet, str);
            arrayList2.add(wallet);
        }
        return Result.Companion.success(arrayList2);
    }
}
