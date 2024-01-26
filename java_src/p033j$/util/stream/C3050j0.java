package p033j$.util.stream;

import java.util.concurrent.CountedCompleter;
import p033j$.util.Spliterator;
/* renamed from: j$.util.stream.j0 */
/* loaded from: classes2.dex */
final class C3050j0 extends AbstractC3013d {

    /* renamed from: j */
    private final C3014d0 f1107j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3050j0(C3014d0 c3014d0, AbstractC3142y2 abstractC3142y2, Spliterator spliterator) {
        super(abstractC3142y2, spliterator);
        this.f1107j = c3014d0;
    }

    C3050j0(C3050j0 c3050j0, Spliterator spliterator) {
        super(c3050j0, spliterator);
        this.f1107j = c3050j0.f1107j;
    }

    /* renamed from: m */
    private void m453m(Object obj) {
        boolean z;
        C3050j0 c3050j0 = this;
        while (true) {
            if (c3050j0 != null) {
                AbstractC3025f m473c = c3050j0.m473c();
                if (m473c != null && m473c.f1075d != c3050j0) {
                    z = false;
                    break;
                }
                c3050j0 = m473c;
            } else {
                z = true;
                break;
            }
        }
        if (z) {
            m495l(obj);
        } else {
            m496j();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3025f
    /* renamed from: a */
    public Object mo439a() {
        AbstractC3142y2 abstractC3142y2 = this.f1072a;
        InterfaceC2937O4 interfaceC2937O4 = (InterfaceC2937O4) this.f1107j.f1043e.get();
        abstractC3142y2.mo355t0(interfaceC2937O4, this.f1073b);
        Object obj = interfaceC2937O4.get();
        if (!this.f1107j.f1040b) {
            if (obj != null) {
                m495l(obj);
            }
            return null;
        } else if (obj != null) {
            m453m(obj);
            return obj;
        } else {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3025f
    /* renamed from: f */
    public AbstractC3025f mo438f(Spliterator spliterator) {
        return new C3050j0(this, spliterator);
    }

    @Override // p033j$.util.stream.AbstractC3013d
    /* renamed from: k */
    protected Object mo437k() {
        return this.f1107j.f1041c;
    }

    @Override // p033j$.util.stream.AbstractC3025f, java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        if (this.f1107j.f1040b) {
            C3050j0 c3050j0 = (C3050j0) this.f1075d;
            C3050j0 c3050j02 = null;
            while (true) {
                if (c3050j0 != c3050j02) {
                    Object mo474b = c3050j0.mo474b();
                    if (mo474b != null && this.f1107j.f1042d.test(mo474b)) {
                        mo470g(mo474b);
                        m453m(mo474b);
                        break;
                    }
                    c3050j02 = c3050j0;
                    c3050j0 = (C3050j0) this.f1076e;
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
