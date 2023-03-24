package p034j$.util.stream;

import java.util.Deque;
import p034j$.util.InterfaceC2625s;
import p034j$.util.InterfaceC2932t;
/* renamed from: j$.util.stream.i2 */
/* loaded from: classes2.dex */
abstract class AbstractC2827i2 extends AbstractC2839k2 implements InterfaceC2932t {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2827i2(InterfaceC2928z1 interfaceC2928z1) {
        super(interfaceC2928z1);
    }

    @Override // p034j$.util.InterfaceC2932t
    /* renamed from: forEachRemaining */
    public void m404e(Object obj) {
        if (this.f978a == null) {
            return;
        }
        if (this.f981d != null) {
            do {
            } while (m401k(obj));
            return;
        }
        InterfaceC2625s interfaceC2625s = this.f980c;
        if (interfaceC2625s != null) {
            ((InterfaceC2932t) interfaceC2625s).forEachRemaining(obj);
            return;
        }
        Deque m394f = m394f();
        while (true) {
            InterfaceC2928z1 interfaceC2928z1 = (InterfaceC2928z1) m395a(m394f);
            if (interfaceC2928z1 == null) {
                this.f978a = null;
                return;
            }
            interfaceC2928z1.mo290g(obj);
        }
    }

    @Override // p034j$.util.InterfaceC2932t
    /* renamed from: tryAdvance */
    public boolean m401k(Object obj) {
        InterfaceC2928z1 interfaceC2928z1;
        if (m393h()) {
            boolean tryAdvance = ((InterfaceC2932t) this.f981d).tryAdvance(obj);
            if (!tryAdvance) {
                if (this.f980c == null && (interfaceC2928z1 = (InterfaceC2928z1) m395a(this.f982e)) != null) {
                    InterfaceC2932t spliterator = interfaceC2928z1.spliterator();
                    this.f981d = spliterator;
                    return spliterator.tryAdvance(obj);
                }
                this.f978a = null;
            }
            return tryAdvance;
        }
        return false;
    }
}
