package p033j$.util.stream;

import java.util.Comparator;
import p033j$.util.AbstractC2835a;
import p033j$.util.InterfaceC2908s;
import p033j$.util.function.InterfaceC2872c;
import p033j$.util.function.InterfaceC2894y;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.f4 */
/* loaded from: classes2.dex */
public abstract class AbstractC3094f4 implements InterfaceC2908s {

    /* renamed from: a */
    final boolean f1032a;

    /* renamed from: b */
    final AbstractC3206y2 f1033b;

    /* renamed from: c */
    private InterfaceC2894y f1034c;

    /* renamed from: d */
    InterfaceC2908s f1035d;

    /* renamed from: e */
    InterfaceC3135m3 f1036e;

    /* renamed from: f */
    InterfaceC2872c f1037f;

    /* renamed from: g */
    long f1038g;

    /* renamed from: h */
    AbstractC3083e f1039h;

    /* renamed from: i */
    boolean f1040i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3094f4(AbstractC3206y2 abstractC3206y2, InterfaceC2894y interfaceC2894y, boolean z) {
        this.f1033b = abstractC3206y2;
        this.f1034c = interfaceC2894y;
        this.f1035d = null;
        this.f1032a = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3094f4(AbstractC3206y2 abstractC3206y2, InterfaceC2908s interfaceC2908s, boolean z) {
        this.f1033b = abstractC3206y2;
        this.f1034c = null;
        this.f1035d = interfaceC2908s;
        this.f1032a = z;
    }

    /* renamed from: f */
    private boolean m417f() {
        boolean mo131b;
        while (this.f1039h.count() == 0) {
            if (!this.f1036e.mo314o()) {
                C3065b c3065b = (C3065b) this.f1037f;
                switch (c3065b.f968a) {
                    case 4:
                        C3148o4 c3148o4 = (C3148o4) c3065b.f969b;
                        mo131b = c3148o4.f1035d.mo131b(c3148o4.f1036e);
                        break;
                    case 5:
                        C3160q4 c3160q4 = (C3160q4) c3065b.f969b;
                        mo131b = c3160q4.f1035d.mo131b(c3160q4.f1036e);
                        break;
                    case 6:
                        C3172s4 c3172s4 = (C3172s4) c3065b.f969b;
                        mo131b = c3172s4.f1035d.mo131b(c3172s4.f1036e);
                        break;
                    default:
                        C2983L4 c2983l4 = (C2983L4) c3065b.f969b;
                        mo131b = c2983l4.f1035d.mo131b(c2983l4.f1036e);
                        break;
                }
                if (mo131b) {
                    continue;
                }
            }
            if (this.f1040i) {
                return false;
            }
            this.f1036e.mo339m();
            this.f1040i = true;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final boolean m418a() {
        AbstractC3083e abstractC3083e = this.f1039h;
        if (abstractC3083e == null) {
            if (this.f1040i) {
                return false;
            }
            m416h();
            mo343j();
            this.f1038g = 0L;
            this.f1036e.mo315n(this.f1035d.getExactSizeIfKnown());
            return m417f();
        }
        long j = this.f1038g + 1;
        this.f1038g = j;
        boolean z = j < abstractC3083e.count();
        if (z) {
            return z;
        }
        this.f1038g = 0L;
        this.f1039h.clear();
        return m417f();
    }

    @Override // p033j$.util.InterfaceC2908s
    public final int characteristics() {
        m416h();
        int m435g = EnumC3082d4.m435g(this.f1033b.mo308s0()) & EnumC3082d4.f995f;
        return (m435g & 64) != 0 ? (m435g & (-16449)) | (this.f1035d.characteristics() & 16448) : m435g;
    }

    @Override // p033j$.util.InterfaceC2908s
    public final long estimateSize() {
        m416h();
        return this.f1035d.estimateSize();
    }

    @Override // p033j$.util.InterfaceC2908s
    public Comparator getComparator() {
        if (AbstractC2835a.m623f(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }

    @Override // p033j$.util.InterfaceC2908s
    public final long getExactSizeIfKnown() {
        m416h();
        if (EnumC3082d4.SIZED.m438d(this.f1033b.mo308s0())) {
            return this.f1035d.getExactSizeIfKnown();
        }
        return -1L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public final void m416h() {
        if (this.f1035d == null) {
            this.f1035d = (InterfaceC2908s) this.f1034c.get();
            this.f1034c = null;
        }
    }

    @Override // p033j$.util.InterfaceC2908s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2835a.m623f(this, i);
    }

    /* renamed from: j */
    abstract void mo343j();

    /* renamed from: l */
    abstract AbstractC3094f4 mo342l(InterfaceC2908s interfaceC2908s);

    public final String toString() {
        return String.format("%s[%s]", getClass().getName(), this.f1035d);
    }

    @Override // p033j$.util.InterfaceC2908s
    public InterfaceC2908s trySplit() {
        if (!this.f1032a || this.f1040i) {
            return null;
        }
        m416h();
        InterfaceC2908s trySplit = this.f1035d.trySplit();
        if (trySplit == null) {
            return null;
        }
        return mo342l(trySplit);
    }
}
