package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.InterfaceC2908s;
import p033j$.util.function.InterfaceC2882m;
import p033j$.util.function.InterfaceC2894y;
/* renamed from: j$.util.stream.c */
/* loaded from: classes2.dex */
abstract class AbstractC3071c extends AbstractC3206y2 implements InterfaceC3095g {

    /* renamed from: a */
    private final AbstractC3071c f972a;

    /* renamed from: b */
    private final AbstractC3071c f973b;

    /* renamed from: c */
    protected final int f974c;

    /* renamed from: d */
    private AbstractC3071c f975d;

    /* renamed from: e */
    private int f976e;

    /* renamed from: f */
    private int f977f;

    /* renamed from: g */
    private InterfaceC2908s f978g;

    /* renamed from: h */
    private boolean f979h;

    /* renamed from: i */
    private boolean f980i;

    /* renamed from: j */
    private Runnable f981j;

    /* renamed from: k */
    private boolean f982k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3071c(InterfaceC2908s interfaceC2908s, int i, boolean z) {
        this.f973b = null;
        this.f978g = interfaceC2908s;
        this.f972a = this;
        int i2 = EnumC3082d4.f996g & i;
        this.f974c = i2;
        this.f977f = (~(i2 << 1)) & EnumC3082d4.f1001l;
        this.f976e = 0;
        this.f982k = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3071c(AbstractC3071c abstractC3071c, int i) {
        if (abstractC3071c.f979h) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        abstractC3071c.f979h = true;
        abstractC3071c.f975d = this;
        this.f973b = abstractC3071c;
        this.f974c = EnumC3082d4.f997h & i;
        this.f977f = EnumC3082d4.m441a(i, abstractC3071c.f977f);
        AbstractC3071c abstractC3071c2 = abstractC3071c.f972a;
        this.f972a = abstractC3071c2;
        if (mo442G0()) {
            abstractC3071c2.f980i = true;
        }
        this.f976e = abstractC3071c.f976e + 1;
    }

    /* renamed from: I0 */
    private InterfaceC2908s m454I0(int i) {
        int i2;
        int i3;
        AbstractC3071c abstractC3071c = this.f972a;
        InterfaceC2908s interfaceC2908s = abstractC3071c.f978g;
        if (interfaceC2908s != null) {
            abstractC3071c.f978g = null;
            if (abstractC3071c.f982k && abstractC3071c.f980i) {
                AbstractC3071c abstractC3071c2 = abstractC3071c.f975d;
                int i4 = 1;
                while (abstractC3071c != this) {
                    int i5 = abstractC3071c2.f974c;
                    if (abstractC3071c2.mo442G0()) {
                        i4 = 0;
                        if (EnumC3082d4.SHORT_CIRCUIT.m438d(i5)) {
                            i5 &= ~EnumC3082d4.f1010u;
                        }
                        interfaceC2908s = abstractC3071c2.mo302F0(abstractC3071c, interfaceC2908s);
                        if (interfaceC2908s.hasCharacteristics(64)) {
                            i2 = i5 & (~EnumC3082d4.f1009t);
                            i3 = EnumC3082d4.f1008s;
                        } else {
                            i2 = i5 & (~EnumC3082d4.f1008s);
                            i3 = EnumC3082d4.f1009t;
                        }
                        i5 = i2 | i3;
                    }
                    abstractC3071c2.f976e = i4;
                    abstractC3071c2.f977f = EnumC3082d4.m441a(i5, abstractC3071c.f977f);
                    i4++;
                    AbstractC3071c abstractC3071c3 = abstractC3071c2;
                    abstractC3071c2 = abstractC3071c2.f975d;
                    abstractC3071c = abstractC3071c3;
                }
            }
            if (i != 0) {
                this.f977f = EnumC3082d4.m441a(i, this.f977f);
            }
            return interfaceC2908s;
        }
        throw new IllegalStateException("source already consumed or closed");
    }

    /* renamed from: A0 */
    abstract void mo429A0(InterfaceC2908s interfaceC2908s, InterfaceC3135m3 interfaceC3135m3);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: B0 */
    public abstract EnumC3088e4 mo428B0();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: C0 */
    public final boolean m456C0() {
        return EnumC3082d4.ORDERED.m438d(this.f977f);
    }

    /* renamed from: D0 */
    public /* synthetic */ InterfaceC2908s m455D0() {
        return m454I0(0);
    }

    /* renamed from: E0 */
    InterfaceC2914A1 mo303E0(AbstractC3206y2 abstractC3206y2, InterfaceC2908s interfaceC2908s, InterfaceC2882m interfaceC2882m) {
        throw new UnsupportedOperationException("Parallel evaluation is not supported");
    }

    /* renamed from: F0 */
    InterfaceC2908s mo302F0(AbstractC3206y2 abstractC3206y2, InterfaceC2908s interfaceC2908s) {
        return mo303E0(abstractC3206y2, interfaceC2908s, new InterfaceC2882m() { // from class: j$.util.stream.a
            @Override // p033j$.util.function.InterfaceC2882m
            public final Object apply(int i) {
                return new Object[i];
            }
        }).spliterator();
    }

    /* renamed from: G0 */
    abstract boolean mo442G0();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: H0 */
    public abstract InterfaceC3135m3 mo301H0(int i, InterfaceC3135m3 interfaceC3135m3);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: J0 */
    public final InterfaceC2908s m453J0() {
        AbstractC3071c abstractC3071c = this.f972a;
        if (this == abstractC3071c) {
            if (this.f979h) {
                throw new IllegalStateException("stream has already been operated upon or closed");
            }
            this.f979h = true;
            InterfaceC2908s interfaceC2908s = abstractC3071c.f978g;
            if (interfaceC2908s != null) {
                abstractC3071c.f978g = null;
                return interfaceC2908s;
            }
            throw new IllegalStateException("source already consumed or closed");
        }
        throw new IllegalStateException();
    }

    /* renamed from: K0 */
    abstract InterfaceC2908s mo427K0(AbstractC3206y2 abstractC3206y2, InterfaceC2894y interfaceC2894y, boolean z);

    @Override // p033j$.util.stream.InterfaceC3095g, java.lang.AutoCloseable
    public void close() {
        this.f979h = true;
        this.f978g = null;
        AbstractC3071c abstractC3071c = this.f972a;
        Runnable runnable = abstractC3071c.f981j;
        if (runnable != null) {
            abstractC3071c.f981j = null;
            runnable.run();
        }
    }

    @Override // p033j$.util.stream.InterfaceC3095g
    public final boolean isParallel() {
        return this.f972a.f982k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3206y2
    /* renamed from: n0 */
    public final void mo313n0(InterfaceC3135m3 interfaceC3135m3, InterfaceC2908s interfaceC2908s) {
        Objects.requireNonNull(interfaceC3135m3);
        if (EnumC3082d4.SHORT_CIRCUIT.m438d(this.f977f)) {
            mo312o0(interfaceC3135m3, interfaceC2908s);
            return;
        }
        interfaceC3135m3.mo315n(interfaceC2908s.getExactSizeIfKnown());
        interfaceC2908s.forEachRemaining(interfaceC3135m3);
        interfaceC3135m3.mo339m();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3206y2
    /* renamed from: o0 */
    public final void mo312o0(InterfaceC3135m3 interfaceC3135m3, InterfaceC2908s interfaceC2908s) {
        AbstractC3071c abstractC3071c = this;
        while (abstractC3071c.f976e > 0) {
            abstractC3071c = abstractC3071c.f973b;
        }
        interfaceC3135m3.mo315n(interfaceC2908s.getExactSizeIfKnown());
        abstractC3071c.mo429A0(interfaceC2908s, interfaceC3135m3);
        interfaceC3135m3.mo339m();
    }

    @Override // p033j$.util.stream.InterfaceC3095g
    public InterfaceC3095g onClose(Runnable runnable) {
        AbstractC3071c abstractC3071c = this.f972a;
        Runnable runnable2 = abstractC3071c.f981j;
        if (runnable2 != null) {
            runnable = new RunnableC2989M4(runnable2, runnable);
        }
        abstractC3071c.f981j = runnable;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3206y2
    /* renamed from: p0 */
    public final InterfaceC2914A1 mo311p0(InterfaceC2908s interfaceC2908s, boolean z, InterfaceC2882m interfaceC2882m) {
        if (this.f972a.f982k) {
            return mo426z0(this, interfaceC2908s, z, interfaceC2882m);
        }
        InterfaceC3169s1 mo307t0 = mo307t0(mo310q0(interfaceC2908s), interfaceC2882m);
        Objects.requireNonNull(mo307t0);
        mo313n0(mo305v0(mo307t0), interfaceC2908s);
        return mo307t0.mo341a();
    }

    public final InterfaceC3095g parallel() {
        this.f972a.f982k = true;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3206y2
    /* renamed from: q0 */
    public final long mo310q0(InterfaceC2908s interfaceC2908s) {
        if (EnumC3082d4.SIZED.m438d(this.f977f)) {
            return interfaceC2908s.getExactSizeIfKnown();
        }
        return -1L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3206y2
    /* renamed from: r0 */
    public final EnumC3088e4 mo309r0() {
        AbstractC3071c abstractC3071c = this;
        while (abstractC3071c.f976e > 0) {
            abstractC3071c = abstractC3071c.f973b;
        }
        return abstractC3071c.mo428B0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3206y2
    /* renamed from: s0 */
    public final int mo308s0() {
        return this.f977f;
    }

    public final InterfaceC3095g sequential() {
        this.f972a.f982k = false;
        return this;
    }

    public InterfaceC2908s spliterator() {
        if (this.f979h) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.f979h = true;
        AbstractC3071c abstractC3071c = this.f972a;
        if (this == abstractC3071c) {
            InterfaceC2908s interfaceC2908s = abstractC3071c.f978g;
            if (interfaceC2908s != null) {
                abstractC3071c.f978g = null;
                return interfaceC2908s;
            }
            throw new IllegalStateException("source already consumed or closed");
        }
        return mo427K0(this, new C3065b(this), abstractC3071c.f982k);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3206y2
    /* renamed from: u0 */
    public final InterfaceC3135m3 mo306u0(InterfaceC3135m3 interfaceC3135m3, InterfaceC2908s interfaceC2908s) {
        Objects.requireNonNull(interfaceC3135m3);
        mo313n0(mo305v0(interfaceC3135m3), interfaceC2908s);
        return interfaceC3135m3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3206y2
    /* renamed from: v0 */
    public final InterfaceC3135m3 mo305v0(InterfaceC3135m3 interfaceC3135m3) {
        Objects.requireNonNull(interfaceC3135m3);
        for (AbstractC3071c abstractC3071c = this; abstractC3071c.f976e > 0; abstractC3071c = abstractC3071c.f973b) {
            interfaceC3135m3 = abstractC3071c.mo301H0(abstractC3071c.f973b.f977f, interfaceC3135m3);
        }
        return interfaceC3135m3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3206y2
    /* renamed from: w0 */
    public final InterfaceC2908s mo304w0(InterfaceC2908s interfaceC2908s) {
        return this.f976e == 0 ? interfaceC2908s : mo427K0(this, new C3065b(interfaceC2908s), this.f972a.f982k);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: x0 */
    public final Object m452x0(InterfaceC2995N4 interfaceC2995N4) {
        if (this.f979h) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.f979h = true;
        return this.f972a.f982k ? interfaceC2995N4.mo379c(this, m454I0(interfaceC2995N4.mo380b())) : interfaceC2995N4.mo378d(this, m454I0(interfaceC2995N4.mo380b()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: y0 */
    public final InterfaceC2914A1 m451y0(InterfaceC2882m interfaceC2882m) {
        if (this.f979h) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.f979h = true;
        if (this.f972a.f982k && this.f973b != null && mo442G0()) {
            this.f976e = 0;
            AbstractC3071c abstractC3071c = this.f973b;
            return mo303E0(abstractC3071c, abstractC3071c.m454I0(0), interfaceC2882m);
        }
        return mo311p0(m454I0(0), true, interfaceC2882m);
    }

    /* renamed from: z0 */
    abstract InterfaceC2914A1 mo426z0(AbstractC3206y2 abstractC3206y2, InterfaceC2908s interfaceC2908s, boolean z, InterfaceC2882m interfaceC2882m);
}
