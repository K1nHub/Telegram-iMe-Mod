package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2835x;
/* renamed from: j$.util.stream.L4 */
/* loaded from: classes2.dex */
final class C2921L4 extends AbstractC3032f4 {
    C2921L4(AbstractC3144y2 abstractC3144y2, Spliterator spliterator, boolean z) {
        super(abstractC3144y2, spliterator, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2921L4(AbstractC3144y2 abstractC3144y2, InterfaceC2835x interfaceC2835x, boolean z) {
        super(abstractC3144y2, interfaceC2835x, z);
    }

    @Override // p033j$.util.Spliterator
    /* renamed from: b */
    public boolean mo179b(Consumer consumer) {
        Object obj;
        Objects.requireNonNull(consumer);
        boolean m464a = m464a();
        if (m464a) {
            C3002a4 c3002a4 = (C3002a4) this.f1088h;
            long j = this.f1087g;
            if (c3002a4.f1068c != 0) {
                if (j < c3002a4.count()) {
                    for (int i = 0; i <= c3002a4.f1068c; i++) {
                        long[] jArr = c3002a4.f1069d;
                        long j2 = jArr[i];
                        Object[][] objArr = c3002a4.f1016f;
                        if (j < j2 + objArr[i].length) {
                            obj = objArr[i][(int) (j - jArr[i])];
                        }
                    }
                    throw new IndexOutOfBoundsException(Long.toString(j));
                }
                throw new IndexOutOfBoundsException(Long.toString(j));
            } else if (j >= c3002a4.f1067b) {
                throw new IndexOutOfBoundsException(Long.toString(j));
            } else {
                obj = c3002a4.f1015e[(int) j];
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
        this.f1082b.mo352t0(new C2915K4(consumer), this.f1084d);
        this.f1089i = true;
    }

    @Override // p033j$.util.stream.AbstractC3032f4
    /* renamed from: j */
    void mo389j() {
        C3002a4 c3002a4 = new C3002a4();
        this.f1088h = c3002a4;
        this.f1085e = this.f1082b.mo351u0(new C2915K4(c3002a4));
        this.f1086f = new C3003b(this);
    }

    @Override // p033j$.util.stream.AbstractC3032f4
    /* renamed from: k */
    AbstractC3032f4 mo388k(Spliterator spliterator) {
        return new C2921L4(this.f1082b, spliterator, this.f1081a);
    }
}
