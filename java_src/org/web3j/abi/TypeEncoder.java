package org.web3j.abi;

import java.math.BigInteger;
import java.util.ArrayList;
import org.web3j.abi.datatypes.Address;
import org.web3j.abi.datatypes.Array;
import org.web3j.abi.datatypes.Bool;
import org.web3j.abi.datatypes.Bytes;
import org.web3j.abi.datatypes.BytesType;
import org.web3j.abi.datatypes.DynamicArray;
import org.web3j.abi.datatypes.DynamicBytes;
import org.web3j.abi.datatypes.DynamicStruct;
import org.web3j.abi.datatypes.NumericType;
import org.web3j.abi.datatypes.StaticArray;
import org.web3j.abi.datatypes.Type;
import org.web3j.abi.datatypes.Uint;
import org.web3j.abi.datatypes.Utf8String;
import org.web3j.abi.datatypes.primitive.PrimitiveType;
import org.web3j.compat.Compat;
import org.web3j.utils.Numeric;
/* loaded from: classes6.dex */
public class TypeEncoder {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isDynamic(Type type) {
        return (type instanceof DynamicBytes) || (type instanceof Utf8String) || (type instanceof DynamicArray);
    }

    public static String encode(Type type) {
        if (type instanceof NumericType) {
            return encodeNumeric((NumericType) type);
        }
        if (type instanceof Address) {
            return encodeAddress((Address) type);
        }
        if (type instanceof Bool) {
            return encodeBool((Bool) type);
        }
        if (type instanceof Bytes) {
            return encodeBytes((Bytes) type);
        }
        if (type instanceof DynamicBytes) {
            return encodeDynamicBytes((DynamicBytes) type);
        }
        if (type instanceof Utf8String) {
            return encodeString((Utf8String) type);
        }
        if (type instanceof StaticArray) {
            return encodeArrayValues((StaticArray) type);
        }
        if (type instanceof DynamicStruct) {
            return encodeDynamicStruct((DynamicStruct) type);
        }
        if (type instanceof DynamicArray) {
            return encodeDynamicArray((DynamicArray) type);
        }
        if (type instanceof PrimitiveType) {
            return encode(((PrimitiveType) type).toSolidityType());
        }
        throw new UnsupportedOperationException("Type cannot be encoded: " + type.getClass());
    }

    static String encodeAddress(Address address) {
        return encodeNumeric(address.toUint());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String encodeNumeric(NumericType numericType) {
        byte[] byteArray = toByteArray(numericType);
        byte paddingValue = getPaddingValue(numericType);
        byte[] bArr = new byte[32];
        if (paddingValue != 0) {
            for (int i = 0; i < 32; i++) {
                bArr[i] = paddingValue;
            }
        }
        System.arraycopy(byteArray, 0, bArr, 32 - byteArray.length, byteArray.length);
        return Numeric.toHexStringNoPrefix(bArr);
    }

    private static byte getPaddingValue(NumericType numericType) {
        return numericType.getValue().signum() == -1 ? (byte) -1 : (byte) 0;
    }

    private static byte[] toByteArray(NumericType numericType) {
        BigInteger value = numericType.getValue();
        if ((numericType instanceof Uint) && value.bitLength() == 256) {
            byte[] bArr = new byte[32];
            System.arraycopy(value.toByteArray(), 1, bArr, 0, 32);
            return bArr;
        }
        return value.toByteArray();
    }

    static String encodeBool(Bool bool) {
        byte[] bArr = new byte[32];
        if (bool.getValue().booleanValue()) {
            bArr[31] = 1;
        }
        return Numeric.toHexStringNoPrefix(bArr);
    }

    static String encodeBytes(BytesType bytesType) {
        byte[] value = bytesType.getValue();
        int length = value.length;
        int i = length % 32;
        if (i != 0) {
            byte[] bArr = new byte[(32 - i) + length];
            System.arraycopy(value, 0, bArr, 0, length);
            value = bArr;
        }
        return Numeric.toHexStringNoPrefix(value);
    }

    static String encodeDynamicBytes(DynamicBytes dynamicBytes) {
        String encode = encode(new Uint(BigInteger.valueOf(dynamicBytes.getValue().length)));
        String encodeBytes = encodeBytes(dynamicBytes);
        return encode + encodeBytes;
    }

    static String encodeString(Utf8String utf8String) {
        return encodeDynamicBytes(new DynamicBytes(utf8String.getValue().getBytes(Compat.UTF_8)));
    }

    static <T extends Type> String encodeArrayValues(Array<T> array) {
        StringBuilder sb = new StringBuilder();
        for (T t : array.getValue()) {
            sb.append(encode(t));
        }
        return sb.toString();
    }

    static String encodeDynamicStruct(DynamicStruct dynamicStruct) {
        String encodeDynamicStructValues = encodeDynamicStructValues(dynamicStruct);
        return encodeDynamicStructValues;
    }

    private static String encodeDynamicStructValues(DynamicStruct dynamicStruct) {
        int i = 0;
        for (int i2 = 0; i2 < dynamicStruct.getValue().size(); i2++) {
            Type type = (Type) dynamicStruct.getValue().get(i2);
            i = isDynamic(type) ? i + 32 : i + type.bytes32PaddedLength();
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i3 = 0; i3 < dynamicStruct.getValue().size(); i3++) {
            Type type2 = (Type) dynamicStruct.getValue().get(i3);
            if (isDynamic(type2)) {
                arrayList.add(Numeric.toHexStringNoPrefix(Numeric.toBytesPadded(new BigInteger(Long.toString(i)), 32)));
                arrayList2.add(encode(type2));
                i += type2.bytes32PaddedLength();
            } else {
                arrayList.add(encode((Type) dynamicStruct.getValue().get(i3)));
            }
        }
        ArrayList arrayList3 = new ArrayList();
        arrayList3.addAll(arrayList);
        arrayList3.addAll(arrayList2);
        return Compat.join("", (CharSequence[]) arrayList3.toArray(new String[0]));
    }

    static <T extends Type> String encodeDynamicArray(DynamicArray<T> dynamicArray) {
        String encode = encode(new Uint(BigInteger.valueOf(dynamicArray.getValue().size())));
        String encodeArrayValuesOffsets = encodeArrayValuesOffsets(dynamicArray);
        String encodeArrayValues = encodeArrayValues(dynamicArray);
        return encode + encodeArrayValuesOffsets + encodeArrayValues;
    }

    private static <T extends Type> String encodeArrayValuesOffsets(DynamicArray<T> dynamicArray) {
        int length;
        StringBuilder sb = new StringBuilder();
        boolean z = !dynamicArray.getValue().isEmpty() && (dynamicArray.getValue().get(0) instanceof DynamicBytes);
        boolean z2 = !dynamicArray.getValue().isEmpty() && (dynamicArray.getValue().get(0) instanceof Utf8String);
        if (z || z2) {
            long j = 0;
            for (int i = 0; i < dynamicArray.getValue().size(); i++) {
                if (i == 0) {
                    j = dynamicArray.getValue().size() * 32;
                } else {
                    if (z) {
                        length = ((byte[]) dynamicArray.getValue().get(i - 1).getValue()).length;
                    } else {
                        length = ((String) dynamicArray.getValue().get(i - 1).getValue()).length();
                    }
                    j += ((((length + 32) - 1) / 32) * 32) + 32;
                }
                sb.append(Numeric.toHexStringNoPrefix(Numeric.toBytesPadded(new BigInteger(Long.toString(j)), 32)));
            }
        }
        return sb.toString();
    }
}
