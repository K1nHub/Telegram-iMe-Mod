package org.web3j.abi.datatypes;

import java.util.List;
import org.web3j.abi.datatypes.Type;
/* loaded from: classes6.dex */
public class DynamicArray<T extends Type> extends Array<T> {
    public DynamicArray(Class<T> cls, List<T> list) {
        super(cls, list);
    }

    @Override // org.web3j.abi.datatypes.Array, org.web3j.abi.datatypes.Type
    public int bytes32PaddedLength() {
        return super.bytes32PaddedLength() + 32;
    }

    @Override // org.web3j.abi.datatypes.Type
    public String getTypeAsString() {
        return AbiTypes.getTypeAString(getComponentType()) + "[]";
    }
}
