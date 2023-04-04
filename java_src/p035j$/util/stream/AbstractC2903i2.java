package p035j$.util.stream;

import java.util.Deque;
import p035j$.util.InterfaceC2701s;
import p035j$.util.InterfaceC3008t;
/* renamed from: j$.util.stream.i2 */
/* loaded from: classes2.dex */
abstract class AbstractC2903i2 extends AbstractC2915k2 implements InterfaceC3008t {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2903i2(InterfaceC3004z1 interfaceC3004z1) {
        super(interfaceC3004z1);
    }

    @Override // p035j$.util.InterfaceC3008t
    /* renamed from: forEachRemaining */
    public void m399e(Object obj) {
        if (this.f983a == null) {
            return;
        }
        if (this.f986d != null) {
            do {
            } while (m396k(obj));
            return;
        }
        InterfaceC2701s interfaceC2701s = this.f985c;
        if (interfaceC2701s != null) {
            ((InterfaceC3008t) interfaceC2701s).forEachRemaining(obj);
            return;
        }
        Deque m389f = m389f();
        while (true) {
            InterfaceC3004z1 interfaceC3004z1 = (InterfaceC3004z1) m390a(m389f);
            if (interfaceC3004z1 == null) {
                this.f983a = null;
                return;
            }
            interfaceC3004z1.mo285g(obj);
        }
    }

    @Override // p035j$.util.InterfaceC3008t
    /* renamed from: tryAdvance */
    public boolean m396k(Object obj) {
        InterfaceC3004z1 interfaceC3004z1;
        if (m388h()) {
            boolean tryAdvance = ((InterfaceC3008t) this.f986d).tryAdvance(obj);
            if (!tryAdvance) {
                if (this.f985c == null && (interfaceC3004z1 = (InterfaceC3004z1) m390a(this.f987e)) != null) {
                    InterfaceC3008t spliterator = interfaceC3004z1.spliterator();
                    this.f986d = spliterator;
                    return spliterator.tryAdvance(obj);
                }
                this.f983a = null;
            }
            return tryAdvance;
        }
        return false;
    }
}
