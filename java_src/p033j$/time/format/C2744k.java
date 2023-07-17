package p033j$.time.format;

import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import java.util.Objects;
/* renamed from: j$.time.format.k */
/* loaded from: classes2.dex */
final class C2744k implements InterfaceC2740g {

    /* renamed from: c */
    static final String[] f588c = {"+HH", "+HHmm", "+HH:mm", "+HHMM", "+HH:MM", "+HHMMss", "+HH:MM:ss", "+HHMMSS", "+HH:MM:SS"};

    /* renamed from: d */
    static final C2744k f589d = new C2744k("+HH:MM:ss", "Z");

    /* renamed from: a */
    private final String f590a;

    /* renamed from: b */
    private final int f591b;

    static {
        new C2744k("+HH:MM:ss", SessionDescription.SUPPORTED_SDP_VERSION);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2744k(String str, String str2) {
        Objects.requireNonNull(str, "pattern");
        Objects.requireNonNull(str2, "noOffsetText");
        int i = 0;
        while (true) {
            String[] strArr = f588c;
            if (i >= strArr.length) {
                throw new IllegalArgumentException("Invalid zone offset pattern: " + str);
            } else if (strArr[i].equals(str)) {
                this.f591b = i;
                this.f590a = str2;
                return;
            } else {
                i++;
            }
        }
    }

    public String toString() {
        String replace = this.f590a.replace("'", "''");
        return "Offset(" + f588c[this.f591b] + ",'" + replace + "')";
    }
}
