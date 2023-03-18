package com.smedialink.utils.helper.wallet;

import com.smedialink.model.wallet.crypto.BlockchainAddressData;
import com.smedialink.storage.domain.interactor.crypto.CryptoWalletInteractor;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.BlockchainType;
import io.reactivex.Observable;
import io.reactivex.functions.Function;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.jvm.functions.Function1;
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
        return BlockchainAddressData.Companion.mapByBlockchainType(blockchainType).getPrefix() + address;
    }

    public static final Observable<Result<String>> extractAddress(String value, BlockchainType blockchainType, CryptoWalletInteractor cryptoWalletInteractor) {
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        Intrinsics.checkNotNullParameter(cryptoWalletInteractor, "cryptoWalletInteractor");
        Matcher matcher = Pattern.compile(BlockchainAddressData.Companion.mapByBlockchainType(blockchainType).getRegex()).matcher(value);
        if (matcher.find()) {
            String group = matcher.group();
            Intrinsics.checkNotNullExpressionValue(group, "group");
            if (group.length() > 0) {
                Observable<Result<Boolean>> isValidAddress = cryptoWalletInteractor.isValidAddress(group, blockchainType);
                final CryptoHelper$extractAddress$$inlined$mapSuccess$1 cryptoHelper$extractAddress$$inlined$mapSuccess$1 = new CryptoHelper$extractAddress$$inlined$mapSuccess$1(group);
                Observable map = isValidAddress.map(new Function(cryptoHelper$extractAddress$$inlined$mapSuccess$1) { // from class: com.smedialink.utils.helper.wallet.CryptoHelper$inlined$sam$i$io_reactivex_functions_Function$0
                    private final /* synthetic */ Function1 function;

                    {
                        Intrinsics.checkNotNullParameter(cryptoHelper$extractAddress$$inlined$mapSuccess$1, "function");
                        this.function = cryptoHelper$extractAddress$$inlined$mapSuccess$1;
                    }

                    @Override // io.reactivex.functions.Function
                    public final /* synthetic */ Object apply(Object obj) {
                        return this.function.invoke(obj);
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
