package p034j$.util.stream;

import java.util.concurrent.CountedCompleter;
import p034j$.util.InterfaceC2625s;
/* renamed from: j$.util.stream.j0 */
/* loaded from: classes2.dex */
final class C2831j0 extends AbstractC2794d {

    /* renamed from: j */
    private final C2795d0 f969j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2831j0(C2795d0 c2795d0, AbstractC2923y2 abstractC2923y2, InterfaceC2625s interfaceC2625s) {
        super(abstractC2923y2, interfaceC2625s);
        this.f969j = c2795d0;
    }

    C2831j0(C2831j0 c2831j0, InterfaceC2625s interfaceC2625s) {
        super(c2831j0, interfaceC2625s);
        this.f969j = c2831j0.f969j;
    }

    /* renamed from: m */
    private void m400m(Object obj) {
        boolean z;
        C2831j0 c2831j0 = this;
        while (true) {
            if (c2831j0 != null) {
                AbstractC2806f m420c = c2831j0.m420c();
                if (m420c != null && m420c.f937d != c2831j0) {
                    z = false;
                    break;
                }
                c2831j0 = m420c;
            } else {
                z = true;
                break;
            }
        }
        if (z) {
            m442l(obj);
        } else {
            m443j();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p034j$.util.stream.AbstractC2806f
    /* renamed from: a */
    public Object mo386a() {
        AbstractC2923y2 abstractC2923y2 = this.f934a;
        InterfaceC2718O4 interfaceC2718O4 = (InterfaceC2718O4) this.f969j.f905e.get();
        abstractC2923y2.mo302u0(interfaceC2718O4, this.f935b);
        Object obj = interfaceC2718O4.get();
        if (!this.f969j.f902b) {
            if (obj != null) {
                m442l(obj);
            }
            return null;
        } else if (obj != null) {
            m400m(obj);
            return obj;
        } else {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p034j$.util.stream.AbstractC2806f
    /* renamed from: f */
    public AbstractC2806f mo385f(InterfaceC2625s interfaceC2625s) {
        return new C2831j0(this, interfaceC2625s);
    }

    @Override // p034j$.util.stream.AbstractC2794d
    /* renamed from: k */
    protected Object mo384k() {
        return this.f969j.f903c;
    }

    @Override // p034j$.util.stream.AbstractC2806f, java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        if (this.f969j.f902b) {
            C2831j0 c2831j0 = (C2831j0) this.f937d;
            C2831j0 c2831j02 = null;
            while (true) {
                if (c2831j0 != c2831j02) {
                    Object mo421b = c2831j0.mo421b();
                    if (mo421b != null && this.f969j.f904d.test(mo421b)) {
                        mo417g(mo421b);
                        m400m(mo421b);
                        break;
                    }
                    c2831j02 = c2831j0;
                    c2831j0 = (C2831j0) this.f938e;
                } else {
                    break;
                }
            }
        }
        this.f935b = null;
        this.f938e = null;
        this.f937d = null;
    }
}
