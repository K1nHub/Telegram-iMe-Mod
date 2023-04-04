package com.iMe.storage.domain.interactor.crypto;

import com.iMe.storage.domain.model.Result;
import java.util.ArrayList;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: CryptoWalletInteractor.kt */
/* loaded from: classes3.dex */
final class CryptoWalletInteractor$deleteAllWallets$finalObservable$1 extends Lambda implements Function1<Object[], Result<? extends Boolean>> {
    public static final CryptoWalletInteractor$deleteAllWallets$finalObservable$1 INSTANCE = new CryptoWalletInteractor$deleteAllWallets$finalObservable$1();

    CryptoWalletInteractor$deleteAllWallets$finalObservable$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<Boolean> invoke(Object[] results) {
        boolean z;
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
        ArrayList arrayList = new ArrayList();
        for (Object obj : results) {
            if (obj instanceof Result.Success) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : arrayList) {
            if (((Boolean) ((Result.Success) obj2).getData()).booleanValue()) {
                arrayList2.add(obj2);
            }
        }
        return Result.Companion.success(Boolean.valueOf(arrayList2.size() == results.length));
    }
}
