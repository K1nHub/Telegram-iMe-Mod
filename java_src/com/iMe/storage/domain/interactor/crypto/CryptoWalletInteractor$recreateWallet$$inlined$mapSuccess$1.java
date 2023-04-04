package com.iMe.storage.domain.interactor.crypto;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.Wallet;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ObservableExt.kt */
/* loaded from: classes3.dex */
public final class CryptoWalletInteractor$recreateWallet$$inlined$mapSuccess$1 extends Lambda implements Function1<Result<? extends List<? extends Wallet>>, Result<? extends Wallet>> {
    final /* synthetic */ BlockchainType $blockchainType$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CryptoWalletInteractor$recreateWallet$$inlined$mapSuccess$1(BlockchainType blockchainType) {
        super(1);
        this.$blockchainType$inlined = blockchainType;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function1
    public final Result<? extends Wallet> invoke(Result<? extends List<? extends Wallet>> result) {
        boolean z;
        Intrinsics.checkNotNullParameter(result, "result");
        Object obj = null;
        if (!(result instanceof Result.Success)) {
            if (result instanceof Result.Error) {
                Result<? extends Wallet> error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.mapSuccess");
                return error$default;
            } else if (result instanceof Object) {
                return result;
            } else {
                return null;
            }
        }
        Object data = result.getData();
        Intrinsics.checkNotNull(data);
        List list = (List) data;
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            if (((Wallet) next).getBlockchainType() == this.$blockchainType$inlined) {
                z = true;
                continue;
            } else {
                z = false;
                continue;
            }
            if (z) {
                obj = next;
                break;
            }
        }
        Wallet wallet2 = (Wallet) obj;
        if (wallet2 == null) {
            wallet2 = (Wallet) CollectionsKt.first((List<? extends Object>) list);
        }
        return Result.Companion.success(wallet2);
    }
}
