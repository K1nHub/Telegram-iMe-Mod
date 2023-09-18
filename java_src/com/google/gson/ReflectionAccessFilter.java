package com.google.gson;
/* loaded from: classes4.dex */
public interface ReflectionAccessFilter {

    /* loaded from: classes4.dex */
    public enum FilterResult {
        ALLOW,
        INDECISIVE,
        BLOCK_INACCESSIBLE,
        BLOCK_ALL
    }

    FilterResult check(Class<?> cls);
}
