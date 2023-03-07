package org.apache.commons.codec.binary;

import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
/* loaded from: classes4.dex */
public class StringUtils {
    private static String newString(byte[] bArr, Charset charset) {
        if (bArr == null) {
            return null;
        }
        return new String(bArr, charset);
    }

    public static String newStringUtf8(byte[] bArr) {
        return newString(bArr, StandardCharsets.UTF_8);
    }
}
