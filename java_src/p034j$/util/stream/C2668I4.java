package p034j$.util.stream;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.AbstractC2538a;
import p034j$.util.InterfaceC2611s;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.stream.I4 */
/* loaded from: classes2.dex */
final class C2668I4 extends AbstractC2674J4 implements InterfaceC2611s, Consumer {

    /* renamed from: e */
    Object f760e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2668I4(InterfaceC2611s interfaceC2611s, long j, long j2) {
        super(interfaceC2611s, j, j2);
    }

    C2668I4(InterfaceC2611s interfaceC2611s, C2668I4 c2668i4) {
        super(interfaceC2611s, c2668i4);
    }

    @Override // p034j$.util.function.Consumer
    public final void accept(Object obj) {
        this.f760e = obj;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.InterfaceC2611s
    /* renamed from: b */
    public boolean mo128b(Consumer consumer) {
        Objects.requireNonNull(consumer);
        while (m513r() != 1 && this.f767a.mo128b(this)) {
            if (m515p(1L) == 1) {
                consumer.accept(this.f760e);
                this.f760e = null;
                return true;
            }
        }
        return false;
    }

    @Override // p034j$.util.InterfaceC2611s
    public void forEachRemaining(Consumer consumer) {
        Objects.requireNonNull(consumer);
        C2827k4 c2827k4 = null;
        while (true) {
            int m513r = m513r();
            if (m513r == 1) {
                return;
            }
            if (m513r == 2) {
                if (c2827k4 == null) {
                    c2827k4 = new C2827k4(128);
                } else {
                    c2827k4.f989a = 0;
                }
                long j = 0;
                while (this.f767a.mo128b(c2827k4)) {
                    j++;
                    if (j >= 128) {
                        break;
                    }
                }
                if (j == 0) {
                    return;
                }
                long m515p = m515p(j);
                for (int i = 0; i < m515p; i++) {
                    consumer.accept(c2827k4.f982b[i]);
                }
            } else {
                this.f767a.forEachRemaining(consumer);
                return;
            }
        }
    }

    @Override // p034j$.util.InterfaceC2611s
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p034j$.util.InterfaceC2611s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2538a.m622e(this);
    }

    @Override // p034j$.util.InterfaceC2611s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2538a.m621f(this, i);
    }

    @Override // p034j$.util.stream.AbstractC2674J4
    /* renamed from: q */
    protected InterfaceC2611s mo514q(InterfaceC2611s interfaceC2611s) {
        return new C2668I4(interfaceC2611s, this);
    }
}
