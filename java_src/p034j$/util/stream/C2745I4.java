package p034j$.util.stream;

import java.util.Comparator;
import java.util.Objects;
import p034j$.util.AbstractC2615a;
import p034j$.util.InterfaceC2688s;
import p034j$.util.function.Consumer;
/* renamed from: j$.util.stream.I4 */
/* loaded from: classes2.dex */
final class C2745I4 extends AbstractC2751J4 implements InterfaceC2688s, Consumer {

    /* renamed from: e */
    Object f761e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2745I4(InterfaceC2688s interfaceC2688s, long j, long j2) {
        super(interfaceC2688s, j, j2);
    }

    C2745I4(InterfaceC2688s interfaceC2688s, C2745I4 c2745i4) {
        super(interfaceC2688s, c2745i4);
    }

    @Override // p034j$.util.function.Consumer
    public final void accept(Object obj) {
        this.f761e = obj;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.InterfaceC2688s
    /* renamed from: b */
    public boolean mo108b(Consumer consumer) {
        Objects.requireNonNull(consumer);
        while (m493r() != 1 && this.f768a.mo108b(this)) {
            if (m495p(1L) == 1) {
                consumer.accept(this.f761e);
                this.f761e = null;
                return true;
            }
        }
        return false;
    }

    @Override // p034j$.util.InterfaceC2688s
    public void forEachRemaining(Consumer consumer) {
        Objects.requireNonNull(consumer);
        C2904k4 c2904k4 = null;
        while (true) {
            int m493r = m493r();
            if (m493r == 1) {
                return;
            }
            if (m493r == 2) {
                if (c2904k4 == null) {
                    c2904k4 = new C2904k4(128);
                } else {
                    c2904k4.f990a = 0;
                }
                long j = 0;
                while (this.f768a.mo108b(c2904k4)) {
                    j++;
                    if (j >= 128) {
                        break;
                    }
                }
                if (j == 0) {
                    return;
                }
                long m495p = m495p(j);
                for (int i = 0; i < m495p; i++) {
                    consumer.accept(c2904k4.f983b[i]);
                }
            } else {
                this.f768a.forEachRemaining(consumer);
                return;
            }
        }
    }

    @Override // p034j$.util.InterfaceC2688s
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p034j$.util.InterfaceC2688s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2615a.m602e(this);
    }

    @Override // p034j$.util.InterfaceC2688s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2615a.m601f(this, i);
    }

    @Override // p034j$.util.stream.AbstractC2751J4
    /* renamed from: q */
    protected InterfaceC2688s mo494q(InterfaceC2688s interfaceC2688s) {
        return new C2745I4(interfaceC2688s, this);
    }
}
