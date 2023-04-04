package p035j$.util.stream;

import java.util.concurrent.CountedCompleter;
import p035j$.util.InterfaceC2701s;
/* renamed from: j$.util.stream.j0 */
/* loaded from: classes2.dex */
final class C2907j0 extends AbstractC2870d {

    /* renamed from: j */
    private final C2871d0 f974j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2907j0(C2871d0 c2871d0, AbstractC2999y2 abstractC2999y2, InterfaceC2701s interfaceC2701s) {
        super(abstractC2999y2, interfaceC2701s);
        this.f974j = c2871d0;
    }

    C2907j0(C2907j0 c2907j0, InterfaceC2701s interfaceC2701s) {
        super(c2907j0, interfaceC2701s);
        this.f974j = c2907j0.f974j;
    }

    /* renamed from: m */
    private void m395m(Object obj) {
        boolean z;
        C2907j0 c2907j0 = this;
        while (true) {
            if (c2907j0 != null) {
                AbstractC2882f m415c = c2907j0.m415c();
                if (m415c != null && m415c.f942d != c2907j0) {
                    z = false;
                    break;
                }
                c2907j0 = m415c;
            } else {
                z = true;
                break;
            }
        }
        if (z) {
            m437l(obj);
        } else {
            m438j();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p035j$.util.stream.AbstractC2882f
    /* renamed from: a */
    public Object mo381a() {
        AbstractC2999y2 abstractC2999y2 = this.f939a;
        InterfaceC2794O4 interfaceC2794O4 = (InterfaceC2794O4) this.f974j.f910e.get();
        abstractC2999y2.mo297u0(interfaceC2794O4, this.f940b);
        Object obj = interfaceC2794O4.get();
        if (!this.f974j.f907b) {
            if (obj != null) {
                m437l(obj);
            }
            return null;
        } else if (obj != null) {
            m395m(obj);
            return obj;
        } else {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p035j$.util.stream.AbstractC2882f
    /* renamed from: f */
    public AbstractC2882f mo380f(InterfaceC2701s interfaceC2701s) {
        return new C2907j0(this, interfaceC2701s);
    }

    @Override // p035j$.util.stream.AbstractC2870d
    /* renamed from: k */
    protected Object mo379k() {
        return this.f974j.f908c;
    }

    @Override // p035j$.util.stream.AbstractC2882f, java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        if (this.f974j.f907b) {
            C2907j0 c2907j0 = (C2907j0) this.f942d;
            C2907j0 c2907j02 = null;
            while (true) {
                if (c2907j0 != c2907j02) {
                    Object mo416b = c2907j0.mo416b();
                    if (mo416b != null && this.f974j.f909d.test(mo416b)) {
                        mo412g(mo416b);
                        m395m(mo416b);
                        break;
                    }
                    c2907j02 = c2907j0;
                    c2907j0 = (C2907j0) this.f943e;
                } else {
                    break;
                }
            }
        }
        this.f940b = null;
        this.f943e = null;
        this.f942d = null;
    }
}
