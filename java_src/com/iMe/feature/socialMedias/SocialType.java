package com.iMe.feature.socialMedias;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
/* compiled from: SocialType.kt */
/* loaded from: classes3.dex */
public enum SocialType {
    TWITTER,
    INSTAGRAM,
    LINKEDIN,
    YOUTUBE,
    FACEBOOK,
    DISCORD,
    EMPTY;
    
    public static final Companion Companion = new Companion(null);

    /* compiled from: SocialType.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final SocialType defineType(String input) {
            SocialType socialType;
            Intrinsics.checkNotNullParameter(input, "input");
            SocialType[] values = SocialType.values();
            int length = values.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    socialType = null;
                    break;
                }
                socialType = values[i];
                if (StringsKt.equals(socialType.name(), input, true)) {
                    break;
                }
                i++;
            }
            return socialType == null ? SocialType.EMPTY : socialType;
        }
    }
}
