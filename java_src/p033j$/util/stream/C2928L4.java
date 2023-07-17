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
    public boolean mo113b(Consumer consumer) {
        Object obj;
        Objects.requireNonNull(consumer);
        boolean m400a = m400a();
        if (m400a) {
            C3009a4 c3009a4 = (C3009a4) this.f1035h;
            long j = this.f1034g;
            if (c3009a4.f1015c != 0) {
                if (j < c3009a4.count()) {
                    for (int i = 0; i <= c3009a4.f1015c; i++) {
                        long[] jArr = c3009a4.f1016d;
                        long j2 = jArr[i];
                        Object[][] objArr = c3009a4.f963f;
                        if (j < j2 + objArr[i].length) {
                            obj = objArr[i][(int) (j - jArr[i])];
                        }
                    }
                    throw new IndexOutOfBoundsException(Long.toString(j));
                }
                throw new IndexOutOfBoundsException(Long.toString(j));
            } else if (j >= c3009a4.f1014b) {
                throw new IndexOutOfBoundsException(Long.toString(j));
            } else {
                obj = c3009a4.f962e[(int) j];
            }
            consumer.accept(obj);
        }
        return m400a;
    }

    @Override // p033j$.util.InterfaceC2853s
    public void forEachRemaining(Consumer consumer) {
        if (this.f1035h != null || this.f1036i) {
            do {
            } while (mo113b(consumer));
            return;
        }
        Objects.requireNonNull(consumer);
        m398h();
        this.f1029b.mo288u0(new C2922K4(consumer), this.f1031d);
        this.f1036i = true;
    }

    @Override // p033j$.util.stream.AbstractC3039f4
    /* renamed from: j */
    void mo325j() {
        C3009a4 c3009a4 = new C3009a4();
        this.f1035h = c3009a4;
        this.f1032e = this.f1029b.mo287v0(new C2922K4(c3009a4));
        this.f1033f = new C3010b(this);
    }

    @Override // p033j$.util.stream.AbstractC3039f4
    /* renamed from: l */
    AbstractC3039f4 mo324l(InterfaceC2853s interfaceC2853s) {
        return new C2928L4(this.f1029b, interfaceC2853s, this.f1028a);
    }
}
