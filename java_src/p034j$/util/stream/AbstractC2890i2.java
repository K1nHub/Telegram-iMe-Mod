package p034j$.util.stream;

import java.util.Deque;
import p034j$.util.InterfaceC2688s;
import p034j$.util.InterfaceC2995t;
/* renamed from: j$.util.stream.i2 */
/* loaded from: classes2.dex */
abstract class AbstractC2890i2 extends AbstractC2902k2 implements InterfaceC2995t {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2890i2(InterfaceC2991z1 interfaceC2991z1) {
        super(interfaceC2991z1);
    }

    @Override // p034j$.util.InterfaceC2995t
    /* renamed from: forEachRemaining */
    public void m385e(Object obj) {
        if (this.f978a == null) {
            return;
        }
        if (this.f981d != null) {
            do {
            } while (m382k(obj));
            return;
        }
        InterfaceC2688s interfaceC2688s = this.f980c;
        if (interfaceC2688s != null) {
            ((InterfaceC2995t) interfaceC2688s).forEachRemaining(obj);
            return;
        }
        Deque m375f = m375f();
        while (true) {
            InterfaceC2991z1 interfaceC2991z1 = (InterfaceC2991z1) m376a(m375f);
            if (interfaceC2991z1 == null) {
                this.f978a = null;
                return;
            }
            interfaceC2991z1.mo271g(obj);
        }
    }

    @Override // p034j$.util.InterfaceC2995t
    /* renamed from: tryAdvance */
    public boolean m382k(Object obj) {
        InterfaceC2991z1 interfaceC2991z1;
        if (m374h()) {
            boolean tryAdvance = ((InterfaceC2995t) this.f981d).tryAdvance(obj);
            if (!tryAdvance) {
                if (this.f980c == null && (interfaceC2991z1 = (InterfaceC2991z1) m376a(this.f982e)) != null) {
                    InterfaceC2995t spliterator = interfaceC2991z1.spliterator();
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
