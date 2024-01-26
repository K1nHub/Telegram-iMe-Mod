package com.iMe.utils.helper.wallet;

import com.iMe.model.wallet.crypto.BlockchainAddressData;
import com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.wallet.SendCryptoQRData;
import io.reactivex.Observable;
import io.reactivex.functions.Function;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
/* compiled from: CryptoHelper.kt */
/* loaded from: classes4.dex */
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

    /* JADX WARN: Type inference failed for: r6v9, types: [T, java.lang.String] */
    public static final Observable<Result<SendCryptoQRData>> extractAddressAndAmount(String value, BlockchainType blockchainType, CryptoWalletInteractor cryptoWalletInteractor) {
        ?? removePrefix;
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(blockchainType, "blockchainType");
        Intrinsics.checkNotNullParameter(cryptoWalletInteractor, "cryptoWalletInteractor");
        Matcher matcher = Pattern.compile(BlockchainAddressData.Companion.mapByBlockchainType(blockchainType).getRegex()).matcher(value);
        Matcher matcher2 = Pattern.compile("amount=[0-9]*(\\.[0-9]+)?").matcher(value);
        final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        ref$ObjectRef.element = "";
        if (matcher.find()) {
            String group = matcher.group();
            Intrinsics.checkNotNullExpressionValue(group, "matcherAddress.group()");
            if (!(group.length() == 0)) {
                if (matcher2.find()) {
                    String group2 = matcher2.group();
                    Intrinsics.checkNotNullExpressionValue(group2, "group");
                    if (group2.length() > 0) {
                        removePrefix = StringsKt__StringsKt.removePrefix(group2, "amount=");
                        ref$ObjectRef.element = removePrefix;
                    }
                }
                final String group3 = matcher.group();
                Intrinsics.checkNotNullExpressionValue(group3, "group");
                Observable<Result<Boolean>> isValidAddress = cryptoWalletInteractor.isValidAddress(group3, blockchainType);
                final Function1<Result<? extends Boolean>, Result<? extends SendCryptoQRData>> function1 = new Function1<Result<? extends Boolean>, Result<? extends SendCryptoQRData>>() { // from class: com.iMe.utils.helper.wallet.CryptoHelper$extractAddressAndAmount$$inlined$mapSuccess$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // kotlin.jvm.functions.Function1
                    public final Result<? extends SendCryptoQRData> invoke(Result<? extends Boolean> result) {
                        Intrinsics.checkNotNullParameter(result, "result");
                        if (!(result instanceof Result.Success)) {
                            if (result instanceof Result.Error) {
                                Result<? extends SendCryptoQRData> error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                                Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extensions.ObservableExtKt.mapSuccess");
                                return error$default;
                            } else if (result instanceof Object) {
                                return result;
                            } else {
                                return null;
                            }
                        } else if (Intrinsics.areEqual(result.getData(), Boolean.TRUE)) {
                            String group4 = group3;
                            Intrinsics.checkNotNullExpressionValue(group4, "group");
                            return Result.Companion.success(new SendCryptoQRData(group3, (String) ref$ObjectRef.element));
                        } else {
                            return Result.Companion.success(new SendCryptoQRData(null, null, 3, null));
                        }
                    }
                };
                Observable map = isValidAddress.map(new Function(function1) { // from class: com.iMe.utils.helper.wallet.CryptoHelper$inlined$sam$i$io_reactivex_functions_Function$0
                    private final /* synthetic */ Function1 function;

                    {
                        Intrinsics.checkNotNullParameter(function1, "function");
                        this.function = function1;
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
        Observable<Result<SendCryptoQRData>> just = Observable.just(Result.Companion.success(new SendCryptoQRData(null, null, 3, null)));
        Intrinsics.checkNotNullExpressionValue(just, "just(this)");
        return just;
    }
}
