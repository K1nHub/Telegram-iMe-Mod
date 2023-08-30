package com.bumptech.glide;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class GlideExperiments {
    private final Map<Class<?>, Object> experiments;

    GlideExperiments(Builder builder) {
        this.experiments = Collections.unmodifiableMap(new HashMap(builder.experiments));
    }

    public boolean isEnabled(Class<Object> cls) {
        return this.experiments.containsKey(cls);
    }

    /* loaded from: classes.dex */
    static final class Builder {
        private final Map<Class<?>, Object> experiments = new HashMap();

        /* JADX INFO: Access modifiers changed from: package-private */
        public GlideExperiments build() {
            return new GlideExperiments(this);
        }
    }
}
