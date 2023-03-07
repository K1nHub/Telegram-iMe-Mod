package org.web3j.abi;

import java.math.BigInteger;
import java.util.List;
import org.web3j.abi.datatypes.Function;
import org.web3j.abi.datatypes.StaticArray;
import org.web3j.abi.datatypes.Type;
import org.web3j.abi.datatypes.Uint;
/* loaded from: classes6.dex */
public class DefaultFunctionEncoder extends FunctionEncoder {
    @Override // org.web3j.abi.FunctionEncoder
    public String encodeFunction(Function function) {
        List<Type> inputParameters = function.getInputParameters();
        String buildMethodId = FunctionEncoder.buildMethodId(FunctionEncoder.buildMethodSignature(function.getName(), inputParameters));
        StringBuilder sb = new StringBuilder();
        sb.append(buildMethodId);
        return encodeParameters(inputParameters, sb);
    }

    private static String encodeParameters(List<Type> list, StringBuilder sb) {
        int length = getLength(list) * 32;
        StringBuilder sb2 = new StringBuilder();
        for (Type type : list) {
            String encode = TypeEncoder.encode(type);
            if (TypeEncoder.isDynamic(type)) {
                sb.append(TypeEncoder.encodeNumeric(new Uint(BigInteger.valueOf(length))));
                sb2.append(encode);
                length += encode.length() >> 1;
            } else {
                sb.append(encode);
            }
        }
        sb.append((CharSequence) sb2);
        return sb.toString();
    }

    private static int getLength(List<Type> list) {
        int i = 0;
        for (Type type : list) {
            i = type instanceof StaticArray ? i + ((StaticArray) type).getValue().size() : i + 1;
        }
        return i;
    }
}
