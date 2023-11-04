package p033j$.util.stream;

import java.util.concurrent.CountedCompleter;
import p033j$.util.Spliterator;
/* renamed from: j$.util.stream.j0 */
/* loaded from: classes2.dex */
final class C3055j0 extends AbstractC3018d {

    /* renamed from: j */
    private final C3019d0 f1107j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3055j0(C3019d0 c3019d0, AbstractC3147y2 abstractC3147y2, Spliterator spliterator) {
        super(abstractC3147y2, spliterator);
        this.f1107j = c3019d0;
    }

    C3055j0(C3055j0 c3055j0, Spliterator spliterator) {
        super(c3055j0, spliterator);
        this.f1107j = c3055j0.f1107j;
    }

    /* renamed from: m */
    private void m450m(Object obj) {
        boolean z;
        C3055j0 c3055j0 = this;
        while (true) {
            if (c3055j0 != null) {
                AbstractC3030f m470c = c3055j0.m470c();
                if (m470c != null && m470c.f1075d != c3055j0) {
                    z = false;
                    break;
                }
                c3055j0 = m470c;
            } else {
                z = true;
                break;
            }
        }
        if (z) {
            m492l(obj);
        } else {
            m493j();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3030f
    /* renamed from: a */
    public Object mo436a() {
        AbstractC3147y2 abstractC3147y2 = this.f1072a;
        InterfaceC2942O4 interfaceC2942O4 = (InterfaceC2942O4) this.f1107j.f1043e.get();
        abstractC3147y2.mo352t0(interfaceC2942O4, this.f1073b);
        Object obj = interfaceC2942O4.get();
        if (!this.f1107j.f1040b) {
            if (obj != null) {
                m492l(obj);
            }
            return null;
        } else if (obj != null) {
            m450m(obj);
            return obj;
        } else {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3030f
    /* renamed from: f */
    public AbstractC3030f mo435f(Spliterator spliterator) {
        return new C3055j0(this, spliterator);
    }

    @Override // p033j$.util.stream.AbstractC3018d
    /* renamed from: k */
    protected Object mo434k() {
        return this.f1107j.f1041c;
    }

    @Override // p033j$.util.stream.AbstractC3030f, java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        if (this.f1107j.f1040b) {
            C3055j0 c3055j0 = (C3055j0) this.f1075d;
            C3055j0 c3055j02 = null;
            while (true) {
                if (c3055j0 != c3055j02) {
                    Object mo471b = c3055j0.mo471b();
                    if (mo471b != null && this.f1107j.f1042d.test(mo471b)) {
                        mo467g(mo471b);
                        m450m(mo471b);
                        break;
                    }
                    c3055j02 = c3055j0;
                    c3055j0 = (C3055j0) this.f1076e;
                } else {
                    break;
                }
            }
        }
        this.f1073b = null;
        this.f1076e = null;
        this.f1075d = null;
    }
}
