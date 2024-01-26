package p033j$.time;

import p033j$.time.zone.AbstractC2761g;
import p033j$.time.zone.C2757c;
import p033j$.time.zone.C2758d;
/* renamed from: j$.time.p */
/* loaded from: classes2.dex */
final class C2725p extends AbstractC2723n {

    /* renamed from: a */
    private final String f615a;

    /* renamed from: b */
    private final transient C2757c f616b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2725p(String str, C2757c c2757c) {
        this.f615a = str;
        this.f616b = c2757c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: o */
    public static C2725p m781o(String str, boolean z) {
        int length = str.length();
        if (length >= 2) {
            for (int i = 0; i < length; i++) {
                char charAt = str.charAt(i);
                if ((charAt < 'a' || charAt > 'z') && ((charAt < 'A' || charAt > 'Z') && ((charAt != '/' || i == 0) && ((charAt < '0' || charAt > '9' || i == 0) && ((charAt != '~' || i == 0) && ((charAt != '.' || i == 0) && ((charAt != '_' || i == 0) && ((charAt != '+' || i == 0) && (charAt != '-' || i == 0))))))))) {
                    throw new DateTimeException("Invalid ID for region-based ZoneId, invalid format: " + str);
                }
            }
            C2757c c2757c = null;
            try {
                c2757c = AbstractC2761g.m704b(str, true);
            } catch (C2758d e) {
                if (z) {
                    throw e;
                }
            }
            return new C2725p(str, c2757c);
        }
        throw new DateTimeException("Invalid ID for region-based ZoneId, invalid format: " + str);
    }

    @Override // p033j$.time.AbstractC2723n
    /* renamed from: j */
    public String mo783j() {
        return this.f615a;
    }

    @Override // p033j$.time.AbstractC2723n
    /* renamed from: k */
    public C2757c mo782k() {
        C2757c c2757c = this.f616b;
        return c2757c != null ? c2757c : AbstractC2761g.m704b(this.f615a, false);
    }
}
