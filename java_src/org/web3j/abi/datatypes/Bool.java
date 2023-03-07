package org.web3j.abi.datatypes;

import org.web3j.abi.datatypes.Type;
/* loaded from: classes6.dex */
public class Bool implements Type<Boolean> {
    private boolean value;

    @Override // org.web3j.abi.datatypes.Type
    public /* synthetic */ int bytes32PaddedLength() {
        return Type.CC.$default$bytes32PaddedLength(this);
    }

    @Override // org.web3j.abi.datatypes.Type
    public String getTypeAsString() {
        return "bool";
    }

    static {
        new Bool(false);
    }

    public Bool(boolean z) {
        this.value = z;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.web3j.abi.datatypes.Type
    public Boolean getValue() {
        return Boolean.valueOf(this.value);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && Bool.class == obj.getClass() && this.value == ((Bool) obj).value;
    }

    public int hashCode() {
        return this.value ? 1 : 0;
    }
}
