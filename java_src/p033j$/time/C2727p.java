package p033j$.time;

import p033j$.time.zone.AbstractC2763g;
import p033j$.time.zone.C2759c;
import p033j$.time.zone.C2760d;
/* renamed from: j$.time.p */
/* loaded from: classes2.dex */
final class C2727p extends AbstractC2725n {

    /* renamed from: a */
    private final String f615a;

    /* renamed from: b */
    private final transient C2759c f616b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2727p(String str, C2759c c2759c) {
        this.f615a = str;
        this.f616b = c2759c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: o */
    public static C2727p m778o(String str, boolean z) {
        int length = str.length();
        if (length >= 2) {
            for (int i = 0; i < length; i++) {
                char charAt = str.charAt(i);
                if ((charAt < 'a' || charAt > 'z') && ((charAt < 'A' || charAt > 'Z') && ((charAt != '/' || i == 0) && ((charAt < '0' || charAt > '9' || i == 0) && ((charAt != '~' || i == 0) && ((charAt != '.' || i == 0) && ((charAt != '_' || i == 0) && ((charAt != '+' || i == 0) && (charAt != '-' || i == 0))))))))) {
                    throw new DateTimeException("Invalid ID for region-based ZoneId, invalid format: " + str);
                }
            }
            C2759c c2759c = null;
            try {
                c2759c = AbstractC2763g.m701b(str, true);
            } catch (C2760d e) {
                if (z) {
                    throw e;
                }
            }
            return new C2727p(str, c2759c);
        }
        throw new DateTimeException("Invalid ID for region-based ZoneId, invalid format: " + str);
    }

    @Override // p033j$.time.AbstractC2725n
    /* renamed from: j */
    public String mo780j() {
        return this.f615a;
    }

    @Override // p033j$.time.AbstractC2725n
    /* renamed from: k */
    public C2759c mo779k() {
        C2759c c2759c = this.f616b;
        return c2759c != null ? c2759c : AbstractC2763g.m701b(this.f615a, false);
    }
}
