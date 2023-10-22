package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2834x;
/* renamed from: j$.util.stream.L4 */
/* loaded from: classes2.dex */
final class C2920L4 extends AbstractC3031f4 {
    C2920L4(AbstractC3143y2 abstractC3143y2, Spliterator spliterator, boolean z) {
        super(abstractC3143y2, spliterator, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2920L4(AbstractC3143y2 abstractC3143y2, InterfaceC2834x interfaceC2834x, boolean z) {
        super(abstractC3143y2, interfaceC2834x, z);
    }

    @Override // p033j$.util.Spliterator
    /* renamed from: b */
    public boolean mo178b(Consumer consumer) {
        Object obj;
        Objects.requireNonNull(consumer);
        boolean m463a = m463a();
        if (m463a) {
            C3001a4 c3001a4 = (C3001a4) this.f1088h;
            long j = this.f1087g;
            if (c3001a4.f1068c != 0) {
                if (j < c3001a4.count()) {
                    for (int i = 0; i <= c3001a4.f1068c; i++) {
                        long[] jArr = c3001a4.f1069d;
                        long j2 = jArr[i];
                        Object[][] objArr = c3001a4.f1016f;
                        if (j < j2 + objArr[i].length) {
                            obj = objArr[i][(int) (j - jArr[i])];
                        }
                    }
                    throw new IndexOutOfBoundsException(Long.toString(j));
                }
                throw new IndexOutOfBoundsException(Long.toString(j));
            } else if (j >= c3001a4.f1067b) {
                throw new IndexOutOfBoundsException(Long.toString(j));
            } else {
                obj = c3001a4.f1015e[(int) j];
            }
            consumer.accept(obj);
        }
        return m463a;
    }

    @Override // p033j$.util.Spliterator
    public void forEachRemaining(Consumer consumer) {
        if (this.f1088h != null || this.f1089i) {
            do {
            } while (mo178b(consumer));
            return;
        }
        Objects.requireNonNull(consumer);
        m461h();
        this.f1082b.mo351t0(new C2914K4(consumer), this.f1084d);
        this.f1089i = true;
    }

    @Override // p033j$.util.stream.AbstractC3031f4
    /* renamed from: j */
    void mo388j() {
        C3001a4 c3001a4 = new C3001a4();
        this.f1088h = c3001a4;
        this.f1085e = this.f1082b.mo350u0(new C2914K4(c3001a4));
        this.f1086f = new C3002b(this);
    }

    @Override // p033j$.util.stream.AbstractC3031f4
    /* renamed from: k */
    AbstractC3031f4 mo387k(Spliterator spliterator) {
        return new C2920L4(this.f1082b, spliterator, this.f1081a);
    }
}
