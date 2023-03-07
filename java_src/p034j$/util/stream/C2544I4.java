package p034j$.util.stream;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.AbstractC2414a;
import p034j$.util.InterfaceC2487s;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.stream.I4 */
/* loaded from: classes2.dex */
final class C2544I4 extends AbstractC2550J4 implements InterfaceC2487s, Consumer {

    /* renamed from: e */
    Object f755e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2544I4(InterfaceC2487s interfaceC2487s, long j, long j2) {
        super(interfaceC2487s, j, j2);
    }

    C2544I4(InterfaceC2487s interfaceC2487s, C2544I4 c2544i4) {
        super(interfaceC2487s, c2544i4);
    }

    @Override // p034j$.util.function.Consumer
    public final void accept(Object obj) {
        this.f755e = obj;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.InterfaceC2487s
    /* renamed from: b */
    public boolean mo128b(Consumer consumer) {
        Objects.requireNonNull(consumer);
        while (m513r() != 1 && this.f762a.mo128b(this)) {
            if (m515p(1L) == 1) {
                consumer.accept(this.f755e);
                this.f755e = null;
                return true;
            }
        }
        return false;
    }

    @Override // p034j$.util.InterfaceC2487s
    public void forEachRemaining(Consumer consumer) {
        Objects.requireNonNull(consumer);
        C2703k4 c2703k4 = null;
        while (true) {
            int m513r = m513r();
            if (m513r == 1) {
                return;
            }
            if (m513r == 2) {
                if (c2703k4 == null) {
                    c2703k4 = new C2703k4(128);
                } else {
                    c2703k4.f984a = 0;
                }
                long j = 0;
                while (this.f762a.mo128b(c2703k4)) {
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
                    consumer.accept(c2703k4.f977b[i]);
                }
            } else {
                this.f762a.forEachRemaining(consumer);
                return;
            }
        }
    }

    @Override // p034j$.util.InterfaceC2487s
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p034j$.util.InterfaceC2487s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2414a.m622e(this);
    }

    @Override // p034j$.util.InterfaceC2487s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2414a.m621f(this, i);
    }

    @Override // p034j$.util.stream.AbstractC2550J4
    /* renamed from: q */
    protected InterfaceC2487s mo514q(InterfaceC2487s interfaceC2487s) {
        return new C2544I4(interfaceC2487s, this);
    }
}
