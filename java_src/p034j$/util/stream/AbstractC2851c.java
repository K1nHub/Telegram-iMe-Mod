package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2688s;
import p034j$.util.function.InterfaceC2662m;
import p034j$.util.function.InterfaceC2674y;
/* renamed from: j$.util.stream.c */
/* loaded from: classes2.dex */
abstract class AbstractC2851c extends AbstractC2986y2 implements InterfaceC2875g {

    /* renamed from: a */
    private final AbstractC2851c f883a;

    /* renamed from: b */
    private final AbstractC2851c f884b;

    /* renamed from: c */
    protected final int f885c;

    /* renamed from: d */
    private AbstractC2851c f886d;

    /* renamed from: e */
    private int f887e;

    /* renamed from: f */
    private int f888f;

    /* renamed from: g */
    private InterfaceC2688s f889g;

    /* renamed from: h */
    private boolean f890h;

    /* renamed from: i */
    private boolean f891i;

    /* renamed from: j */
    private Runnable f892j;

    /* renamed from: k */
    private boolean f893k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2851c(InterfaceC2688s interfaceC2688s, int i, boolean z) {
        this.f884b = null;
        this.f889g = interfaceC2688s;
        this.f883a = this;
        int i2 = EnumC2862d4.f907g & i;
        this.f885c = i2;
        this.f888f = (~(i2 << 1)) & EnumC2862d4.f912l;
        this.f887e = 0;
        this.f893k = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2851c(AbstractC2851c abstractC2851c, int i) {
        if (abstractC2851c.f890h) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        abstractC2851c.f890h = true;
        abstractC2851c.f886d = this;
        this.f884b = abstractC2851c;
        this.f885c = EnumC2862d4.f908h & i;
        this.f888f = EnumC2862d4.m418a(i, abstractC2851c.f888f);
        AbstractC2851c abstractC2851c2 = abstractC2851c.f883a;
        this.f883a = abstractC2851c2;
        if (mo419G0()) {
            abstractC2851c2.f891i = true;
        }
        this.f887e = abstractC2851c.f887e + 1;
    }

    /* renamed from: I0 */
    private InterfaceC2688s m431I0(int i) {
        int i2;
        int i3;
        AbstractC2851c abstractC2851c = this.f883a;
        InterfaceC2688s interfaceC2688s = abstractC2851c.f889g;
        if (interfaceC2688s != null) {
            abstractC2851c.f889g = null;
            if (abstractC2851c.f893k && abstractC2851c.f891i) {
                AbstractC2851c abstractC2851c2 = abstractC2851c.f886d;
                int i4 = 1;
                while (abstractC2851c != this) {
                    int i5 = abstractC2851c2.f885c;
                    if (abstractC2851c2.mo419G0()) {
                        i4 = 0;
                        if (EnumC2862d4.SHORT_CIRCUIT.m415d(i5)) {
                            i5 &= ~EnumC2862d4.f921u;
                        }
                        interfaceC2688s = abstractC2851c2.mo279F0(abstractC2851c, interfaceC2688s);
                        if (interfaceC2688s.hasCharacteristics(64)) {
                            i2 = i5 & (~EnumC2862d4.f920t);
                            i3 = EnumC2862d4.f919s;
                        } else {
                            i2 = i5 & (~EnumC2862d4.f919s);
                            i3 = EnumC2862d4.f920t;
                        }
                        i5 = i2 | i3;
                    }
                    abstractC2851c2.f887e = i4;
                    abstractC2851c2.f888f = EnumC2862d4.m418a(i5, abstractC2851c.f888f);
                    i4++;
                    AbstractC2851c abstractC2851c3 = abstractC2851c2;
                    abstractC2851c2 = abstractC2851c2.f886d;
                    abstractC2851c = abstractC2851c3;
                }
            }
            if (i != 0) {
                this.f888f = EnumC2862d4.m418a(i, this.f888f);
            }
            return interfaceC2688s;
        }
        throw new IllegalStateException("source already consumed or closed");
    }

    /* renamed from: A0 */
    abstract void mo406A0(InterfaceC2688s interfaceC2688s, InterfaceC2915m3 interfaceC2915m3);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: B0 */
    public abstract EnumC2868e4 mo405B0();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: C0 */
    public final boolean m433C0() {
        return EnumC2862d4.ORDERED.m415d(this.f888f);
    }

    /* renamed from: D0 */
    public /* synthetic */ InterfaceC2688s m432D0() {
        return m431I0(0);
    }

    /* renamed from: E0 */
    InterfaceC2694A1 mo280E0(AbstractC2986y2 abstractC2986y2, InterfaceC2688s interfaceC2688s, InterfaceC2662m interfaceC2662m) {
        throw new UnsupportedOperationException("Parallel evaluation is not supported");
    }

    /* renamed from: F0 */
    InterfaceC2688s mo279F0(AbstractC2986y2 abstractC2986y2, InterfaceC2688s interfaceC2688s) {
        return mo280E0(abstractC2986y2, interfaceC2688s, C2839a.f873a).spliterator();
    }

    /* renamed from: G0 */
    abstract boolean mo419G0();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: H0 */
    public abstract InterfaceC2915m3 mo278H0(int i, InterfaceC2915m3 interfaceC2915m3);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: J0 */
    public final InterfaceC2688s m430J0() {
        AbstractC2851c abstractC2851c = this.f883a;
        if (this == abstractC2851c) {
            if (this.f890h) {
                throw new IllegalStateException("stream has already been operated upon or closed");
            }
            this.f890h = true;
            InterfaceC2688s interfaceC2688s = abstractC2851c.f889g;
            if (interfaceC2688s != null) {
                abstractC2851c.f889g = null;
                return interfaceC2688s;
            }
            throw new IllegalStateException("source already consumed or closed");
        }
        throw new IllegalStateException();
    }

    /* renamed from: K0 */
    abstract InterfaceC2688s mo404K0(AbstractC2986y2 abstractC2986y2, InterfaceC2674y interfaceC2674y, boolean z);

    @Override // p034j$.util.stream.InterfaceC2875g, java.lang.AutoCloseable
    public void close() {
        this.f890h = true;
        this.f889g = null;
        AbstractC2851c abstractC2851c = this.f883a;
        Runnable runnable = abstractC2851c.f892j;
        if (runnable != null) {
            abstractC2851c.f892j = null;
            runnable.run();
        }
    }

    @Override // p034j$.util.stream.InterfaceC2875g
    public final boolean isParallel() {
        return this.f883a.f893k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2986y2
    /* renamed from: n0 */
    public final void mo290n0(InterfaceC2915m3 interfaceC2915m3, InterfaceC2688s interfaceC2688s) {
        Objects.requireNonNull(interfaceC2915m3);
        if (EnumC2862d4.SHORT_CIRCUIT.m415d(this.f888f)) {
            mo289o0(interfaceC2915m3, interfaceC2688s);
            return;
        }
        interfaceC2915m3.mo292n(interfaceC2688s.getExactSizeIfKnown());
        interfaceC2688s.forEachRemaining(interfaceC2915m3);
        interfaceC2915m3.mo316m();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2986y2
    /* renamed from: o0 */
    public final void mo289o0(InterfaceC2915m3 interfaceC2915m3, InterfaceC2688s interfaceC2688s) {
        AbstractC2851c abstractC2851c = this;
        while (abstractC2851c.f887e > 0) {
            abstractC2851c = abstractC2851c.f884b;
        }
        interfaceC2915m3.mo292n(interfaceC2688s.getExactSizeIfKnown());
        abstractC2851c.mo406A0(interfaceC2688s, interfaceC2915m3);
        interfaceC2915m3.mo316m();
    }

    @Override // p034j$.util.stream.InterfaceC2875g
    public InterfaceC2875g onClose(Runnable runnable) {
        AbstractC2851c abstractC2851c = this.f883a;
        Runnable runnable2 = abstractC2851c.f892j;
        if (runnable2 != null) {
            runnable = new RunnableC2769M4(runnable2, runnable);
        }
        abstractC2851c.f892j = runnable;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2986y2
    /* renamed from: p0 */
    public final InterfaceC2694A1 mo288p0(InterfaceC2688s interfaceC2688s, boolean z, InterfaceC2662m interfaceC2662m) {
        if (this.f883a.f893k) {
            return mo403z0(this, interfaceC2688s, z, interfaceC2662m);
        }
        InterfaceC2949s1 mo284t0 = mo284t0(mo287q0(interfaceC2688s), interfaceC2662m);
        Objects.requireNonNull(mo284t0);
        mo290n0(mo282v0(mo284t0), interfaceC2688s);
        return mo284t0.mo318a();
    }

    public final InterfaceC2875g parallel() {
        this.f883a.f893k = true;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2986y2
    /* renamed from: q0 */
    public final long mo287q0(InterfaceC2688s interfaceC2688s) {
        if (EnumC2862d4.SIZED.m415d(this.f888f)) {
            return interfaceC2688s.getExactSizeIfKnown();
        }
        return -1L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2986y2
    /* renamed from: r0 */
    public final EnumC2868e4 mo286r0() {
        AbstractC2851c abstractC2851c = this;
        while (abstractC2851c.f887e > 0) {
            abstractC2851c = abstractC2851c.f884b;
        }
        return abstractC2851c.mo405B0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2986y2
    /* renamed from: s0 */
    public final int mo285s0() {
        return this.f888f;
    }

    public final InterfaceC2875g sequential() {
        this.f883a.f893k = false;
        return this;
    }

    public InterfaceC2688s spliterator() {
        if (this.f890h) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.f890h = true;
        AbstractC2851c abstractC2851c = this.f883a;
        if (this == abstractC2851c) {
            InterfaceC2688s interfaceC2688s = abstractC2851c.f889g;
            if (interfaceC2688s != null) {
                abstractC2851c.f889g = null;
                return interfaceC2688s;
            }
            throw new IllegalStateException("source already consumed or closed");
        }
        return mo404K0(this, new C2845b(this), abstractC2851c.f893k);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2986y2
    /* renamed from: u0 */
    public final InterfaceC2915m3 mo283u0(InterfaceC2915m3 interfaceC2915m3, InterfaceC2688s interfaceC2688s) {
        Objects.requireNonNull(interfaceC2915m3);
        mo290n0(mo282v0(interfaceC2915m3), interfaceC2688s);
        return interfaceC2915m3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2986y2
    /* renamed from: v0 */
    public final InterfaceC2915m3 mo282v0(InterfaceC2915m3 interfaceC2915m3) {
        Objects.requireNonNull(interfaceC2915m3);
        for (AbstractC2851c abstractC2851c = this; abstractC2851c.f887e > 0; abstractC2851c = abstractC2851c.f884b) {
            interfaceC2915m3 = abstractC2851c.mo278H0(abstractC2851c.f884b.f888f, interfaceC2915m3);
        }
        return interfaceC2915m3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2986y2
    /* renamed from: w0 */
    public final InterfaceC2688s mo281w0(InterfaceC2688s interfaceC2688s) {
        return this.f887e == 0 ? interfaceC2688s : mo404K0(this, new C2845b(interfaceC2688s), this.f883a.f893k);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: x0 */
    public final Object m429x0(InterfaceC2775N4 interfaceC2775N4) {
        if (this.f890h) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.f890h = true;
        return this.f883a.f893k ? interfaceC2775N4.mo356c(this, m431I0(interfaceC2775N4.mo357b())) : interfaceC2775N4.mo355d(this, m431I0(interfaceC2775N4.mo357b()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: y0 */
    public final InterfaceC2694A1 m428y0(InterfaceC2662m interfaceC2662m) {
        if (this.f890h) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.f890h = true;
        if (this.f883a.f893k && this.f884b != null && mo419G0()) {
            this.f887e = 0;
            AbstractC2851c abstractC2851c = this.f884b;
            return mo280E0(abstractC2851c, abstractC2851c.m431I0(0), interfaceC2662m);
        }
        return mo288p0(m431I0(0), true, interfaceC2662m);
    }

    /* renamed from: z0 */
    abstract InterfaceC2694A1 mo403z0(AbstractC2986y2 abstractC2986y2, InterfaceC2688s interfaceC2688s, boolean z, InterfaceC2662m interfaceC2662m);
}
