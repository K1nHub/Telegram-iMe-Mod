package p035j$.util.stream;

import java.util.Objects;
import p035j$.util.InterfaceC2701s;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2687y;
/* renamed from: j$.util.stream.L4 */
/* loaded from: classes2.dex */
final class C2776L4 extends AbstractC2887f4 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2776L4(AbstractC2999y2 abstractC2999y2, InterfaceC2687y interfaceC2687y, boolean z) {
        super(abstractC2999y2, interfaceC2687y, z);
    }

    C2776L4(AbstractC2999y2 abstractC2999y2, InterfaceC2701s interfaceC2701s, boolean z) {
        super(abstractC2999y2, interfaceC2701s, z);
    }

    @Override // p035j$.util.InterfaceC2701s
    /* renamed from: b */
    public boolean mo122b(Consumer consumer) {
        Object obj;
        Objects.requireNonNull(consumer);
        boolean m409a = m409a();
        if (m409a) {
            C2857a4 c2857a4 = (C2857a4) this.f955h;
            long j = this.f954g;
            if (c2857a4.f935c != 0) {
                if (j < c2857a4.count()) {
                    for (int i = 0; i <= c2857a4.f935c; i++) {
                        long[] jArr = c2857a4.f936d;
                        long j2 = jArr[i];
                        Object[][] objArr = c2857a4.f883f;
                        if (j < j2 + objArr[i].length) {
                            obj = objArr[i][(int) (j - jArr[i])];
                        }
                    }
                    throw new IndexOutOfBoundsException(Long.toString(j));
                }
                throw new IndexOutOfBoundsException(Long.toString(j));
            } else if (j >= c2857a4.f934b) {
                throw new IndexOutOfBoundsException(Long.toString(j));
            } else {
                obj = c2857a4.f882e[(int) j];
            }
            consumer.accept(obj);
        }
        return m409a;
    }

    @Override // p035j$.util.InterfaceC2701s
    public void forEachRemaining(Consumer consumer) {
        if (this.f955h != null || this.f956i) {
            do {
            } while (mo122b(consumer));
            return;
        }
        Objects.requireNonNull(consumer);
        m407h();
        this.f949b.mo297u0(new C2770K4(consumer), this.f951d);
        this.f956i = true;
    }

    @Override // p035j$.util.stream.AbstractC2887f4
    /* renamed from: j */
    void mo334j() {
        C2857a4 c2857a4 = new C2857a4();
        this.f955h = c2857a4;
        this.f952e = this.f949b.mo296v0(new C2770K4(c2857a4));
        this.f953f = new C2858b(this);
    }

    @Override // p035j$.util.stream.AbstractC2887f4
    /* renamed from: l */
    AbstractC2887f4 mo333l(InterfaceC2701s interfaceC2701s) {
        return new C2776L4(this.f949b, interfaceC2701s, this.f948a);
    }
}
