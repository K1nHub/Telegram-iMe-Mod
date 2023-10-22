package p033j$.util.stream;

import java.util.Deque;
import p033j$.util.Spliterator;
/* renamed from: j$.util.stream.i2 */
/* loaded from: classes2.dex */
abstract class AbstractC3047i2 extends AbstractC3059k2 implements Spliterator.InterfaceC2775d {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3047i2(InterfaceC3148z1 interfaceC3148z1) {
        super(interfaceC3148z1);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2775d
    /* renamed from: forEachRemaining */
    public void m453e(Object obj) {
        if (this.f1116a == null) {
            return;
        }
        if (this.f1119d != null) {
            do {
            } while (m450n(obj));
            return;
        }
        Spliterator spliterator = this.f1118c;
        if (spliterator != null) {
            ((Spliterator.InterfaceC2775d) spliterator).forEachRemaining(obj);
            return;
        }
        Deque m443f = m443f();
        while (true) {
            InterfaceC3148z1 interfaceC3148z1 = (InterfaceC3148z1) m444a(m443f);
            if (interfaceC3148z1 == null) {
                this.f1116a = null;
                return;
            }
            interfaceC3148z1.mo339g(obj);
        }
    }

    @Override // p033j$.util.Spliterator.InterfaceC2775d
    /* renamed from: tryAdvance */
    public boolean m450n(Object obj) {
        InterfaceC3148z1 interfaceC3148z1;
        if (m442h()) {
            boolean tryAdvance = ((Spliterator.InterfaceC2775d) this.f1119d).tryAdvance(obj);
            if (!tryAdvance) {
                if (this.f1118c == null && (interfaceC3148z1 = (InterfaceC3148z1) m444a(this.f1120e)) != null) {
                    Spliterator.InterfaceC2775d spliterator = interfaceC3148z1.spliterator();
                    this.f1119d = spliterator;
                    return spliterator.tryAdvance(obj);
                }
                this.f1116a = null;
            }
            return tryAdvance;
        }
        return false;
    }
}
