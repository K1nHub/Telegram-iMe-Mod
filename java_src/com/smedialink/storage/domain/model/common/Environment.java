package com.smedialink.storage.domain.model.common;

import java.util.ArrayList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: Environment.kt */
/* loaded from: classes3.dex */
public enum Environment {
    PRODUCTION,
    STAGE,
    DEVELOPMENT;
    
    public static final Companion Companion = new Companion(null);

    public static final String[] getNames() {
        return Companion.getNames();
    }

    public static final Environment map(String str) {
        return Companion.map(str);
    }

    public final boolean isStage() {
        return this == STAGE;
    }

    public final boolean isDevelopment() {
        return this == DEVELOPMENT;
    }

    /* compiled from: Environment.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Environment map(String value) {
            Environment environment;
            Intrinsics.checkNotNullParameter(value, "value");
            Environment[] values = Environment.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    environment = null;
                    break;
                }
                environment = values[i];
                if (Intrinsics.areEqual(environment.name(), value)) {
                    break;
                }
                i++;
            }
            return environment == null ? Environment.PRODUCTION : environment;
        }

        public final String[] getNames() {
            Environment[] values = Environment.values();
            ArrayList arrayList = new ArrayList(values.length);
            for (Environment environment : values) {
                arrayList.add(environment.name());
            }
            return (String[]) arrayList.toArray(new String[0]);
        }
    }
}
