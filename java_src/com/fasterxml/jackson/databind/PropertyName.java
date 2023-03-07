package com.fasterxml.jackson.databind;

import java.io.Serializable;
/* loaded from: classes.dex */
public class PropertyName implements Serializable {
    protected final String _namespace;
    protected final String _simpleName;

    static {
        new PropertyName("", null);
        new PropertyName(new String(""), null);
    }

    public PropertyName(String str) {
        this(str, null);
    }

    public PropertyName(String str, String str2) {
        this._simpleName = str == null ? "" : str;
        this._namespace = str2;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass() == PropertyName.class) {
            PropertyName propertyName = (PropertyName) obj;
            String str = this._simpleName;
            if (str == null) {
                if (propertyName._simpleName != null) {
                    return false;
                }
            } else if (!str.equals(propertyName._simpleName)) {
                return false;
            }
            String str2 = this._namespace;
            if (str2 == null) {
                return propertyName._namespace == null;
            }
            return str2.equals(propertyName._namespace);
        }
        return false;
    }

    public int hashCode() {
        String str = this._namespace;
        if (str == null) {
            return this._simpleName.hashCode();
        }
        return str.hashCode() ^ this._simpleName.hashCode();
    }

    public String toString() {
        if (this._namespace == null) {
            return this._simpleName;
        }
        return "{" + this._namespace + "}" + this._simpleName;
    }
}
