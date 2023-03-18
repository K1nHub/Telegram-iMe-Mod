package p034j$.util.stream;

import java.util.Deque;
import p034j$.util.InterfaceC2611s;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.stream.j2 */
/* loaded from: classes2.dex */
final class C2819j2 extends AbstractC2825k2 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2819j2(InterfaceC2617A1 interfaceC2617A1) {
        super(interfaceC2617A1);
    }

    @Override // p034j$.util.InterfaceC2611s
    /* renamed from: b */
    public boolean mo128b(Consumer consumer) {
        InterfaceC2617A1 m396a;
        if (m394h()) {
            boolean mo128b = this.f980d.mo128b(consumer);
            if (!mo128b) {
                if (this.f979c == null && (m396a = m396a(this.f981e)) != null) {
                    InterfaceC2611s spliterator = m396a.spliterator();
                    this.f980d = spliterator;
                    return spliterator.mo128b(consumer);
                }
                this.f977a = null;
            }
            return mo128b;
        }
        return false;
    }

    @Override // p034j$.util.InterfaceC2611s
    public void forEachRemaining(Consumer consumer) {
        if (this.f977a == null) {
            return;
        }
        if (this.f980d != null) {
            do {
            } while (mo128b(consumer));
            return;
        }
        InterfaceC2611s interfaceC2611s = this.f979c;
        if (interfaceC2611s != null) {
            interfaceC2611s.forEachRemaining(consumer);
            return;
        }
        Deque m395f = m395f();
        while (true) {
            InterfaceC2617A1 m396a = m396a(m395f);
            if (m396a == null) {
                this.f977a = null;
                return;
            }
            m396a.forEach(consumer);
        }
    }
}
