package p034j$.util.stream;

import java.util.concurrent.CountedCompleter;
import p034j$.util.InterfaceC2611s;
/* renamed from: j$.util.stream.j0 */
/* loaded from: classes2.dex */
final class C2817j0 extends AbstractC2780d {

    /* renamed from: j */
    private final C2781d0 f968j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2817j0(C2781d0 c2781d0, AbstractC2909y2 abstractC2909y2, InterfaceC2611s interfaceC2611s) {
        super(abstractC2909y2, interfaceC2611s);
        this.f968j = c2781d0;
    }

    C2817j0(C2817j0 c2817j0, InterfaceC2611s interfaceC2611s) {
        super(c2817j0, interfaceC2611s);
        this.f968j = c2817j0.f968j;
    }

    /* renamed from: m */
    private void m401m(Object obj) {
        boolean z;
        C2817j0 c2817j0 = this;
        while (true) {
            if (c2817j0 != null) {
                AbstractC2792f m421c = c2817j0.m421c();
                if (m421c != null && m421c.f936d != c2817j0) {
                    z = false;
                    break;
                }
                c2817j0 = m421c;
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
    @Override // p034j$.util.stream.AbstractC2792f
    /* renamed from: a */
    public Object mo387a() {
        AbstractC2909y2 abstractC2909y2 = this.f933a;
        InterfaceC2704O4 interfaceC2704O4 = (InterfaceC2704O4) this.f968j.f904e.get();
        abstractC2909y2.mo303u0(interfaceC2704O4, this.f934b);
        Object obj = interfaceC2704O4.get();
        if (!this.f968j.f901b) {
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
    @Override // p034j$.util.stream.AbstractC2792f
    /* renamed from: f */
    public AbstractC2792f mo386f(InterfaceC2611s interfaceC2611s) {
        return new C2817j0(this, interfaceC2611s);
    }

    @Override // p034j$.util.stream.AbstractC2780d
    /* renamed from: k */
    protected Object mo385k() {
        return this.f968j.f902c;
    }

    @Override // p034j$.util.stream.AbstractC2792f, java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        if (this.f968j.f901b) {
            C2817j0 c2817j0 = (C2817j0) this.f936d;
            C2817j0 c2817j02 = null;
            while (true) {
                if (c2817j0 != c2817j02) {
                    Object mo422b = c2817j0.mo422b();
                    if (mo422b != null && this.f968j.f903d.test(mo422b)) {
                        mo418g(mo422b);
                        m401m(mo422b);
                        break;
                    }
                    c2817j02 = c2817j0;
                    c2817j0 = (C2817j0) this.f937e;
                } else {
                    break;
                }
            }
        }
        this.f934b = null;
        this.f937e = null;
        this.f936d = null;
    }
}
