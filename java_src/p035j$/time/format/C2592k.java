package p035j$.time.format;

import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import java.util.Objects;
/* renamed from: j$.time.format.k */
/* loaded from: classes2.dex */
final class C2592k implements InterfaceC2588g {

    /* renamed from: c */
    static final String[] f508c = {"+HH", "+HHmm", "+HH:mm", "+HHMM", "+HH:MM", "+HHMMss", "+HH:MM:ss", "+HHMMSS", "+HH:MM:SS"};

    /* renamed from: d */
    static final C2592k f509d = new C2592k("+HH:MM:ss", "Z");

    /* renamed from: a */
    private final String f510a;

    /* renamed from: b */
    private final int f511b;

    static {
        new C2592k("+HH:MM:ss", SessionDescription.SUPPORTED_SDP_VERSION);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2592k(String str, String str2) {
        Objects.requireNonNull(str, "pattern");
        Objects.requireNonNull(str2, "noOffsetText");
        int i = 0;
        while (true) {
            String[] strArr = f508c;
            if (i >= strArr.length) {
                throw new IllegalArgumentException("Invalid zone offset pattern: " + str);
            } else if (strArr[i].equals(str)) {
                this.f511b = i;
                this.f510a = str2;
                return;
            } else {
                i++;
            }
        }
    }

    public String toString() {
        String replace = this.f510a.replace("'", "''");
        return "Offset(" + f508c[this.f511b] + ",'" + replace + "')";
    }
}
