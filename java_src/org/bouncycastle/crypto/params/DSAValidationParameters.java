package org.bouncycastle.crypto.params;

import org.bouncycastle.util.Arrays;
/* loaded from: classes4.dex */
public class DSAValidationParameters {
    private int counter;
    private byte[] seed;

    public DSAValidationParameters(byte[] bArr, int i) {
        this(bArr, i, -1);
    }

    public DSAValidationParameters(byte[] bArr, int i, int i2) {
        this.seed = bArr;
        this.counter = i;
    }

    public boolean equals(Object obj) {
        if (obj instanceof DSAValidationParameters) {
            DSAValidationParameters dSAValidationParameters = (DSAValidationParameters) obj;
            if (dSAValidationParameters.counter != this.counter) {
                return false;
            }
            return Arrays.areEqual(this.seed, dSAValidationParameters.seed);
        }
        return false;
    }

    public int getCounter() {
        return this.counter;
    }

    public byte[] getSeed() {
        return this.seed;
    }

    public int hashCode() {
        return this.counter ^ Arrays.hashCode(this.seed);
    }
}
