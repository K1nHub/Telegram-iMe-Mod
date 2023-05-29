package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2732s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2718y;
/* renamed from: j$.util.stream.L4 */
/* loaded from: classes2.dex */
final class C2807L4 extends AbstractC2918f4 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2807L4(AbstractC3030y2 abstractC3030y2, InterfaceC2718y interfaceC2718y, boolean z) {
        super(abstractC3030y2, interfaceC2718y, z);
    }

    C2807L4(AbstractC3030y2 abstractC3030y2, InterfaceC2732s interfaceC2732s, boolean z) {
        super(abstractC3030y2, interfaceC2732s, z);
    }

    @Override // p034j$.util.InterfaceC2732s
    /* renamed from: b */
    public boolean mo113b(Consumer consumer) {
        Object obj;
        Objects.requireNonNull(consumer);
        boolean m400a = m400a();
        if (m400a) {
            C2888a4 c2888a4 = (C2888a4) this.f953h;
            long j = this.f952g;
            if (c2888a4.f933c != 0) {
                if (j < c2888a4.count()) {
                    for (int i = 0; i <= c2888a4.f933c; i++) {
                        long[] jArr = c2888a4.f934d;
                        long j2 = jArr[i];
                        Object[][] objArr = c2888a4.f881f;
                        if (j < j2 + objArr[i].length) {
                            obj = objArr[i][(int) (j - jArr[i])];
                        }
                    }
                    throw new IndexOutOfBoundsException(Long.toString(j));
                }
                throw new IndexOutOfBoundsException(Long.toString(j));
            } else if (j >= c2888a4.f932b) {
                throw new IndexOutOfBoundsException(Long.toString(j));
            } else {
                obj = c2888a4.f880e[(int) j];
            }
            consumer.accept(obj);
        }
        return m400a;
    }

    @Override // p034j$.util.InterfaceC2732s
    public void forEachRemaining(Consumer consumer) {
        if (this.f953h != null || this.f954i) {
            do {
            } while (mo113b(consumer));
            return;
        }
        Objects.requireNonNull(consumer);
        m398h();
        this.f947b.mo288u0(new C2801K4(consumer), this.f949d);
        this.f954i = true;
    }

    @Override // p034j$.util.stream.AbstractC2918f4
    /* renamed from: j */
    void mo325j() {
        C2888a4 c2888a4 = new C2888a4();
        this.f953h = c2888a4;
        this.f950e = this.f947b.mo287v0(new C2801K4(c2888a4));
        this.f951f = new C2889b(this);
    }

    @Override // p034j$.util.stream.AbstractC2918f4
    /* renamed from: l */
    AbstractC2918f4 mo324l(InterfaceC2732s interfaceC2732s) {
        return new C2807L4(this.f947b, interfaceC2732s, this.f946a);
    }
}
