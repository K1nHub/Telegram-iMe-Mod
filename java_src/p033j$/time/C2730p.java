package p033j$.time;

import p033j$.time.zone.AbstractC2766g;
import p033j$.time.zone.C2762c;
import p033j$.time.zone.C2763d;
/* renamed from: j$.time.p */
/* loaded from: classes2.dex */
final class C2730p extends AbstractC2728n {

    /* renamed from: a */
    private final String f615a;

    /* renamed from: b */
    private final transient C2762c f616b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2730p(String str, C2762c c2762c) {
        this.f615a = str;
        this.f616b = c2762c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: o */
    public static C2730p m778o(String str, boolean z) {
        int length = str.length();
        if (length >= 2) {
            for (int i = 0; i < length; i++) {
                char charAt = str.charAt(i);
                if ((charAt < 'a' || charAt > 'z') && ((charAt < 'A' || charAt > 'Z') && ((charAt != '/' || i == 0) && ((charAt < '0' || charAt > '9' || i == 0) && ((charAt != '~' || i == 0) && ((charAt != '.' || i == 0) && ((charAt != '_' || i == 0) && ((charAt != '+' || i == 0) && (charAt != '-' || i == 0))))))))) {
                    throw new DateTimeException("Invalid ID for region-based ZoneId, invalid format: " + str);
                }
            }
            C2762c c2762c = null;
            try {
                c2762c = AbstractC2766g.m701b(str, true);
            } catch (C2763d e) {
                if (z) {
                    throw e;
                }
            }
            return new C2730p(str, c2762c);
        }
        throw new DateTimeException("Invalid ID for region-based ZoneId, invalid format: " + str);
    }

    @Override // p033j$.time.AbstractC2728n
    /* renamed from: j */
    public String mo780j() {
        return this.f615a;
    }

    @Override // p033j$.time.AbstractC2728n
    /* renamed from: k */
    public C2762c mo779k() {
        C2762c c2762c = this.f616b;
        return c2762c != null ? c2762c : AbstractC2766g.m701b(this.f615a, false);
    }
}
