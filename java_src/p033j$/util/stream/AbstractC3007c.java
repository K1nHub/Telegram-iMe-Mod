package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.function.IntFunction;
import p033j$.util.function.InterfaceC2833x;
/* renamed from: j$.util.stream.c */
/* loaded from: classes2.dex */
abstract class AbstractC3007c extends AbstractC3142y2 implements InterfaceC3031g {

    /* renamed from: a */
    private final AbstractC3007c f1021a;

    /* renamed from: b */
    private final AbstractC3007c f1022b;

    /* renamed from: c */
    protected final int f1023c;

    /* renamed from: d */
    private AbstractC3007c f1024d;

    /* renamed from: e */
    private int f1025e;

    /* renamed from: f */
    private int f1026f;

    /* renamed from: g */
    private Spliterator f1027g;

    /* renamed from: h */
    private boolean f1028h;

    /* renamed from: i */
    private boolean f1029i;

    /* renamed from: j */
    private Runnable f1030j;

    /* renamed from: k */
    private boolean f1031k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3007c(Spliterator spliterator, int i, boolean z) {
        this.f1022b = null;
        this.f1027g = spliterator;
        this.f1021a = this;
        int i2 = EnumC3018d4.f1045g & i;
        this.f1023c = i2;
        this.f1026f = (~(i2 << 1)) & EnumC3018d4.f1050l;
        this.f1025e = 0;
        this.f1031k = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3007c(AbstractC3007c abstractC3007c, int i) {
        if (abstractC3007c.f1028h) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        abstractC3007c.f1028h = true;
        abstractC3007c.f1024d = this;
        this.f1022b = abstractC3007c;
        this.f1023c = EnumC3018d4.f1046h & i;
        this.f1026f = EnumC3018d4.m490a(i, abstractC3007c.f1026f);
        AbstractC3007c abstractC3007c2 = abstractC3007c.f1021a;
        this.f1021a = abstractC3007c2;
        if (mo491F0()) {
            abstractC3007c2.f1029i = true;
        }
        this.f1025e = abstractC3007c.f1025e + 1;
    }

    /* renamed from: H0 */
    private Spliterator m503H0(int i) {
        int i2;
        int i3;
        AbstractC3007c abstractC3007c = this.f1021a;
        Spliterator spliterator = abstractC3007c.f1027g;
        if (spliterator != null) {
            abstractC3007c.f1027g = null;
            if (abstractC3007c.f1031k && abstractC3007c.f1029i) {
                AbstractC3007c abstractC3007c2 = abstractC3007c.f1024d;
                int i4 = 1;
                while (abstractC3007c != this) {
                    int i5 = abstractC3007c2.f1023c;
                    if (abstractC3007c2.mo491F0()) {
                        i4 = 0;
                        if (EnumC3018d4.SHORT_CIRCUIT.m487d(i5)) {
                            i5 &= ~EnumC3018d4.f1059u;
                        }
                        spliterator = abstractC3007c2.mo351E0(abstractC3007c, spliterator);
                        if (spliterator.hasCharacteristics(64)) {
                            i2 = i5 & (~EnumC3018d4.f1058t);
                            i3 = EnumC3018d4.f1057s;
                        } else {
                            i2 = i5 & (~EnumC3018d4.f1057s);
                            i3 = EnumC3018d4.f1058t;
                        }
                        i5 = i2 | i3;
                    }
                    abstractC3007c2.f1025e = i4;
                    abstractC3007c2.f1026f = EnumC3018d4.m490a(i5, abstractC3007c.f1026f);
                    i4++;
                    AbstractC3007c abstractC3007c3 = abstractC3007c2;
                    abstractC3007c2 = abstractC3007c2.f1024d;
                    abstractC3007c = abstractC3007c3;
                }
            }
            if (i != 0) {
                this.f1026f = EnumC3018d4.m490a(i, this.f1026f);
            }
            return spliterator;
        }
        throw new IllegalStateException("source already consumed or closed");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: A0 */
    public abstract EnumC3024e4 mo478A0();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: B0 */
    public final boolean m505B0() {
        return EnumC3018d4.ORDERED.m487d(this.f1026f);
    }

    /* renamed from: C0 */
    public /* synthetic */ Spliterator m504C0() {
        return m503H0(0);
    }

    /* renamed from: D0 */
    InterfaceC2850A1 mo352D0(AbstractC3142y2 abstractC3142y2, Spliterator spliterator, IntFunction intFunction) {
        throw new UnsupportedOperationException("Parallel evaluation is not supported");
    }

    /* renamed from: E0 */
    Spliterator mo351E0(AbstractC3142y2 abstractC3142y2, Spliterator spliterator) {
        return mo352D0(abstractC3142y2, spliterator, new IntFunction() { // from class: j$.util.stream.a
            @Override // p033j$.util.function.IntFunction
            public final Object apply(int i) {
                return new Object[i];
            }
        }).spliterator();
    }

    /* renamed from: F0 */
    abstract boolean mo491F0();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: G0 */
    public abstract InterfaceC3071m3 mo350G0(int i, InterfaceC3071m3 interfaceC3071m3);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: I0 */
    public final Spliterator m502I0() {
        AbstractC3007c abstractC3007c = this.f1021a;
        if (this == abstractC3007c) {
            if (this.f1028h) {
                throw new IllegalStateException("stream has already been operated upon or closed");
            }
            this.f1028h = true;
            Spliterator spliterator = abstractC3007c.f1027g;
            if (spliterator != null) {
                abstractC3007c.f1027g = null;
                return spliterator;
            }
            throw new IllegalStateException("source already consumed or closed");
        }
        throw new IllegalStateException();
    }

    /* renamed from: J0 */
    abstract Spliterator mo477J0(AbstractC3142y2 abstractC3142y2, InterfaceC2833x interfaceC2833x, boolean z);

    @Override // p033j$.util.stream.InterfaceC3031g, java.lang.AutoCloseable
    public void close() {
        this.f1028h = true;
        this.f1027g = null;
        AbstractC3007c abstractC3007c = this.f1021a;
        Runnable runnable = abstractC3007c.f1030j;
        if (runnable != null) {
            abstractC3007c.f1030j = null;
            runnable.run();
        }
    }

    @Override // p033j$.util.stream.InterfaceC3031g
    public final boolean isParallel() {
        return this.f1021a.f1031k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3142y2
    /* renamed from: m0 */
    public final void mo362m0(InterfaceC3071m3 interfaceC3071m3, Spliterator spliterator) {
        Objects.requireNonNull(interfaceC3071m3);
        if (EnumC3018d4.SHORT_CIRCUIT.m487d(this.f1026f)) {
            mo361n0(interfaceC3071m3, spliterator);
            return;
        }
        interfaceC3071m3.mo364m(spliterator.getExactSizeIfKnown());
        spliterator.forEachRemaining(interfaceC3071m3);
        interfaceC3071m3.mo388l();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3142y2
    /* renamed from: n0 */
    public final void mo361n0(InterfaceC3071m3 interfaceC3071m3, Spliterator spliterator) {
        AbstractC3007c abstractC3007c = this;
        while (abstractC3007c.f1025e > 0) {
            abstractC3007c = abstractC3007c.f1022b;
        }
        interfaceC3071m3.mo364m(spliterator.getExactSizeIfKnown());
        abstractC3007c.mo475z0(spliterator, interfaceC3071m3);
        interfaceC3071m3.mo388l();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3142y2
    /* renamed from: o0 */
    public final InterfaceC2850A1 mo360o0(Spliterator spliterator, boolean z, IntFunction intFunction) {
        if (this.f1021a.f1031k) {
            return mo476y0(this, spliterator, z, intFunction);
        }
        InterfaceC3105s1 mo356s0 = mo356s0(mo359p0(spliterator), intFunction);
        Objects.requireNonNull(mo356s0);
        mo362m0(mo354u0(mo356s0), spliterator);
        return mo356s0.mo390a();
    }

    @Override // p033j$.util.stream.InterfaceC3031g
    public InterfaceC3031g onClose(Runnable runnable) {
        AbstractC3007c abstractC3007c = this.f1021a;
        Runnable runnable2 = abstractC3007c.f1030j;
        if (runnable2 != null) {
            runnable = new RunnableC2925M4(runnable2, runnable);
        }
        abstractC3007c.f1030j = runnable;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3142y2
    /* renamed from: p0 */
    public final long mo359p0(Spliterator spliterator) {
        if (EnumC3018d4.SIZED.m487d(this.f1026f)) {
            return spliterator.getExactSizeIfKnown();
        }
        return -1L;
    }

    public final InterfaceC3031g parallel() {
        this.f1021a.f1031k = true;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3142y2
    /* renamed from: q0 */
    public final EnumC3024e4 mo358q0() {
        AbstractC3007c abstractC3007c = this;
        while (abstractC3007c.f1025e > 0) {
            abstractC3007c = abstractC3007c.f1022b;
        }
        return abstractC3007c.mo478A0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3142y2
    /* renamed from: r0 */
    public final int mo357r0() {
        return this.f1026f;
    }

    public final InterfaceC3031g sequential() {
        this.f1021a.f1031k = false;
        return this;
    }

    public Spliterator spliterator() {
        if (this.f1028h) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.f1028h = true;
        AbstractC3007c abstractC3007c = this.f1021a;
        if (this == abstractC3007c) {
            Spliterator spliterator = abstractC3007c.f1027g;
            if (spliterator != null) {
                abstractC3007c.f1027g = null;
                return spliterator;
            }
            throw new IllegalStateException("source already consumed or closed");
        }
        return mo477J0(this, new C3001b(this), abstractC3007c.f1031k);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3142y2
    /* renamed from: t0 */
    public final InterfaceC3071m3 mo355t0(InterfaceC3071m3 interfaceC3071m3, Spliterator spliterator) {
        Objects.requireNonNull(interfaceC3071m3);
        mo362m0(mo354u0(interfaceC3071m3), spliterator);
        return interfaceC3071m3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3142y2
    /* renamed from: u0 */
    public final InterfaceC3071m3 mo354u0(InterfaceC3071m3 interfaceC3071m3) {
        Objects.requireNonNull(interfaceC3071m3);
        for (AbstractC3007c abstractC3007c = this; abstractC3007c.f1025e > 0; abstractC3007c = abstractC3007c.f1022b) {
            interfaceC3071m3 = abstractC3007c.mo350G0(abstractC3007c.f1022b.f1026f, interfaceC3071m3);
        }
        return interfaceC3071m3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3142y2
    /* renamed from: v0 */
    public final Spliterator mo353v0(Spliterator spliterator) {
        return this.f1025e == 0 ? spliterator : mo477J0(this, new C3001b(spliterator), this.f1021a.f1031k);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: w0 */
    public final Object m501w0(InterfaceC2931N4 interfaceC2931N4) {
        if (this.f1028h) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.f1028h = true;
        return this.f1021a.f1031k ? interfaceC2931N4.mo428c(this, m503H0(interfaceC2931N4.mo429b())) : interfaceC2931N4.mo427d(this, m503H0(interfaceC2931N4.mo429b()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: x0 */
    public final InterfaceC2850A1 m500x0(IntFunction intFunction) {
        if (this.f1028h) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.f1028h = true;
        if (this.f1021a.f1031k && this.f1022b != null && mo491F0()) {
            this.f1025e = 0;
            AbstractC3007c abstractC3007c = this.f1022b;
            return mo352D0(abstractC3007c, abstractC3007c.m503H0(0), intFunction);
        }
        return mo360o0(m503H0(0), true, intFunction);
    }

    /* renamed from: y0 */
    abstract InterfaceC2850A1 mo476y0(AbstractC3142y2 abstractC3142y2, Spliterator spliterator, boolean z, IntFunction intFunction);

    /* renamed from: z0 */
    abstract void mo475z0(Spliterator spliterator, InterfaceC3071m3 interfaceC3071m3);
}
