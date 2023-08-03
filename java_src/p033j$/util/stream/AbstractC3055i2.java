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
    public void m408e(Object obj) {
        if (this.f1066a == null) {
            return;
        }
        if (this.f1069d != null) {
            do {
            } while (m405k(obj));
            return;
        }
        InterfaceC2853s interfaceC2853s = this.f1068c;
        if (interfaceC2853s != null) {
            ((InterfaceC3160t) interfaceC2853s).forEachRemaining(obj);
            return;
        }
        Deque m398f = m398f();
        while (true) {
            InterfaceC3156z1 interfaceC3156z1 = (InterfaceC3156z1) m399a(m398f);
            if (interfaceC3156z1 == null) {
                this.f1066a = null;
                return;
            }
            interfaceC3156z1.mo294g(obj);
        }
    }

    @Override // p033j$.util.InterfaceC3160t
    /* renamed from: tryAdvance */
    public boolean m405k(Object obj) {
        InterfaceC3156z1 interfaceC3156z1;
        if (m397h()) {
            boolean tryAdvance = ((InterfaceC3160t) this.f1069d).tryAdvance(obj);
            if (!tryAdvance) {
                if (this.f1068c == null && (interfaceC3156z1 = (InterfaceC3156z1) m399a(this.f1070e)) != null) {
                    InterfaceC3160t spliterator = interfaceC3156z1.spliterator();
                    this.f1069d = spliterator;
                    return spliterator.tryAdvance(obj);
                }
                this.f1066a = null;
            }
            return tryAdvance;
        }
        return false;
    }
}
