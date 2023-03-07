package org.web3j.rlp;

import java.util.Arrays;
import java.util.List;
/* loaded from: classes6.dex */
public class RlpEncoder {
    private static byte[] toByteArray(int i) {
        return new byte[]{(byte) ((i >> 24) & 255), (byte) ((i >> 16) & 255), (byte) ((i >> 8) & 255), (byte) (i & 255)};
    }

    public static byte[] encode(RlpType rlpType) {
        if (rlpType instanceof RlpString) {
            return encodeString((RlpString) rlpType);
        }
        return encodeList((RlpList) rlpType);
    }

    private static byte[] encode(byte[] bArr, int i) {
        if (bArr.length != 1 || i != RlpDecoder.OFFSET_SHORT_STRING || bArr[0] < 0 || bArr[0] > Byte.MAX_VALUE) {
            if (bArr.length <= 55) {
                byte[] bArr2 = new byte[bArr.length + 1];
                bArr2[0] = (byte) (i + bArr.length);
                System.arraycopy(bArr, 0, bArr2, 1, bArr.length);
                return bArr2;
            }
            byte[] minimalByteArray = toMinimalByteArray(bArr.length);
            byte[] bArr3 = new byte[bArr.length + minimalByteArray.length + 1];
            bArr3[0] = (byte) (i + 55 + minimalByteArray.length);
            System.arraycopy(minimalByteArray, 0, bArr3, 1, minimalByteArray.length);
            System.arraycopy(bArr, 0, bArr3, minimalByteArray.length + 1, bArr.length);
            return bArr3;
        }
        return bArr;
    }

    static byte[] encodeString(RlpString rlpString) {
        return encode(rlpString.getBytes(), RlpDecoder.OFFSET_SHORT_STRING);
    }

    private static byte[] toMinimalByteArray(int i) {
        byte[] byteArray = toByteArray(i);
        for (int i2 = 0; i2 < byteArray.length; i2++) {
            if (byteArray[i2] != 0) {
                return Arrays.copyOfRange(byteArray, i2, byteArray.length);
            }
        }
        return new byte[0];
    }

    static byte[] encodeList(RlpList rlpList) {
        List<RlpType> values = rlpList.getValues();
        if (values.isEmpty()) {
            return encode(new byte[0], RlpDecoder.OFFSET_SHORT_LIST);
        }
        byte[] bArr = new byte[0];
        for (RlpType rlpType : values) {
            bArr = concat(bArr, encode(rlpType));
        }
        return encode(bArr, RlpDecoder.OFFSET_SHORT_LIST);
    }

    private static byte[] concat(byte[] bArr, byte[] bArr2) {
        byte[] copyOf = Arrays.copyOf(bArr, bArr.length + bArr2.length);
        System.arraycopy(bArr2, 0, copyOf, bArr.length, bArr2.length);
        return copyOf;
    }
}
