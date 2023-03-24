package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2625s;
import p034j$.util.function.InterfaceC2599m;
import p034j$.util.function.InterfaceC2611y;
/* renamed from: j$.util.stream.c */
/* loaded from: classes2.dex */
abstract class AbstractC2788c extends AbstractC2923y2 implements InterfaceC2812g {

    /* renamed from: a */
    private final AbstractC2788c f883a;

    /* renamed from: b */
    private final AbstractC2788c f884b;

    /* renamed from: c */
    protected final int f885c;

    /* renamed from: d */
    private AbstractC2788c f886d;

    /* renamed from: e */
    private int f887e;

    /* renamed from: f */
    private int f888f;

    /* renamed from: g */
    private InterfaceC2625s f889g;

    /* renamed from: h */
    private boolean f890h;

    /* renamed from: i */
    private boolean f891i;

    /* renamed from: j */
    private Runnable f892j;

    /* renamed from: k */
    private boolean f893k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2788c(InterfaceC2625s interfaceC2625s, int i, boolean z) {
        this.f884b = null;
        this.f889g = interfaceC2625s;
        this.f883a = this;
        int i2 = EnumC2799d4.f907g & i;
        this.f885c = i2;
        this.f888f = (~(i2 << 1)) & EnumC2799d4.f912l;
        this.f887e = 0;
        this.f893k = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2788c(AbstractC2788c abstractC2788c, int i) {
        if (abstractC2788c.f890h) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        abstractC2788c.f890h = true;
        abstractC2788c.f886d = this;
        this.f884b = abstractC2788c;
        this.f885c = EnumC2799d4.f908h & i;
        this.f888f = EnumC2799d4.m437a(i, abstractC2788c.f888f);
        AbstractC2788c abstractC2788c2 = abstractC2788c.f883a;
        this.f883a = abstractC2788c2;
        if (mo438G0()) {
            abstractC2788c2.f891i = true;
        }
        this.f887e = abstractC2788c.f887e + 1;
    }

    /* renamed from: I0 */
    private InterfaceC2625s m450I0(int i) {
        int i2;
        int i3;
        AbstractC2788c abstractC2788c = this.f883a;
        InterfaceC2625s interfaceC2625s = abstractC2788c.f889g;
        if (interfaceC2625s != null) {
            abstractC2788c.f889g = null;
            if (abstractC2788c.f893k && abstractC2788c.f891i) {
                AbstractC2788c abstractC2788c2 = abstractC2788c.f886d;
                int i4 = 1;
                while (abstractC2788c != this) {
                    int i5 = abstractC2788c2.f885c;
                    if (abstractC2788c2.mo438G0()) {
                        i4 = 0;
                        if (EnumC2799d4.SHORT_CIRCUIT.m434d(i5)) {
                            i5 &= ~EnumC2799d4.f921u;
                        }
                        interfaceC2625s = abstractC2788c2.mo298F0(abstractC2788c, interfaceC2625s);
                        if (interfaceC2625s.hasCharacteristics(64)) {
                            i2 = i5 & (~EnumC2799d4.f920t);
                            i3 = EnumC2799d4.f919s;
                        } else {
                            i2 = i5 & (~EnumC2799d4.f919s);
                            i3 = EnumC2799d4.f920t;
                        }
                        i5 = i2 | i3;
                    }
                    abstractC2788c2.f887e = i4;
                    abstractC2788c2.f888f = EnumC2799d4.m437a(i5, abstractC2788c.f888f);
                    i4++;
                    AbstractC2788c abstractC2788c3 = abstractC2788c2;
                    abstractC2788c2 = abstractC2788c2.f886d;
                    abstractC2788c = abstractC2788c3;
                }
            }
            if (i != 0) {
                this.f888f = EnumC2799d4.m437a(i, this.f888f);
            }
            return interfaceC2625s;
        }
        throw new IllegalStateException("source already consumed or closed");
    }

    /* renamed from: A0 */
    abstract void mo425A0(InterfaceC2625s interfaceC2625s, InterfaceC2852m3 interfaceC2852m3);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: B0 */
    public abstract EnumC2805e4 mo424B0();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: C0 */
    public final boolean m452C0() {
        return EnumC2799d4.ORDERED.m434d(this.f888f);
    }

    /* renamed from: D0 */
    public /* synthetic */ InterfaceC2625s m451D0() {
        return m450I0(0);
    }

    /* renamed from: E0 */
    InterfaceC2631A1 mo299E0(AbstractC2923y2 abstractC2923y2, InterfaceC2625s interfaceC2625s, InterfaceC2599m interfaceC2599m) {
        throw new UnsupportedOperationException("Parallel evaluation is not supported");
    }

    /* renamed from: F0 */
    InterfaceC2625s mo298F0(AbstractC2923y2 abstractC2923y2, InterfaceC2625s interfaceC2625s) {
        return mo299E0(abstractC2923y2, interfaceC2625s, C2776a.f873a).spliterator();
    }

    /* renamed from: G0 */
    abstract boolean mo438G0();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: H0 */
    public abstract InterfaceC2852m3 mo297H0(int i, InterfaceC2852m3 interfaceC2852m3);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: J0 */
    public final InterfaceC2625s m449J0() {
        AbstractC2788c abstractC2788c = this.f883a;
        if (this == abstractC2788c) {
            if (this.f890h) {
                throw new IllegalStateException("stream has already been operated upon or closed");
            }
            this.f890h = true;
            InterfaceC2625s interfaceC2625s = abstractC2788c.f889g;
            if (interfaceC2625s != null) {
                abstractC2788c.f889g = null;
                return interfaceC2625s;
            }
            throw new IllegalStateException("source already consumed or closed");
        }
        throw new IllegalStateException();
    }

    /* renamed from: K0 */
    abstract InterfaceC2625s mo423K0(AbstractC2923y2 abstractC2923y2, InterfaceC2611y interfaceC2611y, boolean z);

    @Override // p034j$.util.stream.InterfaceC2812g, java.lang.AutoCloseable
    public void close() {
        this.f890h = true;
        this.f889g = null;
        AbstractC2788c abstractC2788c = this.f883a;
        Runnable runnable = abstractC2788c.f892j;
        if (runnable != null) {
            abstractC2788c.f892j = null;
            runnable.run();
        }
    }

    @Override // p034j$.util.stream.InterfaceC2812g
    public final boolean isParallel() {
        return this.f883a.f893k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2923y2
    /* renamed from: n0 */
    public final void mo309n0(InterfaceC2852m3 interfaceC2852m3, InterfaceC2625s interfaceC2625s) {
        Objects.requireNonNull(interfaceC2852m3);
        if (EnumC2799d4.SHORT_CIRCUIT.m434d(this.f888f)) {
            mo308o0(interfaceC2852m3, interfaceC2625s);
            return;
        }
        interfaceC2852m3.mo311n(interfaceC2625s.getExactSizeIfKnown());
        interfaceC2625s.forEachRemaining(interfaceC2852m3);
        interfaceC2852m3.mo335m();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2923y2
    /* renamed from: o0 */
    public final void mo308o0(InterfaceC2852m3 interfaceC2852m3, InterfaceC2625s interfaceC2625s) {
        AbstractC2788c abstractC2788c = this;
        while (abstractC2788c.f887e > 0) {
            abstractC2788c = abstractC2788c.f884b;
        }
        interfaceC2852m3.mo311n(interfaceC2625s.getExactSizeIfKnown());
        abstractC2788c.mo425A0(interfaceC2625s, interfaceC2852m3);
        interfaceC2852m3.mo335m();
    }

    @Override // p034j$.util.stream.InterfaceC2812g
    public InterfaceC2812g onClose(Runnable runnable) {
        AbstractC2788c abstractC2788c = this.f883a;
        Runnable runnable2 = abstractC2788c.f892j;
        if (runnable2 != null) {
            runnable = new RunnableC2706M4(runnable2, runnable);
        }
        abstractC2788c.f892j = runnable;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2923y2
    /* renamed from: p0 */
    public final InterfaceC2631A1 mo307p0(InterfaceC2625s interfaceC2625s, boolean z, InterfaceC2599m interfaceC2599m) {
        if (this.f883a.f893k) {
            return mo422z0(this, interfaceC2625s, z, interfaceC2599m);
        }
        InterfaceC2886s1 mo303t0 = mo303t0(mo306q0(interfaceC2625s), interfaceC2599m);
        Objects.requireNonNull(mo303t0);
        mo309n0(mo301v0(mo303t0), interfaceC2625s);
        return mo303t0.mo337a();
    }

    public final InterfaceC2812g parallel() {
        this.f883a.f893k = true;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2923y2
    /* renamed from: q0 */
    public final long mo306q0(InterfaceC2625s interfaceC2625s) {
        if (EnumC2799d4.SIZED.m434d(this.f888f)) {
            return interfaceC2625s.getExactSizeIfKnown();
        }
        return -1L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2923y2
    /* renamed from: r0 */
    public final EnumC2805e4 mo305r0() {
        AbstractC2788c abstractC2788c = this;
        while (abstractC2788c.f887e > 0) {
            abstractC2788c = abstractC2788c.f884b;
        }
        return abstractC2788c.mo424B0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2923y2
    /* renamed from: s0 */
    public final int mo304s0() {
        return this.f888f;
    }

    public final InterfaceC2812g sequential() {
        this.f883a.f893k = false;
        return this;
    }

    public InterfaceC2625s spliterator() {
        if (this.f890h) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.f890h = true;
        AbstractC2788c abstractC2788c = this.f883a;
        if (this == abstractC2788c) {
            InterfaceC2625s interfaceC2625s = abstractC2788c.f889g;
            if (interfaceC2625s != null) {
                abstractC2788c.f889g = null;
                return interfaceC2625s;
            }
            throw new IllegalStateException("source already consumed or closed");
        }
        return mo423K0(this, new C2782b(this), abstractC2788c.f893k);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2923y2
    /* renamed from: u0 */
    public final InterfaceC2852m3 mo302u0(InterfaceC2852m3 interfaceC2852m3, InterfaceC2625s interfaceC2625s) {
        Objects.requireNonNull(interfaceC2852m3);
        mo309n0(mo301v0(interfaceC2852m3), interfaceC2625s);
        return interfaceC2852m3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2923y2
    /* renamed from: v0 */
    public final InterfaceC2852m3 mo301v0(InterfaceC2852m3 interfaceC2852m3) {
        Objects.requireNonNull(interfaceC2852m3);
        for (AbstractC2788c abstractC2788c = this; abstractC2788c.f887e > 0; abstractC2788c = abstractC2788c.f884b) {
            interfaceC2852m3 = abstractC2788c.mo297H0(abstractC2788c.f884b.f888f, interfaceC2852m3);
        }
        return interfaceC2852m3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p034j$.util.stream.AbstractC2923y2
    /* renamed from: w0 */
    public final InterfaceC2625s mo300w0(InterfaceC2625s interfaceC2625s) {
        return this.f887e == 0 ? interfaceC2625s : mo423K0(this, new C2782b(interfaceC2625s), this.f883a.f893k);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: x0 */
    public final Object m448x0(InterfaceC2712N4 interfaceC2712N4) {
        if (this.f890h) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.f890h = true;
        return this.f883a.f893k ? interfaceC2712N4.mo375c(this, m450I0(interfaceC2712N4.mo376b())) : interfaceC2712N4.mo374d(this, m450I0(interfaceC2712N4.mo376b()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: y0 */
    public final InterfaceC2631A1 m447y0(InterfaceC2599m interfaceC2599m) {
        if (this.f890h) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.f890h = true;
        if (this.f883a.f893k && this.f884b != null && mo438G0()) {
            this.f887e = 0;
            AbstractC2788c abstractC2788c = this.f884b;
            return mo299E0(abstractC2788c, abstractC2788c.m450I0(0), interfaceC2599m);
        }
        return mo307p0(m450I0(0), true, interfaceC2599m);
    }

    /* renamed from: z0 */
    abstract InterfaceC2631A1 mo422z0(AbstractC2923y2 abstractC2923y2, InterfaceC2625s interfaceC2625s, boolean z, InterfaceC2599m interfaceC2599m);
}
