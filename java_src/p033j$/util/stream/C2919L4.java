package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2833x;
/* renamed from: j$.util.stream.L4 */
/* loaded from: classes2.dex */
final class C2919L4 extends AbstractC3030f4 {
    C2919L4(AbstractC3142y2 abstractC3142y2, Spliterator spliterator, boolean z) {
        super(abstractC3142y2, spliterator, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2919L4(AbstractC3142y2 abstractC3142y2, InterfaceC2833x interfaceC2833x, boolean z) {
        super(abstractC3142y2, interfaceC2833x, z);
    }

    @Override // p033j$.util.Spliterator
    /* renamed from: b */
    public boolean mo182b(Consumer consumer) {
        Object obj;
        Objects.requireNonNull(consumer);
        boolean m467a = m467a();
        if (m467a) {
            C3000a4 c3000a4 = (C3000a4) this.f1088h;
            long j = this.f1087g;
            if (c3000a4.f1068c != 0) {
                if (j < c3000a4.count()) {
                    for (int i = 0; i <= c3000a4.f1068c; i++) {
                        long[] jArr = c3000a4.f1069d;
                        long j2 = jArr[i];
                        Object[][] objArr = c3000a4.f1016f;
                        if (j < j2 + objArr[i].length) {
                            obj = objArr[i][(int) (j - jArr[i])];
                        }
                    }
                    throw new IndexOutOfBoundsException(Long.toString(j));
                }
                throw new IndexOutOfBoundsException(Long.toString(j));
            } else if (j >= c3000a4.f1067b) {
                throw new IndexOutOfBoundsException(Long.toString(j));
            } else {
                obj = c3000a4.f1015e[(int) j];
            }
            consumer.accept(obj);
        }
        return m467a;
    }

    @Override // p033j$.util.Spliterator
    public void forEachRemaining(Consumer consumer) {
        if (this.f1088h != null || this.f1089i) {
            do {
            } while (mo182b(consumer));
            return;
        }
        Objects.requireNonNull(consumer);
        m465h();
        this.f1082b.mo355t0(new C2913K4(consumer), this.f1084d);
        this.f1089i = true;
    }

    @Override // p033j$.util.stream.AbstractC3030f4
    /* renamed from: j */
    void mo392j() {
        C3000a4 c3000a4 = new C3000a4();
        this.f1088h = c3000a4;
        this.f1085e = this.f1082b.mo354u0(new C2913K4(c3000a4));
        this.f1086f = new C3001b(this);
    }

    @Override // p033j$.util.stream.AbstractC3030f4
    /* renamed from: k */
    AbstractC3030f4 mo391k(Spliterator spliterator) {
        return new C2919L4(this.f1082b, spliterator, this.f1081a);
    }
}
