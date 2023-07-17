package p033j$.util.stream;

import java.util.concurrent.CountedCompleter;
import p033j$.util.InterfaceC2853s;
/* renamed from: j$.util.stream.j0 */
/* loaded from: classes2.dex */
final class C3059j0 extends AbstractC3022d {

    /* renamed from: j */
    private final C3023d0 f1054j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3059j0(C3023d0 c3023d0, AbstractC3151y2 abstractC3151y2, InterfaceC2853s interfaceC2853s) {
        super(abstractC3151y2, interfaceC2853s);
        this.f1054j = c3023d0;
    }

    C3059j0(C3059j0 c3059j0, InterfaceC2853s interfaceC2853s) {
        super(c3059j0, interfaceC2853s);
        this.f1054j = c3059j0.f1054j;
    }

    /* renamed from: m */
    private void m386m(Object obj) {
        boolean z;
        C3059j0 c3059j0 = this;
        while (true) {
            if (c3059j0 != null) {
                AbstractC3034f m406c = c3059j0.m406c();
                if (m406c != null && m406c.f1022d != c3059j0) {
                    z = false;
                    break;
                }
                c3059j0 = m406c;
            } else {
                z = true;
                break;
            }
        }
        if (z) {
            m428l(obj);
        } else {
            m429j();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3034f
    /* renamed from: a */
    public Object mo372a() {
        AbstractC3151y2 abstractC3151y2 = this.f1019a;
        InterfaceC2946O4 interfaceC2946O4 = (InterfaceC2946O4) this.f1054j.f990e.get();
        abstractC3151y2.mo288u0(interfaceC2946O4, this.f1020b);
        Object obj = interfaceC2946O4.get();
        if (!this.f1054j.f987b) {
            if (obj != null) {
                m428l(obj);
            }
            return null;
        } else if (obj != null) {
            m386m(obj);
            return obj;
        } else {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3034f
    /* renamed from: f */
    public AbstractC3034f mo371f(InterfaceC2853s interfaceC2853s) {
        return new C3059j0(this, interfaceC2853s);
    }

    @Override // p033j$.util.stream.AbstractC3022d
    /* renamed from: k */
    protected Object mo370k() {
        return this.f1054j.f988c;
    }

    @Override // p033j$.util.stream.AbstractC3034f, java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        if (this.f1054j.f987b) {
            C3059j0 c3059j0 = (C3059j0) this.f1022d;
            C3059j0 c3059j02 = null;
            while (true) {
                if (c3059j0 != c3059j02) {
                    Object mo407b = c3059j0.mo407b();
                    if (mo407b != null && this.f1054j.f989d.test(mo407b)) {
                        mo403g(mo407b);
                        m386m(mo407b);
                        break;
                    }
                    c3059j02 = c3059j0;
                    c3059j0 = (C3059j0) this.f1023e;
                } else {
                    break;
                }
            }
        }
        this.f1020b = null;
        this.f1023e = null;
        this.f1022d = null;
    }
}
