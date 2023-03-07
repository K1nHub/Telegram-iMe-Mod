package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2487s;
import p034j$.util.function.InterfaceC2461m;
import p034j$.util.function.InterfaceC2473y;
/* renamed from: j$.util.stream.c */
/* loaded from: classes2.dex */
abstract class AbstractC2650c extends AbstractC2785y2 implements InterfaceC2674g {

    /* renamed from: a */
    private final AbstractC2650c f877a;

    /* renamed from: b */
    private final AbstractC2650c f878b;

    /* renamed from: c */
    protected final int f879c;

    /* renamed from: d */
    private AbstractC2650c f880d;

    /* renamed from: e */
    private int f881e;

    /* renamed from: f */
    private int f882f;

    /* renamed from: g */
    private InterfaceC2487s f883g;

    /* renamed from: h */
    private boolean f884h;

    /* renamed from: i */
    private boolean f885i;

    /* renamed from: j */
    private Runnable f886j;

    /* renamed from: k */
    private boolean f887k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2650c(InterfaceC2487s interfaceC2487s, int i, boolean z) {
        this.f878b = null;
        this.f883g = interfaceC2487s;
        this.f877a = this;
        int i2 = EnumC2661d4.f901g & i;
        this.f879c = i2;
        this.f882f = (~(i2 << 1)) & EnumC2661d4.f906l;
        this.f881e = 0;
        this.f887k = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2650c(AbstractC2650c abstractC2650c, int i) {
        if (abstractC2650c.f884h) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        abstractC2650c.f884h = true;
        abstractC2650c.f880d = this;
        this.f878b = abstractC2650c;
        this.f879c = EnumC2661d4.f902h & i;
        this.f882f = EnumC2661d4.m438a(i, abstractC2650c.f882f);
        AbstractC2650c abstractC2650c2 = abstractC2650c.f877a;
        this.f877a = abstractC2650c2;
        if (mo439G0()) {
            abstractC2650c2.f885i = true;
        }
        this.f881e = abstractC2650c.f881e + 1;
    }

    /* renamed from: I0 */
    private InterfaceC2487s m451I0(int i) {
        int i2;
        int i3;
        AbstractC2650c abstractC2650c = this.f877a;
        InterfaceC2487s interfaceC2487s = abstractC2650c.f883g;
        if (interfaceC2487s != null) {
            abstractC2650c.f883g = null;
            if (abstractC2650c.f887k && abstractC2650c.f885i) {
                AbstractC2650c abstractC2650c2 = abstractC2650c.f880d;
                int i4 = 1;
                while (abstractC2650c != this) {
                    int i5 = abstractC2650c2.f879c;
                    if (abstractC2650c2.mo439G0()) {
                        i4 = 0;
                        if (EnumC2661d4.SHORT_CIRCUIT.m435d(i5)) {
                            i5 &= ~EnumC2661d4.f915u;
                        }
                        interfaceC2487s = abstractC2650c2.mo299F0(abstractC2650c, interfaceC2487s);
                        if (interfaceC2487s.hasCharacteristics(64)) {
                            i2 = i5 & (~EnumC2661d4.f914t);
                            i3 = EnumC2661d4.f913s;
                        } else {
                            i2 = i5 & (~EnumC2661d4.f913s);
                            i3 = EnumC2661d4.f914t;
                        }
                        i5 = i2 | i3;
                    }
                    abstractC2650c2.f881e = i4;
                    abstractC2650c2.f882f = EnumC2661d4.m438a(i5, abstractC2650c.f882f);
                    i4++;
                    AbstractC2650c abstractC2650c3 = abstractC2650c2;
                    abstractC2650c2 = abstractC2650c2.f880d;
                    abstractC2650c = abstractC2650c3;
                }
            }
            if (i != 0) {
                this.f882f = EnumC2661d4.m438a(i, this.f882f);
            }
            return interfaceC2487s;
        }
        throw new IllegalStateException("source already consumed or closed");
    }

    /* renamed from: A0 */
    abstract void mo426A0(InterfaceC2487s interfaceC2487s, InterfaceC2714m3 interfaceC2714m3);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: B0 */
    public abstract EnumC2667e4 mo425B0();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: C0 */
    public final boolean m453C0() {
        return EnumC2661d4.ORDERED.m435d(this.f882f);
    }

    /* renamed from: D0 */
    public /* synthetic */ InterfaceC2487s m452D0() {
        return m451I0(0);
    }

    /* renamed from: E0 */
    InterfaceC2493A1 mo300E0(AbstractC2785y2 abstractC2785y2, InterfaceC2487s interfaceC2487s, InterfaceC2461m interfaceC2461m) {
        throw new UnsupportedOperationException("Parallel evaluation is not supported");
    }

    /* renamed from: F0 */
    InterfaceC2487s mo299F0(AbstractC2785y2 abstractC2785y2, InterfaceC2487s interfaceC2487s) {
        return mo300E0(abstractC2785y2, interfaceC2487s, C2638a.f867a).spliterator();
    }

    /* renamed from: G0 */
    abstract boolean mo439G0();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: H0 */
    public abstract InterfaceC2714m3 mo298H0(int i, InterfaceC2714m3 interfaceC2714m3);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: J0 */
    public final InterfaceC2487s m450J0() {
        AbstractC2650c abstractC2650c = this.f877a;
        if (this == abstractC2650c) {
            if (this.f884h) {
                throw new IllegalStateException("stream has already been operated upon or closed");
            }
            this.f884h = true;
            InterfaceC2487s interfaceC2487s = abstractC2650c.f883g;
            if (interfaceC2487s != null) {
                abstractC2650c.f883g = null;
                return interfaceC2487s;
            }
            throw new IllegalStateException("source already consumed or closed");
        }
        throw new IllegalStateException();
    }

    /* renamed from: K0 */
    abstract InterfaceC2487s mo424K0(AbstractC2785y2 abstractC2785y2, InterfaceC2473y interfaceC2473y, boolean z);

    @Override // p034j$.util.stream.InterfaceC2674g, java.lang.AutoCloseable
    public void close() {
        this.f884h = true;
        this.f883g = null;
        AbstractC2650c abstractC2650c = this.f877a;
        Runnable runnable = abstractC2650c.f886j;
        if (runnable != null) {
            abstractC2650c.f886j = null;
            runnable.run();
        }
    }

    @Override // p034j$.util.stream.InterfaceC2674g
    public final boolean isParallel() {
        return this.f877a.f887k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2785y2
    /* renamed from: n0 */
    public final void mo310n0(InterfaceC2714m3 interfaceC2714m3, InterfaceC2487s interfaceC2487s) {
        Objects.requireNonNull(interfaceC2714m3);
        if (EnumC2661d4.SHORT_CIRCUIT.m435d(this.f882f)) {
            mo309o0(interfaceC2714m3, interfaceC2487s);
            return;
        }
        interfaceC2714m3.mo312n(interfaceC2487s.getExactSizeIfKnown());
        interfaceC2487s.forEachRemaining(interfaceC2714m3);
        interfaceC2714m3.mo336m();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2785y2
    /* renamed from: o0 */
    public final void mo309o0(InterfaceC2714m3 interfaceC2714m3, InterfaceC2487s interfaceC2487s) {
        AbstractC2650c abstractC2650c = this;
        while (abstractC2650c.f881e > 0) {
            abstractC2650c = abstractC2650c.f878b;
        }
        interfaceC2714m3.mo312n(interfaceC2487s.getExactSizeIfKnown());
        abstractC2650c.mo426A0(interfaceC2487s, interfaceC2714m3);
        interfaceC2714m3.mo336m();
    }

    @Override // p034j$.util.stream.InterfaceC2674g
    public InterfaceC2674g onClose(Runnable runnable) {
        AbstractC2650c abstractC2650c = this.f877a;
        Runnable runnable2 = abstractC2650c.f886j;
        if (runnable2 != null) {
            runnable = new RunnableC2568M4(runnable2, runnable);
        }
        abstractC2650c.f886j = runnable;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2785y2
    /* renamed from: p0 */
    public final InterfaceC2493A1 mo308p0(InterfaceC2487s interfaceC2487s, boolean z, InterfaceC2461m interfaceC2461m) {
        if (this.f877a.f887k) {
            return mo423z0(this, interfaceC2487s, z, interfaceC2461m);
        }
        InterfaceC2748s1 mo304t0 = mo304t0(mo307q0(interfaceC2487s), interfaceC2461m);
        Objects.requireNonNull(mo304t0);
        mo310n0(mo302v0(mo304t0), interfaceC2487s);
        return mo304t0.mo338a();
    }

    public final InterfaceC2674g parallel() {
        this.f877a.f887k = true;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2785y2
    /* renamed from: q0 */
    public final long mo307q0(InterfaceC2487s interfaceC2487s) {
        if (EnumC2661d4.SIZED.m435d(this.f882f)) {
            return interfaceC2487s.getExactSizeIfKnown();
        }
        return -1L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2785y2
    /* renamed from: r0 */
    public final EnumC2667e4 mo306r0() {
        AbstractC2650c abstractC2650c = this;
        while (abstractC2650c.f881e > 0) {
            abstractC2650c = abstractC2650c.f878b;
        }
        return abstractC2650c.mo425B0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2785y2
    /* renamed from: s0 */
    public final int mo305s0() {
        return this.f882f;
    }

    public final InterfaceC2674g sequential() {
        this.f877a.f887k = false;
        return this;
    }

    public InterfaceC2487s spliterator() {
        if (this.f884h) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.f884h = true;
        AbstractC2650c abstractC2650c = this.f877a;
        if (this == abstractC2650c) {
            InterfaceC2487s interfaceC2487s = abstractC2650c.f883g;
            if (interfaceC2487s != null) {
                abstractC2650c.f883g = null;
                return interfaceC2487s;
            }
            throw new IllegalStateException("source already consumed or closed");
        }
        return mo424K0(this, new C2644b(this), abstractC2650c.f887k);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2785y2
    /* renamed from: u0 */
    public final InterfaceC2714m3 mo303u0(InterfaceC2714m3 interfaceC2714m3, InterfaceC2487s interfaceC2487s) {
        Objects.requireNonNull(interfaceC2714m3);
        mo310n0(mo302v0(interfaceC2714m3), interfaceC2487s);
        return interfaceC2714m3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2785y2
    /* renamed from: v0 */
    public final InterfaceC2714m3 mo302v0(InterfaceC2714m3 interfaceC2714m3) {
        Objects.requireNonNull(interfaceC2714m3);
        for (AbstractC2650c abstractC2650c = this; abstractC2650c.f881e > 0; abstractC2650c = abstractC2650c.f878b) {
            interfaceC2714m3 = abstractC2650c.mo298H0(abstractC2650c.f878b.f882f, interfaceC2714m3);
        }
        return interfaceC2714m3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2785y2
    /* renamed from: w0 */
    public final InterfaceC2487s mo301w0(InterfaceC2487s interfaceC2487s) {
        return this.f881e == 0 ? interfaceC2487s : mo424K0(this, new C2644b(interfaceC2487s), this.f877a.f887k);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: x0 */
    public final Object m449x0(InterfaceC2574N4 interfaceC2574N4) {
        if (this.f884h) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.f884h = true;
        return this.f877a.f887k ? interfaceC2574N4.mo376c(this, m451I0(interfaceC2574N4.mo377b())) : interfaceC2574N4.mo375d(this, m451I0(interfaceC2574N4.mo377b()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: y0 */
    public final InterfaceC2493A1 m448y0(InterfaceC2461m interfaceC2461m) {
        if (this.f884h) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.f884h = true;
        if (this.f877a.f887k && this.f878b != null && mo439G0()) {
            this.f881e = 0;
            AbstractC2650c abstractC2650c = this.f878b;
            return mo300E0(abstractC2650c, abstractC2650c.m451I0(0), interfaceC2461m);
        }
        return mo308p0(m451I0(0), true, interfaceC2461m);
    }

    /* renamed from: z0 */
    abstract InterfaceC2493A1 mo423z0(AbstractC2785y2 abstractC2785y2, InterfaceC2487s interfaceC2487s, boolean z, InterfaceC2461m interfaceC2461m);
}
