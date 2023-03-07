package org.web3j.abi.datatypes;

import java.util.Collections;
import java.util.List;
import org.web3j.abi.datatypes.Type;
/* loaded from: classes6.dex */
public abstract class StaticArray<T extends Type> extends Array<T> {
    @Override // org.web3j.abi.datatypes.Array, org.web3j.abi.datatypes.Type
    public List<T> getValue() {
        return Collections.unmodifiableList(this.value);
    }

    @Override // org.web3j.abi.datatypes.Type
    public String getTypeAsString() {
        return AbiTypes.getTypeAString(getComponentType()) + "[" + this.value.size() + "]";
    }
}
