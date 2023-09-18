package p033j$.util.stream;

import java.util.Deque;
import p033j$.util.InterfaceC2908s;
import p033j$.util.InterfaceC3215t;
/* renamed from: j$.util.stream.i2 */
/* loaded from: classes2.dex */
abstract class AbstractC3110i2 extends AbstractC3122k2 implements InterfaceC3215t {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3110i2(InterfaceC3211z1 interfaceC3211z1) {
        super(interfaceC3211z1);
    }

    @Override // p033j$.util.InterfaceC3215t
    /* renamed from: forEachRemaining */
    public void m408e(Object obj) {
        if (this.f1067a == null) {
            return;
        }
        if (this.f1070d != null) {
            do {
            } while (m405k(obj));
            return;
        }
        InterfaceC2908s interfaceC2908s = this.f1069c;
        if (interfaceC2908s != null) {
            ((InterfaceC3215t) interfaceC2908s).forEachRemaining(obj);
            return;
        }
        Deque m398f = m398f();
        while (true) {
            InterfaceC3211z1 interfaceC3211z1 = (InterfaceC3211z1) m399a(m398f);
            if (interfaceC3211z1 == null) {
                this.f1067a = null;
                return;
            }
            interfaceC3211z1.mo294g(obj);
        }
    }

    @Override // p033j$.util.InterfaceC3215t
    /* renamed from: tryAdvance */
    public boolean m405k(Object obj) {
        InterfaceC3211z1 interfaceC3211z1;
        if (m397h()) {
            boolean tryAdvance = ((InterfaceC3215t) this.f1070d).tryAdvance(obj);
            if (!tryAdvance) {
                if (this.f1069c == null && (interfaceC3211z1 = (InterfaceC3211z1) m399a(this.f1071e)) != null) {
                    InterfaceC3215t spliterator = interfaceC3211z1.spliterator();
                    this.f1070d = spliterator;
                    return spliterator.tryAdvance(obj);
                }
                this.f1067a = null;
            }
            return tryAdvance;
        }
        return false;
    }
}
