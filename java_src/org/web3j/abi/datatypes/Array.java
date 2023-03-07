package org.web3j.abi.datatypes;

import java.util.List;
import org.web3j.abi.datatypes.Type;
import org.web3j.compat.Compat;
/* loaded from: classes6.dex */
public abstract class Array<T extends Type> implements Type<List<T>> {
    private final Class<T> type;
    protected final List<T> value;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Array(Class<T> cls, List<T> list) {
        checkValid(cls, list);
        this.type = cls;
        this.value = list;
    }

    @Override // org.web3j.abi.datatypes.Type
    public int bytes32PaddedLength() {
        int i = 0;
        for (int i2 = 0; i2 < this.value.size(); i2++) {
            i += this.value.get(i2).bytes32PaddedLength();
        }
        return i;
    }

    @Override // org.web3j.abi.datatypes.Type
    public List<T> getValue() {
        return this.value;
    }

    public Class<T> getComponentType() {
        return this.type;
    }

    private void checkValid(Class<T> cls, List<T> list) {
        Compat.requireNonNull(cls);
        Compat.requireNonNull(list);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Array array = (Array) obj;
        if (this.type.equals(array.type)) {
            return Compat.equals(this.value, array.value);
        }
        return false;
    }

    public int hashCode() {
        int hashCode = this.type.hashCode() * 31;
        List<T> list = this.value;
        return hashCode + (list != null ? list.hashCode() : 0);
    }
}
