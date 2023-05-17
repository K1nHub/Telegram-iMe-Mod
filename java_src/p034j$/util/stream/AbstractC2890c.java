package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2727s;
import p034j$.util.function.InterfaceC2701m;
import p034j$.util.function.InterfaceC2713y;
/* renamed from: j$.util.stream.c */
/* loaded from: classes2.dex */
abstract class AbstractC2890c extends AbstractC3025y2 implements InterfaceC2914g {

    /* renamed from: a */
    private final AbstractC2890c f886a;

    /* renamed from: b */
    private final AbstractC2890c f887b;

    /* renamed from: c */
    protected final int f888c;

    /* renamed from: d */
    private AbstractC2890c f889d;

    /* renamed from: e */
    private int f890e;

    /* renamed from: f */
    private int f891f;

    /* renamed from: g */
    private InterfaceC2727s f892g;

    /* renamed from: h */
    private boolean f893h;

    /* renamed from: i */
    private boolean f894i;

    /* renamed from: j */
    private Runnable f895j;

    /* renamed from: k */
    private boolean f896k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2890c(InterfaceC2727s interfaceC2727s, int i, boolean z) {
        this.f887b = null;
        this.f892g = interfaceC2727s;
        this.f886a = this;
        int i2 = EnumC2901d4.f910g & i;
        this.f888c = i2;
        this.f891f = (~(i2 << 1)) & EnumC2901d4.f915l;
        this.f890e = 0;
        this.f896k = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2890c(AbstractC2890c abstractC2890c, int i) {
        if (abstractC2890c.f893h) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        abstractC2890c.f893h = true;
        abstractC2890c.f889d = this;
        this.f887b = abstractC2890c;
        this.f888c = EnumC2901d4.f911h & i;
        this.f891f = EnumC2901d4.m423a(i, abstractC2890c.f891f);
        AbstractC2890c abstractC2890c2 = abstractC2890c.f886a;
        this.f886a = abstractC2890c2;
        if (mo424G0()) {
            abstractC2890c2.f894i = true;
        }
        this.f890e = abstractC2890c.f890e + 1;
    }

    /* renamed from: I0 */
    private InterfaceC2727s m436I0(int i) {
        int i2;
        int i3;
        AbstractC2890c abstractC2890c = this.f886a;
        InterfaceC2727s interfaceC2727s = abstractC2890c.f892g;
        if (interfaceC2727s != null) {
            abstractC2890c.f892g = null;
            if (abstractC2890c.f896k && abstractC2890c.f894i) {
                AbstractC2890c abstractC2890c2 = abstractC2890c.f889d;
                int i4 = 1;
                while (abstractC2890c != this) {
                    int i5 = abstractC2890c2.f888c;
                    if (abstractC2890c2.mo424G0()) {
                        i4 = 0;
                        if (EnumC2901d4.SHORT_CIRCUIT.m420d(i5)) {
                            i5 &= ~EnumC2901d4.f924u;
                        }
                        interfaceC2727s = abstractC2890c2.mo284F0(abstractC2890c, interfaceC2727s);
                        if (interfaceC2727s.hasCharacteristics(64)) {
                            i2 = i5 & (~EnumC2901d4.f923t);
                            i3 = EnumC2901d4.f922s;
                        } else {
                            i2 = i5 & (~EnumC2901d4.f922s);
                            i3 = EnumC2901d4.f923t;
                        }
                        i5 = i2 | i3;
                    }
                    abstractC2890c2.f890e = i4;
                    abstractC2890c2.f891f = EnumC2901d4.m423a(i5, abstractC2890c.f891f);
                    i4++;
                    AbstractC2890c abstractC2890c3 = abstractC2890c2;
                    abstractC2890c2 = abstractC2890c2.f889d;
                    abstractC2890c = abstractC2890c3;
                }
            }
            if (i != 0) {
                this.f891f = EnumC2901d4.m423a(i, this.f891f);
            }
            return interfaceC2727s;
        }
        throw new IllegalStateException("source already consumed or closed");
    }

    /* renamed from: A0 */
    abstract void mo411A0(InterfaceC2727s interfaceC2727s, InterfaceC2954m3 interfaceC2954m3);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: B0 */
    public abstract EnumC2907e4 mo410B0();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: C0 */
    public final boolean m438C0() {
        return EnumC2901d4.ORDERED.m420d(this.f891f);
    }

    /* renamed from: D0 */
    public /* synthetic */ InterfaceC2727s m437D0() {
        return m436I0(0);
    }

    /* renamed from: E0 */
    InterfaceC2733A1 mo285E0(AbstractC3025y2 abstractC3025y2, InterfaceC2727s interfaceC2727s, InterfaceC2701m interfaceC2701m) {
        throw new UnsupportedOperationException("Parallel evaluation is not supported");
    }

    /* renamed from: F0 */
    InterfaceC2727s mo284F0(AbstractC3025y2 abstractC3025y2, InterfaceC2727s interfaceC2727s) {
        return mo285E0(abstractC3025y2, interfaceC2727s, C2878a.f876a).spliterator();
    }

    /* renamed from: G0 */
    abstract boolean mo424G0();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: H0 */
    public abstract InterfaceC2954m3 mo283H0(int i, InterfaceC2954m3 interfaceC2954m3);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: J0 */
    public final InterfaceC2727s m435J0() {
        AbstractC2890c abstractC2890c = this.f886a;
        if (this == abstractC2890c) {
            if (this.f893h) {
                throw new IllegalStateException("stream has already been operated upon or closed");
            }
            this.f893h = true;
            InterfaceC2727s interfaceC2727s = abstractC2890c.f892g;
            if (interfaceC2727s != null) {
                abstractC2890c.f892g = null;
                return interfaceC2727s;
            }
            throw new IllegalStateException("source already consumed or closed");
        }
        throw new IllegalStateException();
    }

    /* renamed from: K0 */
    abstract InterfaceC2727s mo409K0(AbstractC3025y2 abstractC3025y2, InterfaceC2713y interfaceC2713y, boolean z);

    @Override // p034j$.util.stream.InterfaceC2914g, java.lang.AutoCloseable
    public void close() {
        this.f893h = true;
        this.f892g = null;
        AbstractC2890c abstractC2890c = this.f886a;
        Runnable runnable = abstractC2890c.f895j;
        if (runnable != null) {
            abstractC2890c.f895j = null;
            runnable.run();
        }
    }

    @Override // p034j$.util.stream.InterfaceC2914g
    public final boolean isParallel() {
        return this.f886a.f896k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC3025y2
    /* renamed from: n0 */
    public final void mo295n0(InterfaceC2954m3 interfaceC2954m3, InterfaceC2727s interfaceC2727s) {
        Objects.requireNonNull(interfaceC2954m3);
        if (EnumC2901d4.SHORT_CIRCUIT.m420d(this.f891f)) {
            mo294o0(interfaceC2954m3, interfaceC2727s);
            return;
        }
        interfaceC2954m3.mo297n(interfaceC2727s.getExactSizeIfKnown());
        interfaceC2727s.forEachRemaining(interfaceC2954m3);
        interfaceC2954m3.mo321m();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC3025y2
    /* renamed from: o0 */
    public final void mo294o0(InterfaceC2954m3 interfaceC2954m3, InterfaceC2727s interfaceC2727s) {
        AbstractC2890c abstractC2890c = this;
        while (abstractC2890c.f890e > 0) {
            abstractC2890c = abstractC2890c.f887b;
        }
        interfaceC2954m3.mo297n(interfaceC2727s.getExactSizeIfKnown());
        abstractC2890c.mo411A0(interfaceC2727s, interfaceC2954m3);
        interfaceC2954m3.mo321m();
    }

    @Override // p034j$.util.stream.InterfaceC2914g
    public InterfaceC2914g onClose(Runnable runnable) {
        AbstractC2890c abstractC2890c = this.f886a;
        Runnable runnable2 = abstractC2890c.f895j;
        if (runnable2 != null) {
            runnable = new RunnableC2808M4(runnable2, runnable);
        }
        abstractC2890c.f895j = runnable;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC3025y2
    /* renamed from: p0 */
    public final InterfaceC2733A1 mo293p0(InterfaceC2727s interfaceC2727s, boolean z, InterfaceC2701m interfaceC2701m) {
        if (this.f886a.f896k) {
            return mo408z0(this, interfaceC2727s, z, interfaceC2701m);
        }
        InterfaceC2988s1 mo289t0 = mo289t0(mo292q0(interfaceC2727s), interfaceC2701m);
        Objects.requireNonNull(mo289t0);
        mo295n0(mo287v0(mo289t0), interfaceC2727s);
        return mo289t0.mo323a();
    }

    public final InterfaceC2914g parallel() {
        this.f886a.f896k = true;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC3025y2
    /* renamed from: q0 */
    public final long mo292q0(InterfaceC2727s interfaceC2727s) {
        if (EnumC2901d4.SIZED.m420d(this.f891f)) {
            return interfaceC2727s.getExactSizeIfKnown();
        }
        return -1L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC3025y2
    /* renamed from: r0 */
    public final EnumC2907e4 mo291r0() {
        AbstractC2890c abstractC2890c = this;
        while (abstractC2890c.f890e > 0) {
            abstractC2890c = abstractC2890c.f887b;
        }
        return abstractC2890c.mo410B0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC3025y2
    /* renamed from: s0 */
    public final int mo290s0() {
        return this.f891f;
    }

    public final InterfaceC2914g sequential() {
        this.f886a.f896k = false;
        return this;
    }

    public InterfaceC2727s spliterator() {
        if (this.f893h) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.f893h = true;
        AbstractC2890c abstractC2890c = this.f886a;
        if (this == abstractC2890c) {
            InterfaceC2727s interfaceC2727s = abstractC2890c.f892g;
            if (interfaceC2727s != null) {
                abstractC2890c.f892g = null;
                return interfaceC2727s;
            }
            throw new IllegalStateException("source already consumed or closed");
        }
        return mo409K0(this, new C2884b(this), abstractC2890c.f896k);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC3025y2
    /* renamed from: u0 */
    public final InterfaceC2954m3 mo288u0(InterfaceC2954m3 interfaceC2954m3, InterfaceC2727s interfaceC2727s) {
        Objects.requireNonNull(interfaceC2954m3);
        mo295n0(mo287v0(interfaceC2954m3), interfaceC2727s);
        return interfaceC2954m3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC3025y2
    /* renamed from: v0 */
    public final InterfaceC2954m3 mo287v0(InterfaceC2954m3 interfaceC2954m3) {
        Objects.requireNonNull(interfaceC2954m3);
        for (AbstractC2890c abstractC2890c = this; abstractC2890c.f890e > 0; abstractC2890c = abstractC2890c.f887b) {
            interfaceC2954m3 = abstractC2890c.mo283H0(abstractC2890c.f887b.f891f, interfaceC2954m3);
        }
        return interfaceC2954m3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC3025y2
    /* renamed from: w0 */
    public final InterfaceC2727s mo286w0(InterfaceC2727s interfaceC2727s) {
        return this.f890e == 0 ? interfaceC2727s : mo409K0(this, new C2884b(interfaceC2727s), this.f886a.f896k);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: x0 */
    public final Object m434x0(InterfaceC2814N4 interfaceC2814N4) {
        if (this.f893h) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.f893h = true;
        return this.f886a.f896k ? interfaceC2814N4.mo361c(this, m436I0(interfaceC2814N4.mo362b())) : interfaceC2814N4.mo360d(this, m436I0(interfaceC2814N4.mo362b()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: y0 */
    public final InterfaceC2733A1 m433y0(InterfaceC2701m interfaceC2701m) {
        if (this.f893h) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.f893h = true;
        if (this.f886a.f896k && this.f887b != null && mo424G0()) {
            this.f890e = 0;
            AbstractC2890c abstractC2890c = this.f887b;
            return mo285E0(abstractC2890c, abstractC2890c.m436I0(0), interfaceC2701m);
        }
        return mo293p0(m436I0(0), true, interfaceC2701m);
    }

    /* renamed from: z0 */
    abstract InterfaceC2733A1 mo408z0(AbstractC3025y2 abstractC3025y2, InterfaceC2727s interfaceC2727s, boolean z, InterfaceC2701m interfaceC2701m);
}
