package p034j$.util.stream;

import java.util.Deque;
import p034j$.util.InterfaceC2625s;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.stream.j2 */
/* loaded from: classes2.dex */
final class C2833j2 extends AbstractC2839k2 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2833j2(InterfaceC2631A1 interfaceC2631A1) {
        super(interfaceC2631A1);
    }

    @Override // p034j$.util.InterfaceC2625s
    /* renamed from: b */
    public boolean mo127b(Consumer consumer) {
        InterfaceC2631A1 m395a;
        if (m393h()) {
            boolean mo127b = this.f981d.mo127b(consumer);
            if (!mo127b) {
                if (this.f980c == null && (m395a = m395a(this.f982e)) != null) {
                    InterfaceC2625s spliterator = m395a.spliterator();
                    this.f981d = spliterator;
                    return spliterator.mo127b(consumer);
                }
                this.f978a = null;
            }
            return mo127b;
        }
        return false;
    }

    @Override // p034j$.util.InterfaceC2625s
    public void forEachRemaining(Consumer consumer) {
        if (this.f978a == null) {
            return;
        }
        if (this.f981d != null) {
            do {
            } while (mo127b(consumer));
            return;
        }
        InterfaceC2625s interfaceC2625s = this.f980c;
        if (interfaceC2625s != null) {
            interfaceC2625s.forEachRemaining(consumer);
            return;
        }
        Deque m394f = m394f();
        while (true) {
            InterfaceC2631A1 m395a = m395a(m394f);
            if (m395a == null) {
                this.f978a = null;
                return;
            }
            m395a.forEach(consumer);
        }
    }
}
