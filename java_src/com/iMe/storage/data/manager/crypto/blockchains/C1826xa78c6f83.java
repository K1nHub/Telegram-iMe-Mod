package com.iMe.storage.data.manager.crypto.blockchains;

import com.iMe.storage.domain.manager.crypto.BlockchainCryptoWalletManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.Wallet;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: ObservableExt.kt */
/* renamed from: com.iMe.storage.data.manager.crypto.blockchains.TONBlockchainCryptoWalletManagerImpl$importWallet$$inlined$mapSuccess$1 */
/* loaded from: classes3.dex */
public final class C1826xa78c6f83 extends Lambda implements Function1<Result<? extends Wallet.TON>, Result<? extends Wallet>> {
    final /* synthetic */ String $guid$inlined;
    final /* synthetic */ String $mnemonic$inlined;
    final /* synthetic */ String $password$inlined;
    final /* synthetic */ TONBlockchainCryptoWalletManagerImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1826xa78c6f83(TONBlockchainCryptoWalletManagerImpl tONBlockchainCryptoWalletManagerImpl, String str, String str2, String str3) {
        super(1);
        this.this$0 = tONBlockchainCryptoWalletManagerImpl;
        this.$guid$inlined = str;
        this.$mnemonic$inlined = str2;
        this.$password$inlined = str3;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Result<? extends Wallet> invoke(Result<? extends Wallet.TON> result) {
        Intrinsics.checkNotNullParameter(result, "result");
        boolean z = result instanceof Result.Success;
        if (!z) {
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
        if (z) {
            Result.Success success = (Result.Success) result;
            BlockchainCryptoWalletManager.saveWalletToPrefs$default(this.this$0, this.$guid$inlined, ((Wallet.TON) success.getData()).getAddress(), this.$mnemonic$inlined, this.$password$inlined, false, 16, null);
            result = Result.Companion.success(Wallet.TON.copy$default((Wallet.TON) success.getData(), this.$guid$inlined, null, null, null, 14, null));
        }
        Intrinsics.checkNotNullExpressionValue(result, "if (result is Result.Suc…                        }");
        return result;
    }
}
