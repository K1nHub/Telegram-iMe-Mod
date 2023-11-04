package com.binance.android.opensdk.kits;

import android.util.Base64;
import androidx.annotation.Keep;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt__StringsJVMKt;
@Metadata(m154bv = {1, 0, 3}, m153d1 = {"\u0000\u0010\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0002\u001a\u0010\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0007\u001a\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0001\u001a\u00020\u0000H\u0002¨\u0006\u0005"}, m152d2 = {"", "code_verifier", "generateCodeChallenge", "", "sha256", "app_release"}, m151k = 2, m150mv = {1, 4, 0})
/* loaded from: classes.dex */
public final class BinanceKit {
    /* renamed from: a */
    private static final byte[] m1124a(String str) {
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
        String base64 = Base64.encodeToString(m1124a(code_verifier), 0);
        Intrinsics.checkExpressionValueIsNotNull(base64, "base64");
        replace$default = StringsKt__StringsJVMKt.replace$default(base64, "+", "-", false, 4, (Object) null);
        replace$default2 = StringsKt__StringsJVMKt.replace$default(replace$default, "/", "_", false, 4, (Object) null);
        replace$default3 = StringsKt__StringsJVMKt.replace$default(replace$default2, "=", "", false, 4, (Object) null);
        return replace$default3;
    }
}
