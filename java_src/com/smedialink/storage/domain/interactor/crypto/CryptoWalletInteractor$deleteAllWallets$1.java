package com.smedialink.storage.domain.interactor.crypto;

import com.smedialink.storage.domain.model.Result;
import java.util.ArrayList;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: CryptoWalletInteractor.kt */
/* loaded from: classes3.dex */
final class CryptoWalletInteractor$deleteAllWallets$1 extends Lambda implements Function1<Object[], Result<? extends Boolean>> {
    public static final CryptoWalletInteractor$deleteAllWallets$1 INSTANCE = new CryptoWalletInteractor$deleteAllWallets$1();

    CryptoWalletInteractor$deleteAllWallets$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<Boolean> invoke(Object[] results) {
        Intrinsics.checkNotNullParameter(results, "results");
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
