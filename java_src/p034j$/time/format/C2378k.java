package p034j$.time.format;

import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import java.util.Objects;
/* renamed from: j$.time.format.k */
/* loaded from: classes2.dex */
final class C2378k implements InterfaceC2374g {

    /* renamed from: c */
    static final String[] f497c = {"+HH", "+HHmm", "+HH:mm", "+HHMM", "+HH:MM", "+HHMMss", "+HH:MM:ss", "+HHMMSS", "+HH:MM:SS"};

    /* renamed from: d */
    static final C2378k f498d = new C2378k("+HH:MM:ss", "Z");

    /* renamed from: a */
    private final String f499a;

    /* renamed from: b */
    private final int f500b;

    static {
        new C2378k("+HH:MM:ss", SessionDescription.SUPPORTED_SDP_VERSION);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2378k(String str, String str2) {
        Objects.requireNonNull(str, "pattern");
        Objects.requireNonNull(str2, "noOffsetText");
        int i = 0;
        while (true) {
            String[] strArr = f497c;
            if (i >= strArr.length) {
                throw new IllegalArgumentException("Invalid zone offset pattern: " + str);
            } else if (strArr[i].equals(str)) {
                this.f500b = i;
                this.f499a = str2;
                return;
            } else {
                i++;
            }
        }
    }

    public String toString() {
        String replace = this.f499a.replace("'", "''");
        return "Offset(" + f497c[this.f500b] + ",'" + replace + "')";
    }
}
