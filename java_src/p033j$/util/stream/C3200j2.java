package p033j$.util.stream;

import java.util.Deque;
import p033j$.util.InterfaceC2992s;
import p033j$.util.function.Consumer;
/* renamed from: j$.util.stream.j2 */
/* loaded from: classes2.dex */
final class C3200j2 extends AbstractC3206k2 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3200j2(InterfaceC2998A1 interfaceC2998A1) {
        super(interfaceC2998A1);
    }

    @Override // p033j$.util.InterfaceC2992s
    /* renamed from: b */
    public boolean mo131b(Consumer consumer) {
        InterfaceC2998A1 m399a;
        if (m397h()) {
            boolean mo131b = this.f1079d.mo131b(consumer);
            if (!mo131b) {
                if (this.f1078c == null && (m399a = m399a(this.f1080e)) != null) {
                    InterfaceC2992s spliterator = m399a.spliterator();
                    this.f1079d = spliterator;
                    return spliterator.mo131b(consumer);
                }
                this.f1076a = null;
            }
            return mo131b;
        }
        return false;
    }

    @Override // p033j$.util.InterfaceC2992s
    public void forEachRemaining(Consumer consumer) {
        if (this.f1076a == null) {
            return;
        }
        if (this.f1079d != null) {
            do {
            } while (mo131b(consumer));
            return;
        }
        InterfaceC2992s interfaceC2992s = this.f1078c;
        if (interfaceC2992s != null) {
            interfaceC2992s.forEachRemaining(consumer);
            return;
        }
        Deque m398f = m398f();
        while (true) {
            InterfaceC2998A1 m399a = m399a(m398f);
            if (m399a == null) {
                this.f1076a = null;
                return;
            }
            m399a.forEach(consumer);
        }
    }
}
