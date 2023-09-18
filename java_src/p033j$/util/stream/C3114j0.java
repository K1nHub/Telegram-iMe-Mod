package p033j$.util.stream;

import java.util.concurrent.CountedCompleter;
import p033j$.util.InterfaceC2908s;
/* renamed from: j$.util.stream.j0 */
/* loaded from: classes2.dex */
final class C3114j0 extends AbstractC3077d {

    /* renamed from: j */
    private final C3078d0 f1058j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3114j0(C3078d0 c3078d0, AbstractC3206y2 abstractC3206y2, InterfaceC2908s interfaceC2908s) {
        super(abstractC3206y2, interfaceC2908s);
        this.f1058j = c3078d0;
    }

    C3114j0(C3114j0 c3114j0, InterfaceC2908s interfaceC2908s) {
        super(c3114j0, interfaceC2908s);
        this.f1058j = c3114j0.f1058j;
    }

    /* renamed from: m */
    private void m404m(Object obj) {
        boolean z;
        C3114j0 c3114j0 = this;
        while (true) {
            if (c3114j0 != null) {
                AbstractC3089f m424c = c3114j0.m424c();
                if (m424c != null && m424c.f1026d != c3114j0) {
                    z = false;
                    break;
                }
                c3114j0 = m424c;
            } else {
                z = true;
                break;
            }
        }
        if (z) {
            m446l(obj);
        } else {
            m447j();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3089f
    /* renamed from: a */
    public Object mo390a() {
        AbstractC3206y2 abstractC3206y2 = this.f1023a;
        InterfaceC3001O4 interfaceC3001O4 = (InterfaceC3001O4) this.f1058j.f994e.get();
        abstractC3206y2.mo306u0(interfaceC3001O4, this.f1024b);
        Object obj = interfaceC3001O4.get();
        if (!this.f1058j.f991b) {
            if (obj != null) {
                m446l(obj);
            }
            return null;
        } else if (obj != null) {
            m404m(obj);
            return obj;
        } else {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3089f
    /* renamed from: f */
    public AbstractC3089f mo389f(InterfaceC2908s interfaceC2908s) {
        return new C3114j0(this, interfaceC2908s);
    }

    @Override // p033j$.util.stream.AbstractC3077d
    /* renamed from: k */
    protected Object mo388k() {
        return this.f1058j.f992c;
    }

    @Override // p033j$.util.stream.AbstractC3089f, java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        if (this.f1058j.f991b) {
            C3114j0 c3114j0 = (C3114j0) this.f1026d;
            C3114j0 c3114j02 = null;
            while (true) {
                if (c3114j0 != c3114j02) {
                    Object mo425b = c3114j0.mo425b();
                    if (mo425b != null && this.f1058j.f993d.test(mo425b)) {
                        mo421g(mo425b);
                        m404m(mo425b);
                        break;
                    }
                    c3114j02 = c3114j0;
                    c3114j0 = (C3114j0) this.f1027e;
                } else {
                    break;
                }
            }
        }
        this.f1024b = null;
        this.f1027e = null;
        this.f1026d = null;
    }
}
