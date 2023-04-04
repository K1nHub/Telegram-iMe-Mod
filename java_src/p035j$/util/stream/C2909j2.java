package p035j$.util.stream;

import java.util.Deque;
import p035j$.util.InterfaceC2701s;
import p035j$.util.function.Consumer;
/* renamed from: j$.util.stream.j2 */
/* loaded from: classes2.dex */
final class C2909j2 extends AbstractC2915k2 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2909j2(InterfaceC2707A1 interfaceC2707A1) {
        super(interfaceC2707A1);
    }

    @Override // p035j$.util.InterfaceC2701s
    /* renamed from: b */
    public boolean mo122b(Consumer consumer) {
        InterfaceC2707A1 m390a;
        if (m388h()) {
            boolean mo122b = this.f986d.mo122b(consumer);
            if (!mo122b) {
                if (this.f985c == null && (m390a = m390a(this.f987e)) != null) {
                    InterfaceC2701s spliterator = m390a.spliterator();
                    this.f986d = spliterator;
                    return spliterator.mo122b(consumer);
                }
                this.f983a = null;
            }
            return mo122b;
        }
        return false;
    }

    @Override // p035j$.util.InterfaceC2701s
    public void forEachRemaining(Consumer consumer) {
        if (this.f983a == null) {
            return;
        }
        if (this.f986d != null) {
            do {
            } while (mo122b(consumer));
            return;
        }
        InterfaceC2701s interfaceC2701s = this.f985c;
        if (interfaceC2701s != null) {
            interfaceC2701s.forEachRemaining(consumer);
            return;
        }
        Deque m389f = m389f();
        while (true) {
            InterfaceC2707A1 m390a = m390a(m389f);
            if (m390a == null) {
                this.f983a = null;
                return;
            }
            m390a.forEach(consumer);
        }
    }
}
