package org.web3j.abi.datatypes;

import java.math.BigInteger;
import org.web3j.abi.datatypes.Type;
import org.web3j.utils.Numeric;
/* loaded from: classes6.dex */
public class Address implements Type<String> {
    private final Uint value;

    @Override // org.web3j.abi.datatypes.Type
    public /* synthetic */ int bytes32PaddedLength() {
        return Type.CC.$default$bytes32PaddedLength(this);
    }

    @Override // org.web3j.abi.datatypes.Type
    public String getTypeAsString() {
        return "address";
    }

    static {
        new Address(BigInteger.ZERO);
    }

    public Address(Uint uint) {
        this.value = uint;
    }

    public Address(BigInteger bigInteger) {
        this(160, bigInteger);
    }

    public Address(int i, BigInteger bigInteger) {
        this(new Uint(i, bigInteger));
    }

    public Address(String str) {
        this(160, str);
    }

    public Address(int i, String str) {
        this(i, Numeric.toBigInt(str));
    }

    public Uint toUint() {
        return this.value;
    }

    public String toString() {
        return Numeric.toHexStringWithPrefixZeroPadded(this.value.getValue(), this.value.getBitSize() >> 2);
    }

    @Override // org.web3j.abi.datatypes.Type
    public String getValue() {
        return toString();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Address.class != obj.getClass()) {
            return false;
        }
        Address address = (Address) obj;
        Uint uint = this.value;
        return uint != null ? uint.value.equals(address.value.value) : address.value == null;
    }

    public int hashCode() {
        Uint uint = this.value;
        if (uint != null) {
            return uint.hashCode();
        }
        return 0;
    }
}
