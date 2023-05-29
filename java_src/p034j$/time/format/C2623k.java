package p034j$.time.format;

import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import java.util.Objects;
/* renamed from: j$.time.format.k */
/* loaded from: classes2.dex */
final class C2623k implements InterfaceC2619g {

    /* renamed from: c */
    static final String[] f506c = {"+HH", "+HHmm", "+HH:mm", "+HHMM", "+HH:MM", "+HHMMss", "+HH:MM:ss", "+HHMMSS", "+HH:MM:SS"};

    /* renamed from: d */
    static final C2623k f507d = new C2623k("+HH:MM:ss", "Z");

    /* renamed from: a */
    private final String f508a;

    /* renamed from: b */
    private final int f509b;

    static {
        new C2623k("+HH:MM:ss", SessionDescription.SUPPORTED_SDP_VERSION);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2623k(String str, String str2) {
        Objects.requireNonNull(str, "pattern");
        Objects.requireNonNull(str2, "noOffsetText");
        int i = 0;
        while (true) {
            String[] strArr = f506c;
            if (i >= strArr.length) {
                throw new IllegalArgumentException("Invalid zone offset pattern: " + str);
            } else if (strArr[i].equals(str)) {
                this.f509b = i;
                this.f508a = str2;
                return;
            } else {
                i++;
            }
        }
    }

    public String toString() {
        String replace = this.f508a.replace("'", "''");
        return "Offset(" + f506c[this.f509b] + ",'" + replace + "')";
    }
}
