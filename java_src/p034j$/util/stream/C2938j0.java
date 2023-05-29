package p034j$.util.stream;

import java.util.concurrent.CountedCompleter;
import p034j$.util.InterfaceC2732s;
/* renamed from: j$.util.stream.j0 */
/* loaded from: classes2.dex */
final class C2938j0 extends AbstractC2901d {

    /* renamed from: j */
    private final C2902d0 f972j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2938j0(C2902d0 c2902d0, AbstractC3030y2 abstractC3030y2, InterfaceC2732s interfaceC2732s) {
        super(abstractC3030y2, interfaceC2732s);
        this.f972j = c2902d0;
    }

    C2938j0(C2938j0 c2938j0, InterfaceC2732s interfaceC2732s) {
        super(c2938j0, interfaceC2732s);
        this.f972j = c2938j0.f972j;
    }

    /* renamed from: m */
    private void m386m(Object obj) {
        boolean z;
        C2938j0 c2938j0 = this;
        while (true) {
            if (c2938j0 != null) {
                AbstractC2913f m406c = c2938j0.m406c();
                if (m406c != null && m406c.f940d != c2938j0) {
                    z = false;
                    break;
                }
                c2938j0 = m406c;
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
    @Override // p034j$.util.stream.AbstractC2913f
    /* renamed from: a */
    public Object mo372a() {
        AbstractC3030y2 abstractC3030y2 = this.f937a;
        InterfaceC2825O4 interfaceC2825O4 = (InterfaceC2825O4) this.f972j.f908e.get();
        abstractC3030y2.mo288u0(interfaceC2825O4, this.f938b);
        Object obj = interfaceC2825O4.get();
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
    @Override // p034j$.util.stream.AbstractC2913f
    /* renamed from: f */
    public AbstractC2913f mo371f(InterfaceC2732s interfaceC2732s) {
        return new C2938j0(this, interfaceC2732s);
    }

    @Override // p034j$.util.stream.AbstractC2901d
    /* renamed from: k */
    protected Object mo370k() {
        return this.f972j.f906c;
    }

    @Override // p034j$.util.stream.AbstractC2913f, java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        if (this.f972j.f905b) {
            C2938j0 c2938j0 = (C2938j0) this.f940d;
            C2938j0 c2938j02 = null;
            while (true) {
                if (c2938j0 != c2938j02) {
                    Object mo407b = c2938j0.mo407b();
                    if (mo407b != null && this.f972j.f907d.test(mo407b)) {
                        mo403g(mo407b);
                        m386m(mo407b);
                        break;
                    }
                    c2938j02 = c2938j0;
                    c2938j0 = (C2938j0) this.f941e;
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
