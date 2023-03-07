package p034j$.util.stream;

import java.util.Deque;
import p034j$.util.InterfaceC2487s;
import p034j$.util.InterfaceC2794t;
/* renamed from: j$.util.stream.i2 */
/* loaded from: classes2.dex */
abstract class AbstractC2689i2 extends AbstractC2701k2 implements InterfaceC2794t {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2689i2(InterfaceC2790z1 interfaceC2790z1) {
        super(interfaceC2790z1);
    }

    @Override // p034j$.util.InterfaceC2794t
    /* renamed from: forEachRemaining */
    public void m405e(Object obj) {
        if (this.f972a == null) {
            return;
        }
        if (this.f975d != null) {
            do {
            } while (m402k(obj));
            return;
        }
        InterfaceC2487s interfaceC2487s = this.f974c;
        if (interfaceC2487s != null) {
            ((InterfaceC2794t) interfaceC2487s).forEachRemaining(obj);
            return;
        }
        Deque m395f = m395f();
        while (true) {
            InterfaceC2790z1 interfaceC2790z1 = (InterfaceC2790z1) m396a(m395f);
            if (interfaceC2790z1 == null) {
                this.f972a = null;
                return;
            }
            interfaceC2790z1.mo291g(obj);
        }
    }

    @Override // p034j$.util.InterfaceC2794t
    /* renamed from: tryAdvance */
    public boolean m402k(Object obj) {
        InterfaceC2790z1 interfaceC2790z1;
        if (m394h()) {
            boolean tryAdvance = ((InterfaceC2794t) this.f975d).tryAdvance(obj);
            if (!tryAdvance) {
                if (this.f974c == null && (interfaceC2790z1 = (InterfaceC2790z1) m396a(this.f976e)) != null) {
                    InterfaceC2794t spliterator = interfaceC2790z1.spliterator();
                    this.f975d = spliterator;
                    return spliterator.tryAdvance(obj);
                }
                this.f972a = null;
            }
            return tryAdvance;
        }
        return false;
    }
}
