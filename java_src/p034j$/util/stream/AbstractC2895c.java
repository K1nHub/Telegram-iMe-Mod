package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2732s;
import p034j$.util.function.InterfaceC2706m;
import p034j$.util.function.InterfaceC2718y;
/* renamed from: j$.util.stream.c */
/* loaded from: classes2.dex */
abstract class AbstractC2895c extends AbstractC3030y2 implements InterfaceC2919g {

    /* renamed from: a */
    private final AbstractC2895c f886a;

    /* renamed from: b */
    private final AbstractC2895c f887b;

    /* renamed from: c */
    protected final int f888c;

    /* renamed from: d */
    private AbstractC2895c f889d;

    /* renamed from: e */
    private int f890e;

    /* renamed from: f */
    private int f891f;

    /* renamed from: g */
    private InterfaceC2732s f892g;

    /* renamed from: h */
    private boolean f893h;

    /* renamed from: i */
    private boolean f894i;

    /* renamed from: j */
    private Runnable f895j;

    /* renamed from: k */
    private boolean f896k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2895c(InterfaceC2732s interfaceC2732s, int i, boolean z) {
        this.f887b = null;
        this.f892g = interfaceC2732s;
        this.f886a = this;
        int i2 = EnumC2906d4.f910g & i;
        this.f888c = i2;
        this.f891f = (~(i2 << 1)) & EnumC2906d4.f915l;
        this.f890e = 0;
        this.f896k = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2895c(AbstractC2895c abstractC2895c, int i) {
        if (abstractC2895c.f893h) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        abstractC2895c.f893h = true;
        abstractC2895c.f889d = this;
        this.f887b = abstractC2895c;
        this.f888c = EnumC2906d4.f911h & i;
        this.f891f = EnumC2906d4.m423a(i, abstractC2895c.f891f);
        AbstractC2895c abstractC2895c2 = abstractC2895c.f886a;
        this.f886a = abstractC2895c2;
        if (mo424G0()) {
            abstractC2895c2.f894i = true;
        }
        this.f890e = abstractC2895c.f890e + 1;
    }

    /* renamed from: I0 */
    private InterfaceC2732s m436I0(int i) {
        int i2;
        int i3;
        AbstractC2895c abstractC2895c = this.f886a;
        InterfaceC2732s interfaceC2732s = abstractC2895c.f892g;
        if (interfaceC2732s != null) {
            abstractC2895c.f892g = null;
            if (abstractC2895c.f896k && abstractC2895c.f894i) {
                AbstractC2895c abstractC2895c2 = abstractC2895c.f889d;
                int i4 = 1;
                while (abstractC2895c != this) {
                    int i5 = abstractC2895c2.f888c;
                    if (abstractC2895c2.mo424G0()) {
                        i4 = 0;
                        if (EnumC2906d4.SHORT_CIRCUIT.m420d(i5)) {
                            i5 &= ~EnumC2906d4.f924u;
                        }
                        interfaceC2732s = abstractC2895c2.mo284F0(abstractC2895c, interfaceC2732s);
                        if (interfaceC2732s.hasCharacteristics(64)) {
                            i2 = i5 & (~EnumC2906d4.f923t);
                            i3 = EnumC2906d4.f922s;
                        } else {
                            i2 = i5 & (~EnumC2906d4.f922s);
                            i3 = EnumC2906d4.f923t;
                        }
                        i5 = i2 | i3;
                    }
                    abstractC2895c2.f890e = i4;
                    abstractC2895c2.f891f = EnumC2906d4.m423a(i5, abstractC2895c.f891f);
                    i4++;
                    AbstractC2895c abstractC2895c3 = abstractC2895c2;
                    abstractC2895c2 = abstractC2895c2.f889d;
                    abstractC2895c = abstractC2895c3;
                }
            }
            if (i != 0) {
                this.f891f = EnumC2906d4.m423a(i, this.f891f);
            }
            return interfaceC2732s;
        }
        throw new IllegalStateException("source already consumed or closed");
    }

    /* renamed from: A0 */
    abstract void mo411A0(InterfaceC2732s interfaceC2732s, InterfaceC2959m3 interfaceC2959m3);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: B0 */
    public abstract EnumC2912e4 mo410B0();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: C0 */
    public final boolean m438C0() {
        return EnumC2906d4.ORDERED.m420d(this.f891f);
    }

    /* renamed from: D0 */
    public /* synthetic */ InterfaceC2732s m437D0() {
        return m436I0(0);
    }

    /* renamed from: E0 */
    InterfaceC2738A1 mo285E0(AbstractC3030y2 abstractC3030y2, InterfaceC2732s interfaceC2732s, InterfaceC2706m interfaceC2706m) {
        throw new UnsupportedOperationException("Parallel evaluation is not supported");
    }

    /* renamed from: F0 */
    InterfaceC2732s mo284F0(AbstractC3030y2 abstractC3030y2, InterfaceC2732s interfaceC2732s) {
        return mo285E0(abstractC3030y2, interfaceC2732s, C2883a.f876a).spliterator();
    }

    /* renamed from: G0 */
    abstract boolean mo424G0();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: H0 */
    public abstract InterfaceC2959m3 mo283H0(int i, InterfaceC2959m3 interfaceC2959m3);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: J0 */
    public final InterfaceC2732s m435J0() {
        AbstractC2895c abstractC2895c = this.f886a;
        if (this == abstractC2895c) {
            if (this.f893h) {
                throw new IllegalStateException("stream has already been operated upon or closed");
            }
            this.f893h = true;
            InterfaceC2732s interfaceC2732s = abstractC2895c.f892g;
            if (interfaceC2732s != null) {
                abstractC2895c.f892g = null;
                return interfaceC2732s;
            }
            throw new IllegalStateException("source already consumed or closed");
        }
        throw new IllegalStateException();
    }

    /* renamed from: K0 */
    abstract InterfaceC2732s mo409K0(AbstractC3030y2 abstractC3030y2, InterfaceC2718y interfaceC2718y, boolean z);

    @Override // p034j$.util.stream.InterfaceC2919g, java.lang.AutoCloseable
    public void close() {
        this.f893h = true;
        this.f892g = null;
        AbstractC2895c abstractC2895c = this.f886a;
        Runnable runnable = abstractC2895c.f895j;
        if (runnable != null) {
            abstractC2895c.f895j = null;
            runnable.run();
        }
    }

    @Override // p034j$.util.stream.InterfaceC2919g
    public final boolean isParallel() {
        return this.f886a.f896k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC3030y2
    /* renamed from: n0 */
    public final void mo295n0(InterfaceC2959m3 interfaceC2959m3, InterfaceC2732s interfaceC2732s) {
        Objects.requireNonNull(interfaceC2959m3);
        if (EnumC2906d4.SHORT_CIRCUIT.m420d(this.f891f)) {
            mo294o0(interfaceC2959m3, interfaceC2732s);
            return;
        }
        interfaceC2959m3.mo297n(interfaceC2732s.getExactSizeIfKnown());
        interfaceC2732s.forEachRemaining(interfaceC2959m3);
        interfaceC2959m3.mo321m();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC3030y2
    /* renamed from: o0 */
    public final void mo294o0(InterfaceC2959m3 interfaceC2959m3, InterfaceC2732s interfaceC2732s) {
        AbstractC2895c abstractC2895c = this;
        while (abstractC2895c.f890e > 0) {
            abstractC2895c = abstractC2895c.f887b;
        }
        interfaceC2959m3.mo297n(interfaceC2732s.getExactSizeIfKnown());
        abstractC2895c.mo411A0(interfaceC2732s, interfaceC2959m3);
        interfaceC2959m3.mo321m();
    }

    @Override // p034j$.util.stream.InterfaceC2919g
    public InterfaceC2919g onClose(Runnable runnable) {
        AbstractC2895c abstractC2895c = this.f886a;
        Runnable runnable2 = abstractC2895c.f895j;
        if (runnable2 != null) {
            runnable = new RunnableC2813M4(runnable2, runnable);
        }
        abstractC2895c.f895j = runnable;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC3030y2
    /* renamed from: p0 */
    public final InterfaceC2738A1 mo293p0(InterfaceC2732s interfaceC2732s, boolean z, InterfaceC2706m interfaceC2706m) {
        if (this.f886a.f896k) {
            return mo408z0(this, interfaceC2732s, z, interfaceC2706m);
        }
        InterfaceC2993s1 mo289t0 = mo289t0(mo292q0(interfaceC2732s), interfaceC2706m);
        Objects.requireNonNull(mo289t0);
        mo295n0(mo287v0(mo289t0), interfaceC2732s);
        return mo289t0.mo323a();
    }

    public final InterfaceC2919g parallel() {
        this.f886a.f896k = true;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC3030y2
    /* renamed from: q0 */
    public final long mo292q0(InterfaceC2732s interfaceC2732s) {
        if (EnumC2906d4.SIZED.m420d(this.f891f)) {
            return interfaceC2732s.getExactSizeIfKnown();
        }
        return -1L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC3030y2
    /* renamed from: r0 */
    public final EnumC2912e4 mo291r0() {
        AbstractC2895c abstractC2895c = this;
        while (abstractC2895c.f890e > 0) {
            abstractC2895c = abstractC2895c.f887b;
        }
        return abstractC2895c.mo410B0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC3030y2
    /* renamed from: s0 */
    public final int mo290s0() {
        return this.f891f;
    }

    public final InterfaceC2919g sequential() {
        this.f886a.f896k = false;
        return this;
    }

    public InterfaceC2732s spliterator() {
        if (this.f893h) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.f893h = true;
        AbstractC2895c abstractC2895c = this.f886a;
        if (this == abstractC2895c) {
            InterfaceC2732s interfaceC2732s = abstractC2895c.f892g;
            if (interfaceC2732s != null) {
                abstractC2895c.f892g = null;
                return interfaceC2732s;
            }
            throw new IllegalStateException("source already consumed or closed");
        }
        return mo409K0(this, new C2889b(this), abstractC2895c.f896k);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC3030y2
    /* renamed from: u0 */
    public final InterfaceC2959m3 mo288u0(InterfaceC2959m3 interfaceC2959m3, InterfaceC2732s interfaceC2732s) {
        Objects.requireNonNull(interfaceC2959m3);
        mo295n0(mo287v0(interfaceC2959m3), interfaceC2732s);
        return interfaceC2959m3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC3030y2
    /* renamed from: v0 */
    public final InterfaceC2959m3 mo287v0(InterfaceC2959m3 interfaceC2959m3) {
        Objects.requireNonNull(interfaceC2959m3);
        for (AbstractC2895c abstractC2895c = this; abstractC2895c.f890e > 0; abstractC2895c = abstractC2895c.f887b) {
            interfaceC2959m3 = abstractC2895c.mo283H0(abstractC2895c.f887b.f891f, interfaceC2959m3);
        }
        return interfaceC2959m3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC3030y2
    /* renamed from: w0 */
    public final InterfaceC2732s mo286w0(InterfaceC2732s interfaceC2732s) {
        return this.f890e == 0 ? interfaceC2732s : mo409K0(this, new C2889b(interfaceC2732s), this.f886a.f896k);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: x0 */
    public final Object m434x0(InterfaceC2819N4 interfaceC2819N4) {
        if (this.f893h) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.f893h = true;
        return this.f886a.f896k ? interfaceC2819N4.mo361c(this, m436I0(interfaceC2819N4.mo362b())) : interfaceC2819N4.mo360d(this, m436I0(interfaceC2819N4.mo362b()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: y0 */
    public final InterfaceC2738A1 m433y0(InterfaceC2706m interfaceC2706m) {
        if (this.f893h) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.f893h = true;
        if (this.f886a.f896k && this.f887b != null && mo424G0()) {
            this.f890e = 0;
            AbstractC2895c abstractC2895c = this.f887b;
            return mo285E0(abstractC2895c, abstractC2895c.m436I0(0), interfaceC2706m);
        }
        return mo293p0(m436I0(0), true, interfaceC2706m);
    }

    /* renamed from: z0 */
    abstract InterfaceC2738A1 mo408z0(AbstractC3030y2 abstractC3030y2, InterfaceC2732s interfaceC2732s, boolean z, InterfaceC2706m interfaceC2706m);
}
