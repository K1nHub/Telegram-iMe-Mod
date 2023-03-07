package com.fasterxml.jackson.databind.cfg;

import java.io.Serializable;
import java.util.Collections;
import java.util.Map;
/* loaded from: classes.dex */
public abstract class ContextAttributes {
    public static ContextAttributes getEmpty() {
        return Impl.getEmpty();
    }

    /* loaded from: classes.dex */
    public static class Impl extends ContextAttributes implements Serializable {
        protected static final Impl EMPTY = new Impl(Collections.emptyMap());

        protected Impl(Map<?, ?> map) {
        }

        public static ContextAttributes getEmpty() {
            return EMPTY;
        }
    }
}
