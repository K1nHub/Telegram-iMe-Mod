package org.web3j.rlp;

import java.math.BigInteger;
import java.util.Arrays;
/* loaded from: classes6.dex */
public class RlpString implements RlpType {
    private static final byte[] EMPTY = new byte[0];
    private final byte[] value;

    private RlpString(byte[] bArr) {
        this.value = bArr;
    }

    public byte[] getBytes() {
        return this.value;
    }

    public static RlpString create(byte[] bArr) {
        return new RlpString(bArr);
    }

    public static RlpString create(BigInteger bigInteger) {
        if (bigInteger == null || bigInteger.signum() < 1) {
            return new RlpString(EMPTY);
        }
        byte[] byteArray = bigInteger.toByteArray();
        if (byteArray[0] == 0) {
            return new RlpString(Arrays.copyOfRange(byteArray, 1, byteArray.length));
        }
        return new RlpString(byteArray);
    }

    public static RlpString create(String str) {
        return new RlpString(str.getBytes());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || RlpString.class != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.value, ((RlpString) obj).value);
    }

    public int hashCode() {
        return Arrays.hashCode(this.value);
    }
}
