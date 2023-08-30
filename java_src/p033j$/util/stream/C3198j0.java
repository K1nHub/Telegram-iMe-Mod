package p033j$.util.stream;

import java.util.concurrent.CountedCompleter;
import p033j$.util.InterfaceC2992s;
/* renamed from: j$.util.stream.j0 */
/* loaded from: classes2.dex */
final class C3198j0 extends AbstractC3161d {

    /* renamed from: j */
    private final C3162d0 f1067j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3198j0(C3162d0 c3162d0, AbstractC3290y2 abstractC3290y2, InterfaceC2992s interfaceC2992s) {
        super(abstractC3290y2, interfaceC2992s);
        this.f1067j = c3162d0;
    }

    C3198j0(C3198j0 c3198j0, InterfaceC2992s interfaceC2992s) {
        super(c3198j0, interfaceC2992s);
        this.f1067j = c3198j0.f1067j;
    }

    /* renamed from: m */
    private void m404m(Object obj) {
        boolean z;
        C3198j0 c3198j0 = this;
        while (true) {
            if (c3198j0 != null) {
                AbstractC3173f m424c = c3198j0.m424c();
                if (m424c != null && m424c.f1035d != c3198j0) {
                    z = false;
                    break;
                }
                c3198j0 = m424c;
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
    @Override // p033j$.util.stream.AbstractC3173f
    /* renamed from: a */
    public Object mo390a() {
        AbstractC3290y2 abstractC3290y2 = this.f1032a;
        InterfaceC3085O4 interfaceC3085O4 = (InterfaceC3085O4) this.f1067j.f1003e.get();
        abstractC3290y2.mo306u0(interfaceC3085O4, this.f1033b);
        Object obj = interfaceC3085O4.get();
        if (!this.f1067j.f1000b) {
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
    @Override // p033j$.util.stream.AbstractC3173f
    /* renamed from: f */
    public AbstractC3173f mo389f(InterfaceC2992s interfaceC2992s) {
        return new C3198j0(this, interfaceC2992s);
    }

    @Override // p033j$.util.stream.AbstractC3161d
    /* renamed from: k */
    protected Object mo388k() {
        return this.f1067j.f1001c;
    }

    @Override // p033j$.util.stream.AbstractC3173f, java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        if (this.f1067j.f1000b) {
            C3198j0 c3198j0 = (C3198j0) this.f1035d;
            C3198j0 c3198j02 = null;
            while (true) {
                if (c3198j0 != c3198j02) {
                    Object mo425b = c3198j0.mo425b();
                    if (mo425b != null && this.f1067j.f1002d.test(mo425b)) {
                        mo421g(mo425b);
                        m404m(mo425b);
                        break;
                    }
                    c3198j02 = c3198j0;
                    c3198j0 = (C3198j0) this.f1036e;
                } else {
                    break;
                }
            }
        }
        this.f1033b = null;
        this.f1036e = null;
        this.f1035d = null;
    }
}
