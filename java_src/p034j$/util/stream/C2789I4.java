package p034j$.util.stream;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.AbstractC2659a;
import p034j$.util.InterfaceC2732s;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.stream.I4 */
/* loaded from: classes2.dex */
final class C2789I4 extends AbstractC2795J4 implements InterfaceC2732s, Consumer {

    /* renamed from: e */
    Object f764e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2789I4(InterfaceC2732s interfaceC2732s, long j, long j2) {
        super(interfaceC2732s, j, j2);
    }

    C2789I4(InterfaceC2732s interfaceC2732s, C2789I4 c2789i4) {
        super(interfaceC2732s, c2789i4);
    }

    @Override // p034j$.util.function.Consumer
    public final void accept(Object obj) {
        this.f764e = obj;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.InterfaceC2732s
    /* renamed from: b */
    public boolean mo113b(Consumer consumer) {
        Objects.requireNonNull(consumer);
        while (m498r() != 1 && this.f771a.mo113b(this)) {
            if (m500p(1L) == 1) {
                consumer.accept(this.f764e);
                this.f764e = null;
                return true;
            }
        }
        return false;
    }

    @Override // p034j$.util.InterfaceC2732s
    public void forEachRemaining(Consumer consumer) {
        Objects.requireNonNull(consumer);
        C2948k4 c2948k4 = null;
        while (true) {
            int m498r = m498r();
            if (m498r == 1) {
                return;
            }
            if (m498r == 2) {
                if (c2948k4 == null) {
                    c2948k4 = new C2948k4(128);
                } else {
                    c2948k4.f993a = 0;
                }
                long j = 0;
                while (this.f771a.mo113b(c2948k4)) {
                    j++;
                    if (j >= 128) {
                        break;
                    }
                }
                if (j == 0) {
                    return;
                }
                long m500p = m500p(j);
                for (int i = 0; i < m500p; i++) {
                    consumer.accept(c2948k4.f986b[i]);
                }
            } else {
                this.f771a.forEachRemaining(consumer);
                return;
            }
        }
    }

    @Override // p034j$.util.InterfaceC2732s
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p034j$.util.InterfaceC2732s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2659a.m606e(this);
    }

    @Override // p034j$.util.InterfaceC2732s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2659a.m605f(this, i);
    }

    @Override // p034j$.util.stream.AbstractC2795J4
    /* renamed from: q */
    protected InterfaceC2732s mo499q(InterfaceC2732s interfaceC2732s) {
        return new C2789I4(interfaceC2732s, this);
    }
}
