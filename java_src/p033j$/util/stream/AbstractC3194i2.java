package p033j$.util.stream;

import java.util.Deque;
import p033j$.util.InterfaceC2992s;
import p033j$.util.InterfaceC3299t;
/* renamed from: j$.util.stream.i2 */
/* loaded from: classes2.dex */
abstract class AbstractC3194i2 extends AbstractC3206k2 implements InterfaceC3299t {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3194i2(InterfaceC3295z1 interfaceC3295z1) {
        super(interfaceC3295z1);
    }

    @Override // p033j$.util.InterfaceC3299t
    /* renamed from: forEachRemaining */
    public void m408e(Object obj) {
        if (this.f1076a == null) {
            return;
        }
        if (this.f1079d != null) {
            do {
            } while (m405k(obj));
            return;
        }
        InterfaceC2992s interfaceC2992s = this.f1078c;
        if (interfaceC2992s != null) {
            ((InterfaceC3299t) interfaceC2992s).forEachRemaining(obj);
            return;
        }
        Deque m398f = m398f();
        while (true) {
            InterfaceC3295z1 interfaceC3295z1 = (InterfaceC3295z1) m399a(m398f);
            if (interfaceC3295z1 == null) {
                this.f1076a = null;
                return;
            }
            interfaceC3295z1.mo294g(obj);
        }
    }

    @Override // p033j$.util.InterfaceC3299t
    /* renamed from: tryAdvance */
    public boolean m405k(Object obj) {
        InterfaceC3295z1 interfaceC3295z1;
        if (m397h()) {
            boolean tryAdvance = ((InterfaceC3299t) this.f1079d).tryAdvance(obj);
            if (!tryAdvance) {
                if (this.f1078c == null && (interfaceC3295z1 = (InterfaceC3295z1) m399a(this.f1080e)) != null) {
                    InterfaceC3299t spliterator = interfaceC3295z1.spliterator();
                    this.f1079d = spliterator;
                    return spliterator.tryAdvance(obj);
                }
                this.f1076a = null;
            }
            return tryAdvance;
        }
        return false;
    }
}
