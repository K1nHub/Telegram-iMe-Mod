package p034j$.util.stream;

import java.util.Deque;
import p034j$.util.InterfaceC2688s;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.stream.j2 */
/* loaded from: classes2.dex */
final class C2896j2 extends AbstractC2902k2 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2896j2(InterfaceC2694A1 interfaceC2694A1) {
        super(interfaceC2694A1);
    }

    @Override // p034j$.util.InterfaceC2688s
    /* renamed from: b */
    public boolean mo108b(Consumer consumer) {
        InterfaceC2694A1 m376a;
        if (m374h()) {
            boolean mo108b = this.f981d.mo108b(consumer);
            if (!mo108b) {
                if (this.f980c == null && (m376a = m376a(this.f982e)) != null) {
                    InterfaceC2688s spliterator = m376a.spliterator();
                    this.f981d = spliterator;
                    return spliterator.mo108b(consumer);
                }
                this.f978a = null;
            }
            return mo108b;
        }
        return false;
    }

    @Override // p034j$.util.InterfaceC2688s
    public void forEachRemaining(Consumer consumer) {
        if (this.f978a == null) {
            return;
        }
        if (this.f981d != null) {
            do {
            } while (mo108b(consumer));
            return;
        }
        InterfaceC2688s interfaceC2688s = this.f980c;
        if (interfaceC2688s != null) {
            interfaceC2688s.forEachRemaining(consumer);
            return;
        }
        Deque m375f = m375f();
        while (true) {
            InterfaceC2694A1 m376a = m376a(m375f);
            if (m376a == null) {
                this.f978a = null;
                return;
            }
            m376a.forEach(consumer);
        }
    }
}
