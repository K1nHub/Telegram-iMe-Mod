package p034j$.util.stream;

import java.util.concurrent.CountedCompleter;
import p034j$.util.InterfaceC2727s;
/* renamed from: j$.util.stream.j0 */
/* loaded from: classes2.dex */
final class C2933j0 extends AbstractC2896d {

    /* renamed from: j */
    private final C2897d0 f972j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2933j0(C2897d0 c2897d0, AbstractC3025y2 abstractC3025y2, InterfaceC2727s interfaceC2727s) {
        super(abstractC3025y2, interfaceC2727s);
        this.f972j = c2897d0;
    }

    C2933j0(C2933j0 c2933j0, InterfaceC2727s interfaceC2727s) {
        super(c2933j0, interfaceC2727s);
        this.f972j = c2933j0.f972j;
    }

    /* renamed from: m */
    private void m386m(Object obj) {
        boolean z;
        C2933j0 c2933j0 = this;
        while (true) {
            if (c2933j0 != null) {
                AbstractC2908f m406c = c2933j0.m406c();
                if (m406c != null && m406c.f940d != c2933j0) {
                    z = false;
                    break;
                }
                c2933j0 = m406c;
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
    @Override // p034j$.util.stream.AbstractC2908f
    /* renamed from: a */
    public Object mo372a() {
        AbstractC3025y2 abstractC3025y2 = this.f937a;
        InterfaceC2820O4 interfaceC2820O4 = (InterfaceC2820O4) this.f972j.f908e.get();
        abstractC3025y2.mo288u0(interfaceC2820O4, this.f938b);
        Object obj = interfaceC2820O4.get();
        if (!this.f972j.f905b) {
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
    @Override // p034j$.util.stream.AbstractC2908f
    /* renamed from: f */
    public AbstractC2908f mo371f(InterfaceC2727s interfaceC2727s) {
        return new C2933j0(this, interfaceC2727s);
    }

    @Override // p034j$.util.stream.AbstractC2896d
    /* renamed from: k */
    protected Object mo370k() {
        return this.f972j.f906c;
    }

    @Override // p034j$.util.stream.AbstractC2908f, java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        if (this.f972j.f905b) {
            C2933j0 c2933j0 = (C2933j0) this.f940d;
            C2933j0 c2933j02 = null;
            while (true) {
                if (c2933j0 != c2933j02) {
                    Object mo407b = c2933j0.mo407b();
                    if (mo407b != null && this.f972j.f907d.test(mo407b)) {
                        mo403g(mo407b);
                        m386m(mo407b);
                        break;
                    }
                    c2933j02 = c2933j0;
                    c2933j0 = (C2933j0) this.f941e;
                } else {
                    break;
                }
            }
        }
        this.f938b = null;
        this.f941e = null;
        this.f940d = null;
    }
}
