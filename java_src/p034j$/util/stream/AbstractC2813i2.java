package p034j$.util.stream;

import java.util.Deque;
import p034j$.util.InterfaceC2611s;
import p034j$.util.InterfaceC2918t;
/* renamed from: j$.util.stream.i2 */
/* loaded from: classes2.dex */
abstract class AbstractC2813i2 extends AbstractC2825k2 implements InterfaceC2918t {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2813i2(InterfaceC2914z1 interfaceC2914z1) {
        super(interfaceC2914z1);
    }

    @Override // p034j$.util.InterfaceC2918t
    /* renamed from: forEachRemaining */
    public void m405e(Object obj) {
        if (this.f977a == null) {
            return;
        }
        if (this.f980d != null) {
            do {
            } while (m402k(obj));
            return;
        }
        InterfaceC2611s interfaceC2611s = this.f979c;
        if (interfaceC2611s != null) {
            ((InterfaceC2918t) interfaceC2611s).forEachRemaining(obj);
            return;
        }
        Deque m395f = m395f();
        while (true) {
            InterfaceC2914z1 interfaceC2914z1 = (InterfaceC2914z1) m396a(m395f);
            if (interfaceC2914z1 == null) {
                this.f977a = null;
                return;
            }
            interfaceC2914z1.mo291g(obj);
        }
    }

    @Override // p034j$.util.InterfaceC2918t
    /* renamed from: tryAdvance */
    public boolean m402k(Object obj) {
        InterfaceC2914z1 interfaceC2914z1;
        if (m394h()) {
            boolean tryAdvance = ((InterfaceC2918t) this.f980d).tryAdvance(obj);
            if (!tryAdvance) {
                if (this.f979c == null && (interfaceC2914z1 = (InterfaceC2914z1) m396a(this.f981e)) != null) {
                    InterfaceC2918t spliterator = interfaceC2914z1.spliterator();
                    this.f980d = spliterator;
                    return spliterator.tryAdvance(obj);
                }
                this.f977a = null;
            }
            return tryAdvance;
        }
        return false;
    }
}
