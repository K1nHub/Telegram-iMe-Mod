package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.function.IntFunction;
import p033j$.util.function.InterfaceC2834x;
/* renamed from: j$.util.stream.c */
/* loaded from: classes2.dex */
abstract class AbstractC3008c extends AbstractC3143y2 implements InterfaceC3032g {

    /* renamed from: a */
    private final AbstractC3008c f1021a;

    /* renamed from: b */
    private final AbstractC3008c f1022b;

    /* renamed from: c */
    protected final int f1023c;

    /* renamed from: d */
    private AbstractC3008c f1024d;

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
    public AbstractC3008c(Spliterator spliterator, int i, boolean z) {
        this.f1022b = null;
        this.f1027g = spliterator;
        this.f1021a = this;
        int i2 = EnumC3019d4.f1045g & i;
        this.f1023c = i2;
        this.f1026f = (~(i2 << 1)) & EnumC3019d4.f1050l;
        this.f1025e = 0;
        this.f1031k = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3008c(AbstractC3008c abstractC3008c, int i) {
        if (abstractC3008c.f1028h) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        abstractC3008c.f1028h = true;
        abstractC3008c.f1024d = this;
        this.f1022b = abstractC3008c;
        this.f1023c = EnumC3019d4.f1046h & i;
        this.f1026f = EnumC3019d4.m486a(i, abstractC3008c.f1026f);
        AbstractC3008c abstractC3008c2 = abstractC3008c.f1021a;
        this.f1021a = abstractC3008c2;
        if (mo487F0()) {
            abstractC3008c2.f1029i = true;
        }
        this.f1025e = abstractC3008c.f1025e + 1;
    }

    /* renamed from: H0 */
    private Spliterator m499H0(int i) {
        int i2;
        int i3;
        AbstractC3008c abstractC3008c = this.f1021a;
        Spliterator spliterator = abstractC3008c.f1027g;
        if (spliterator != null) {
            abstractC3008c.f1027g = null;
            if (abstractC3008c.f1031k && abstractC3008c.f1029i) {
                AbstractC3008c abstractC3008c2 = abstractC3008c.f1024d;
                int i4 = 1;
                while (abstractC3008c != this) {
                    int i5 = abstractC3008c2.f1023c;
                    if (abstractC3008c2.mo487F0()) {
                        i4 = 0;
                        if (EnumC3019d4.SHORT_CIRCUIT.m483d(i5)) {
                            i5 &= ~EnumC3019d4.f1059u;
                        }
                        spliterator = abstractC3008c2.mo347E0(abstractC3008c, spliterator);
                        if (spliterator.hasCharacteristics(64)) {
                            i2 = i5 & (~EnumC3019d4.f1058t);
                            i3 = EnumC3019d4.f1057s;
                        } else {
                            i2 = i5 & (~EnumC3019d4.f1057s);
                            i3 = EnumC3019d4.f1058t;
                        }
                        i5 = i2 | i3;
                    }
                    abstractC3008c2.f1025e = i4;
                    abstractC3008c2.f1026f = EnumC3019d4.m486a(i5, abstractC3008c.f1026f);
                    i4++;
                    AbstractC3008c abstractC3008c3 = abstractC3008c2;
                    abstractC3008c2 = abstractC3008c2.f1024d;
                    abstractC3008c = abstractC3008c3;
                }
            }
            if (i != 0) {
                this.f1026f = EnumC3019d4.m486a(i, this.f1026f);
            }
            return spliterator;
        }
        throw new IllegalStateException("source already consumed or closed");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: A0 */
    public abstract EnumC3025e4 mo474A0();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: B0 */
    public final boolean m501B0() {
        return EnumC3019d4.ORDERED.m483d(this.f1026f);
    }

    /* renamed from: C0 */
    public /* synthetic */ Spliterator m500C0() {
        return m499H0(0);
    }

    /* renamed from: D0 */
    InterfaceC2851A1 mo348D0(AbstractC3143y2 abstractC3143y2, Spliterator spliterator, IntFunction intFunction) {
        throw new UnsupportedOperationException("Parallel evaluation is not supported");
    }

    /* renamed from: E0 */
    Spliterator mo347E0(AbstractC3143y2 abstractC3143y2, Spliterator spliterator) {
        return mo348D0(abstractC3143y2, spliterator, new IntFunction() { // from class: j$.util.stream.a
            @Override // p033j$.util.function.IntFunction
            public final Object apply(int i) {
                return new Object[i];
            }
        }).spliterator();
    }

    /* renamed from: F0 */
    abstract boolean mo487F0();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: G0 */
    public abstract InterfaceC3072m3 mo346G0(int i, InterfaceC3072m3 interfaceC3072m3);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: I0 */
    public final Spliterator m498I0() {
        AbstractC3008c abstractC3008c = this.f1021a;
        if (this == abstractC3008c) {
            if (this.f1028h) {
                throw new IllegalStateException("stream has already been operated upon or closed");
            }
            this.f1028h = true;
            Spliterator spliterator = abstractC3008c.f1027g;
            if (spliterator != null) {
                abstractC3008c.f1027g = null;
                return spliterator;
            }
            throw new IllegalStateException("source already consumed or closed");
        }
        throw new IllegalStateException();
    }

    /* renamed from: J0 */
    abstract Spliterator mo473J0(AbstractC3143y2 abstractC3143y2, InterfaceC2834x interfaceC2834x, boolean z);

    @Override // p033j$.util.stream.InterfaceC3032g, java.lang.AutoCloseable
    public void close() {
        this.f1028h = true;
        this.f1027g = null;
        AbstractC3008c abstractC3008c = this.f1021a;
        Runnable runnable = abstractC3008c.f1030j;
        if (runnable != null) {
            abstractC3008c.f1030j = null;
            runnable.run();
        }
    }

    @Override // p033j$.util.stream.InterfaceC3032g
    public final boolean isParallel() {
        return this.f1021a.f1031k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3143y2
    /* renamed from: m0 */
    public final void mo358m0(InterfaceC3072m3 interfaceC3072m3, Spliterator spliterator) {
        Objects.requireNonNull(interfaceC3072m3);
        if (EnumC3019d4.SHORT_CIRCUIT.m483d(this.f1026f)) {
            mo357n0(interfaceC3072m3, spliterator);
            return;
        }
        interfaceC3072m3.mo360m(spliterator.getExactSizeIfKnown());
        spliterator.forEachRemaining(interfaceC3072m3);
        interfaceC3072m3.mo384l();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3143y2
    /* renamed from: n0 */
    public final void mo357n0(InterfaceC3072m3 interfaceC3072m3, Spliterator spliterator) {
        AbstractC3008c abstractC3008c = this;
        while (abstractC3008c.f1025e > 0) {
            abstractC3008c = abstractC3008c.f1022b;
        }
        interfaceC3072m3.mo360m(spliterator.getExactSizeIfKnown());
        abstractC3008c.mo471z0(spliterator, interfaceC3072m3);
        interfaceC3072m3.mo384l();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3143y2
    /* renamed from: o0 */
    public final InterfaceC2851A1 mo356o0(Spliterator spliterator, boolean z, IntFunction intFunction) {
        if (this.f1021a.f1031k) {
            return mo472y0(this, spliterator, z, intFunction);
        }
        InterfaceC3106s1 mo352s0 = mo352s0(mo355p0(spliterator), intFunction);
        Objects.requireNonNull(mo352s0);
        mo358m0(mo350u0(mo352s0), spliterator);
        return mo352s0.mo386a();
    }

    @Override // p033j$.util.stream.InterfaceC3032g
    public InterfaceC3032g onClose(Runnable runnable) {
        AbstractC3008c abstractC3008c = this.f1021a;
        Runnable runnable2 = abstractC3008c.f1030j;
        if (runnable2 != null) {
            runnable = new RunnableC2926M4(runnable2, runnable);
        }
        abstractC3008c.f1030j = runnable;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3143y2
    /* renamed from: p0 */
    public final long mo355p0(Spliterator spliterator) {
        if (EnumC3019d4.SIZED.m483d(this.f1026f)) {
            return spliterator.getExactSizeIfKnown();
        }
        return -1L;
    }

    public final InterfaceC3032g parallel() {
        this.f1021a.f1031k = true;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3143y2
    /* renamed from: q0 */
    public final EnumC3025e4 mo354q0() {
        AbstractC3008c abstractC3008c = this;
        while (abstractC3008c.f1025e > 0) {
            abstractC3008c = abstractC3008c.f1022b;
        }
        return abstractC3008c.mo474A0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3143y2
    /* renamed from: r0 */
    public final int mo353r0() {
        return this.f1026f;
    }

    public final InterfaceC3032g sequential() {
        this.f1021a.f1031k = false;
        return this;
    }

    public Spliterator spliterator() {
        if (this.f1028h) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.f1028h = true;
        AbstractC3008c abstractC3008c = this.f1021a;
        if (this == abstractC3008c) {
            Spliterator spliterator = abstractC3008c.f1027g;
            if (spliterator != null) {
                abstractC3008c.f1027g = null;
                return spliterator;
            }
            throw new IllegalStateException("source already consumed or closed");
        }
        return mo473J0(this, new C3002b(this), abstractC3008c.f1031k);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3143y2
    /* renamed from: t0 */
    public final InterfaceC3072m3 mo351t0(InterfaceC3072m3 interfaceC3072m3, Spliterator spliterator) {
        Objects.requireNonNull(interfaceC3072m3);
        mo358m0(mo350u0(interfaceC3072m3), spliterator);
        return interfaceC3072m3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3143y2
    /* renamed from: u0 */
    public final InterfaceC3072m3 mo350u0(InterfaceC3072m3 interfaceC3072m3) {
        Objects.requireNonNull(interfaceC3072m3);
        for (AbstractC3008c abstractC3008c = this; abstractC3008c.f1025e > 0; abstractC3008c = abstractC3008c.f1022b) {
            interfaceC3072m3 = abstractC3008c.mo346G0(abstractC3008c.f1022b.f1026f, interfaceC3072m3);
        }
        return interfaceC3072m3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3143y2
    /* renamed from: v0 */
    public final Spliterator mo349v0(Spliterator spliterator) {
        return this.f1025e == 0 ? spliterator : mo473J0(this, new C3002b(spliterator), this.f1021a.f1031k);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: w0 */
    public final Object m497w0(InterfaceC2932N4 interfaceC2932N4) {
        if (this.f1028h) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.f1028h = true;
        return this.f1021a.f1031k ? interfaceC2932N4.mo424c(this, m499H0(interfaceC2932N4.mo425b())) : interfaceC2932N4.mo423d(this, m499H0(interfaceC2932N4.mo425b()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: x0 */
    public final InterfaceC2851A1 m496x0(IntFunction intFunction) {
        if (this.f1028h) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.f1028h = true;
        if (this.f1021a.f1031k && this.f1022b != null && mo487F0()) {
            this.f1025e = 0;
            AbstractC3008c abstractC3008c = this.f1022b;
            return mo348D0(abstractC3008c, abstractC3008c.m499H0(0), intFunction);
        }
        return mo356o0(m499H0(0), true, intFunction);
    }

    /* renamed from: y0 */
    abstract InterfaceC2851A1 mo472y0(AbstractC3143y2 abstractC3143y2, Spliterator spliterator, boolean z, IntFunction intFunction);

    /* renamed from: z0 */
    abstract void mo471z0(Spliterator spliterator, InterfaceC3072m3 interfaceC3072m3);
}
