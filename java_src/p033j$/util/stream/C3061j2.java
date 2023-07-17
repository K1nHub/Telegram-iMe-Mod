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
    public boolean mo113b(Consumer consumer) {
        InterfaceC2859A1 m381a;
        if (m379h()) {
            boolean mo113b = this.f1066d.mo113b(consumer);
            if (!mo113b) {
                if (this.f1065c == null && (m381a = m381a(this.f1067e)) != null) {
                    InterfaceC2853s spliterator = m381a.spliterator();
                    this.f1066d = spliterator;
                    return spliterator.mo113b(consumer);
                }
                this.f1063a = null;
            }
            return mo113b;
        }
        return false;
    }

    @Override // p033j$.util.InterfaceC2853s
    public void forEachRemaining(Consumer consumer) {
        if (this.f1063a == null) {
            return;
        }
        if (this.f1066d != null) {
            do {
            } while (mo113b(consumer));
            return;
        }
        InterfaceC2853s interfaceC2853s = this.f1065c;
        if (interfaceC2853s != null) {
            interfaceC2853s.forEachRemaining(consumer);
            return;
        }
        Deque m380f = m380f();
        while (true) {
            InterfaceC2859A1 m381a = m381a(m380f);
            if (m381a == null) {
                this.f1063a = null;
                return;
            }
            m381a.forEach(consumer);
        }
    }
}
