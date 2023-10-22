package p033j$.time;

import p033j$.time.zone.AbstractC2762g;
import p033j$.time.zone.C2758c;
import p033j$.time.zone.C2759d;
/* renamed from: j$.time.p */
/* loaded from: classes2.dex */
final class C2726p extends AbstractC2724n {

    /* renamed from: a */
    private final String f615a;

    /* renamed from: b */
    private final transient C2758c f616b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2726p(String str, C2758c c2758c) {
        this.f615a = str;
        this.f616b = c2758c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: o */
    public static C2726p m777o(String str, boolean z) {
        int length = str.length();
        if (length >= 2) {
            for (int i = 0; i < length; i++) {
                char charAt = str.charAt(i);
                if ((charAt < 'a' || charAt > 'z') && ((charAt < 'A' || charAt > 'Z') && ((charAt != '/' || i == 0) && ((charAt < '0' || charAt > '9' || i == 0) && ((charAt != '~' || i == 0) && ((charAt != '.' || i == 0) && ((charAt != '_' || i == 0) && ((charAt != '+' || i == 0) && (charAt != '-' || i == 0))))))))) {
                    throw new DateTimeException("Invalid ID for region-based ZoneId, invalid format: " + str);
                }
            }
            C2758c c2758c = null;
            try {
                c2758c = AbstractC2762g.m700b(str, true);
            } catch (C2759d e) {
                if (z) {
                    throw e;
                }
            }
            return new C2726p(str, c2758c);
        }
        throw new DateTimeException("Invalid ID for region-based ZoneId, invalid format: " + str);
    }

    @Override // p033j$.time.AbstractC2724n
    /* renamed from: j */
    public String mo779j() {
        return this.f615a;
    }

    @Override // p033j$.time.AbstractC2724n
    /* renamed from: k */
    public C2758c mo778k() {
        C2758c c2758c = this.f616b;
        return c2758c != null ? c2758c : AbstractC2762g.m700b(this.f615a, false);
    }
}
