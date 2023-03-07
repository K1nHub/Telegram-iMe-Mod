package com.fasterxml.jackson.databind.util;

import java.io.Serializable;
/* loaded from: classes.dex */
public class RootNameLookup implements Serializable {
    public RootNameLookup() {
        new LRUMap(20, 200);
    }
}
