package p034j$.util.stream;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.AbstractC2552a;
import p034j$.util.InterfaceC2625s;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.stream.I4 */
/* loaded from: classes2.dex */
final class C2682I4 extends AbstractC2688J4 implements InterfaceC2625s, Consumer {

    /* renamed from: e */
    Object f761e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2682I4(InterfaceC2625s interfaceC2625s, long j, long j2) {
        super(interfaceC2625s, j, j2);
    }

    C2682I4(InterfaceC2625s interfaceC2625s, C2682I4 c2682i4) {
        super(interfaceC2625s, c2682i4);
    }

    @Override // p034j$.util.function.Consumer
    public final void accept(Object obj) {
        this.f761e = obj;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.InterfaceC2625s
    /* renamed from: b */
    public boolean mo127b(Consumer consumer) {
        Objects.requireNonNull(consumer);
        while (m512r() != 1 && this.f768a.mo127b(this)) {
            if (m514p(1L) == 1) {
                consumer.accept(this.f761e);
                this.f761e = null;
                return true;
            }
        }
        return false;
    }

    @Override // p034j$.util.InterfaceC2625s
    public void forEachRemaining(Consumer consumer) {
        Objects.requireNonNull(consumer);
        C2841k4 c2841k4 = null;
        while (true) {
            int m512r = m512r();
            if (m512r == 1) {
                return;
            }
            if (m512r == 2) {
                if (c2841k4 == null) {
                    c2841k4 = new C2841k4(128);
                } else {
                    c2841k4.f990a = 0;
                }
                long j = 0;
                while (this.f768a.mo127b(c2841k4)) {
                    j++;
                    if (j >= 128) {
                        break;
                    }
                }
                if (j == 0) {
                    return;
                }
                long m514p = m514p(j);
                for (int i = 0; i < m514p; i++) {
                    consumer.accept(c2841k4.f983b[i]);
                }
            } else {
                this.f768a.forEachRemaining(consumer);
                return;
            }
        }
    }

    @Override // p034j$.util.InterfaceC2625s
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p034j$.util.InterfaceC2625s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2552a.m621e(this);
    }

    @Override // p034j$.util.InterfaceC2625s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2552a.m620f(this, i);
    }

    @Override // p034j$.util.stream.AbstractC2688J4
    /* renamed from: q */
    protected InterfaceC2625s mo513q(InterfaceC2625s interfaceC2625s) {
        return new C2682I4(interfaceC2625s, this);
    }
}
