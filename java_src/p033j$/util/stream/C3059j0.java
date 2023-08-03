package p033j$.util.stream;

import java.util.concurrent.CountedCompleter;
import p033j$.util.InterfaceC2853s;
/* renamed from: j$.util.stream.j0 */
/* loaded from: classes2.dex */
final class C3059j0 extends AbstractC3022d {

    /* renamed from: j */
    private final C3023d0 f1057j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3059j0(C3023d0 c3023d0, AbstractC3151y2 abstractC3151y2, InterfaceC2853s interfaceC2853s) {
        super(abstractC3151y2, interfaceC2853s);
        this.f1057j = c3023d0;
    }

    C3059j0(C3059j0 c3059j0, InterfaceC2853s interfaceC2853s) {
        super(c3059j0, interfaceC2853s);
        this.f1057j = c3059j0.f1057j;
    }

    /* renamed from: m */
    private void m404m(Object obj) {
        boolean z;
        C3059j0 c3059j0 = this;
        while (true) {
            if (c3059j0 != null) {
                AbstractC3034f m424c = c3059j0.m424c();
                if (m424c != null && m424c.f1025d != c3059j0) {
                    z = false;
                    break;
                }
                c3059j0 = m424c;
            } else {
                z = true;
                break;
            }
        }
        if (z) {
            m446l(obj);
        } else {
            m447j();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3034f
    /* renamed from: a */
    public Object mo390a() {
        AbstractC3151y2 abstractC3151y2 = this.f1022a;
        InterfaceC2946O4 interfaceC2946O4 = (InterfaceC2946O4) this.f1057j.f993e.get();
        abstractC3151y2.mo306u0(interfaceC2946O4, this.f1023b);
        Object obj = interfaceC2946O4.get();
        if (!this.f1057j.f990b) {
            if (obj != null) {
                m446l(obj);
            }
            return null;
        } else if (obj != null) {
            m404m(obj);
            return obj;
        } else {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3034f
    /* renamed from: f */
    public AbstractC3034f mo389f(InterfaceC2853s interfaceC2853s) {
        return new C3059j0(this, interfaceC2853s);
    }

    @Override // p033j$.util.stream.AbstractC3022d
    /* renamed from: k */
    protected Object mo388k() {
        return this.f1057j.f991c;
    }

    @Override // p033j$.util.stream.AbstractC3034f, java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        if (this.f1057j.f990b) {
            C3059j0 c3059j0 = (C3059j0) this.f1025d;
            C3059j0 c3059j02 = null;
            while (true) {
                if (c3059j0 != c3059j02) {
                    Object mo425b = c3059j0.mo425b();
                    if (mo425b != null && this.f1057j.f992d.test(mo425b)) {
                        mo421g(mo425b);
                        m404m(mo425b);
                        break;
                    }
                    c3059j02 = c3059j0;
                    c3059j0 = (C3059j0) this.f1026e;
                } else {
                    break;
                }
            }
        }
        this.f1023b = null;
        this.f1026e = null;
        this.f1025d = null;
    }
}
