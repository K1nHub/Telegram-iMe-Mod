package com.fasterxml.jackson.annotation;

import java.io.Serializable;
/* loaded from: classes.dex */
public class JsonInclude$Value implements Serializable {
    protected static final JsonInclude$Value EMPTY;
    protected final JsonInclude$Include _contentInclusion;
    protected final JsonInclude$Include _valueInclusion;

    static {
        JsonInclude$Include jsonInclude$Include = JsonInclude$Include.USE_DEFAULTS;
        EMPTY = new JsonInclude$Value(jsonInclude$Include, jsonInclude$Include);
    }

    protected JsonInclude$Value(JsonInclude$Include jsonInclude$Include, JsonInclude$Include jsonInclude$Include2) {
        this._valueInclusion = jsonInclude$Include == null ? JsonInclude$Include.USE_DEFAULTS : jsonInclude$Include;
        this._contentInclusion = jsonInclude$Include2 == null ? JsonInclude$Include.USE_DEFAULTS : jsonInclude$Include2;
    }

    public static JsonInclude$Value empty() {
        return EMPTY;
    }

    public String toString() {
        return String.format("[value=%s,content=%s]", this._valueInclusion, this._contentInclusion);
    }

    public int hashCode() {
        return (this._valueInclusion.hashCode() << 2) + this._contentInclusion.hashCode();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass() == JsonInclude$Value.class) {
            JsonInclude$Value jsonInclude$Value = (JsonInclude$Value) obj;
            return jsonInclude$Value._valueInclusion == this._valueInclusion && jsonInclude$Value._contentInclusion == this._contentInclusion;
        }
        return false;
    }
}
