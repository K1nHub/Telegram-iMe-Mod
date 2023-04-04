package p035j$.util.stream;

import java.util.Objects;
import p035j$.util.InterfaceC2701s;
import p035j$.util.function.InterfaceC2675m;
import p035j$.util.function.InterfaceC2687y;
/* renamed from: j$.util.stream.c */
/* loaded from: classes2.dex */
abstract class AbstractC2864c extends AbstractC2999y2 implements InterfaceC2888g {

    /* renamed from: a */
    private final AbstractC2864c f888a;

    /* renamed from: b */
    private final AbstractC2864c f889b;

    /* renamed from: c */
    protected final int f890c;

    /* renamed from: d */
    private AbstractC2864c f891d;

    /* renamed from: e */
    private int f892e;

    /* renamed from: f */
    private int f893f;

    /* renamed from: g */
    private InterfaceC2701s f894g;

    /* renamed from: h */
    private boolean f895h;

    /* renamed from: i */
    private boolean f896i;

    /* renamed from: j */
    private Runnable f897j;

    /* renamed from: k */
    private boolean f898k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2864c(InterfaceC2701s interfaceC2701s, int i, boolean z) {
        this.f889b = null;
        this.f894g = interfaceC2701s;
        this.f888a = this;
        int i2 = EnumC2875d4.f912g & i;
        this.f890c = i2;
        this.f893f = (~(i2 << 1)) & EnumC2875d4.f917l;
        this.f892e = 0;
        this.f898k = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2864c(AbstractC2864c abstractC2864c, int i) {
        if (abstractC2864c.f895h) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        abstractC2864c.f895h = true;
        abstractC2864c.f891d = this;
        this.f889b = abstractC2864c;
        this.f890c = EnumC2875d4.f913h & i;
        this.f893f = EnumC2875d4.m432a(i, abstractC2864c.f893f);
        AbstractC2864c abstractC2864c2 = abstractC2864c.f888a;
        this.f888a = abstractC2864c2;
        if (mo433G0()) {
            abstractC2864c2.f896i = true;
        }
        this.f892e = abstractC2864c.f892e + 1;
    }

    /* renamed from: I0 */
    private InterfaceC2701s m445I0(int i) {
        int i2;
        int i3;
        AbstractC2864c abstractC2864c = this.f888a;
        InterfaceC2701s interfaceC2701s = abstractC2864c.f894g;
        if (interfaceC2701s != null) {
            abstractC2864c.f894g = null;
            if (abstractC2864c.f898k && abstractC2864c.f896i) {
                AbstractC2864c abstractC2864c2 = abstractC2864c.f891d;
                int i4 = 1;
                while (abstractC2864c != this) {
                    int i5 = abstractC2864c2.f890c;
                    if (abstractC2864c2.mo433G0()) {
                        i4 = 0;
                        if (EnumC2875d4.SHORT_CIRCUIT.m429d(i5)) {
                            i5 &= ~EnumC2875d4.f926u;
                        }
                        interfaceC2701s = abstractC2864c2.mo293F0(abstractC2864c, interfaceC2701s);
                        if (interfaceC2701s.hasCharacteristics(64)) {
                            i2 = i5 & (~EnumC2875d4.f925t);
                            i3 = EnumC2875d4.f924s;
                        } else {
                            i2 = i5 & (~EnumC2875d4.f924s);
                            i3 = EnumC2875d4.f925t;
                        }
                        i5 = i2 | i3;
                    }
                    abstractC2864c2.f892e = i4;
                    abstractC2864c2.f893f = EnumC2875d4.m432a(i5, abstractC2864c.f893f);
                    i4++;
                    AbstractC2864c abstractC2864c3 = abstractC2864c2;
                    abstractC2864c2 = abstractC2864c2.f891d;
                    abstractC2864c = abstractC2864c3;
                }
            }
            if (i != 0) {
                this.f893f = EnumC2875d4.m432a(i, this.f893f);
            }
            return interfaceC2701s;
        }
        throw new IllegalStateException("source already consumed or closed");
    }

    /* renamed from: A0 */
    abstract void mo420A0(InterfaceC2701s interfaceC2701s, InterfaceC2928m3 interfaceC2928m3);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: B0 */
    public abstract EnumC2881e4 mo419B0();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: C0 */
    public final boolean m447C0() {
        return EnumC2875d4.ORDERED.m429d(this.f893f);
    }

    /* renamed from: D0 */
    public /* synthetic */ InterfaceC2701s m446D0() {
        return m445I0(0);
    }

    /* renamed from: E0 */
    InterfaceC2707A1 mo294E0(AbstractC2999y2 abstractC2999y2, InterfaceC2701s interfaceC2701s, InterfaceC2675m interfaceC2675m) {
        throw new UnsupportedOperationException("Parallel evaluation is not supported");
    }

    /* renamed from: F0 */
    InterfaceC2701s mo293F0(AbstractC2999y2 abstractC2999y2, InterfaceC2701s interfaceC2701s) {
        return mo294E0(abstractC2999y2, interfaceC2701s, C2852a.f878a).spliterator();
    }

    /* renamed from: G0 */
    abstract boolean mo433G0();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: H0 */
    public abstract InterfaceC2928m3 mo292H0(int i, InterfaceC2928m3 interfaceC2928m3);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: J0 */
    public final InterfaceC2701s m444J0() {
        AbstractC2864c abstractC2864c = this.f888a;
        if (this == abstractC2864c) {
            if (this.f895h) {
                throw new IllegalStateException("stream has already been operated upon or closed");
            }
            this.f895h = true;
            InterfaceC2701s interfaceC2701s = abstractC2864c.f894g;
            if (interfaceC2701s != null) {
                abstractC2864c.f894g = null;
                return interfaceC2701s;
            }
            throw new IllegalStateException("source already consumed or closed");
        }
        throw new IllegalStateException();
    }

    /* renamed from: K0 */
    abstract InterfaceC2701s mo418K0(AbstractC2999y2 abstractC2999y2, InterfaceC2687y interfaceC2687y, boolean z);

    @Override // p035j$.util.stream.InterfaceC2888g, java.lang.AutoCloseable
    public void close() {
        this.f895h = true;
        this.f894g = null;
        AbstractC2864c abstractC2864c = this.f888a;
        Runnable runnable = abstractC2864c.f897j;
        if (runnable != null) {
            abstractC2864c.f897j = null;
            runnable.run();
        }
    }

    @Override // p035j$.util.stream.InterfaceC2888g
    public final boolean isParallel() {
        return this.f888a.f898k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p035j$.util.stream.AbstractC2999y2
    /* renamed from: n0 */
    public final void mo304n0(InterfaceC2928m3 interfaceC2928m3, InterfaceC2701s interfaceC2701s) {
        Objects.requireNonNull(interfaceC2928m3);
        if (EnumC2875d4.SHORT_CIRCUIT.m429d(this.f893f)) {
            mo303o0(interfaceC2928m3, interfaceC2701s);
            return;
        }
        interfaceC2928m3.mo306n(interfaceC2701s.getExactSizeIfKnown());
        interfaceC2701s.forEachRemaining(interfaceC2928m3);
        interfaceC2928m3.mo330m();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p035j$.util.stream.AbstractC2999y2
    /* renamed from: o0 */
    public final void mo303o0(InterfaceC2928m3 interfaceC2928m3, InterfaceC2701s interfaceC2701s) {
        AbstractC2864c abstractC2864c = this;
        while (abstractC2864c.f892e > 0) {
            abstractC2864c = abstractC2864c.f889b;
        }
        interfaceC2928m3.mo306n(interfaceC2701s.getExactSizeIfKnown());
        abstractC2864c.mo420A0(interfaceC2701s, interfaceC2928m3);
        interfaceC2928m3.mo330m();
    }

    @Override // p035j$.util.stream.InterfaceC2888g
    public InterfaceC2888g onClose(Runnable runnable) {
        AbstractC2864c abstractC2864c = this.f888a;
        Runnable runnable2 = abstractC2864c.f897j;
        if (runnable2 != null) {
            runnable = new RunnableC2782M4(runnable2, runnable);
        }
        abstractC2864c.f897j = runnable;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p035j$.util.stream.AbstractC2999y2
    /* renamed from: p0 */
    public final InterfaceC2707A1 mo302p0(InterfaceC2701s interfaceC2701s, boolean z, InterfaceC2675m interfaceC2675m) {
        if (this.f888a.f898k) {
            return mo417z0(this, interfaceC2701s, z, interfaceC2675m);
        }
        InterfaceC2962s1 mo298t0 = mo298t0(mo301q0(interfaceC2701s), interfaceC2675m);
        Objects.requireNonNull(mo298t0);
        mo304n0(mo296v0(mo298t0), interfaceC2701s);
        return mo298t0.mo332a();
    }

    public final InterfaceC2888g parallel() {
        this.f888a.f898k = true;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p035j$.util.stream.AbstractC2999y2
    /* renamed from: q0 */
    public final long mo301q0(InterfaceC2701s interfaceC2701s) {
        if (EnumC2875d4.SIZED.m429d(this.f893f)) {
            return interfaceC2701s.getExactSizeIfKnown();
        }
        return -1L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p035j$.util.stream.AbstractC2999y2
    /* renamed from: r0 */
    public final EnumC2881e4 mo300r0() {
        AbstractC2864c abstractC2864c = this;
        while (abstractC2864c.f892e > 0) {
            abstractC2864c = abstractC2864c.f889b;
        }
        return abstractC2864c.mo419B0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p035j$.util.stream.AbstractC2999y2
    /* renamed from: s0 */
    public final int mo299s0() {
        return this.f893f;
    }

    public final InterfaceC2888g sequential() {
        this.f888a.f898k = false;
        return this;
    }

    public InterfaceC2701s spliterator() {
        if (this.f895h) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.f895h = true;
        AbstractC2864c abstractC2864c = this.f888a;
        if (this == abstractC2864c) {
            InterfaceC2701s interfaceC2701s = abstractC2864c.f894g;
            if (interfaceC2701s != null) {
                abstractC2864c.f894g = null;
                return interfaceC2701s;
            }
            throw new IllegalStateException("source already consumed or closed");
        }
        return mo418K0(this, new C2858b(this), abstractC2864c.f898k);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p035j$.util.stream.AbstractC2999y2
    /* renamed from: u0 */
    public final InterfaceC2928m3 mo297u0(InterfaceC2928m3 interfaceC2928m3, InterfaceC2701s interfaceC2701s) {
        Objects.requireNonNull(interfaceC2928m3);
        mo304n0(mo296v0(interfaceC2928m3), interfaceC2701s);
        return interfaceC2928m3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p035j$.util.stream.AbstractC2999y2
    /* renamed from: v0 */
    public final InterfaceC2928m3 mo296v0(InterfaceC2928m3 interfaceC2928m3) {
        Objects.requireNonNull(interfaceC2928m3);
        for (AbstractC2864c abstractC2864c = this; abstractC2864c.f892e > 0; abstractC2864c = abstractC2864c.f889b) {
            interfaceC2928m3 = abstractC2864c.mo292H0(abstractC2864c.f889b.f893f, interfaceC2928m3);
        }
        return interfaceC2928m3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p035j$.util.stream.AbstractC2999y2
    /* renamed from: w0 */
    public final InterfaceC2701s mo295w0(InterfaceC2701s interfaceC2701s) {
        return this.f892e == 0 ? interfaceC2701s : mo418K0(this, new C2858b(interfaceC2701s), this.f888a.f898k);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: x0 */
    public final Object m443x0(InterfaceC2788N4 interfaceC2788N4) {
        if (this.f895h) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.f895h = true;
        return this.f888a.f898k ? interfaceC2788N4.mo370c(this, m445I0(interfaceC2788N4.mo371b())) : interfaceC2788N4.mo369d(this, m445I0(interfaceC2788N4.mo371b()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: y0 */
    public final InterfaceC2707A1 m442y0(InterfaceC2675m interfaceC2675m) {
        if (this.f895h) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.f895h = true;
        if (this.f888a.f898k && this.f889b != null && mo433G0()) {
            this.f892e = 0;
            AbstractC2864c abstractC2864c = this.f889b;
            return mo294E0(abstractC2864c, abstractC2864c.m445I0(0), interfaceC2675m);
        }
        return mo302p0(m445I0(0), true, interfaceC2675m);
    }

    /* renamed from: z0 */
    abstract InterfaceC2707A1 mo417z0(AbstractC2999y2 abstractC2999y2, InterfaceC2701s interfaceC2701s, boolean z, InterfaceC2675m interfaceC2675m);
}
