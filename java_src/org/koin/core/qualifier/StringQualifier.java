package org.koin.core.qualifier;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: StringQualifier.kt */
/* loaded from: classes4.dex */
public final class StringQualifier implements Qualifier {
    private final String value;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof StringQualifier) && Intrinsics.areEqual(getValue(), ((StringQualifier) obj).getValue());
    }

    public int hashCode() {
        return getValue().hashCode();
    }

    public StringQualifier(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.value = value;
    }

    @Override // org.koin.core.qualifier.Qualifier
    public String getValue() {
        return this.value;
    }

    public String toString() {
        return getValue();
    }
}
