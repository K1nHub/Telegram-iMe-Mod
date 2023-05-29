package p034j$.util.stream;

import java.util.Deque;
import p034j$.util.InterfaceC2732s;
import p034j$.util.InterfaceC3039t;
/* renamed from: j$.util.stream.i2 */
/* loaded from: classes2.dex */
abstract class AbstractC2934i2 extends AbstractC2946k2 implements InterfaceC3039t {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2934i2(InterfaceC3035z1 interfaceC3035z1) {
        super(interfaceC3035z1);
    }

    @Override // p034j$.util.InterfaceC3039t
    /* renamed from: forEachRemaining */
    public void m390e(Object obj) {
        if (this.f981a == null) {
            return;
        }
        if (this.f984d != null) {
            do {
            } while (m387k(obj));
            return;
        }
        InterfaceC2732s interfaceC2732s = this.f983c;
        if (interfaceC2732s != null) {
            ((InterfaceC3039t) interfaceC2732s).forEachRemaining(obj);
            return;
        }
        Deque m380f = m380f();
        while (true) {
            InterfaceC3035z1 interfaceC3035z1 = (InterfaceC3035z1) m381a(m380f);
            if (interfaceC3035z1 == null) {
                this.f981a = null;
                return;
            }
            interfaceC3035z1.mo276g(obj);
        }
    }

    @Override // p034j$.util.InterfaceC3039t
    /* renamed from: tryAdvance */
    public boolean m387k(Object obj) {
        InterfaceC3035z1 interfaceC3035z1;
        if (m379h()) {
            boolean tryAdvance = ((InterfaceC3039t) this.f984d).tryAdvance(obj);
            if (!tryAdvance) {
                if (this.f983c == null && (interfaceC3035z1 = (InterfaceC3035z1) m381a(this.f985e)) != null) {
                    InterfaceC3039t spliterator = interfaceC3035z1.spliterator();
                    this.f984d = spliterator;
                    return spliterator.tryAdvance(obj);
                }
                this.f981a = null;
            }
            return tryAdvance;
        }
        return false;
    }
}
