package com.fasterxml.jackson.databind.node;

import java.io.Serializable;
/* loaded from: classes.dex */
public class JsonNodeFactory implements Serializable {
    private static final JsonNodeFactory decimalsNormalized;
    public static final JsonNodeFactory instance;

    static {
        JsonNodeFactory jsonNodeFactory = new JsonNodeFactory(false);
        decimalsNormalized = jsonNodeFactory;
        new JsonNodeFactory(true);
        instance = jsonNodeFactory;
    }

    public JsonNodeFactory(boolean z) {
    }
}
