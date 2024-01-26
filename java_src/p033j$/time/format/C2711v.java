package p033j$.time.format;

import java.util.Locale;
import p033j$.time.AbstractC2674a;
import p033j$.time.DateTimeException;
import p033j$.time.temporal.InterfaceC2739k;
import p033j$.time.temporal.InterfaceC2743o;
import p033j$.time.temporal.InterfaceC2752x;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.time.format.v */
/* loaded from: classes2.dex */
public final class C2711v {

    /* renamed from: a */
    private InterfaceC2739k f574a;

    /* renamed from: b */
    private C2690a f575b;

    /* renamed from: c */
    private int f576c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:32:0x006c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C2711v(p033j$.time.temporal.InterfaceC2739k r10, p033j$.time.format.C2690a r11) {
        /*
            Method dump skipped, instructions count: 266
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p033j$.time.format.C2711v.<init>(j$.time.temporal.k, j$.time.format.a):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m843a() {
        this.f576c--;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public C2713x m842b() {
        return this.f575b.m906c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public Locale m841c() {
        return this.f575b.m905d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public InterfaceC2739k m840d() {
        return this.f574a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public Long m839e(InterfaceC2743o interfaceC2743o) {
        try {
            return Long.valueOf(this.f574a.mo742e(interfaceC2743o));
        } catch (DateTimeException e) {
            if (this.f576c > 0) {
                return null;
            }
            throw e;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public Object m838f(InterfaceC2752x interfaceC2752x) {
        Object mo741g = this.f574a.mo741g(interfaceC2752x);
        if (mo741g == null && this.f576c == 0) {
            StringBuilder m964a = AbstractC2674a.m964a("Unable to extract value: ");
            m964a.append(this.f574a.getClass());
            throw new DateTimeException(m964a.toString());
        }
        return mo741g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public void m837g() {
        this.f576c++;
    }

    public String toString() {
        return this.f574a.toString();
    }
}
