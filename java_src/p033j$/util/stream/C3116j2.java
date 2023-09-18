package p033j$.util.stream;

import java.util.Deque;
import p033j$.util.InterfaceC2908s;
import p033j$.util.function.Consumer;
/* renamed from: j$.util.stream.j2 */
/* loaded from: classes2.dex */
final class C3116j2 extends AbstractC3122k2 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3116j2(InterfaceC2914A1 interfaceC2914A1) {
        super(interfaceC2914A1);
    }

    @Override // p033j$.util.InterfaceC2908s
    /* renamed from: b */
    public boolean mo131b(Consumer consumer) {
        InterfaceC2914A1 m399a;
        if (m397h()) {
            boolean mo131b = this.f1070d.mo131b(consumer);
            if (!mo131b) {
                if (this.f1069c == null && (m399a = m399a(this.f1071e)) != null) {
                    InterfaceC2908s spliterator = m399a.spliterator();
                    this.f1070d = spliterator;
                    return spliterator.mo131b(consumer);
                }
                this.f1067a = null;
            }
            return mo131b;
        }
        return false;
    }

    @Override // p033j$.util.InterfaceC2908s
    public void forEachRemaining(Consumer consumer) {
        if (this.f1067a == null) {
            return;
        }
        if (this.f1070d != null) {
            do {
            } while (mo131b(consumer));
            return;
        }
        InterfaceC2908s interfaceC2908s = this.f1069c;
        if (interfaceC2908s != null) {
            interfaceC2908s.forEachRemaining(consumer);
            return;
        }
        Deque m398f = m398f();
        while (true) {
            InterfaceC2914A1 m399a = m399a(m398f);
            if (m399a == null) {
                this.f1067a = null;
                return;
            }
            m399a.forEach(consumer);
        }
    }
}
