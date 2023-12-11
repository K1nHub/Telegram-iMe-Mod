package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.function.IntFunction;
import p033j$.util.function.InterfaceC2835x;
/* renamed from: j$.util.stream.c */
/* loaded from: classes2.dex */
abstract class AbstractC3009c extends AbstractC3144y2 implements InterfaceC3033g {

    /* renamed from: a */
    private final AbstractC3009c f1021a;

    /* renamed from: b */
    private final AbstractC3009c f1022b;

    /* renamed from: c */
    protected final int f1023c;

    /* renamed from: d */
    private AbstractC3009c f1024d;

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
    public AbstractC3009c(Spliterator spliterator, int i, boolean z) {
        this.f1022b = null;
        this.f1027g = spliterator;
        this.f1021a = this;
        int i2 = EnumC3020d4.f1045g & i;
        this.f1023c = i2;
        this.f1026f = (~(i2 << 1)) & EnumC3020d4.f1050l;
        this.f1025e = 0;
        this.f1031k = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3009c(AbstractC3009c abstractC3009c, int i) {
        if (abstractC3009c.f1028h) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        abstractC3009c.f1028h = true;
        abstractC3009c.f1024d = this;
        this.f1022b = abstractC3009c;
        this.f1023c = EnumC3020d4.f1046h & i;
        this.f1026f = EnumC3020d4.m487a(i, abstractC3009c.f1026f);
        AbstractC3009c abstractC3009c2 = abstractC3009c.f1021a;
        this.f1021a = abstractC3009c2;
        if (mo488F0()) {
            abstractC3009c2.f1029i = true;
        }
        this.f1025e = abstractC3009c.f1025e + 1;
    }

    /* renamed from: H0 */
    private Spliterator m500H0(int i) {
        int i2;
        int i3;
        AbstractC3009c abstractC3009c = this.f1021a;
        Spliterator spliterator = abstractC3009c.f1027g;
        if (spliterator != null) {
            abstractC3009c.f1027g = null;
            if (abstractC3009c.f1031k && abstractC3009c.f1029i) {
                AbstractC3009c abstractC3009c2 = abstractC3009c.f1024d;
                int i4 = 1;
                while (abstractC3009c != this) {
                    int i5 = abstractC3009c2.f1023c;
                    if (abstractC3009c2.mo488F0()) {
                        i4 = 0;
                        if (EnumC3020d4.SHORT_CIRCUIT.m484d(i5)) {
                            i5 &= ~EnumC3020d4.f1059u;
                        }
                        spliterator = abstractC3009c2.mo348E0(abstractC3009c, spliterator);
                        if (spliterator.hasCharacteristics(64)) {
                            i2 = i5 & (~EnumC3020d4.f1058t);
                            i3 = EnumC3020d4.f1057s;
                        } else {
                            i2 = i5 & (~EnumC3020d4.f1057s);
                            i3 = EnumC3020d4.f1058t;
                        }
                        i5 = i2 | i3;
                    }
                    abstractC3009c2.f1025e = i4;
                    abstractC3009c2.f1026f = EnumC3020d4.m487a(i5, abstractC3009c.f1026f);
                    i4++;
                    AbstractC3009c abstractC3009c3 = abstractC3009c2;
                    abstractC3009c2 = abstractC3009c2.f1024d;
                    abstractC3009c = abstractC3009c3;
                }
            }
            if (i != 0) {
                this.f1026f = EnumC3020d4.m487a(i, this.f1026f);
            }
            return spliterator;
        }
        throw new IllegalStateException("source already consumed or closed");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: A0 */
    public abstract EnumC3026e4 mo475A0();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: B0 */
    public final boolean m502B0() {
        return EnumC3020d4.ORDERED.m484d(this.f1026f);
    }

    /* renamed from: C0 */
    public /* synthetic */ Spliterator m501C0() {
        return m500H0(0);
    }

    /* renamed from: D0 */
    InterfaceC2852A1 mo349D0(AbstractC3144y2 abstractC3144y2, Spliterator spliterator, IntFunction intFunction) {
        throw new UnsupportedOperationException("Parallel evaluation is not supported");
    }

    /* renamed from: E0 */
    Spliterator mo348E0(AbstractC3144y2 abstractC3144y2, Spliterator spliterator) {
        return mo349D0(abstractC3144y2, spliterator, new IntFunction() { // from class: j$.util.stream.a
            @Override // p033j$.util.function.IntFunction
            public final Object apply(int i) {
                return new Object[i];
            }
        }).spliterator();
    }

    /* renamed from: F0 */
    abstract boolean mo488F0();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: G0 */
    public abstract InterfaceC3073m3 mo347G0(int i, InterfaceC3073m3 interfaceC3073m3);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: I0 */
    public final Spliterator m499I0() {
        AbstractC3009c abstractC3009c = this.f1021a;
        if (this == abstractC3009c) {
            if (this.f1028h) {
                throw new IllegalStateException("stream has already been operated upon or closed");
            }
            this.f1028h = true;
            Spliterator spliterator = abstractC3009c.f1027g;
            if (spliterator != null) {
                abstractC3009c.f1027g = null;
                return spliterator;
            }
            throw new IllegalStateException("source already consumed or closed");
        }
        throw new IllegalStateException();
    }

    /* renamed from: J0 */
    abstract Spliterator mo474J0(AbstractC3144y2 abstractC3144y2, InterfaceC2835x interfaceC2835x, boolean z);

    @Override // p033j$.util.stream.InterfaceC3033g, java.lang.AutoCloseable
    public void close() {
        this.f1028h = true;
        this.f1027g = null;
        AbstractC3009c abstractC3009c = this.f1021a;
        Runnable runnable = abstractC3009c.f1030j;
        if (runnable != null) {
            abstractC3009c.f1030j = null;
            runnable.run();
        }
    }

    @Override // p033j$.util.stream.InterfaceC3033g
    public final boolean isParallel() {
        return this.f1021a.f1031k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3144y2
    /* renamed from: m0 */
    public final void mo359m0(InterfaceC3073m3 interfaceC3073m3, Spliterator spliterator) {
        Objects.requireNonNull(interfaceC3073m3);
        if (EnumC3020d4.SHORT_CIRCUIT.m484d(this.f1026f)) {
            mo358n0(interfaceC3073m3, spliterator);
            return;
        }
        interfaceC3073m3.mo361m(spliterator.getExactSizeIfKnown());
        spliterator.forEachRemaining(interfaceC3073m3);
        interfaceC3073m3.mo385l();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3144y2
    /* renamed from: n0 */
    public final void mo358n0(InterfaceC3073m3 interfaceC3073m3, Spliterator spliterator) {
        AbstractC3009c abstractC3009c = this;
        while (abstractC3009c.f1025e > 0) {
            abstractC3009c = abstractC3009c.f1022b;
        }
        interfaceC3073m3.mo361m(spliterator.getExactSizeIfKnown());
        abstractC3009c.mo472z0(spliterator, interfaceC3073m3);
        interfaceC3073m3.mo385l();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3144y2
    /* renamed from: o0 */
    public final InterfaceC2852A1 mo357o0(Spliterator spliterator, boolean z, IntFunction intFunction) {
        if (this.f1021a.f1031k) {
            return mo473y0(this, spliterator, z, intFunction);
        }
        InterfaceC3107s1 mo353s0 = mo353s0(mo356p0(spliterator), intFunction);
        Objects.requireNonNull(mo353s0);
        mo359m0(mo351u0(mo353s0), spliterator);
        return mo353s0.mo387a();
    }

    @Override // p033j$.util.stream.InterfaceC3033g
    public InterfaceC3033g onClose(Runnable runnable) {
        AbstractC3009c abstractC3009c = this.f1021a;
        Runnable runnable2 = abstractC3009c.f1030j;
        if (runnable2 != null) {
            runnable = new RunnableC2927M4(runnable2, runnable);
        }
        abstractC3009c.f1030j = runnable;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3144y2
    /* renamed from: p0 */
    public final long mo356p0(Spliterator spliterator) {
        if (EnumC3020d4.SIZED.m484d(this.f1026f)) {
            return spliterator.getExactSizeIfKnown();
        }
        return -1L;
    }

    public final InterfaceC3033g parallel() {
        this.f1021a.f1031k = true;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3144y2
    /* renamed from: q0 */
    public final EnumC3026e4 mo355q0() {
        AbstractC3009c abstractC3009c = this;
        while (abstractC3009c.f1025e > 0) {
            abstractC3009c = abstractC3009c.f1022b;
        }
        return abstractC3009c.mo475A0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3144y2
    /* renamed from: r0 */
    public final int mo354r0() {
        return this.f1026f;
    }

    public final InterfaceC3033g sequential() {
        this.f1021a.f1031k = false;
        return this;
    }

    public Spliterator spliterator() {
        if (this.f1028h) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.f1028h = true;
        AbstractC3009c abstractC3009c = this.f1021a;
        if (this == abstractC3009c) {
            Spliterator spliterator = abstractC3009c.f1027g;
            if (spliterator != null) {
                abstractC3009c.f1027g = null;
                return spliterator;
            }
            throw new IllegalStateException("source already consumed or closed");
        }
        return mo474J0(this, new C3003b(this), abstractC3009c.f1031k);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3144y2
    /* renamed from: t0 */
    public final InterfaceC3073m3 mo352t0(InterfaceC3073m3 interfaceC3073m3, Spliterator spliterator) {
        Objects.requireNonNull(interfaceC3073m3);
        mo359m0(mo351u0(interfaceC3073m3), spliterator);
        return interfaceC3073m3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3144y2
    /* renamed from: u0 */
    public final InterfaceC3073m3 mo351u0(InterfaceC3073m3 interfaceC3073m3) {
        Objects.requireNonNull(interfaceC3073m3);
        for (AbstractC3009c abstractC3009c = this; abstractC3009c.f1025e > 0; abstractC3009c = abstractC3009c.f1022b) {
            interfaceC3073m3 = abstractC3009c.mo347G0(abstractC3009c.f1022b.f1026f, interfaceC3073m3);
        }
        return interfaceC3073m3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3144y2
    /* renamed from: v0 */
    public final Spliterator mo350v0(Spliterator spliterator) {
        return this.f1025e == 0 ? spliterator : mo474J0(this, new C3003b(spliterator), this.f1021a.f1031k);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: w0 */
    public final Object m498w0(InterfaceC2933N4 interfaceC2933N4) {
        if (this.f1028h) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.f1028h = true;
        return this.f1021a.f1031k ? interfaceC2933N4.mo425c(this, m500H0(interfaceC2933N4.mo426b())) : interfaceC2933N4.mo424d(this, m500H0(interfaceC2933N4.mo426b()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: x0 */
    public final InterfaceC2852A1 m497x0(IntFunction intFunction) {
        if (this.f1028h) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.f1028h = true;
        if (this.f1021a.f1031k && this.f1022b != null && mo488F0()) {
            this.f1025e = 0;
            AbstractC3009c abstractC3009c = this.f1022b;
            return mo349D0(abstractC3009c, abstractC3009c.m500H0(0), intFunction);
        }
        return mo357o0(m500H0(0), true, intFunction);
    }

    /* renamed from: y0 */
    abstract InterfaceC2852A1 mo473y0(AbstractC3144y2 abstractC3144y2, Spliterator spliterator, boolean z, IntFunction intFunction);

    /* renamed from: z0 */
    abstract void mo472z0(Spliterator spliterator, InterfaceC3073m3 interfaceC3073m3);
}
