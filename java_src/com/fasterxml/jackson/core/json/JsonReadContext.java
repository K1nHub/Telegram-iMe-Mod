package com.fasterxml.jackson.core.json;

import com.fasterxml.jackson.core.JsonStreamContext;
import com.fasterxml.jackson.core.p015io.CharTypes;
/* loaded from: classes.dex */
public final class JsonReadContext extends JsonStreamContext {
    protected String _currentName;
    protected final JsonReadContext _parent;

    public JsonReadContext(JsonReadContext jsonReadContext, DupDetector dupDetector, int i, int i2, int i3) {
        this._parent = jsonReadContext;
        this._type = i;
        this._index = -1;
    }

    public static JsonReadContext createRootContext(DupDetector dupDetector) {
        return new JsonReadContext(null, dupDetector, 0, 1, 0);
    }

    public String getCurrentName() {
        return this._currentName;
    }

    public JsonReadContext getParent() {
        return this._parent;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(64);
        int i = this._type;
        if (i == 0) {
            sb.append("/");
        } else if (i == 1) {
            sb.append('[');
            sb.append(getCurrentIndex());
            sb.append(']');
        } else {
            sb.append('{');
            if (this._currentName != null) {
                sb.append('\"');
                CharTypes.appendQuoted(sb, this._currentName);
                sb.append('\"');
            } else {
                sb.append('?');
            }
            sb.append('}');
        }
        return sb.toString();
    }
}
