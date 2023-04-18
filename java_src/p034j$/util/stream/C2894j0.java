package p034j$.util.stream;

import java.util.concurrent.CountedCompleter;
import p034j$.util.InterfaceC2688s;
/* renamed from: j$.util.stream.j0 */
/* loaded from: classes2.dex */
final class C2894j0 extends AbstractC2857d {

    /* renamed from: j */
    private final C2858d0 f969j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2894j0(C2858d0 c2858d0, AbstractC2986y2 abstractC2986y2, InterfaceC2688s interfaceC2688s) {
        super(abstractC2986y2, interfaceC2688s);
        this.f969j = c2858d0;
    }

    C2894j0(C2894j0 c2894j0, InterfaceC2688s interfaceC2688s) {
        super(c2894j0, interfaceC2688s);
        this.f969j = c2894j0.f969j;
    }

    /* renamed from: m */
    private void m381m(Object obj) {
        boolean z;
        C2894j0 c2894j0 = this;
        while (true) {
            if (c2894j0 != null) {
                AbstractC2869f m401c = c2894j0.m401c();
                if (m401c != null && m401c.f937d != c2894j0) {
                    z = false;
                    break;
                }
                c2894j0 = m401c;
            } else {
                z = true;
                break;
            }
        }
        if (z) {
            m423l(obj);
        } else {
            m424j();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p034j$.util.stream.AbstractC2869f
    /* renamed from: a */
    public Object mo367a() {
        AbstractC2986y2 abstractC2986y2 = this.f934a;
        InterfaceC2781O4 interfaceC2781O4 = (InterfaceC2781O4) this.f969j.f905e.get();
        abstractC2986y2.mo283u0(interfaceC2781O4, this.f935b);
        Object obj = interfaceC2781O4.get();
        if (!this.f969j.f902b) {
            if (obj != null) {
                m423l(obj);
            }
            return null;
        } else if (obj != null) {
            m381m(obj);
            return obj;
        } else {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p034j$.util.stream.AbstractC2869f
    /* renamed from: f */
    public AbstractC2869f mo366f(InterfaceC2688s interfaceC2688s) {
        return new C2894j0(this, interfaceC2688s);
    }

    @Override // p034j$.util.stream.AbstractC2857d
    /* renamed from: k */
    protected Object mo365k() {
        return this.f969j.f903c;
    }

    @Override // p034j$.util.stream.AbstractC2869f, java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        if (this.f969j.f902b) {
            C2894j0 c2894j0 = (C2894j0) this.f937d;
            C2894j0 c2894j02 = null;
            while (true) {
                if (c2894j0 != c2894j02) {
                    Object mo402b = c2894j0.mo402b();
                    if (mo402b != null && this.f969j.f904d.test(mo402b)) {
                        mo398g(mo402b);
                        m381m(mo402b);
                        break;
                    }
                    c2894j02 = c2894j0;
                    c2894j0 = (C2894j0) this.f938e;
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
