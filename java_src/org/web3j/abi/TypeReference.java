package org.web3j.abi;

import java.lang.reflect.ParameterizedType;
import java.util.regex.Pattern;
import org.web3j.abi.datatypes.Type;
/* loaded from: classes6.dex */
public abstract class TypeReference<T extends Type> implements Comparable<TypeReference<T>> {
    public int compareTo(TypeReference<T> typeReference) {
        return 0;
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return compareTo((TypeReference) ((TypeReference) obj));
    }

    static {
        Pattern.compile("\\[(\\d*)]");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public TypeReference() {
        this(false);
    }

    protected TypeReference(boolean z) {
        java.lang.reflect.Type genericSuperclass = getClass().getGenericSuperclass();
        if (genericSuperclass instanceof Class) {
            throw new RuntimeException("Missing type parameter.");
        }
        java.lang.reflect.Type type = ((ParameterizedType) genericSuperclass).getActualTypeArguments()[0];
    }
}
