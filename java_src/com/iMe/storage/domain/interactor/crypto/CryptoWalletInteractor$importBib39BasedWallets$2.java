package com.iMe.storage.domain.interactor.crypto;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.Wallet;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: CryptoWalletInteractor.kt */
/* loaded from: classes3.dex */
final class CryptoWalletInteractor$importBib39BasedWallets$2 extends Lambda implements Function1<Object[], Result<? extends List<? extends Wallet>>> {
    public static final CryptoWalletInteractor$importBib39BasedWallets$2 INSTANCE = new CryptoWalletInteractor$importBib39BasedWallets$2();

    CryptoWalletInteractor$importBib39BasedWallets$2() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<List<Wallet>> invoke(Object[] results) {
        boolean z;
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(results, "results");
        int length = results.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                z = false;
                break;
            } else if (results[i] instanceof Result.Loading) {
                z = true;
                break;
            } else {
                i++;
            }
        }
        if (z) {
            return Result.Companion.loading$default(Result.Companion, null, 1, null);
        }
        ArrayList<Result.Success> arrayList = new ArrayList();
        for (Object obj : results) {
            if (obj instanceof Result.Success) {
                arrayList.add(obj);
            }
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        for (Result.Success success : arrayList) {
            arrayList2.add((Wallet) success.getData());
        }
        return Result.Companion.success(arrayList2);
    }
}
