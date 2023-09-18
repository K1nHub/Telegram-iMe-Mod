package org.webrtc;

import com.google.android.exoplayer2.C0479C;
import java.io.UnsupportedEncodingException;
import java.util.Map;
/* loaded from: classes7.dex */
class JniHelper {
    JniHelper() {
    }

    @CalledByNative
    static byte[] getStringBytes(String str) {
        try {
            return str.getBytes(C0479C.ISO88591_NAME);
        } catch (UnsupportedEncodingException unused) {
            throw new RuntimeException("ISO-8859-1 is unsupported");
        }
    }

    @CalledByNative
    static Object getStringClass() {
        return String.class;
    }

    @CalledByNative
    static Object getKey(Map.Entry entry) {
        return entry.getKey();
    }

    @CalledByNative
    static Object getValue(Map.Entry entry) {
        return entry.getValue();
    }
}
