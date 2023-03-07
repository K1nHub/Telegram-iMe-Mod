package com.smedialink.storage.data.utils.extentions;

import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import org.web3j.abi.FunctionEncoder;
import org.web3j.abi.TypeReference;
import org.web3j.abi.datatypes.Bool;
import org.web3j.abi.datatypes.Function;
import org.web3j.abi.datatypes.Type;
/* compiled from: Web3jExt.kt */
/* loaded from: classes3.dex */
public final class Web3jExtKt {
    public static final String encode(Function function) {
        Intrinsics.checkNotNullParameter(function, "<this>");
        String encode = FunctionEncoder.encode(function);
        Intrinsics.checkNotNullExpressionValue(encode, "run { FunctionEncoder.encode(this) }");
        return encode;
    }

    public static /* synthetic */ String createSmartFunctionDataFor$default(String str, List list, List list2, int i, Object obj) {
        if ((i & 4) != 0) {
            list2 = CollectionsKt__CollectionsJVMKt.listOf(new TypeReference<Bool>() { // from class: com.smedialink.storage.data.utils.extentions.Web3jExtKt$createSmartFunctionDataFor$1
            });
        }
        return createSmartFunctionDataFor(str, list, list2);
    }

    public static final String createSmartFunctionDataFor(String method, List<? extends Type<?>> inputParams, List<? extends TypeReference<?>> outputParams) {
        Intrinsics.checkNotNullParameter(method, "method");
        Intrinsics.checkNotNullParameter(inputParams, "inputParams");
        Intrinsics.checkNotNullParameter(outputParams, "outputParams");
        return encode(new Function(method, inputParams, outputParams));
    }
}
