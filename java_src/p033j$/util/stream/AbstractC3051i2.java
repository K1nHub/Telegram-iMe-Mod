package p033j$.util.stream;

import java.util.Deque;
import p033j$.util.Spliterator;
/* renamed from: j$.util.stream.i2 */
/* loaded from: classes2.dex */
abstract class AbstractC3051i2 extends AbstractC3063k2 implements Spliterator.InterfaceC2779d {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3051i2(InterfaceC3152z1 interfaceC3152z1) {
        super(interfaceC3152z1);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2779d
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
            ((Spliterator.InterfaceC2779d) spliterator).forEachRemaining(obj);
            return;
        }
        Deque m444f = m444f();
        while (true) {
            InterfaceC3152z1 interfaceC3152z1 = (InterfaceC3152z1) m445a(m444f);
            if (interfaceC3152z1 == null) {
                this.f1116a = null;
                return;
            }
            interfaceC3152z1.mo340g(obj);
        }
    }

    @Override // p033j$.util.Spliterator.InterfaceC2779d
    /* renamed from: tryAdvance */
    public boolean m451n(Object obj) {
        InterfaceC3152z1 interfaceC3152z1;
        if (m443h()) {
            boolean tryAdvance = ((Spliterator.InterfaceC2779d) this.f1119d).tryAdvance(obj);
            if (!tryAdvance) {
                if (this.f1118c == null && (interfaceC3152z1 = (InterfaceC3152z1) m445a(this.f1120e)) != null) {
                    Spliterator.InterfaceC2779d spliterator = interfaceC3152z1.spliterator();
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
