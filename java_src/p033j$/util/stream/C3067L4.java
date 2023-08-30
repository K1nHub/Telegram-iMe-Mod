package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.InterfaceC2992s;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2978y;
/* renamed from: j$.util.stream.L4 */
/* loaded from: classes2.dex */
final class C3067L4 extends AbstractC3178f4 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3067L4(AbstractC3290y2 abstractC3290y2, InterfaceC2978y interfaceC2978y, boolean z) {
        super(abstractC3290y2, interfaceC2978y, z);
    }

    C3067L4(AbstractC3290y2 abstractC3290y2, InterfaceC2992s interfaceC2992s, boolean z) {
        super(abstractC3290y2, interfaceC2992s, z);
    }

    @Override // p033j$.util.InterfaceC2992s
    /* renamed from: b */
    public boolean mo131b(Consumer consumer) {
        Object obj;
        Objects.requireNonNull(consumer);
        boolean m418a = m418a();
        if (m418a) {
            C3148a4 c3148a4 = (C3148a4) this.f1048h;
            long j = this.f1047g;
            if (c3148a4.f1028c != 0) {
                if (j < c3148a4.count()) {
                    for (int i = 0; i <= c3148a4.f1028c; i++) {
                        long[] jArr = c3148a4.f1029d;
                        long j2 = jArr[i];
                        Object[][] objArr = c3148a4.f976f;
                        if (j < j2 + objArr[i].length) {
                            obj = objArr[i][(int) (j - jArr[i])];
                        }
                    }
                    throw new IndexOutOfBoundsException(Long.toString(j));
                }
                throw new IndexOutOfBoundsException(Long.toString(j));
            } else if (j >= c3148a4.f1027b) {
                throw new IndexOutOfBoundsException(Long.toString(j));
            } else {
                obj = c3148a4.f975e[(int) j];
            }
            consumer.accept(obj);
        }
        return m418a;
    }

    @Override // p033j$.util.InterfaceC2992s
    public void forEachRemaining(Consumer consumer) {
        if (this.f1048h != null || this.f1049i) {
            do {
            } while (mo131b(consumer));
            return;
        }
        Objects.requireNonNull(consumer);
        m416h();
        this.f1042b.mo306u0(new C3061K4(consumer), this.f1044d);
        this.f1049i = true;
    }

    @Override // p033j$.util.stream.AbstractC3178f4
    /* renamed from: j */
    void mo343j() {
        C3148a4 c3148a4 = new C3148a4();
        this.f1048h = c3148a4;
        this.f1045e = this.f1042b.mo305v0(new C3061K4(c3148a4));
        this.f1046f = new C3149b(this);
    }

    @Override // p033j$.util.stream.AbstractC3178f4
    /* renamed from: l */
    AbstractC3178f4 mo342l(InterfaceC2992s interfaceC2992s) {
        return new C3067L4(this.f1042b, interfaceC2992s, this.f1041a);
    }
}
