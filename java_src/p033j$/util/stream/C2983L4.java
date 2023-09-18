package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.InterfaceC2908s;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2894y;
/* renamed from: j$.util.stream.L4 */
/* loaded from: classes2.dex */
final class C2983L4 extends AbstractC3094f4 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2983L4(AbstractC3206y2 abstractC3206y2, InterfaceC2894y interfaceC2894y, boolean z) {
        super(abstractC3206y2, interfaceC2894y, z);
    }

    C2983L4(AbstractC3206y2 abstractC3206y2, InterfaceC2908s interfaceC2908s, boolean z) {
        super(abstractC3206y2, interfaceC2908s, z);
    }

    @Override // p033j$.util.InterfaceC2908s
    /* renamed from: b */
    public boolean mo131b(Consumer consumer) {
        Object obj;
        Objects.requireNonNull(consumer);
        boolean m418a = m418a();
        if (m418a) {
            C3064a4 c3064a4 = (C3064a4) this.f1039h;
            long j = this.f1038g;
            if (c3064a4.f1019c != 0) {
                if (j < c3064a4.count()) {
                    for (int i = 0; i <= c3064a4.f1019c; i++) {
                        long[] jArr = c3064a4.f1020d;
                        long j2 = jArr[i];
                        Object[][] objArr = c3064a4.f967f;
                        if (j < j2 + objArr[i].length) {
                            obj = objArr[i][(int) (j - jArr[i])];
                        }
                    }
                    throw new IndexOutOfBoundsException(Long.toString(j));
                }
                throw new IndexOutOfBoundsException(Long.toString(j));
            } else if (j >= c3064a4.f1018b) {
                throw new IndexOutOfBoundsException(Long.toString(j));
            } else {
                obj = c3064a4.f966e[(int) j];
            }
            consumer.accept(obj);
        }
        return m418a;
    }

    @Override // p033j$.util.InterfaceC2908s
    public void forEachRemaining(Consumer consumer) {
        if (this.f1039h != null || this.f1040i) {
            do {
            } while (mo131b(consumer));
            return;
        }
        Objects.requireNonNull(consumer);
        m416h();
        this.f1033b.mo306u0(new C2977K4(consumer), this.f1035d);
        this.f1040i = true;
    }

    @Override // p033j$.util.stream.AbstractC3094f4
    /* renamed from: j */
    void mo343j() {
        C3064a4 c3064a4 = new C3064a4();
        this.f1039h = c3064a4;
        this.f1036e = this.f1033b.mo305v0(new C2977K4(c3064a4));
        this.f1037f = new C3065b(this);
    }

    @Override // p033j$.util.stream.AbstractC3094f4
    /* renamed from: l */
    AbstractC3094f4 mo342l(InterfaceC2908s interfaceC2908s) {
        return new C2983L4(this.f1033b, interfaceC2908s, this.f1032a);
    }
}
