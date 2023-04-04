package com.iMe.storage.domain.model.twitter;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TwitterAuthStatus.kt */
/* loaded from: classes3.dex */
public enum TwitterAuthStatus {
    ACTIVE,
    VERIFICATION;
    
    public static final Companion Companion = new Companion(null);

    /* compiled from: TwitterAuthStatus.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final TwitterAuthStatus map(String name) {
            TwitterAuthStatus twitterAuthStatus;
            Intrinsics.checkNotNullParameter(name, "name");
            TwitterAuthStatus[] values = TwitterAuthStatus.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    twitterAuthStatus = null;
                    break;
                }
                twitterAuthStatus = values[i];
                if (Intrinsics.areEqual(twitterAuthStatus.name(), name)) {
                    break;
                }
                i++;
            }
            return twitterAuthStatus == null ? TwitterAuthStatus.VERIFICATION : twitterAuthStatus;
        }
    }
}
