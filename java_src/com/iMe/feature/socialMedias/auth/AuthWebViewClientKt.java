package com.iMe.feature.socialMedias.auth;

import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
/* compiled from: AuthWebViewClient.kt */
/* loaded from: classes3.dex */
public final class AuthWebViewClientKt {
    public static final boolean isStubUrl(String url) {
        boolean startsWith$default;
        boolean startsWith$default2;
        Intrinsics.checkNotNullParameter(url, "url");
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default(url, "https://stub/", false, 2, null);
        if (!startsWith$default) {
            startsWith$default2 = StringsKt__StringsJVMKt.startsWith$default(url, "http://stub/", false, 2, null);
            if (!startsWith$default2) {
                return false;
            }
        }
        return true;
    }
}
