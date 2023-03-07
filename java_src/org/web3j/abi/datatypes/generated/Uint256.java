package org.web3j.abi.datatypes.generated;

import java.math.BigInteger;
import org.web3j.abi.datatypes.Uint;
/* loaded from: classes6.dex */
public class Uint256 extends Uint {
    static {
        new Uint256(BigInteger.ZERO);
    }

    public Uint256(BigInteger bigInteger) {
        super(256, bigInteger);
    }
}
