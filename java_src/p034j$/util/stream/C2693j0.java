package p034j$.util.stream;

import java.util.concurrent.CountedCompleter;
import p034j$.util.InterfaceC2487s;
/* renamed from: j$.util.stream.j0 */
/* loaded from: classes2.dex */
final class C2693j0 extends AbstractC2656d {

    /* renamed from: j */
    private final C2657d0 f963j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2693j0(C2657d0 c2657d0, AbstractC2785y2 abstractC2785y2, InterfaceC2487s interfaceC2487s) {
        super(abstractC2785y2, interfaceC2487s);
        this.f963j = c2657d0;
    }

    C2693j0(C2693j0 c2693j0, InterfaceC2487s interfaceC2487s) {
        super(c2693j0, interfaceC2487s);
        this.f963j = c2693j0.f963j;
    }

    /* renamed from: m */
    private void m401m(Object obj) {
        boolean z;
        C2693j0 c2693j0 = this;
        while (true) {
            if (c2693j0 != null) {
                AbstractC2668f m421c = c2693j0.m421c();
                if (m421c != null && m421c.f931d != c2693j0) {
                    z = false;
                    break;
                }
                c2693j0 = m421c;
            } else {
                z = true;
                break;
            }
        }
        if (z) {
            m443l(obj);
        } else {
            m444j();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p034j$.util.stream.AbstractC2668f
    /* renamed from: a */
    public Object mo387a() {
        AbstractC2785y2 abstractC2785y2 = this.f928a;
        InterfaceC2580O4 interfaceC2580O4 = (InterfaceC2580O4) this.f963j.f899e.get();
        abstractC2785y2.mo303u0(interfaceC2580O4, this.f929b);
        Object obj = interfaceC2580O4.get();
        if (!this.f963j.f896b) {
            if (obj != null) {
                m443l(obj);
            }
            return null;
        } else if (obj != null) {
            m401m(obj);
            return obj;
        } else {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p034j$.util.stream.AbstractC2668f
    /* renamed from: f */
    public AbstractC2668f mo386f(InterfaceC2487s interfaceC2487s) {
        return new C2693j0(this, interfaceC2487s);
    }

    @Override // p034j$.util.stream.AbstractC2656d
    /* renamed from: k */
    protected Object mo385k() {
        return this.f963j.f897c;
    }

    @Override // p034j$.util.stream.AbstractC2668f, java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        if (this.f963j.f896b) {
            C2693j0 c2693j0 = (C2693j0) this.f931d;
            C2693j0 c2693j02 = null;
            while (true) {
                if (c2693j0 != c2693j02) {
                    Object mo422b = c2693j0.mo422b();
                    if (mo422b != null && this.f963j.f898d.test(mo422b)) {
                        mo418g(mo422b);
                        m401m(mo422b);
                        break;
                    }
                    c2693j02 = c2693j0;
                    c2693j0 = (C2693j0) this.f932e;
                } else {
                    break;
                }
            }
        }
        this.f929b = null;
        this.f932e = null;
        this.f931d = null;
    }
}
