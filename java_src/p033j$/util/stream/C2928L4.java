package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.InterfaceC2853s;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2839y;
/* renamed from: j$.util.stream.L4 */
/* loaded from: classes2.dex */
final class C2928L4 extends AbstractC3039f4 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2928L4(AbstractC3151y2 abstractC3151y2, InterfaceC2839y interfaceC2839y, boolean z) {
        super(abstractC3151y2, interfaceC2839y, z);
    }

    C2928L4(AbstractC3151y2 abstractC3151y2, InterfaceC2853s interfaceC2853s, boolean z) {
        super(abstractC3151y2, interfaceC2853s, z);
    }

    @Override // p033j$.util.InterfaceC2853s
    /* renamed from: b */
    public boolean mo131b(Consumer consumer) {
        Object obj;
        Objects.requireNonNull(consumer);
        boolean m418a = m418a();
        if (m418a) {
            C3009a4 c3009a4 = (C3009a4) this.f1038h;
            long j = this.f1037g;
            if (c3009a4.f1018c != 0) {
                if (j < c3009a4.count()) {
                    for (int i = 0; i <= c3009a4.f1018c; i++) {
                        long[] jArr = c3009a4.f1019d;
                        long j2 = jArr[i];
                        Object[][] objArr = c3009a4.f966f;
                        if (j < j2 + objArr[i].length) {
                            obj = objArr[i][(int) (j - jArr[i])];
                        }
                    }
                    throw new IndexOutOfBoundsException(Long.toString(j));
                }
                throw new IndexOutOfBoundsException(Long.toString(j));
            } else if (j >= c3009a4.f1017b) {
                throw new IndexOutOfBoundsException(Long.toString(j));
            } else {
                obj = c3009a4.f965e[(int) j];
            }
            consumer.accept(obj);
        }
        return m418a;
    }

    @Override // p033j$.util.InterfaceC2853s
    public void forEachRemaining(Consumer consumer) {
        if (this.f1038h != null || this.f1039i) {
            do {
            } while (mo131b(consumer));
            return;
        }
        Objects.requireNonNull(consumer);
        m416h();
        this.f1032b.mo306u0(new C2922K4(consumer), this.f1034d);
        this.f1039i = true;
    }

    @Override // p033j$.util.stream.AbstractC3039f4
    /* renamed from: j */
    void mo343j() {
        C3009a4 c3009a4 = new C3009a4();
        this.f1038h = c3009a4;
        this.f1035e = this.f1032b.mo305v0(new C2922K4(c3009a4));
        this.f1036f = new C3010b(this);
    }

    @Override // p033j$.util.stream.AbstractC3039f4
    /* renamed from: l */
    AbstractC3039f4 mo342l(InterfaceC2853s interfaceC2853s) {
        return new C2928L4(this.f1032b, interfaceC2853s, this.f1031a);
    }
}
