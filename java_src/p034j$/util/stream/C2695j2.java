package p034j$.util.stream;

import java.util.Deque;
import p034j$.util.InterfaceC2487s;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.stream.j2 */
/* loaded from: classes2.dex */
final class C2695j2 extends AbstractC2701k2 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2695j2(InterfaceC2493A1 interfaceC2493A1) {
        super(interfaceC2493A1);
    }

    @Override // p034j$.util.InterfaceC2487s
    /* renamed from: b */
    public boolean mo128b(Consumer consumer) {
        InterfaceC2493A1 m396a;
        if (m394h()) {
            boolean mo128b = this.f975d.mo128b(consumer);
            if (!mo128b) {
                if (this.f974c == null && (m396a = m396a(this.f976e)) != null) {
                    InterfaceC2487s spliterator = m396a.spliterator();
                    this.f975d = spliterator;
                    return spliterator.mo128b(consumer);
                }
                this.f972a = null;
            }
            return mo128b;
        }
        return false;
    }

    @Override // p034j$.util.InterfaceC2487s
    public void forEachRemaining(Consumer consumer) {
        if (this.f972a == null) {
            return;
        }
        if (this.f975d != null) {
            do {
            } while (mo128b(consumer));
            return;
        }
        InterfaceC2487s interfaceC2487s = this.f974c;
        if (interfaceC2487s != null) {
            interfaceC2487s.forEachRemaining(consumer);
            return;
        }
        Deque m395f = m395f();
        while (true) {
            InterfaceC2493A1 m396a = m396a(m395f);
            if (m396a == null) {
                this.f972a = null;
                return;
            }
            m396a.forEach(consumer);
        }
    }
}
