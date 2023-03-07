package com.fasterxml.jackson.core.p015io;

import com.fasterxml.jackson.core.SerializableString;
import java.io.Serializable;
/* renamed from: com.fasterxml.jackson.core.io.SerializedString */
/* loaded from: classes.dex */
public class SerializedString implements SerializableString, Serializable {
    protected final String _value;

    public SerializedString(String str) {
        if (str == null) {
            throw new IllegalStateException("Null String illegal for SerializedString");
        }
        this._value = str;
    }

    public final String toString() {
        return this._value;
    }

    public final int hashCode() {
        return this._value.hashCode();
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != SerializedString.class) {
            return false;
        }
        return this._value.equals(((SerializedString) obj)._value);
    }
}
