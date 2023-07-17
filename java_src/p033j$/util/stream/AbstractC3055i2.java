package p033j$.util.stream;

import java.util.Deque;
import p033j$.util.InterfaceC2853s;
import p033j$.util.InterfaceC3160t;
/* renamed from: j$.util.stream.i2 */
/* loaded from: classes2.dex */
abstract class AbstractC3055i2 extends AbstractC3067k2 implements InterfaceC3160t {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3055i2(InterfaceC3156z1 interfaceC3156z1) {
        super(interfaceC3156z1);
    }

    @Override // p033j$.util.InterfaceC3160t
    /* renamed from: forEachRemaining */
    public void m390e(Object obj) {
        if (this.f1063a == null) {
            return;
        }
        if (this.f1066d != null) {
            do {
            } while (m387k(obj));
            return;
        }
        InterfaceC2853s interfaceC2853s = this.f1065c;
        if (interfaceC2853s != null) {
            ((InterfaceC3160t) interfaceC2853s).forEachRemaining(obj);
            return;
        }
        Deque m380f = m380f();
        while (true) {
            InterfaceC3156z1 interfaceC3156z1 = (InterfaceC3156z1) m381a(m380f);
            if (interfaceC3156z1 == null) {
                this.f1063a = null;
                return;
            }
            interfaceC3156z1.mo276g(obj);
        }
    }

    @Override // p033j$.util.InterfaceC3160t
    /* renamed from: tryAdvance */
    public boolean m387k(Object obj) {
        InterfaceC3156z1 interfaceC3156z1;
        if (m379h()) {
            boolean tryAdvance = ((InterfaceC3160t) this.f1066d).tryAdvance(obj);
            if (!tryAdvance) {
                if (this.f1065c == null && (interfaceC3156z1 = (InterfaceC3156z1) m381a(this.f1067e)) != null) {
                    InterfaceC3160t spliterator = interfaceC3156z1.spliterator();
                    this.f1066d = spliterator;
                    return spliterator.tryAdvance(obj);
                }
                this.f1063a = null;
            }
            return tryAdvance;
        }
        return false;
    }
}
