package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2727s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2713y;
/* renamed from: j$.util.stream.L4 */
/* loaded from: classes2.dex */
final class C2802L4 extends AbstractC2913f4 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2802L4(AbstractC3025y2 abstractC3025y2, InterfaceC2713y interfaceC2713y, boolean z) {
        super(abstractC3025y2, interfaceC2713y, z);
    }

    C2802L4(AbstractC3025y2 abstractC3025y2, InterfaceC2727s interfaceC2727s, boolean z) {
        super(abstractC3025y2, interfaceC2727s, z);
    }

    @Override // p034j$.util.InterfaceC2727s
    /* renamed from: b */
    public boolean mo113b(Consumer consumer) {
        Object obj;
        Objects.requireNonNull(consumer);
        boolean m400a = m400a();
        if (m400a) {
            C2883a4 c2883a4 = (C2883a4) this.f953h;
            long j = this.f952g;
            if (c2883a4.f933c != 0) {
                if (j < c2883a4.count()) {
                    for (int i = 0; i <= c2883a4.f933c; i++) {
                        long[] jArr = c2883a4.f934d;
                        long j2 = jArr[i];
                        Object[][] objArr = c2883a4.f881f;
                        if (j < j2 + objArr[i].length) {
                            obj = objArr[i][(int) (j - jArr[i])];
                        }
                    }
                    throw new IndexOutOfBoundsException(Long.toString(j));
                }
                throw new IndexOutOfBoundsException(Long.toString(j));
            } else if (j >= c2883a4.f932b) {
                throw new IndexOutOfBoundsException(Long.toString(j));
            } else {
                obj = c2883a4.f880e[(int) j];
            }
            consumer.accept(obj);
        }
        return m400a;
    }

    @Override // p034j$.util.InterfaceC2727s
    public void forEachRemaining(Consumer consumer) {
        if (this.f953h != null || this.f954i) {
            do {
            } while (mo113b(consumer));
            return;
        }
        Objects.requireNonNull(consumer);
        m398h();
        this.f947b.mo288u0(new C2796K4(consumer), this.f949d);
        this.f954i = true;
    }

    @Override // p034j$.util.stream.AbstractC2913f4
    /* renamed from: j */
    void mo325j() {
        C2883a4 c2883a4 = new C2883a4();
        this.f953h = c2883a4;
        this.f950e = this.f947b.mo287v0(new C2796K4(c2883a4));
        this.f951f = new C2884b(this);
    }

    @Override // p034j$.util.stream.AbstractC2913f4
    /* renamed from: l */
    AbstractC2913f4 mo324l(InterfaceC2727s interfaceC2727s) {
        return new C2802L4(this.f947b, interfaceC2727s, this.f946a);
    }
}
