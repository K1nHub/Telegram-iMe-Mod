package org.web3j.abi.datatypes;

import java.math.BigInteger;
/* loaded from: classes6.dex */
public abstract class IntType extends NumericType {
    private final int bitSize;

    public IntType(String str, int i, BigInteger bigInteger) {
        super(str + i, bigInteger);
        this.bitSize = i;
        if (!valid()) {
            throw new UnsupportedOperationException("Bit size must be 8 bit aligned, and in range 0 < bitSize <= 256");
        }
    }

    public int getBitSize() {
        return this.bitSize;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean valid() {
        return isValidBitSize(this.bitSize) && isValidBitCount(this.bitSize, this.value);
    }

    private static boolean isValidBitSize(int i) {
        return i % 8 == 0 && i > 0 && i <= 256;
    }

    private static boolean isValidBitCount(int i, BigInteger bigInteger) {
        return bigInteger.bitLength() <= i;
    }
}
