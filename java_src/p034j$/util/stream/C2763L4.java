package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2688s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2674y;
/* renamed from: j$.util.stream.L4 */
/* loaded from: classes2.dex */
final class C2763L4 extends AbstractC2874f4 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2763L4(AbstractC2986y2 abstractC2986y2, InterfaceC2674y interfaceC2674y, boolean z) {
        super(abstractC2986y2, interfaceC2674y, z);
    }

    C2763L4(AbstractC2986y2 abstractC2986y2, InterfaceC2688s interfaceC2688s, boolean z) {
        super(abstractC2986y2, interfaceC2688s, z);
    }

    @Override // p034j$.util.InterfaceC2688s
    /* renamed from: b */
    public boolean mo108b(Consumer consumer) {
        Object obj;
        Objects.requireNonNull(consumer);
        boolean m395a = m395a();
        if (m395a) {
            C2844a4 c2844a4 = (C2844a4) this.f950h;
            long j = this.f949g;
            if (c2844a4.f930c != 0) {
                if (j < c2844a4.count()) {
                    for (int i = 0; i <= c2844a4.f930c; i++) {
                        long[] jArr = c2844a4.f931d;
                        long j2 = jArr[i];
                        Object[][] objArr = c2844a4.f878f;
                        if (j < j2 + objArr[i].length) {
                            obj = objArr[i][(int) (j - jArr[i])];
                        }
                    }
                    throw new IndexOutOfBoundsException(Long.toString(j));
                }
                throw new IndexOutOfBoundsException(Long.toString(j));
            } else if (j >= c2844a4.f929b) {
                throw new IndexOutOfBoundsException(Long.toString(j));
            } else {
                obj = c2844a4.f877e[(int) j];
            }
            consumer.accept(obj);
        }
        return m395a;
    }

    @Override // p034j$.util.InterfaceC2688s
    public void forEachRemaining(Consumer consumer) {
        if (this.f950h != null || this.f951i) {
            do {
            } while (mo108b(consumer));
            return;
        }
        Objects.requireNonNull(consumer);
        m393h();
        this.f944b.mo283u0(new C2757K4(consumer), this.f946d);
        this.f951i = true;
    }

    @Override // p034j$.util.stream.AbstractC2874f4
    /* renamed from: j */
    void mo320j() {
        C2844a4 c2844a4 = new C2844a4();
        this.f950h = c2844a4;
        this.f947e = this.f944b.mo282v0(new C2757K4(c2844a4));
        this.f948f = new C2845b(this);
    }

    @Override // p034j$.util.stream.AbstractC2874f4
    /* renamed from: l */
    AbstractC2874f4 mo319l(InterfaceC2688s interfaceC2688s) {
        return new C2763L4(this.f944b, interfaceC2688s, this.f943a);
    }
}
