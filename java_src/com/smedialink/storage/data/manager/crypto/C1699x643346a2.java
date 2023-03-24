package com.smedialink.storage.data.manager.crypto;

import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.Wallet;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ObservableExt.kt */
/* renamed from: com.smedialink.storage.data.manager.crypto.TONBlockchainCryptoWalletManagerImpl$unlockWallet$$inlined$mapSuccess$1 */
/* loaded from: classes3.dex */
public final class C1699x643346a2 extends Lambda implements Function1<Result<? extends Wallet>, Result<? extends Wallet>> {
    final /* synthetic */ String $guid$inlined;
    final /* synthetic */ String $mnemonic$inlined;
    final /* synthetic */ String $oldGuid$inlined;
    final /* synthetic */ String $password$inlined;
    final /* synthetic */ TONBlockchainCryptoWalletManagerImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1699x643346a2(String str, String str2, TONBlockchainCryptoWalletManagerImpl tONBlockchainCryptoWalletManagerImpl, String str3, String str4) {
        super(1);
        this.$guid$inlined = str;
        this.$oldGuid$inlined = str2;
        this.this$0 = tONBlockchainCryptoWalletManagerImpl;
        this.$mnemonic$inlined = str3;
        this.$password$inlined = str4;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<? extends Wallet> invoke(Result<? extends Wallet> result) {
        Intrinsics.checkNotNullParameter(result, "result");
        boolean z = result instanceof Result.Success;
        if (!z) {
            if (result instanceof Result.Error) {
                Result<? extends Wallet> error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.smedialink.storage.domain.utils.extentions.ObservableExtKt.mapSuccess");
                return error$default;
            } else if (result instanceof Object) {
                return result;
            } else {
                return null;
            }
        } else if (!z || Intrinsics.areEqual(this.$guid$inlined, this.$oldGuid$inlined)) {
            return result;
        } else {
            this.this$0.rewriteWalletToNewGuid(this.$guid$inlined, this.$oldGuid$inlined, this.$mnemonic$inlined, this.$password$inlined, ((Wallet) ((Result.Success) result).getData()).getAddress());
            return result;
        }
    }
}
