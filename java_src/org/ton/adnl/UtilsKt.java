package org.ton.adnl;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: utils.kt */
/* loaded from: classes6.dex */
public final class UtilsKt {
    public static final String ipv4(int i) {
        String str = ((i >> 24) & 255) + "." + ((i >> 16) & 255) + "." + ((i >> 8) & 255) + "." + (i & 255);
        Intrinsics.checkNotNullExpressionValue(str, "StringBuilder().apply(builderAction).toString()");
        return str;
    }
}
