package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.InterfaceC2853s;
import p033j$.util.function.InterfaceC2827m;
import p033j$.util.function.InterfaceC2839y;
/* renamed from: j$.util.stream.c */
/* loaded from: classes2.dex */
abstract class AbstractC3016c extends AbstractC3151y2 implements InterfaceC3040g {

    /* renamed from: a */
    private final AbstractC3016c f971a;

    /* renamed from: b */
    private final AbstractC3016c f972b;

    /* renamed from: c */
    protected final int f973c;

    /* renamed from: d */
    private AbstractC3016c f974d;

    /* renamed from: e */
    private int f975e;

    /* renamed from: f */
    private int f976f;

    /* renamed from: g */
    private InterfaceC2853s f977g;

    /* renamed from: h */
    private boolean f978h;

    /* renamed from: i */
    private boolean f979i;

    /* renamed from: j */
    private Runnable f980j;

    /* renamed from: k */
    private boolean f981k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3016c(InterfaceC2853s interfaceC2853s, int i, boolean z) {
        this.f972b = null;
        this.f977g = interfaceC2853s;
        this.f971a = this;
        int i2 = EnumC3027d4.f995g & i;
        this.f973c = i2;
        this.f976f = (~(i2 << 1)) & EnumC3027d4.f1000l;
        this.f975e = 0;
        this.f981k = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3016c(AbstractC3016c abstractC3016c, int i) {
        if (abstractC3016c.f978h) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        abstractC3016c.f978h = true;
        abstractC3016c.f974d = this;
        this.f972b = abstractC3016c;
        this.f973c = EnumC3027d4.f996h & i;
        this.f976f = EnumC3027d4.m441a(i, abstractC3016c.f976f);
        AbstractC3016c abstractC3016c2 = abstractC3016c.f971a;
        this.f971a = abstractC3016c2;
        if (mo442G0()) {
            abstractC3016c2.f979i = true;
        }
        this.f975e = abstractC3016c.f975e + 1;
    }

    /* renamed from: I0 */
    private InterfaceC2853s m454I0(int i) {
        int i2;
        int i3;
        AbstractC3016c abstractC3016c = this.f971a;
        InterfaceC2853s interfaceC2853s = abstractC3016c.f977g;
        if (interfaceC2853s != null) {
            abstractC3016c.f977g = null;
            if (abstractC3016c.f981k && abstractC3016c.f979i) {
                AbstractC3016c abstractC3016c2 = abstractC3016c.f974d;
                int i4 = 1;
                while (abstractC3016c != this) {
                    int i5 = abstractC3016c2.f973c;
                    if (abstractC3016c2.mo442G0()) {
                        i4 = 0;
                        if (EnumC3027d4.SHORT_CIRCUIT.m438d(i5)) {
                            i5 &= ~EnumC3027d4.f1009u;
                        }
                        interfaceC2853s = abstractC3016c2.mo302F0(abstractC3016c, interfaceC2853s);
                        if (interfaceC2853s.hasCharacteristics(64)) {
                            i2 = i5 & (~EnumC3027d4.f1008t);
                            i3 = EnumC3027d4.f1007s;
                        } else {
                            i2 = i5 & (~EnumC3027d4.f1007s);
                            i3 = EnumC3027d4.f1008t;
                        }
                        i5 = i2 | i3;
                    }
                    abstractC3016c2.f975e = i4;
                    abstractC3016c2.f976f = EnumC3027d4.m441a(i5, abstractC3016c.f976f);
                    i4++;
                    AbstractC3016c abstractC3016c3 = abstractC3016c2;
                    abstractC3016c2 = abstractC3016c2.f974d;
                    abstractC3016c = abstractC3016c3;
                }
            }
            if (i != 0) {
                this.f976f = EnumC3027d4.m441a(i, this.f976f);
            }
            return interfaceC2853s;
        }
        throw new IllegalStateException("source already consumed or closed");
    }

    /* renamed from: A0 */
    abstract void mo429A0(InterfaceC2853s interfaceC2853s, InterfaceC3080m3 interfaceC3080m3);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: B0 */
    public abstract EnumC3033e4 mo428B0();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: C0 */
    public final boolean m456C0() {
        return EnumC3027d4.ORDERED.m438d(this.f976f);
    }

    /* renamed from: D0 */
    public /* synthetic */ InterfaceC2853s m455D0() {
        return m454I0(0);
    }

    /* renamed from: E0 */
    InterfaceC2859A1 mo303E0(AbstractC3151y2 abstractC3151y2, InterfaceC2853s interfaceC2853s, InterfaceC2827m interfaceC2827m) {
        throw new UnsupportedOperationException("Parallel evaluation is not supported");
    }

    /* renamed from: F0 */
    InterfaceC2853s mo302F0(AbstractC3151y2 abstractC3151y2, InterfaceC2853s interfaceC2853s) {
        return mo303E0(abstractC3151y2, interfaceC2853s, new InterfaceC2827m() { // from class: j$.util.stream.a
            @Override // p033j$.util.function.InterfaceC2827m
            public final Object apply(int i) {
                return new Object[i];
            }
        }).spliterator();
    }

    /* renamed from: G0 */
    abstract boolean mo442G0();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: H0 */
    public abstract InterfaceC3080m3 mo301H0(int i, InterfaceC3080m3 interfaceC3080m3);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: J0 */
    public final InterfaceC2853s m453J0() {
        AbstractC3016c abstractC3016c = this.f971a;
        if (this == abstractC3016c) {
            if (this.f978h) {
                throw new IllegalStateException("stream has already been operated upon or closed");
            }
            this.f978h = true;
            InterfaceC2853s interfaceC2853s = abstractC3016c.f977g;
            if (interfaceC2853s != null) {
                abstractC3016c.f977g = null;
                return interfaceC2853s;
            }
            throw new IllegalStateException("source already consumed or closed");
        }
        throw new IllegalStateException();
    }

    /* renamed from: K0 */
    abstract InterfaceC2853s mo427K0(AbstractC3151y2 abstractC3151y2, InterfaceC2839y interfaceC2839y, boolean z);

    @Override // p033j$.util.stream.InterfaceC3040g, java.lang.AutoCloseable
    public void close() {
        this.f978h = true;
        this.f977g = null;
        AbstractC3016c abstractC3016c = this.f971a;
        Runnable runnable = abstractC3016c.f980j;
        if (runnable != null) {
            abstractC3016c.f980j = null;
            runnable.run();
        }
    }

    @Override // p033j$.util.stream.InterfaceC3040g
    public final boolean isParallel() {
        return this.f971a.f981k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3151y2
    /* renamed from: n0 */
    public final void mo313n0(InterfaceC3080m3 interfaceC3080m3, InterfaceC2853s interfaceC2853s) {
        Objects.requireNonNull(interfaceC3080m3);
        if (EnumC3027d4.SHORT_CIRCUIT.m438d(this.f976f)) {
            mo312o0(interfaceC3080m3, interfaceC2853s);
            return;
        }
        interfaceC3080m3.mo315n(interfaceC2853s.getExactSizeIfKnown());
        interfaceC2853s.forEachRemaining(interfaceC3080m3);
        interfaceC3080m3.mo339m();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3151y2
    /* renamed from: o0 */
    public final void mo312o0(InterfaceC3080m3 interfaceC3080m3, InterfaceC2853s interfaceC2853s) {
        AbstractC3016c abstractC3016c = this;
        while (abstractC3016c.f975e > 0) {
            abstractC3016c = abstractC3016c.f972b;
        }
        interfaceC3080m3.mo315n(interfaceC2853s.getExactSizeIfKnown());
        abstractC3016c.mo429A0(interfaceC2853s, interfaceC3080m3);
        interfaceC3080m3.mo339m();
    }

    @Override // p033j$.util.stream.InterfaceC3040g
    public InterfaceC3040g onClose(Runnable runnable) {
        AbstractC3016c abstractC3016c = this.f971a;
        Runnable runnable2 = abstractC3016c.f980j;
        if (runnable2 != null) {
            runnable = new RunnableC2934M4(runnable2, runnable);
        }
        abstractC3016c.f980j = runnable;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3151y2
    /* renamed from: p0 */
    public final InterfaceC2859A1 mo311p0(InterfaceC2853s interfaceC2853s, boolean z, InterfaceC2827m interfaceC2827m) {
        if (this.f971a.f981k) {
            return mo426z0(this, interfaceC2853s, z, interfaceC2827m);
        }
        InterfaceC3114s1 mo307t0 = mo307t0(mo310q0(interfaceC2853s), interfaceC2827m);
        Objects.requireNonNull(mo307t0);
        mo313n0(mo305v0(mo307t0), interfaceC2853s);
        return mo307t0.mo341a();
    }

    public final InterfaceC3040g parallel() {
        this.f971a.f981k = true;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3151y2
    /* renamed from: q0 */
    public final long mo310q0(InterfaceC2853s interfaceC2853s) {
        if (EnumC3027d4.SIZED.m438d(this.f976f)) {
            return interfaceC2853s.getExactSizeIfKnown();
        }
        return -1L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3151y2
    /* renamed from: r0 */
    public final EnumC3033e4 mo309r0() {
        AbstractC3016c abstractC3016c = this;
        while (abstractC3016c.f975e > 0) {
            abstractC3016c = abstractC3016c.f972b;
        }
        return abstractC3016c.mo428B0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3151y2
    /* renamed from: s0 */
    public final int mo308s0() {
        return this.f976f;
    }

    public final InterfaceC3040g sequential() {
        this.f971a.f981k = false;
        return this;
    }

    public InterfaceC2853s spliterator() {
        if (this.f978h) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.f978h = true;
        AbstractC3016c abstractC3016c = this.f971a;
        if (this == abstractC3016c) {
            InterfaceC2853s interfaceC2853s = abstractC3016c.f977g;
            if (interfaceC2853s != null) {
                abstractC3016c.f977g = null;
                return interfaceC2853s;
            }
            throw new IllegalStateException("source already consumed or closed");
        }
        return mo427K0(this, new C3010b(this), abstractC3016c.f981k);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3151y2
    /* renamed from: u0 */
    public final InterfaceC3080m3 mo306u0(InterfaceC3080m3 interfaceC3080m3, InterfaceC2853s interfaceC2853s) {
        Objects.requireNonNull(interfaceC3080m3);
        mo313n0(mo305v0(interfaceC3080m3), interfaceC2853s);
        return interfaceC3080m3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3151y2
    /* renamed from: v0 */
    public final InterfaceC3080m3 mo305v0(InterfaceC3080m3 interfaceC3080m3) {
        Objects.requireNonNull(interfaceC3080m3);
        for (AbstractC3016c abstractC3016c = this; abstractC3016c.f975e > 0; abstractC3016c = abstractC3016c.f972b) {
            interfaceC3080m3 = abstractC3016c.mo301H0(abstractC3016c.f972b.f976f, interfaceC3080m3);
        }
        return interfaceC3080m3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3151y2
    /* renamed from: w0 */
    public final InterfaceC2853s mo304w0(InterfaceC2853s interfaceC2853s) {
        return this.f975e == 0 ? interfaceC2853s : mo427K0(this, new C3010b(interfaceC2853s), this.f971a.f981k);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: x0 */
    public final Object m452x0(InterfaceC2940N4 interfaceC2940N4) {
        if (this.f978h) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.f978h = true;
        return this.f971a.f981k ? interfaceC2940N4.mo379c(this, m454I0(interfaceC2940N4.mo380b())) : interfaceC2940N4.mo378d(this, m454I0(interfaceC2940N4.mo380b()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: y0 */
    public final InterfaceC2859A1 m451y0(InterfaceC2827m interfaceC2827m) {
        if (this.f978h) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.f978h = true;
        if (this.f971a.f981k && this.f972b != null && mo442G0()) {
            this.f975e = 0;
            AbstractC3016c abstractC3016c = this.f972b;
            return mo303E0(abstractC3016c, abstractC3016c.m454I0(0), interfaceC2827m);
        }
        return mo311p0(m454I0(0), true, interfaceC2827m);
    }

    /* renamed from: z0 */
    abstract InterfaceC2859A1 mo426z0(AbstractC3151y2 abstractC3151y2, InterfaceC2853s interfaceC2853s, boolean z, InterfaceC2827m interfaceC2827m);
}
