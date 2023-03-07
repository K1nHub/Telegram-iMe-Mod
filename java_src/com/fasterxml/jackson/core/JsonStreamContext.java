package com.fasterxml.jackson.core;
/* loaded from: classes.dex */
public abstract class JsonStreamContext {
    protected int _index;
    protected int _type;

    public final int getCurrentIndex() {
        int i = this._index;
        if (i < 0) {
            return 0;
        }
        return i;
    }
}
