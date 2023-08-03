package p033j$.util.stream;

import java.util.Comparator;
import p033j$.util.AbstractC2780a;
import p033j$.util.InterfaceC2853s;
import p033j$.util.function.InterfaceC2817c;
import p033j$.util.function.InterfaceC2839y;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.f4 */
/* loaded from: classes2.dex */
public abstract class AbstractC3039f4 implements InterfaceC2853s {

    /* renamed from: a */
    final boolean f1031a;

    /* renamed from: b */
    final AbstractC3151y2 f1032b;

    /* renamed from: c */
    private InterfaceC2839y f1033c;

    /* renamed from: d */
    InterfaceC2853s f1034d;

    /* renamed from: e */
    InterfaceC3080m3 f1035e;

    /* renamed from: f */
    InterfaceC2817c f1036f;

    /* renamed from: g */
    long f1037g;

    /* renamed from: h */
    AbstractC3028e f1038h;

    /* renamed from: i */
    boolean f1039i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3039f4(AbstractC3151y2 abstractC3151y2, InterfaceC2839y interfaceC2839y, boolean z) {
        this.f1032b = abstractC3151y2;
        this.f1033c = interfaceC2839y;
        this.f1034d = null;
        this.f1031a = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3039f4(AbstractC3151y2 abstractC3151y2, InterfaceC2853s interfaceC2853s, boolean z) {
        this.f1032b = abstractC3151y2;
        this.f1033c = null;
        this.f1034d = interfaceC2853s;
        this.f1031a = z;
    }

    /* renamed from: f */
    private boolean m417f() {
        boolean mo131b;
        while (this.f1038h.count() == 0) {
            if (!this.f1035e.mo314o()) {
                C3010b c3010b = (C3010b) this.f1036f;
                switch (c3010b.f967a) {
                    case 4:
                        C3093o4 c3093o4 = (C3093o4) c3010b.f968b;
                        mo131b = c3093o4.f1034d.mo131b(c3093o4.f1035e);
                        break;
                    case 5:
                        C3105q4 c3105q4 = (C3105q4) c3010b.f968b;
                        mo131b = c3105q4.f1034d.mo131b(c3105q4.f1035e);
                        break;
                    case 6:
                        C3117s4 c3117s4 = (C3117s4) c3010b.f968b;
                        mo131b = c3117s4.f1034d.mo131b(c3117s4.f1035e);
                        break;
                    default:
                        C2928L4 c2928l4 = (C2928L4) c3010b.f968b;
                        mo131b = c2928l4.f1034d.mo131b(c2928l4.f1035e);
                        break;
                }
                if (mo131b) {
                    continue;
                }
            }
            if (this.f1039i) {
                return false;
            }
            this.f1035e.mo339m();
            this.f1039i = true;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final boolean m418a() {
        AbstractC3028e abstractC3028e = this.f1038h;
        if (abstractC3028e == null) {
            if (this.f1039i) {
                return false;
            }
            m416h();
            mo343j();
            this.f1037g = 0L;
            this.f1035e.mo315n(this.f1034d.getExactSizeIfKnown());
            return m417f();
        }
        long j = this.f1037g + 1;
        this.f1037g = j;
        boolean z = j < abstractC3028e.count();
        if (z) {
            return z;
        }
        this.f1037g = 0L;
        this.f1038h.clear();
        return m417f();
    }

    @Override // p033j$.util.InterfaceC2853s
    public final int characteristics() {
        m416h();
        int m435g = EnumC3027d4.m435g(this.f1032b.mo308s0()) & EnumC3027d4.f994f;
        return (m435g & 64) != 0 ? (m435g & (-16449)) | (this.f1034d.characteristics() & 16448) : m435g;
    }

    @Override // p033j$.util.InterfaceC2853s
    public final long estimateSize() {
        m416h();
        return this.f1034d.estimateSize();
    }

    @Override // p033j$.util.InterfaceC2853s
    public Comparator getComparator() {
        if (AbstractC2780a.m623f(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }

    @Override // p033j$.util.InterfaceC2853s
    public final long getExactSizeIfKnown() {
        m416h();
        if (EnumC3027d4.SIZED.m438d(this.f1032b.mo308s0())) {
            return this.f1034d.getExactSizeIfKnown();
        }
        return -1L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public final void m416h() {
        if (this.f1034d == null) {
            this.f1034d = (InterfaceC2853s) this.f1033c.get();
            this.f1033c = null;
        }
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2780a.m623f(this, i);
    }

    /* renamed from: j */
    abstract void mo343j();

    /* renamed from: l */
    abstract AbstractC3039f4 mo342l(InterfaceC2853s interfaceC2853s);

    public final String toString() {
        return String.format("%s[%s]", getClass().getName(), this.f1034d);
    }

    @Override // p033j$.util.InterfaceC2853s
    public InterfaceC2853s trySplit() {
        if (!this.f1031a || this.f1039i) {
            return null;
        }
        m416h();
        InterfaceC2853s trySplit = this.f1034d.trySplit();
        if (trySplit == null) {
            return null;
        }
        return mo342l(trySplit);
    }
}
