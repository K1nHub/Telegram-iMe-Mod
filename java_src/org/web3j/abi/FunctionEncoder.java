package org.web3j.abi;

import java.util.Iterator;
import java.util.List;
import java.util.ServiceLoader;
import org.web3j.abi.datatypes.Function;
import org.web3j.abi.datatypes.Type;
import org.web3j.abi.spi.FunctionEncoderProvider;
import org.web3j.crypto.Hash;
import org.web3j.utils.Collection;
import org.web3j.utils.Numeric;
/* loaded from: classes6.dex */
public abstract class FunctionEncoder {
    private static FunctionEncoder DEFAULT_ENCODER;
    private static final ServiceLoader<FunctionEncoderProvider> loader = ServiceLoader.load(FunctionEncoderProvider.class);

    protected abstract String encodeFunction(Function function);

    public static String encode(Function function) {
        return encoder().encodeFunction(function);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String buildMethodSignature(String str, List<Type> list) {
        return str + "(" + Collection.join(list, ",", FunctionEncoder$$ExternalSyntheticLambda0.INSTANCE) + ")";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String buildMethodId(String str) {
        return Numeric.toHexString(Hash.sha3(str.getBytes())).substring(0, 10);
    }

    private static FunctionEncoder encoder() {
        Iterator<FunctionEncoderProvider> it = loader.iterator();
        return it.hasNext() ? it.next().get() : defaultEncoder();
    }

    private static FunctionEncoder defaultEncoder() {
        if (DEFAULT_ENCODER == null) {
            DEFAULT_ENCODER = new DefaultFunctionEncoder();
        }
        return DEFAULT_ENCODER;
    }
}
