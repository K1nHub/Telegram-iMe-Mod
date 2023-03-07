package com.smedialink.utils.helper.wallet;

import com.smedialink.model.wallet.crypto.BlockchainAddressData;
import com.smedialink.storage.domain.interactor.crypto.CryptoWalletInteractor;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.BlockchainType;
import io.reactivex.Observable;
import io.reactivex.functions.Function;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
/* compiled from: CryptoHelper.kt */
/* loaded from: classes3.dex */
public final class CryptoHelper {
    static {
        new CryptoHelper();
    }

    private CryptoHelper() {
    }

    public static final boolean isWithEthereumPrefix(String address) {
        boolean startsWith$default;
        Intrinsics.checkNotNullParameter(address, "address");
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(address, BlockchainAddressData.EVM.getPrefix(), false, 2, null);
        return startsWith$default;
    }

    public static final String formatAddressQR(String address, BlockchainType blockchainType) {
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        return Intrinsics.stringPlus(BlockchainAddressData.Companion.mapByBlockchainType(blockchainType).getPrefix(), address);
    }

    public static final Observable<Result<String>> extractAddress(String value, BlockchainType blockchainType, CryptoWalletInteractor cryptoWalletInteractor) {
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        Intrinsics.checkNotNullParameter(cryptoWalletInteractor, "cryptoWalletInteractor");
        Matcher matcher = Pattern.compile(BlockchainAddressData.Companion.mapByBlockchainType(blockchainType).getRegex()).matcher(value);
        if (matcher.find()) {
            final String group = matcher.group();
            Intrinsics.checkNotNullExpressionValue(group, "group");
            if (group.length() > 0) {
                Observable map = cryptoWalletInteractor.isValidAddress(group, blockchainType).map(new Function() { // from class: com.smedialink.utils.helper.wallet.CryptoHelper$extractAddress$$inlined$mapSuccess$1
                    /* JADX WARN: Incorrect types in method signature: (TT;)TR; */
                    @Override // io.reactivex.functions.Function
                    public final Object apply(Result result) {
                        Intrinsics.checkNotNullParameter(result, "result");
                        if (!(result instanceof Result.Success)) {
                            if (result instanceof Result.Error) {
                                return Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                            }
                            if (result instanceof Object) {
                                return result;
                            }
                            return null;
                        } else if (Intrinsics.areEqual(result.getData(), Boolean.TRUE)) {
                            return Result.Companion.success(group);
                        } else {
                            return Result.Companion.success("");
                        }
                    }
                });
                Intrinsics.checkNotNullExpressionValue(map, "crossinline body: (T) ->…ult as? R\n        }\n    }");
                return map;
            }
        }
        Observable<Result<String>> just = Observable.just(Result.Companion.success(""));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        return just;
    }
}
