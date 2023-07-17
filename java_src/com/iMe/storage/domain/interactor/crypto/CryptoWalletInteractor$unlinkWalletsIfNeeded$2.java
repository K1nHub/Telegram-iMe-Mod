package com.iMe.storage.domain.interactor.crypto;

import com.iMe.storage.domain.model.Result;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: CryptoWalletInteractor.kt */
/* loaded from: classes3.dex */
final class CryptoWalletInteractor$unlinkWalletsIfNeeded$2 extends Lambda implements Function1<Object[], Result<? extends Boolean>> {
    public static final CryptoWalletInteractor$unlinkWalletsIfNeeded$2 INSTANCE = new CryptoWalletInteractor$unlinkWalletsIfNeeded$2();

    CryptoWalletInteractor$unlinkWalletsIfNeeded$2() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<Boolean> invoke(Object[] results) {
        boolean z;
        Intrinsics.checkNotNullParameter(results, "results");
        int length = results.length;
        boolean z2 = false;
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
        if (!arrayList.isEmpty()) {
            Iterator it = arrayList.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (((Boolean) ((Result.Success) it.next()).getData()).booleanValue()) {
                        z2 = true;
                        break;
                    }
                } else {
                    break;
                }
            }
        }
        return Result.Companion.success(Boolean.valueOf(z2));
    }
}
