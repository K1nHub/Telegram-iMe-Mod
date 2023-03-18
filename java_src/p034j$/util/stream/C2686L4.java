package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2611s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2597y;
/* renamed from: j$.util.stream.L4 */
/* loaded from: classes2.dex */
final class C2686L4 extends AbstractC2797f4 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2686L4(AbstractC2909y2 abstractC2909y2, InterfaceC2597y interfaceC2597y, boolean z) {
        super(abstractC2909y2, interfaceC2597y, z);
    }

    C2686L4(AbstractC2909y2 abstractC2909y2, InterfaceC2611s interfaceC2611s, boolean z) {
        super(abstractC2909y2, interfaceC2611s, z);
    }

    @Override // p034j$.util.InterfaceC2611s
    /* renamed from: b */
    public boolean mo128b(Consumer consumer) {
        Object obj;
        Objects.requireNonNull(consumer);
        boolean m415a = m415a();
        if (m415a) {
            C2767a4 c2767a4 = (C2767a4) this.f949h;
            long j = this.f948g;
            if (c2767a4.f929c != 0) {
                if (j < c2767a4.count()) {
                    for (int i = 0; i <= c2767a4.f929c; i++) {
                        long[] jArr = c2767a4.f930d;
                        long j2 = jArr[i];
                        Object[][] objArr = c2767a4.f877f;
                        if (j < j2 + objArr[i].length) {
                            obj = objArr[i][(int) (j - jArr[i])];
                        }
                    }
                    throw new IndexOutOfBoundsException(Long.toString(j));
                }
                throw new IndexOutOfBoundsException(Long.toString(j));
            } else if (j >= c2767a4.f928b) {
                throw new IndexOutOfBoundsException(Long.toString(j));
            } else {
                obj = c2767a4.f876e[(int) j];
            }
            consumer.accept(obj);
        }
        return m415a;
    }

    @Override // p034j$.util.InterfaceC2611s
    public void forEachRemaining(Consumer consumer) {
        if (this.f949h != null || this.f950i) {
            do {
            } while (mo128b(consumer));
            return;
        }
        Objects.requireNonNull(consumer);
        m413h();
        this.f943b.mo303u0(new C2680K4(consumer), this.f945d);
        this.f950i = true;
    }

    @Override // p034j$.util.stream.AbstractC2797f4
    /* renamed from: j */
    void mo340j() {
        C2767a4 c2767a4 = new C2767a4();
        this.f949h = c2767a4;
        this.f946e = this.f943b.mo302v0(new C2680K4(c2767a4));
        this.f947f = new C2768b(this);
    }

    @Override // p034j$.util.stream.AbstractC2797f4
    /* renamed from: l */
    AbstractC2797f4 mo339l(InterfaceC2611s interfaceC2611s) {
        return new C2686L4(this.f943b, interfaceC2611s, this.f942a);
    }
}
