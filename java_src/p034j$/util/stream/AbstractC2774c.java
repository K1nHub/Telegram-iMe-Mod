package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2611s;
import p034j$.util.function.InterfaceC2585m;
import p034j$.util.function.InterfaceC2597y;
/* renamed from: j$.util.stream.c */
/* loaded from: classes2.dex */
abstract class AbstractC2774c extends AbstractC2909y2 implements InterfaceC2798g {

    /* renamed from: a */
    private final AbstractC2774c f882a;

    /* renamed from: b */
    private final AbstractC2774c f883b;

    /* renamed from: c */
    protected final int f884c;

    /* renamed from: d */
    private AbstractC2774c f885d;

    /* renamed from: e */
    private int f886e;

    /* renamed from: f */
    private int f887f;

    /* renamed from: g */
    private InterfaceC2611s f888g;

    /* renamed from: h */
    private boolean f889h;

    /* renamed from: i */
    private boolean f890i;

    /* renamed from: j */
    private Runnable f891j;

    /* renamed from: k */
    private boolean f892k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2774c(InterfaceC2611s interfaceC2611s, int i, boolean z) {
        this.f883b = null;
        this.f888g = interfaceC2611s;
        this.f882a = this;
        int i2 = EnumC2785d4.f906g & i;
        this.f884c = i2;
        this.f887f = (~(i2 << 1)) & EnumC2785d4.f911l;
        this.f886e = 0;
        this.f892k = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2774c(AbstractC2774c abstractC2774c, int i) {
        if (abstractC2774c.f889h) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        abstractC2774c.f889h = true;
        abstractC2774c.f885d = this;
        this.f883b = abstractC2774c;
        this.f884c = EnumC2785d4.f907h & i;
        this.f887f = EnumC2785d4.m438a(i, abstractC2774c.f887f);
        AbstractC2774c abstractC2774c2 = abstractC2774c.f882a;
        this.f882a = abstractC2774c2;
        if (mo439G0()) {
            abstractC2774c2.f890i = true;
        }
        this.f886e = abstractC2774c.f886e + 1;
    }

    /* renamed from: I0 */
    private InterfaceC2611s m451I0(int i) {
        int i2;
        int i3;
        AbstractC2774c abstractC2774c = this.f882a;
        InterfaceC2611s interfaceC2611s = abstractC2774c.f888g;
        if (interfaceC2611s != null) {
            abstractC2774c.f888g = null;
            if (abstractC2774c.f892k && abstractC2774c.f890i) {
                AbstractC2774c abstractC2774c2 = abstractC2774c.f885d;
                int i4 = 1;
                while (abstractC2774c != this) {
                    int i5 = abstractC2774c2.f884c;
                    if (abstractC2774c2.mo439G0()) {
                        i4 = 0;
                        if (EnumC2785d4.SHORT_CIRCUIT.m435d(i5)) {
                            i5 &= ~EnumC2785d4.f920u;
                        }
                        interfaceC2611s = abstractC2774c2.mo299F0(abstractC2774c, interfaceC2611s);
                        if (interfaceC2611s.hasCharacteristics(64)) {
                            i2 = i5 & (~EnumC2785d4.f919t);
                            i3 = EnumC2785d4.f918s;
                        } else {
                            i2 = i5 & (~EnumC2785d4.f918s);
                            i3 = EnumC2785d4.f919t;
                        }
                        i5 = i2 | i3;
                    }
                    abstractC2774c2.f886e = i4;
                    abstractC2774c2.f887f = EnumC2785d4.m438a(i5, abstractC2774c.f887f);
                    i4++;
                    AbstractC2774c abstractC2774c3 = abstractC2774c2;
                    abstractC2774c2 = abstractC2774c2.f885d;
                    abstractC2774c = abstractC2774c3;
                }
            }
            if (i != 0) {
                this.f887f = EnumC2785d4.m438a(i, this.f887f);
            }
            return interfaceC2611s;
        }
        throw new IllegalStateException("source already consumed or closed");
    }

    /* renamed from: A0 */
    abstract void mo426A0(InterfaceC2611s interfaceC2611s, InterfaceC2838m3 interfaceC2838m3);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: B0 */
    public abstract EnumC2791e4 mo425B0();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: C0 */
    public final boolean m453C0() {
        return EnumC2785d4.ORDERED.m435d(this.f887f);
    }

    /* renamed from: D0 */
    public /* synthetic */ InterfaceC2611s m452D0() {
        return m451I0(0);
    }

    /* renamed from: E0 */
    InterfaceC2617A1 mo300E0(AbstractC2909y2 abstractC2909y2, InterfaceC2611s interfaceC2611s, InterfaceC2585m interfaceC2585m) {
        throw new UnsupportedOperationException("Parallel evaluation is not supported");
    }

    /* renamed from: F0 */
    InterfaceC2611s mo299F0(AbstractC2909y2 abstractC2909y2, InterfaceC2611s interfaceC2611s) {
        return mo300E0(abstractC2909y2, interfaceC2611s, C2762a.f872a).spliterator();
    }

    /* renamed from: G0 */
    abstract boolean mo439G0();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: H0 */
    public abstract InterfaceC2838m3 mo298H0(int i, InterfaceC2838m3 interfaceC2838m3);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: J0 */
    public final InterfaceC2611s m450J0() {
        AbstractC2774c abstractC2774c = this.f882a;
        if (this == abstractC2774c) {
            if (this.f889h) {
                throw new IllegalStateException("stream has already been operated upon or closed");
            }
            this.f889h = true;
            InterfaceC2611s interfaceC2611s = abstractC2774c.f888g;
            if (interfaceC2611s != null) {
                abstractC2774c.f888g = null;
                return interfaceC2611s;
            }
            throw new IllegalStateException("source already consumed or closed");
        }
        throw new IllegalStateException();
    }

    /* renamed from: K0 */
    abstract InterfaceC2611s mo424K0(AbstractC2909y2 abstractC2909y2, InterfaceC2597y interfaceC2597y, boolean z);

    @Override // p034j$.util.stream.InterfaceC2798g, java.lang.AutoCloseable
    public void close() {
        this.f889h = true;
        this.f888g = null;
        AbstractC2774c abstractC2774c = this.f882a;
        Runnable runnable = abstractC2774c.f891j;
        if (runnable != null) {
            abstractC2774c.f891j = null;
            runnable.run();
        }
    }

    @Override // p034j$.util.stream.InterfaceC2798g
    public final boolean isParallel() {
        return this.f882a.f892k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2909y2
    /* renamed from: n0 */
    public final void mo310n0(InterfaceC2838m3 interfaceC2838m3, InterfaceC2611s interfaceC2611s) {
        Objects.requireNonNull(interfaceC2838m3);
        if (EnumC2785d4.SHORT_CIRCUIT.m435d(this.f887f)) {
            mo309o0(interfaceC2838m3, interfaceC2611s);
            return;
        }
        interfaceC2838m3.mo312n(interfaceC2611s.getExactSizeIfKnown());
        interfaceC2611s.forEachRemaining(interfaceC2838m3);
        interfaceC2838m3.mo336m();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2909y2
    /* renamed from: o0 */
    public final void mo309o0(InterfaceC2838m3 interfaceC2838m3, InterfaceC2611s interfaceC2611s) {
        AbstractC2774c abstractC2774c = this;
        while (abstractC2774c.f886e > 0) {
            abstractC2774c = abstractC2774c.f883b;
        }
        interfaceC2838m3.mo312n(interfaceC2611s.getExactSizeIfKnown());
        abstractC2774c.mo426A0(interfaceC2611s, interfaceC2838m3);
        interfaceC2838m3.mo336m();
    }

    @Override // p034j$.util.stream.InterfaceC2798g
    public InterfaceC2798g onClose(Runnable runnable) {
        AbstractC2774c abstractC2774c = this.f882a;
        Runnable runnable2 = abstractC2774c.f891j;
        if (runnable2 != null) {
            runnable = new RunnableC2692M4(runnable2, runnable);
        }
        abstractC2774c.f891j = runnable;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2909y2
    /* renamed from: p0 */
    public final InterfaceC2617A1 mo308p0(InterfaceC2611s interfaceC2611s, boolean z, InterfaceC2585m interfaceC2585m) {
        if (this.f882a.f892k) {
            return mo423z0(this, interfaceC2611s, z, interfaceC2585m);
        }
        InterfaceC2872s1 mo304t0 = mo304t0(mo307q0(interfaceC2611s), interfaceC2585m);
        Objects.requireNonNull(mo304t0);
        mo310n0(mo302v0(mo304t0), interfaceC2611s);
        return mo304t0.mo338a();
    }

    public final InterfaceC2798g parallel() {
        this.f882a.f892k = true;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2909y2
    /* renamed from: q0 */
    public final long mo307q0(InterfaceC2611s interfaceC2611s) {
        if (EnumC2785d4.SIZED.m435d(this.f887f)) {
            return interfaceC2611s.getExactSizeIfKnown();
        }
        return -1L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2909y2
    /* renamed from: r0 */
    public final EnumC2791e4 mo306r0() {
        AbstractC2774c abstractC2774c = this;
        while (abstractC2774c.f886e > 0) {
            abstractC2774c = abstractC2774c.f883b;
        }
        return abstractC2774c.mo425B0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2909y2
    /* renamed from: s0 */
    public final int mo305s0() {
        return this.f887f;
    }

    public final InterfaceC2798g sequential() {
        this.f882a.f892k = false;
        return this;
    }

    public InterfaceC2611s spliterator() {
        if (this.f889h) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.f889h = true;
        AbstractC2774c abstractC2774c = this.f882a;
        if (this == abstractC2774c) {
            InterfaceC2611s interfaceC2611s = abstractC2774c.f888g;
            if (interfaceC2611s != null) {
                abstractC2774c.f888g = null;
                return interfaceC2611s;
            }
            throw new IllegalStateException("source already consumed or closed");
        }
        return mo424K0(this, new C2768b(this), abstractC2774c.f892k);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2909y2
    /* renamed from: u0 */
    public final InterfaceC2838m3 mo303u0(InterfaceC2838m3 interfaceC2838m3, InterfaceC2611s interfaceC2611s) {
        Objects.requireNonNull(interfaceC2838m3);
        mo310n0(mo302v0(interfaceC2838m3), interfaceC2611s);
        return interfaceC2838m3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2909y2
    /* renamed from: v0 */
    public final InterfaceC2838m3 mo302v0(InterfaceC2838m3 interfaceC2838m3) {
        Objects.requireNonNull(interfaceC2838m3);
        for (AbstractC2774c abstractC2774c = this; abstractC2774c.f886e > 0; abstractC2774c = abstractC2774c.f883b) {
            interfaceC2838m3 = abstractC2774c.mo298H0(abstractC2774c.f883b.f887f, interfaceC2838m3);
        }
        return interfaceC2838m3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2909y2
    /* renamed from: w0 */
    public final InterfaceC2611s mo301w0(InterfaceC2611s interfaceC2611s) {
        return this.f886e == 0 ? interfaceC2611s : mo424K0(this, new C2768b(interfaceC2611s), this.f882a.f892k);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: x0 */
    public final Object m449x0(InterfaceC2698N4 interfaceC2698N4) {
        if (this.f889h) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.f889h = true;
        return this.f882a.f892k ? interfaceC2698N4.mo376c(this, m451I0(interfaceC2698N4.mo377b())) : interfaceC2698N4.mo375d(this, m451I0(interfaceC2698N4.mo377b()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: y0 */
    public final InterfaceC2617A1 m448y0(InterfaceC2585m interfaceC2585m) {
        if (this.f889h) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.f889h = true;
        if (this.f882a.f892k && this.f883b != null && mo439G0()) {
            this.f886e = 0;
            AbstractC2774c abstractC2774c = this.f883b;
            return mo300E0(abstractC2774c, abstractC2774c.m451I0(0), interfaceC2585m);
        }
        return mo308p0(m451I0(0), true, interfaceC2585m);
    }

    /* renamed from: z0 */
    abstract InterfaceC2617A1 mo423z0(AbstractC2909y2 abstractC2909y2, InterfaceC2611s interfaceC2611s, boolean z, InterfaceC2585m interfaceC2585m);
}
