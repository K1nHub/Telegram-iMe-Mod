package p033j$.time.format;

import java.util.Locale;
import p033j$.time.AbstractC2676a;
import p033j$.time.DateTimeException;
import p033j$.time.temporal.InterfaceC2741k;
import p033j$.time.temporal.InterfaceC2745o;
import p033j$.time.temporal.InterfaceC2754x;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.time.format.v */
/* loaded from: classes2.dex */
public final class C2713v {

    /* renamed from: a */
    private InterfaceC2741k f574a;

    /* renamed from: b */
    private C2692a f575b;

    /* renamed from: c */
    private int f576c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:32:0x006c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C2713v(p033j$.time.temporal.InterfaceC2741k r10, p033j$.time.format.C2692a r11) {
        /*
            Method dump skipped, instructions count: 266
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p033j$.time.format.C2713v.<init>(j$.time.temporal.k, j$.time.format.a):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m840a() {
        this.f576c--;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public C2715x m839b() {
        return this.f575b.m903c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public Locale m838c() {
        return this.f575b.m902d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public InterfaceC2741k m837d() {
        return this.f574a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public Long m836e(InterfaceC2745o interfaceC2745o) {
        try {
            return Long.valueOf(this.f574a.mo739e(interfaceC2745o));
        } catch (DateTimeException e) {
            if (this.f576c > 0) {
                return null;
            }
            throw e;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public Object m835f(InterfaceC2754x interfaceC2754x) {
        Object mo738g = this.f574a.mo738g(interfaceC2754x);
        if (mo738g == null && this.f576c == 0) {
            StringBuilder m961a = AbstractC2676a.m961a("Unable to extract value: ");
            m961a.append(this.f574a.getClass());
            throw new DateTimeException(m961a.toString());
        }
        return mo738g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public void m834g() {
        this.f576c++;
    }

    public String toString() {
        return this.f574a.toString();
    }
}
