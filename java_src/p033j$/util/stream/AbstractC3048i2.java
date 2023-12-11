package p033j$.util.stream;

import java.util.Deque;
import p033j$.util.Spliterator;
/* renamed from: j$.util.stream.i2 */
/* loaded from: classes2.dex */
abstract class AbstractC3048i2 extends AbstractC3060k2 implements Spliterator.InterfaceC2776d {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3048i2(InterfaceC3149z1 interfaceC3149z1) {
        super(interfaceC3149z1);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2776d
    /* renamed from: forEachRemaining */
    public void m454e(Object obj) {
        if (this.f1116a == null) {
            return;
        }
        if (this.f1119d != null) {
            do {
            } while (m451n(obj));
            return;
        }
        Spliterator spliterator = this.f1118c;
        if (spliterator != null) {
            ((Spliterator.InterfaceC2776d) spliterator).forEachRemaining(obj);
            return;
        }
        Deque m444f = m444f();
        while (true) {
            InterfaceC3149z1 interfaceC3149z1 = (InterfaceC3149z1) m445a(m444f);
            if (interfaceC3149z1 == null) {
                this.f1116a = null;
                return;
            }
            interfaceC3149z1.mo340g(obj);
        }
    }

    @Override // p033j$.util.Spliterator.InterfaceC2776d
    /* renamed from: tryAdvance */
    public boolean m451n(Object obj) {
        InterfaceC3149z1 interfaceC3149z1;
        if (m443h()) {
            boolean tryAdvance = ((Spliterator.InterfaceC2776d) this.f1119d).tryAdvance(obj);
            if (!tryAdvance) {
                if (this.f1118c == null && (interfaceC3149z1 = (InterfaceC3149z1) m445a(this.f1120e)) != null) {
                    Spliterator.InterfaceC2776d spliterator = interfaceC3149z1.spliterator();
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
