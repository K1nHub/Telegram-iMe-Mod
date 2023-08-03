package p033j$.util.stream;

import java.util.Deque;
import p033j$.util.InterfaceC2853s;
import p033j$.util.function.Consumer;
/* renamed from: j$.util.stream.j2 */
/* loaded from: classes2.dex */
final class C3061j2 extends AbstractC3067k2 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3061j2(InterfaceC2859A1 interfaceC2859A1) {
        super(interfaceC2859A1);
    }

    @Override // p033j$.util.InterfaceC2853s
    /* renamed from: b */
    public boolean mo131b(Consumer consumer) {
        InterfaceC2859A1 m399a;
        if (m397h()) {
            boolean mo131b = this.f1069d.mo131b(consumer);
            if (!mo131b) {
                if (this.f1068c == null && (m399a = m399a(this.f1070e)) != null) {
                    InterfaceC2853s spliterator = m399a.spliterator();
                    this.f1069d = spliterator;
                    return spliterator.mo131b(consumer);
                }
                this.f1066a = null;
            }
            return mo131b;
        }
        return false;
    }

    @Override // p033j$.util.InterfaceC2853s
    public void forEachRemaining(Consumer consumer) {
        if (this.f1066a == null) {
            return;
        }
        if (this.f1069d != null) {
            do {
            } while (mo131b(consumer));
            return;
        }
        InterfaceC2853s interfaceC2853s = this.f1068c;
        if (interfaceC2853s != null) {
            interfaceC2853s.forEachRemaining(consumer);
            return;
        }
        Deque m398f = m398f();
        while (true) {
            InterfaceC2859A1 m399a = m399a(m398f);
            if (m399a == null) {
                this.f1066a = null;
                return;
            }
            m399a.forEach(consumer);
        }
    }
}
