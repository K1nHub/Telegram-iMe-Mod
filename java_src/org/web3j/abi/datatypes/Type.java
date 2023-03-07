package org.web3j.abi.datatypes;
/* loaded from: classes6.dex */
public interface Type<T> {

    /* renamed from: org.web3j.abi.datatypes.Type$-CC  reason: invalid class name */
    /* loaded from: classes6.dex */
    public final /* synthetic */ class CC {
        public static int $default$bytes32PaddedLength(Type type) {
            return 32;
        }
    }

    int bytes32PaddedLength();

    String getTypeAsString();

    T getValue();
}
