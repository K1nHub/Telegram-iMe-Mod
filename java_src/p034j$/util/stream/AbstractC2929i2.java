package p034j$.util.stream;

import java.util.Deque;
import p034j$.util.InterfaceC2727s;
import p034j$.util.InterfaceC3034t;
/* renamed from: j$.util.stream.i2 */
/* loaded from: classes2.dex */
abstract class AbstractC2929i2 extends AbstractC2941k2 implements InterfaceC3034t {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2929i2(InterfaceC3030z1 interfaceC3030z1) {
        super(interfaceC3030z1);
    }

    @Override // p034j$.util.InterfaceC3034t
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
        InterfaceC2727s interfaceC2727s = this.f983c;
        if (interfaceC2727s != null) {
            ((InterfaceC3034t) interfaceC2727s).forEachRemaining(obj);
            return;
        }
        Deque m380f = m380f();
        while (true) {
            InterfaceC3030z1 interfaceC3030z1 = (InterfaceC3030z1) m381a(m380f);
            if (interfaceC3030z1 == null) {
                this.f981a = null;
                return;
            }
            interfaceC3030z1.mo276g(obj);
        }
    }

    @Override // p034j$.util.InterfaceC3034t
    /* renamed from: tryAdvance */
    public boolean m387k(Object obj) {
        InterfaceC3030z1 interfaceC3030z1;
        if (m379h()) {
            boolean tryAdvance = ((InterfaceC3034t) this.f984d).tryAdvance(obj);
            if (!tryAdvance) {
                if (this.f983c == null && (interfaceC3030z1 = (InterfaceC3030z1) m381a(this.f985e)) != null) {
                    InterfaceC3034t spliterator = interfaceC3030z1.spliterator();
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
