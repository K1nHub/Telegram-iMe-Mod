package p034j$.util.stream;

import java.util.Deque;
import p034j$.util.InterfaceC2727s;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.stream.j2 */
/* loaded from: classes2.dex */
final class C2935j2 extends AbstractC2941k2 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2935j2(InterfaceC2733A1 interfaceC2733A1) {
        super(interfaceC2733A1);
    }

    @Override // p034j$.util.InterfaceC2727s
    /* renamed from: b */
    public boolean mo113b(Consumer consumer) {
        InterfaceC2733A1 m381a;
        if (m379h()) {
            boolean mo113b = this.f984d.mo113b(consumer);
            if (!mo113b) {
                if (this.f983c == null && (m381a = m381a(this.f985e)) != null) {
                    InterfaceC2727s spliterator = m381a.spliterator();
                    this.f984d = spliterator;
                    return spliterator.mo113b(consumer);
                }
                this.f981a = null;
            }
            return mo113b;
        }
        return false;
    }

    @Override // p034j$.util.InterfaceC2727s
    public void forEachRemaining(Consumer consumer) {
        if (this.f981a == null) {
            return;
        }
        if (this.f984d != null) {
            do {
            } while (mo113b(consumer));
            return;
        }
        InterfaceC2727s interfaceC2727s = this.f983c;
        if (interfaceC2727s != null) {
            interfaceC2727s.forEachRemaining(consumer);
            return;
        }
        Deque m380f = m380f();
        while (true) {
            InterfaceC2733A1 m381a = m381a(m380f);
            if (m381a == null) {
                this.f981a = null;
                return;
            }
            m381a.forEach(consumer);
        }
    }
}
