package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2625s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2611y;
/* renamed from: j$.util.stream.L4 */
/* loaded from: classes2.dex */
final class C2700L4 extends AbstractC2811f4 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2700L4(AbstractC2923y2 abstractC2923y2, InterfaceC2611y interfaceC2611y, boolean z) {
        super(abstractC2923y2, interfaceC2611y, z);
    }

    C2700L4(AbstractC2923y2 abstractC2923y2, InterfaceC2625s interfaceC2625s, boolean z) {
        super(abstractC2923y2, interfaceC2625s, z);
    }

    @Override // p034j$.util.InterfaceC2625s
    /* renamed from: b */
    public boolean mo127b(Consumer consumer) {
        Object obj;
        Objects.requireNonNull(consumer);
        boolean m414a = m414a();
        if (m414a) {
            C2781a4 c2781a4 = (C2781a4) this.f950h;
            long j = this.f949g;
            if (c2781a4.f930c != 0) {
                if (j < c2781a4.count()) {
                    for (int i = 0; i <= c2781a4.f930c; i++) {
                        long[] jArr = c2781a4.f931d;
                        long j2 = jArr[i];
                        Object[][] objArr = c2781a4.f878f;
                        if (j < j2 + objArr[i].length) {
                            obj = objArr[i][(int) (j - jArr[i])];
                        }
                    }
                    throw new IndexOutOfBoundsException(Long.toString(j));
                }
                throw new IndexOutOfBoundsException(Long.toString(j));
            } else if (j >= c2781a4.f929b) {
                throw new IndexOutOfBoundsException(Long.toString(j));
            } else {
                obj = c2781a4.f877e[(int) j];
            }
            consumer.accept(obj);
        }
        return m414a;
    }

    @Override // p034j$.util.InterfaceC2625s
    public void forEachRemaining(Consumer consumer) {
        if (this.f950h != null || this.f951i) {
            do {
            } while (mo127b(consumer));
            return;
        }
        Objects.requireNonNull(consumer);
        m412h();
        this.f944b.mo302u0(new C2694K4(consumer), this.f946d);
        this.f951i = true;
    }

    @Override // p034j$.util.stream.AbstractC2811f4
    /* renamed from: j */
    void mo339j() {
        C2781a4 c2781a4 = new C2781a4();
        this.f950h = c2781a4;
        this.f947e = this.f944b.mo301v0(new C2694K4(c2781a4));
        this.f948f = new C2782b(this);
    }

    @Override // p034j$.util.stream.AbstractC2811f4
    /* renamed from: l */
    AbstractC2811f4 mo338l(InterfaceC2625s interfaceC2625s) {
        return new C2700L4(this.f944b, interfaceC2625s, this.f943a);
    }
}
