package p033j$.util.stream;

import java.util.Deque;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
/* renamed from: j$.util.stream.j2 */
/* loaded from: classes2.dex */
final class C3052j2 extends AbstractC3058k2 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3052j2(InterfaceC2850A1 interfaceC2850A1) {
        super(interfaceC2850A1);
    }

    @Override // p033j$.util.Spliterator
    /* renamed from: b */
    public boolean mo182b(Consumer consumer) {
        InterfaceC2850A1 m448a;
        if (m446h()) {
            boolean mo182b = this.f1119d.mo182b(consumer);
            if (!mo182b) {
                if (this.f1118c == null && (m448a = m448a(this.f1120e)) != null) {
                    Spliterator spliterator = m448a.spliterator();
                    this.f1119d = spliterator;
                    return spliterator.mo182b(consumer);
                }
                this.f1116a = null;
            }
            return mo182b;
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
            } while (mo182b(consumer));
            return;
        }
        Spliterator spliterator = this.f1118c;
        if (spliterator != null) {
            spliterator.forEachRemaining(consumer);
            return;
        }
        Deque m447f = m447f();
        while (true) {
            InterfaceC2850A1 m448a = m448a(m447f);
            if (m448a == null) {
                this.f1116a = null;
                return;
            }
            m448a.forEach(consumer);
        }
    }
}
