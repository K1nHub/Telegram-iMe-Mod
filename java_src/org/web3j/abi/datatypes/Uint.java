package org.web3j.abi.datatypes;

import java.math.BigInteger;
/* loaded from: classes6.dex */
public class Uint extends IntType {
    static {
        new Uint(BigInteger.ZERO);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Uint(int i, BigInteger bigInteger) {
        super("uint", i, bigInteger);
    }

    public Uint(BigInteger bigInteger) {
        this(256, bigInteger);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.web3j.abi.datatypes.IntType
    public boolean valid() {
        return super.valid() && this.value.signum() >= 0;
    }
}
