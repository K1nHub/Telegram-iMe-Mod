package p033j$.util.stream;

import java.util.concurrent.CountedCompleter;
import p033j$.util.Spliterator;
/* renamed from: j$.util.stream.j0 */
/* loaded from: classes2.dex */
final class C3051j0 extends AbstractC3014d {

    /* renamed from: j */
    private final C3015d0 f1107j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3051j0(C3015d0 c3015d0, AbstractC3143y2 abstractC3143y2, Spliterator spliterator) {
        super(abstractC3143y2, spliterator);
        this.f1107j = c3015d0;
    }

    C3051j0(C3051j0 c3051j0, Spliterator spliterator) {
        super(c3051j0, spliterator);
        this.f1107j = c3051j0.f1107j;
    }

    /* renamed from: m */
    private void m449m(Object obj) {
        boolean z;
        C3051j0 c3051j0 = this;
        while (true) {
            if (c3051j0 != null) {
                AbstractC3026f m469c = c3051j0.m469c();
                if (m469c != null && m469c.f1075d != c3051j0) {
                    z = false;
                    break;
                }
                c3051j0 = m469c;
            } else {
                z = true;
                break;
            }
        }
        if (z) {
            m491l(obj);
        } else {
            m492j();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3026f
    /* renamed from: a */
    public Object mo435a() {
        AbstractC3143y2 abstractC3143y2 = this.f1072a;
        InterfaceC2938O4 interfaceC2938O4 = (InterfaceC2938O4) this.f1107j.f1043e.get();
        abstractC3143y2.mo351t0(interfaceC2938O4, this.f1073b);
        Object obj = interfaceC2938O4.get();
        if (!this.f1107j.f1040b) {
            if (obj != null) {
                m491l(obj);
            }
            return null;
        } else if (obj != null) {
            m449m(obj);
            return obj;
        } else {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3026f
    /* renamed from: f */
    public AbstractC3026f mo434f(Spliterator spliterator) {
        return new C3051j0(this, spliterator);
    }

    @Override // p033j$.util.stream.AbstractC3014d
    /* renamed from: k */
    protected Object mo433k() {
        return this.f1107j.f1041c;
    }

    @Override // p033j$.util.stream.AbstractC3026f, java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        if (this.f1107j.f1040b) {
            C3051j0 c3051j0 = (C3051j0) this.f1075d;
            C3051j0 c3051j02 = null;
            while (true) {
                if (c3051j0 != c3051j02) {
                    Object mo470b = c3051j0.mo470b();
                    if (mo470b != null && this.f1107j.f1042d.test(mo470b)) {
                        mo466g(mo470b);
                        m449m(mo470b);
                        break;
                    }
                    c3051j02 = c3051j0;
                    c3051j0 = (C3051j0) this.f1076e;
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
