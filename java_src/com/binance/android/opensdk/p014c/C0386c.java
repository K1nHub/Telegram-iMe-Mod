package com.binance.android.opensdk.p014c;

import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import java.security.MessageDigest;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.binance.android.opensdk.c.c */
/* loaded from: classes.dex */
public final class C0386c {
    /* renamed from: a */
    public static final String m835a(byte[] byteStr) {
        Intrinsics.checkParameterIsNotNull(byteStr, "byteStr");
        StringBuffer stringBuffer = new StringBuffer();
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.reset();
            messageDigest.update(byteStr);
            byte[] digest = messageDigest.digest();
            Intrinsics.checkExpressionValueIsNotNull(digest, "messageDigest.digest()");
            for (byte b : digest) {
                String hexString = Integer.toHexString(b & 255);
                Intrinsics.checkExpressionValueIsNotNull(hexString, "Integer.toHexString(0xFF and byte.toInt())");
                if (hexString.length() == 1) {
                    stringBuffer.append(SessionDescription.SUPPORTED_SDP_VERSION);
                }
                stringBuffer.append(hexString);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        String stringBuffer2 = stringBuffer.toString();
        Intrinsics.checkExpressionValueIsNotNull(stringBuffer2, "stringBuffer.toString()");
        return stringBuffer2;
    }
}
