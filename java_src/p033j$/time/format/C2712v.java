package p033j$.time.format;

import java.util.Locale;
import p033j$.time.AbstractC2675a;
import p033j$.time.DateTimeException;
import p033j$.time.temporal.InterfaceC2740k;
import p033j$.time.temporal.InterfaceC2744o;
import p033j$.time.temporal.InterfaceC2753x;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.time.format.v */
/* loaded from: classes2.dex */
public final class C2712v {

    /* renamed from: a */
    private InterfaceC2740k f574a;

    /* renamed from: b */
    private C2691a f575b;

    /* renamed from: c */
    private int f576c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:32:0x006c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C2712v(p033j$.time.temporal.InterfaceC2740k r10, p033j$.time.format.C2691a r11) {
        /*
            Method dump skipped, instructions count: 266
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p033j$.time.format.C2712v.<init>(j$.time.temporal.k, j$.time.format.a):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m839a() {
        this.f576c--;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public C2714x m838b() {
        return this.f575b.m902c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public Locale m837c() {
        return this.f575b.m901d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public InterfaceC2740k m836d() {
        return this.f574a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public Long m835e(InterfaceC2744o interfaceC2744o) {
        try {
            return Long.valueOf(this.f574a.mo738e(interfaceC2744o));
        } catch (DateTimeException e) {
            if (this.f576c > 0) {
                return null;
            }
            throw e;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public Object m834f(InterfaceC2753x interfaceC2753x) {
        Object mo737g = this.f574a.mo737g(interfaceC2753x);
        if (mo737g == null && this.f576c == 0) {
            StringBuilder m960a = AbstractC2675a.m960a("Unable to extract value: ");
            m960a.append(this.f574a.getClass());
            throw new DateTimeException(m960a.toString());
        }
        return mo737g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public void m833g() {
        this.f576c++;
    }

    public String toString() {
        return this.f574a.toString();
    }
}
