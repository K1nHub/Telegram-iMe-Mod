package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.InterfaceC2992s;
import p033j$.util.function.InterfaceC2966m;
import p033j$.util.function.InterfaceC2978y;
/* renamed from: j$.util.stream.c */
/* loaded from: classes2.dex */
abstract class AbstractC3155c extends AbstractC3290y2 implements InterfaceC3179g {

    /* renamed from: a */
    private final AbstractC3155c f981a;

    /* renamed from: b */
    private final AbstractC3155c f982b;

    /* renamed from: c */
    protected final int f983c;

    /* renamed from: d */
    private AbstractC3155c f984d;

    /* renamed from: e */
    private int f985e;

    /* renamed from: f */
    private int f986f;

    /* renamed from: g */
    private InterfaceC2992s f987g;

    /* renamed from: h */
    private boolean f988h;

    /* renamed from: i */
    private boolean f989i;

    /* renamed from: j */
    private Runnable f990j;

    /* renamed from: k */
    private boolean f991k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3155c(InterfaceC2992s interfaceC2992s, int i, boolean z) {
        this.f982b = null;
        this.f987g = interfaceC2992s;
        this.f981a = this;
        int i2 = EnumC3166d4.f1005g & i;
        this.f983c = i2;
        this.f986f = (~(i2 << 1)) & EnumC3166d4.f1010l;
        this.f985e = 0;
        this.f991k = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3155c(AbstractC3155c abstractC3155c, int i) {
        if (abstractC3155c.f988h) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        abstractC3155c.f988h = true;
        abstractC3155c.f984d = this;
        this.f982b = abstractC3155c;
        this.f983c = EnumC3166d4.f1006h & i;
        this.f986f = EnumC3166d4.m441a(i, abstractC3155c.f986f);
        AbstractC3155c abstractC3155c2 = abstractC3155c.f981a;
        this.f981a = abstractC3155c2;
        if (mo442G0()) {
            abstractC3155c2.f989i = true;
        }
        this.f985e = abstractC3155c.f985e + 1;
    }

    /* renamed from: I0 */
    private InterfaceC2992s m454I0(int i) {
        int i2;
        int i3;
        AbstractC3155c abstractC3155c = this.f981a;
        InterfaceC2992s interfaceC2992s = abstractC3155c.f987g;
        if (interfaceC2992s != null) {
            abstractC3155c.f987g = null;
            if (abstractC3155c.f991k && abstractC3155c.f989i) {
                AbstractC3155c abstractC3155c2 = abstractC3155c.f984d;
                int i4 = 1;
                while (abstractC3155c != this) {
                    int i5 = abstractC3155c2.f983c;
                    if (abstractC3155c2.mo442G0()) {
                        i4 = 0;
                        if (EnumC3166d4.SHORT_CIRCUIT.m438d(i5)) {
                            i5 &= ~EnumC3166d4.f1019u;
                        }
                        interfaceC2992s = abstractC3155c2.mo302F0(abstractC3155c, interfaceC2992s);
                        if (interfaceC2992s.hasCharacteristics(64)) {
                            i2 = i5 & (~EnumC3166d4.f1018t);
                            i3 = EnumC3166d4.f1017s;
                        } else {
                            i2 = i5 & (~EnumC3166d4.f1017s);
                            i3 = EnumC3166d4.f1018t;
                        }
                        i5 = i2 | i3;
                    }
                    abstractC3155c2.f985e = i4;
                    abstractC3155c2.f986f = EnumC3166d4.m441a(i5, abstractC3155c.f986f);
                    i4++;
                    AbstractC3155c abstractC3155c3 = abstractC3155c2;
                    abstractC3155c2 = abstractC3155c2.f984d;
                    abstractC3155c = abstractC3155c3;
                }
            }
            if (i != 0) {
                this.f986f = EnumC3166d4.m441a(i, this.f986f);
            }
            return interfaceC2992s;
        }
        throw new IllegalStateException("source already consumed or closed");
    }

    /* renamed from: A0 */
    abstract void mo429A0(InterfaceC2992s interfaceC2992s, InterfaceC3219m3 interfaceC3219m3);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: B0 */
    public abstract EnumC3172e4 mo428B0();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: C0 */
    public final boolean m456C0() {
        return EnumC3166d4.ORDERED.m438d(this.f986f);
    }

    /* renamed from: D0 */
    public /* synthetic */ InterfaceC2992s m455D0() {
        return m454I0(0);
    }

    /* renamed from: E0 */
    InterfaceC2998A1 mo303E0(AbstractC3290y2 abstractC3290y2, InterfaceC2992s interfaceC2992s, InterfaceC2966m interfaceC2966m) {
        throw new UnsupportedOperationException("Parallel evaluation is not supported");
    }

    /* renamed from: F0 */
    InterfaceC2992s mo302F0(AbstractC3290y2 abstractC3290y2, InterfaceC2992s interfaceC2992s) {
        return mo303E0(abstractC3290y2, interfaceC2992s, new InterfaceC2966m() { // from class: j$.util.stream.a
            @Override // p033j$.util.function.InterfaceC2966m
            public final Object apply(int i) {
                return new Object[i];
            }
        }).spliterator();
    }

    /* renamed from: G0 */
    abstract boolean mo442G0();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: H0 */
    public abstract InterfaceC3219m3 mo301H0(int i, InterfaceC3219m3 interfaceC3219m3);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: J0 */
    public final InterfaceC2992s m453J0() {
        AbstractC3155c abstractC3155c = this.f981a;
        if (this == abstractC3155c) {
            if (this.f988h) {
                throw new IllegalStateException("stream has already been operated upon or closed");
            }
            this.f988h = true;
            InterfaceC2992s interfaceC2992s = abstractC3155c.f987g;
            if (interfaceC2992s != null) {
                abstractC3155c.f987g = null;
                return interfaceC2992s;
            }
            throw new IllegalStateException("source already consumed or closed");
        }
        throw new IllegalStateException();
    }

    /* renamed from: K0 */
    abstract InterfaceC2992s mo427K0(AbstractC3290y2 abstractC3290y2, InterfaceC2978y interfaceC2978y, boolean z);

    @Override // p033j$.util.stream.InterfaceC3179g, java.lang.AutoCloseable
    public void close() {
        this.f988h = true;
        this.f987g = null;
        AbstractC3155c abstractC3155c = this.f981a;
        Runnable runnable = abstractC3155c.f990j;
        if (runnable != null) {
            abstractC3155c.f990j = null;
            runnable.run();
        }
    }

    @Override // p033j$.util.stream.InterfaceC3179g
    public final boolean isParallel() {
        return this.f981a.f991k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3290y2
    /* renamed from: n0 */
    public final void mo313n0(InterfaceC3219m3 interfaceC3219m3, InterfaceC2992s interfaceC2992s) {
        Objects.requireNonNull(interfaceC3219m3);
        if (EnumC3166d4.SHORT_CIRCUIT.m438d(this.f986f)) {
            mo312o0(interfaceC3219m3, interfaceC2992s);
            return;
        }
        interfaceC3219m3.mo315n(interfaceC2992s.getExactSizeIfKnown());
        interfaceC2992s.forEachRemaining(interfaceC3219m3);
        interfaceC3219m3.mo339m();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3290y2
    /* renamed from: o0 */
    public final void mo312o0(InterfaceC3219m3 interfaceC3219m3, InterfaceC2992s interfaceC2992s) {
        AbstractC3155c abstractC3155c = this;
        while (abstractC3155c.f985e > 0) {
            abstractC3155c = abstractC3155c.f982b;
        }
        interfaceC3219m3.mo315n(interfaceC2992s.getExactSizeIfKnown());
        abstractC3155c.mo429A0(interfaceC2992s, interfaceC3219m3);
        interfaceC3219m3.mo339m();
    }

    @Override // p033j$.util.stream.InterfaceC3179g
    public InterfaceC3179g onClose(Runnable runnable) {
        AbstractC3155c abstractC3155c = this.f981a;
        Runnable runnable2 = abstractC3155c.f990j;
        if (runnable2 != null) {
            runnable = new RunnableC3073M4(runnable2, runnable);
        }
        abstractC3155c.f990j = runnable;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3290y2
    /* renamed from: p0 */
    public final InterfaceC2998A1 mo311p0(InterfaceC2992s interfaceC2992s, boolean z, InterfaceC2966m interfaceC2966m) {
        if (this.f981a.f991k) {
            return mo426z0(this, interfaceC2992s, z, interfaceC2966m);
        }
        InterfaceC3253s1 mo307t0 = mo307t0(mo310q0(interfaceC2992s), interfaceC2966m);
        Objects.requireNonNull(mo307t0);
        mo313n0(mo305v0(mo307t0), interfaceC2992s);
        return mo307t0.mo341a();
    }

    public final InterfaceC3179g parallel() {
        this.f981a.f991k = true;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3290y2
    /* renamed from: q0 */
    public final long mo310q0(InterfaceC2992s interfaceC2992s) {
        if (EnumC3166d4.SIZED.m438d(this.f986f)) {
            return interfaceC2992s.getExactSizeIfKnown();
        }
        return -1L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3290y2
    /* renamed from: r0 */
    public final EnumC3172e4 mo309r0() {
        AbstractC3155c abstractC3155c = this;
        while (abstractC3155c.f985e > 0) {
            abstractC3155c = abstractC3155c.f982b;
        }
        return abstractC3155c.mo428B0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3290y2
    /* renamed from: s0 */
    public final int mo308s0() {
        return this.f986f;
    }

    public final InterfaceC3179g sequential() {
        this.f981a.f991k = false;
        return this;
    }

    public InterfaceC2992s spliterator() {
        if (this.f988h) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.f988h = true;
        AbstractC3155c abstractC3155c = this.f981a;
        if (this == abstractC3155c) {
            InterfaceC2992s interfaceC2992s = abstractC3155c.f987g;
            if (interfaceC2992s != null) {
                abstractC3155c.f987g = null;
                return interfaceC2992s;
            }
            throw new IllegalStateException("source already consumed or closed");
        }
        return mo427K0(this, new C3149b(this), abstractC3155c.f991k);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3290y2
    /* renamed from: u0 */
    public final InterfaceC3219m3 mo306u0(InterfaceC3219m3 interfaceC3219m3, InterfaceC2992s interfaceC2992s) {
        Objects.requireNonNull(interfaceC3219m3);
        mo313n0(mo305v0(interfaceC3219m3), interfaceC2992s);
        return interfaceC3219m3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3290y2
    /* renamed from: v0 */
    public final InterfaceC3219m3 mo305v0(InterfaceC3219m3 interfaceC3219m3) {
        Objects.requireNonNull(interfaceC3219m3);
        for (AbstractC3155c abstractC3155c = this; abstractC3155c.f985e > 0; abstractC3155c = abstractC3155c.f982b) {
            interfaceC3219m3 = abstractC3155c.mo301H0(abstractC3155c.f982b.f986f, interfaceC3219m3);
        }
        return interfaceC3219m3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3290y2
    /* renamed from: w0 */
    public final InterfaceC2992s mo304w0(InterfaceC2992s interfaceC2992s) {
        return this.f985e == 0 ? interfaceC2992s : mo427K0(this, new C3149b(interfaceC2992s), this.f981a.f991k);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: x0 */
    public final Object m452x0(InterfaceC3079N4 interfaceC3079N4) {
        if (this.f988h) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.f988h = true;
        return this.f981a.f991k ? interfaceC3079N4.mo379c(this, m454I0(interfaceC3079N4.mo380b())) : interfaceC3079N4.mo378d(this, m454I0(interfaceC3079N4.mo380b()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: y0 */
    public final InterfaceC2998A1 m451y0(InterfaceC2966m interfaceC2966m) {
        if (this.f988h) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.f988h = true;
        if (this.f981a.f991k && this.f982b != null && mo442G0()) {
            this.f985e = 0;
            AbstractC3155c abstractC3155c = this.f982b;
            return mo303E0(abstractC3155c, abstractC3155c.m454I0(0), interfaceC2966m);
        }
        return mo311p0(m454I0(0), true, interfaceC2966m);
    }

    /* renamed from: z0 */
    abstract InterfaceC2998A1 mo426z0(AbstractC3290y2 abstractC3290y2, InterfaceC2992s interfaceC2992s, boolean z, InterfaceC2966m interfaceC2966m);
}
