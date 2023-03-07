package org.web3j.abi.datatypes.primitive;

import java.io.Serializable;
import java.lang.Comparable;
import java8.util.Objects;
import org.web3j.abi.datatypes.Type;
/* loaded from: classes6.dex */
public abstract class PrimitiveType<T extends Serializable & Comparable<T>> implements Type<T> {
    private final String type;
    private final T value;

    @Override // org.web3j.abi.datatypes.Type
    public /* synthetic */ int bytes32PaddedLength() {
        return Type.CC.$default$bytes32PaddedLength(this);
    }

    public abstract Type toSolidityType();

    @Override // org.web3j.abi.datatypes.Type
    public T getValue() {
        return this.value;
    }

    @Override // org.web3j.abi.datatypes.Type
    public String getTypeAsString() {
        return this.type;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || PrimitiveType.class != obj.getClass()) {
            return false;
        }
        PrimitiveType primitiveType = (PrimitiveType) obj;
        return this.type.equals(primitiveType.type) && this.value.equals(primitiveType.value);
    }

    public int hashCode() {
        return Objects.hash(this.type, this.value);
    }
}
