package org.web3j.abi.datatypes;

import java.util.List;
/* loaded from: classes6.dex */
public class DynamicStruct extends DynamicArray<Type> implements StructType {
    private final List<Class<Type>> itemTypes;

    @Override // org.web3j.abi.datatypes.DynamicArray, org.web3j.abi.datatypes.Array, org.web3j.abi.datatypes.Type
    public int bytes32PaddedLength() {
        return super.bytes32PaddedLength() + 32;
    }

    @Override // org.web3j.abi.datatypes.DynamicArray, org.web3j.abi.datatypes.Type
    public String getTypeAsString() {
        StringBuilder sb = new StringBuilder("(");
        for (int i = 0; i < this.itemTypes.size(); i++) {
            Class<Type> cls = this.itemTypes.get(i);
            if (StructType.class.isAssignableFrom(cls)) {
                sb.append(((Type) getValue().get(i)).getTypeAsString());
            } else {
                sb.append(AbiTypes.getTypeAString(cls));
            }
            if (i < this.itemTypes.size() - 1) {
                sb.append(",");
            }
        }
        sb.append(")");
        return sb.toString();
    }
}
