package com.fasterxml.jackson.databind.ext;

import java.util.logging.Logger;
/* loaded from: classes.dex */
public abstract class Java7Support {
    private static final Java7Support IMPL;

    static {
        Java7Support java7Support;
        try {
            java7Support = (Java7Support) Java7SupportImpl.class.newInstance();
        } catch (Throwable unused) {
            Logger.getLogger(Java7Support.class.getName()).warning("Unable to load JDK7 types (annotations, java.nio.file.Path): no Java7 support added");
            java7Support = null;
        }
        IMPL = java7Support;
    }

    public static Java7Support instance() {
        return IMPL;
    }
}
