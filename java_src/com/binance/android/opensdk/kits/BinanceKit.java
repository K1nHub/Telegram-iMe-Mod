package com.binance.android.opensdk.kits;

import android.util.Base64;
import androidx.annotation.Keep;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt__StringsJVMKt;
/* loaded from: classes.dex */
public final class BinanceKit {
    /* renamed from: a */
    private static final byte[] m809a(String str) {
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        Charset charset = Charsets.UTF_8;
        if (str != null) {
            byte[] bytes = str.getBytes(charset);
            Intrinsics.checkExpressionValueIsNotNull(bytes, "(this as java.lang.String).getBytes(charset)");
            byte[] digest = messageDigest.digest(bytes);
            Intrinsics.checkExpressionValueIsNotNull(digest, "MessageDigest.getInstanc…e_verifier.toByteArray())");
            return digest;
        }
        throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
    }

    @Keep
    public static final String generateCodeChallenge(String code_verifier) {
        String replace$default;
        String replace$default2;
        String replace$default3;
        Intrinsics.checkParameterIsNotNull(code_verifier, "code_verifier");
        String base64 = Base64.encodeToString(m809a(code_verifier), 0);
        Intrinsics.checkExpressionValueIsNotNull(base64, "base64");
        replace$default = StringsKt__StringsJVMKt.replace$default(base64, "+", "-", false, 4, (Object) null);
        replace$default2 = StringsKt__StringsJVMKt.replace$default(replace$default, "/", "_", false, 4, (Object) null);
        replace$default3 = StringsKt__StringsJVMKt.replace$default(replace$default2, "=", "", false, 4, (Object) null);
        return replace$default3;
    }
}
