package p035j$.util.stream;

import java.util.Comparator;
import java.util.Objects;
import p035j$.util.AbstractC2628a;
import p035j$.util.InterfaceC2701s;
import p035j$.util.function.Consumer;
/* renamed from: j$.util.stream.I4 */
/* loaded from: classes2.dex */
final class C2758I4 extends AbstractC2764J4 implements InterfaceC2701s, Consumer {

    /* renamed from: e */
    Object f766e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2758I4(InterfaceC2701s interfaceC2701s, long j, long j2) {
        super(interfaceC2701s, j, j2);
    }

    C2758I4(InterfaceC2701s interfaceC2701s, C2758I4 c2758i4) {
        super(interfaceC2701s, c2758i4);
    }

    @Override // p035j$.util.function.Consumer
    public final void accept(Object obj) {
        this.f766e = obj;
    }

    @Override // p035j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p035j$.util.InterfaceC2701s
    /* renamed from: b */
    public boolean mo122b(Consumer consumer) {
        Objects.requireNonNull(consumer);
        while (m507r() != 1 && this.f773a.mo122b(this)) {
            if (m509p(1L) == 1) {
                consumer.accept(this.f766e);
                this.f766e = null;
                return true;
            }
        }
        return false;
    }

    @Override // p035j$.util.InterfaceC2701s
    public void forEachRemaining(Consumer consumer) {
        Objects.requireNonNull(consumer);
        C2917k4 c2917k4 = null;
        while (true) {
            int m507r = m507r();
            if (m507r == 1) {
                return;
            }
            if (m507r == 2) {
                if (c2917k4 == null) {
                    c2917k4 = new C2917k4(128);
                } else {
                    c2917k4.f995a = 0;
                }
                long j = 0;
                while (this.f773a.mo122b(c2917k4)) {
                    j++;
                    if (j >= 128) {
                        break;
                    }
                }
                if (j == 0) {
                    return;
                }
                long m509p = m509p(j);
                for (int i = 0; i < m509p; i++) {
                    consumer.accept(c2917k4.f988b[i]);
                }
            } else {
                this.f773a.forEachRemaining(consumer);
                return;
            }
        }
    }

    @Override // p035j$.util.InterfaceC2701s
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p035j$.util.InterfaceC2701s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2628a.m616e(this);
    }

    @Override // p035j$.util.InterfaceC2701s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2628a.m615f(this, i);
    }

    @Override // p035j$.util.stream.AbstractC2764J4
    /* renamed from: q */
    protected InterfaceC2701s mo508q(InterfaceC2701s interfaceC2701s) {
        return new C2758I4(interfaceC2701s, this);
    }
}
