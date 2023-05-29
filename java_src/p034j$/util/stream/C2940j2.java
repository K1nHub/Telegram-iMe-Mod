package p034j$.util.stream;

import java.util.Deque;
import p034j$.util.InterfaceC2732s;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.stream.j2 */
/* loaded from: classes2.dex */
final class C2940j2 extends AbstractC2946k2 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2940j2(InterfaceC2738A1 interfaceC2738A1) {
        super(interfaceC2738A1);
    }

    @Override // p034j$.util.InterfaceC2732s
    /* renamed from: b */
    public boolean mo113b(Consumer consumer) {
        InterfaceC2738A1 m381a;
        if (m379h()) {
            boolean mo113b = this.f984d.mo113b(consumer);
            if (!mo113b) {
                if (this.f983c == null && (m381a = m381a(this.f985e)) != null) {
                    InterfaceC2732s spliterator = m381a.spliterator();
                    this.f984d = spliterator;
                    return spliterator.mo113b(consumer);
                }
                this.f981a = null;
            }
            return mo113b;
        }
        return false;
    }

    @Override // p034j$.util.InterfaceC2732s
    public void forEachRemaining(Consumer consumer) {
        if (this.f981a == null) {
            return;
        }
        if (this.f984d != null) {
            do {
            } while (mo113b(consumer));
            return;
        }
        InterfaceC2732s interfaceC2732s = this.f983c;
        if (interfaceC2732s != null) {
            interfaceC2732s.forEachRemaining(consumer);
            return;
        }
        Deque m380f = m380f();
        while (true) {
            InterfaceC2738A1 m381a = m381a(m380f);
            if (m381a == null) {
                this.f981a = null;
                return;
            }
            m381a.forEach(consumer);
        }
    }
}
