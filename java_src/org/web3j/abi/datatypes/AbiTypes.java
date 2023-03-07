package org.web3j.abi.datatypes;
/* loaded from: classes6.dex */
public final class AbiTypes {
    public static String getTypeAString(Class<? extends Type> cls) {
        return Utf8String.class.equals(cls) ? "string" : DynamicBytes.class.equals(cls) ? "bytes" : cls.getSimpleName().toLowerCase();
    }
}
