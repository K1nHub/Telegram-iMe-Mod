package p033j$.util.stream;

import java.util.Deque;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
/* renamed from: j$.util.stream.j2 */
/* loaded from: classes2.dex */
final class C3057j2 extends AbstractC3063k2 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3057j2(InterfaceC2855A1 interfaceC2855A1) {
        super(interfaceC2855A1);
    }

    @Override // p033j$.util.Spliterator
    /* renamed from: b */
    public boolean mo179b(Consumer consumer) {
        InterfaceC2855A1 m445a;
        if (m443h()) {
            boolean mo179b = this.f1119d.mo179b(consumer);
            if (!mo179b) {
                if (this.f1118c == null && (m445a = m445a(this.f1120e)) != null) {
                    Spliterator spliterator = m445a.spliterator();
                    this.f1119d = spliterator;
                    return spliterator.mo179b(consumer);
                }
                this.f1116a = null;
            }
            return mo179b;
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
            } while (mo179b(consumer));
            return;
        }
        Spliterator spliterator = this.f1118c;
        if (spliterator != null) {
            spliterator.forEachRemaining(consumer);
            return;
        }
        Deque m444f = m444f();
        while (true) {
            InterfaceC2855A1 m445a = m445a(m444f);
            if (m445a == null) {
                this.f1116a = null;
                return;
            }
            m445a.forEach(consumer);
        }
    }
}
