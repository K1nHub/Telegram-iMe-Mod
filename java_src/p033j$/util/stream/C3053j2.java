package p033j$.util.stream;

import java.util.Deque;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
/* renamed from: j$.util.stream.j2 */
/* loaded from: classes2.dex */
final class C3053j2 extends AbstractC3059k2 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3053j2(InterfaceC2851A1 interfaceC2851A1) {
        super(interfaceC2851A1);
    }

    @Override // p033j$.util.Spliterator
    /* renamed from: b */
    public boolean mo178b(Consumer consumer) {
        InterfaceC2851A1 m444a;
        if (m442h()) {
            boolean mo178b = this.f1119d.mo178b(consumer);
            if (!mo178b) {
                if (this.f1118c == null && (m444a = m444a(this.f1120e)) != null) {
                    Spliterator spliterator = m444a.spliterator();
                    this.f1119d = spliterator;
                    return spliterator.mo178b(consumer);
                }
                this.f1116a = null;
            }
            return mo178b;
        }
        return false;
    }

    @Override // p033j$.util.Spliterator
    public void forEachRemaining(Consumer consumer) {
        if (this.f1116a == null) {
            return;
        }
        if (this.f1119d != null) {
            do {
            } while (mo178b(consumer));
            return;
        }
        Spliterator spliterator = this.f1118c;
        if (spliterator != null) {
            spliterator.forEachRemaining(consumer);
            return;
        }
        Deque m443f = m443f();
        while (true) {
            InterfaceC2851A1 m444a = m444a(m443f);
            if (m444a == null) {
                this.f1116a = null;
                return;
            }
            m444a.forEach(consumer);
        }
    }
}
