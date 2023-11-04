package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2838x;
/* renamed from: j$.util.stream.L4 */
/* loaded from: classes2.dex */
final class C2924L4 extends AbstractC3035f4 {
    C2924L4(AbstractC3147y2 abstractC3147y2, Spliterator spliterator, boolean z) {
        super(abstractC3147y2, spliterator, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2924L4(AbstractC3147y2 abstractC3147y2, InterfaceC2838x interfaceC2838x, boolean z) {
        super(abstractC3147y2, interfaceC2838x, z);
    }

    @Override // p033j$.util.Spliterator
    /* renamed from: b */
    public boolean mo179b(Consumer consumer) {
        Object obj;
        Objects.requireNonNull(consumer);
        boolean m464a = m464a();
        if (m464a) {
            C3005a4 c3005a4 = (C3005a4) this.f1088h;
            long j = this.f1087g;
            if (c3005a4.f1068c != 0) {
                if (j < c3005a4.count()) {
                    for (int i = 0; i <= c3005a4.f1068c; i++) {
                        long[] jArr = c3005a4.f1069d;
                        long j2 = jArr[i];
                        Object[][] objArr = c3005a4.f1016f;
                        if (j < j2 + objArr[i].length) {
                            obj = objArr[i][(int) (j - jArr[i])];
                        }
                    }
                    throw new IndexOutOfBoundsException(Long.toString(j));
                }
                throw new IndexOutOfBoundsException(Long.toString(j));
            } else if (j >= c3005a4.f1067b) {
                throw new IndexOutOfBoundsException(Long.toString(j));
            } else {
                obj = c3005a4.f1015e[(int) j];
            }
            consumer.accept(obj);
        }
        return m464a;
    }

    @Override // p033j$.util.Spliterator
    public void forEachRemaining(Consumer consumer) {
        if (this.f1088h != null || this.f1089i) {
            do {
            } while (mo179b(consumer));
            return;
        }
        Objects.requireNonNull(consumer);
        m462h();
        this.f1082b.mo352t0(new C2918K4(consumer), this.f1084d);
        this.f1089i = true;
    }

    @Override // p033j$.util.stream.AbstractC3035f4
    /* renamed from: j */
    void mo389j() {
        C3005a4 c3005a4 = new C3005a4();
        this.f1088h = c3005a4;
        this.f1085e = this.f1082b.mo351u0(new C2918K4(c3005a4));
        this.f1086f = new C3006b(this);
    }

    @Override // p033j$.util.stream.AbstractC3035f4
    /* renamed from: k */
    AbstractC3035f4 mo388k(Spliterator spliterator) {
        return new C2924L4(this.f1082b, spliterator, this.f1081a);
    }
}
