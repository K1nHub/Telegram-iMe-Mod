package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.InterfaceC2853s;
import p033j$.util.function.InterfaceC2827m;
import p033j$.util.function.InterfaceC2839y;
/* renamed from: j$.util.stream.c */
/* loaded from: classes2.dex */
abstract class AbstractC3016c extends AbstractC3151y2 implements InterfaceC3040g {

    /* renamed from: a */
    private final AbstractC3016c f968a;

    /* renamed from: b */
    private final AbstractC3016c f969b;

    /* renamed from: c */
    protected final int f970c;

    /* renamed from: d */
    private AbstractC3016c f971d;

    /* renamed from: e */
    private int f972e;

    /* renamed from: f */
    private int f973f;

    /* renamed from: g */
    private InterfaceC2853s f974g;

    /* renamed from: h */
    private boolean f975h;

    /* renamed from: i */
    private boolean f976i;

    /* renamed from: j */
    private Runnable f977j;

    /* renamed from: k */
    private boolean f978k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3016c(InterfaceC2853s interfaceC2853s, int i, boolean z) {
        this.f969b = null;
        this.f974g = interfaceC2853s;
        this.f968a = this;
        int i2 = EnumC3027d4.f992g & i;
        this.f970c = i2;
        this.f973f = (~(i2 << 1)) & EnumC3027d4.f997l;
        this.f972e = 0;
        this.f978k = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3016c(AbstractC3016c abstractC3016c, int i) {
        if (abstractC3016c.f975h) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        abstractC3016c.f975h = true;
        abstractC3016c.f971d = this;
        this.f969b = abstractC3016c;
        this.f970c = EnumC3027d4.f993h & i;
        this.f973f = EnumC3027d4.m423a(i, abstractC3016c.f973f);
        AbstractC3016c abstractC3016c2 = abstractC3016c.f968a;
        this.f968a = abstractC3016c2;
        if (mo424G0()) {
            abstractC3016c2.f976i = true;
        }
        this.f972e = abstractC3016c.f972e + 1;
    }

    /* renamed from: I0 */
    private InterfaceC2853s m436I0(int i) {
        int i2;
        int i3;
        AbstractC3016c abstractC3016c = this.f968a;
        InterfaceC2853s interfaceC2853s = abstractC3016c.f974g;
        if (interfaceC2853s != null) {
            abstractC3016c.f974g = null;
            if (abstractC3016c.f978k && abstractC3016c.f976i) {
                AbstractC3016c abstractC3016c2 = abstractC3016c.f971d;
                int i4 = 1;
                while (abstractC3016c != this) {
                    int i5 = abstractC3016c2.f970c;
                    if (abstractC3016c2.mo424G0()) {
                        i4 = 0;
                        if (EnumC3027d4.SHORT_CIRCUIT.m420d(i5)) {
                            i5 &= ~EnumC3027d4.f1006u;
                        }
                        interfaceC2853s = abstractC3016c2.mo284F0(abstractC3016c, interfaceC2853s);
                        if (interfaceC2853s.hasCharacteristics(64)) {
                            i2 = i5 & (~EnumC3027d4.f1005t);
                            i3 = EnumC3027d4.f1004s;
                        } else {
                            i2 = i5 & (~EnumC3027d4.f1004s);
                            i3 = EnumC3027d4.f1005t;
                        }
                        i5 = i2 | i3;
                    }
                    abstractC3016c2.f972e = i4;
                    abstractC3016c2.f973f = EnumC3027d4.m423a(i5, abstractC3016c.f973f);
                    i4++;
                    AbstractC3016c abstractC3016c3 = abstractC3016c2;
                    abstractC3016c2 = abstractC3016c2.f971d;
                    abstractC3016c = abstractC3016c3;
                }
            }
            if (i != 0) {
                this.f973f = EnumC3027d4.m423a(i, this.f973f);
            }
            return interfaceC2853s;
        }
        throw new IllegalStateException("source already consumed or closed");
    }

    /* renamed from: A0 */
    abstract void mo411A0(InterfaceC2853s interfaceC2853s, InterfaceC3080m3 interfaceC3080m3);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: B0 */
    public abstract EnumC3033e4 mo410B0();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: C0 */
    public final boolean m438C0() {
        return EnumC3027d4.ORDERED.m420d(this.f973f);
    }

    /* renamed from: D0 */
    public /* synthetic */ InterfaceC2853s m437D0() {
        return m436I0(0);
    }

    /* renamed from: E0 */
    InterfaceC2859A1 mo285E0(AbstractC3151y2 abstractC3151y2, InterfaceC2853s interfaceC2853s, InterfaceC2827m interfaceC2827m) {
        throw new UnsupportedOperationException("Parallel evaluation is not supported");
    }

    /* renamed from: F0 */
    InterfaceC2853s mo284F0(AbstractC3151y2 abstractC3151y2, InterfaceC2853s interfaceC2853s) {
        return mo285E0(abstractC3151y2, interfaceC2853s, C3004a.f958a).spliterator();
    }

    /* renamed from: G0 */
    abstract boolean mo424G0();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: H0 */
    public abstract InterfaceC3080m3 mo283H0(int i, InterfaceC3080m3 interfaceC3080m3);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: J0 */
    public final InterfaceC2853s m435J0() {
        AbstractC3016c abstractC3016c = this.f968a;
        if (this == abstractC3016c) {
            if (this.f975h) {
                throw new IllegalStateException("stream has already been operated upon or closed");
            }
            this.f975h = true;
            InterfaceC2853s interfaceC2853s = abstractC3016c.f974g;
            if (interfaceC2853s != null) {
                abstractC3016c.f974g = null;
                return interfaceC2853s;
            }
            throw new IllegalStateException("source already consumed or closed");
        }
        throw new IllegalStateException();
    }

    /* renamed from: K0 */
    abstract InterfaceC2853s mo409K0(AbstractC3151y2 abstractC3151y2, InterfaceC2839y interfaceC2839y, boolean z);

    @Override // p033j$.util.stream.InterfaceC3040g, java.lang.AutoCloseable
    public void close() {
        this.f975h = true;
        this.f974g = null;
        AbstractC3016c abstractC3016c = this.f968a;
        Runnable runnable = abstractC3016c.f977j;
        if (runnable != null) {
            abstractC3016c.f977j = null;
            runnable.run();
        }
    }

    @Override // p033j$.util.stream.InterfaceC3040g
    public final boolean isParallel() {
        return this.f968a.f978k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3151y2
    /* renamed from: n0 */
    public final void mo295n0(InterfaceC3080m3 interfaceC3080m3, InterfaceC2853s interfaceC2853s) {
        Objects.requireNonNull(interfaceC3080m3);
        if (EnumC3027d4.SHORT_CIRCUIT.m420d(this.f973f)) {
            mo294o0(interfaceC3080m3, interfaceC2853s);
            return;
        }
        interfaceC3080m3.mo297n(interfaceC2853s.getExactSizeIfKnown());
        interfaceC2853s.forEachRemaining(interfaceC3080m3);
        interfaceC3080m3.mo321m();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3151y2
    /* renamed from: o0 */
    public final void mo294o0(InterfaceC3080m3 interfaceC3080m3, InterfaceC2853s interfaceC2853s) {
        AbstractC3016c abstractC3016c = this;
        while (abstractC3016c.f972e > 0) {
            abstractC3016c = abstractC3016c.f969b;
        }
        interfaceC3080m3.mo297n(interfaceC2853s.getExactSizeIfKnown());
        abstractC3016c.mo411A0(interfaceC2853s, interfaceC3080m3);
        interfaceC3080m3.mo321m();
    }

    @Override // p033j$.util.stream.InterfaceC3040g
    public InterfaceC3040g onClose(Runnable runnable) {
        AbstractC3016c abstractC3016c = this.f968a;
        Runnable runnable2 = abstractC3016c.f977j;
        if (runnable2 != null) {
            runnable = new RunnableC2934M4(runnable2, runnable);
        }
        abstractC3016c.f977j = runnable;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3151y2
    /* renamed from: p0 */
    public final InterfaceC2859A1 mo293p0(InterfaceC2853s interfaceC2853s, boolean z, InterfaceC2827m interfaceC2827m) {
        if (this.f968a.f978k) {
            return mo408z0(this, interfaceC2853s, z, interfaceC2827m);
        }
        InterfaceC3114s1 mo289t0 = mo289t0(mo292q0(interfaceC2853s), interfaceC2827m);
        Objects.requireNonNull(mo289t0);
        mo295n0(mo287v0(mo289t0), interfaceC2853s);
        return mo289t0.mo323a();
    }

    public final InterfaceC3040g parallel() {
        this.f968a.f978k = true;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3151y2
    /* renamed from: q0 */
    public final long mo292q0(InterfaceC2853s interfaceC2853s) {
        if (EnumC3027d4.SIZED.m420d(this.f973f)) {
            return interfaceC2853s.getExactSizeIfKnown();
        }
        return -1L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3151y2
    /* renamed from: r0 */
    public final EnumC3033e4 mo291r0() {
        AbstractC3016c abstractC3016c = this;
        while (abstractC3016c.f972e > 0) {
            abstractC3016c = abstractC3016c.f969b;
        }
        return abstractC3016c.mo410B0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3151y2
    /* renamed from: s0 */
    public final int mo290s0() {
        return this.f973f;
    }

    public final InterfaceC3040g sequential() {
        this.f968a.f978k = false;
        return this;
    }

    public InterfaceC2853s spliterator() {
        if (this.f975h) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.f975h = true;
        AbstractC3016c abstractC3016c = this.f968a;
        if (this == abstractC3016c) {
            InterfaceC2853s interfaceC2853s = abstractC3016c.f974g;
            if (interfaceC2853s != null) {
                abstractC3016c.f974g = null;
                return interfaceC2853s;
            }
            throw new IllegalStateException("source already consumed or closed");
        }
        return mo409K0(this, new C3010b(this), abstractC3016c.f978k);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3151y2
    /* renamed from: u0 */
    public final InterfaceC3080m3 mo288u0(InterfaceC3080m3 interfaceC3080m3, InterfaceC2853s interfaceC2853s) {
        Objects.requireNonNull(interfaceC3080m3);
        mo295n0(mo287v0(interfaceC3080m3), interfaceC2853s);
        return interfaceC3080m3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3151y2
    /* renamed from: v0 */
    public final InterfaceC3080m3 mo287v0(InterfaceC3080m3 interfaceC3080m3) {
        Objects.requireNonNull(interfaceC3080m3);
        for (AbstractC3016c abstractC3016c = this; abstractC3016c.f972e > 0; abstractC3016c = abstractC3016c.f969b) {
            interfaceC3080m3 = abstractC3016c.mo283H0(abstractC3016c.f969b.f973f, interfaceC3080m3);
        }
        return interfaceC3080m3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3151y2
    /* renamed from: w0 */
    public final InterfaceC2853s mo286w0(InterfaceC2853s interfaceC2853s) {
        return this.f972e == 0 ? interfaceC2853s : mo409K0(this, new C3010b(interfaceC2853s), this.f968a.f978k);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: x0 */
    public final Object m434x0(InterfaceC2940N4 interfaceC2940N4) {
        if (this.f975h) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.f975h = true;
        return this.f968a.f978k ? interfaceC2940N4.mo361c(this, m436I0(interfaceC2940N4.mo362b())) : interfaceC2940N4.mo360d(this, m436I0(interfaceC2940N4.mo362b()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: y0 */
    public final InterfaceC2859A1 m433y0(InterfaceC2827m interfaceC2827m) {
        if (this.f975h) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.f975h = true;
        if (this.f968a.f978k && this.f969b != null && mo424G0()) {
            this.f972e = 0;
            AbstractC3016c abstractC3016c = this.f969b;
            return mo285E0(abstractC3016c, abstractC3016c.m436I0(0), interfaceC2827m);
        }
        return mo293p0(m436I0(0), true, interfaceC2827m);
    }

    /* renamed from: z0 */
    abstract InterfaceC2859A1 mo408z0(AbstractC3151y2 abstractC3151y2, InterfaceC2853s interfaceC2853s, boolean z, InterfaceC2827m interfaceC2827m);
}
