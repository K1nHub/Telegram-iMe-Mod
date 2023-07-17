package com.squareup.okhttp;

import com.google.android.exoplayer2.C0480C;
import java.io.UnsupportedEncodingException;
import okio.ByteString;
/* loaded from: classes4.dex */
public final class Credentials {
    public static String basic(String str, String str2) {
        try {
            String base64 = ByteString.m74of((str + ":" + str2).getBytes(C0480C.ISO88591_NAME)).base64();
            return "Basic " + base64;
        } catch (UnsupportedEncodingException unused) {
            throw new AssertionError();
        }
    }
}
