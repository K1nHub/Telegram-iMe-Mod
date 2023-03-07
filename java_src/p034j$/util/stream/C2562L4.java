package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2487s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2473y;
/* renamed from: j$.util.stream.L4 */
/* loaded from: classes2.dex */
final class C2562L4 extends AbstractC2673f4 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2562L4(AbstractC2785y2 abstractC2785y2, InterfaceC2473y interfaceC2473y, boolean z) {
        super(abstractC2785y2, interfaceC2473y, z);
    }

    C2562L4(AbstractC2785y2 abstractC2785y2, InterfaceC2487s interfaceC2487s, boolean z) {
        super(abstractC2785y2, interfaceC2487s, z);
    }

    @Override // p034j$.util.InterfaceC2487s
    /* renamed from: b */
    public boolean mo128b(Consumer consumer) {
        Object obj;
        Objects.requireNonNull(consumer);
        boolean m415a = m415a();
        if (m415a) {
            C2643a4 c2643a4 = (C2643a4) this.f944h;
            long j = this.f943g;
            if (c2643a4.f924c != 0) {
                if (j < c2643a4.count()) {
                    for (int i = 0; i <= c2643a4.f924c; i++) {
                        long[] jArr = c2643a4.f925d;
                        long j2 = jArr[i];
                        Object[][] objArr = c2643a4.f872f;
                        if (j < j2 + objArr[i].length) {
                            obj = objArr[i][(int) (j - jArr[i])];
                        }
                    }
                    throw new IndexOutOfBoundsException(Long.toString(j));
                }
                throw new IndexOutOfBoundsException(Long.toString(j));
            } else if (j >= c2643a4.f923b) {
                throw new IndexOutOfBoundsException(Long.toString(j));
            } else {
                obj = c2643a4.f871e[(int) j];
            }
            consumer.accept(obj);
        }
        return m415a;
    }

    @Override // p034j$.util.InterfaceC2487s
    public void forEachRemaining(Consumer consumer) {
        if (this.f944h != null || this.f945i) {
            do {
            } while (mo128b(consumer));
            return;
        }
        Objects.requireNonNull(consumer);
        m413h();
        this.f938b.mo303u0(new C2556K4(consumer), this.f940d);
        this.f945i = true;
    }

    @Override // p034j$.util.stream.AbstractC2673f4
    /* renamed from: j */
    void mo340j() {
        C2643a4 c2643a4 = new C2643a4();
        this.f944h = c2643a4;
        this.f941e = this.f938b.mo302v0(new C2556K4(c2643a4));
        this.f942f = new C2644b(this);
    }

    @Override // p034j$.util.stream.AbstractC2673f4
    /* renamed from: l */
    AbstractC2673f4 mo339l(InterfaceC2487s interfaceC2487s) {
        return new C2562L4(this.f938b, interfaceC2487s, this.f937a);
    }
}
