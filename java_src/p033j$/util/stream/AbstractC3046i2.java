package p033j$.util.stream;

import java.util.Deque;
import p033j$.util.Spliterator;
/* renamed from: j$.util.stream.i2 */
/* loaded from: classes2.dex */
abstract class AbstractC3046i2 extends AbstractC3058k2 implements Spliterator.InterfaceC2774d {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3046i2(InterfaceC3147z1 interfaceC3147z1) {
        super(interfaceC3147z1);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2774d
    /* renamed from: forEachRemaining */
    public void m457e(Object obj) {
        if (this.f1116a == null) {
            return;
        }
        if (this.f1119d != null) {
            do {
            } while (m454n(obj));
            return;
        }
        Spliterator spliterator = this.f1118c;
        if (spliterator != null) {
            ((Spliterator.InterfaceC2774d) spliterator).forEachRemaining(obj);
            return;
        }
        Deque m447f = m447f();
        while (true) {
            InterfaceC3147z1 interfaceC3147z1 = (InterfaceC3147z1) m448a(m447f);
            if (interfaceC3147z1 == null) {
                this.f1116a = null;
                return;
            }
            interfaceC3147z1.mo343g(obj);
        }
    }

    @Override // p033j$.util.Spliterator.InterfaceC2774d
    /* renamed from: tryAdvance */
    public boolean m454n(Object obj) {
        InterfaceC3147z1 interfaceC3147z1;
        if (m446h()) {
            boolean tryAdvance = ((Spliterator.InterfaceC2774d) this.f1119d).tryAdvance(obj);
            if (!tryAdvance) {
                if (this.f1118c == null && (interfaceC3147z1 = (InterfaceC3147z1) m448a(this.f1120e)) != null) {
                    Spliterator.InterfaceC2774d spliterator = interfaceC3147z1.spliterator();
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
