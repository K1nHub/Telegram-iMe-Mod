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
    final boolean f1028a;

    /* renamed from: b */
    final AbstractC3151y2 f1029b;

    /* renamed from: c */
    private InterfaceC2839y f1030c;

    /* renamed from: d */
    InterfaceC2853s f1031d;

    /* renamed from: e */
    InterfaceC3080m3 f1032e;

    /* renamed from: f */
    InterfaceC2817c f1033f;

    /* renamed from: g */
    long f1034g;

    /* renamed from: h */
    AbstractC3028e f1035h;

    /* renamed from: i */
    boolean f1036i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3039f4(AbstractC3151y2 abstractC3151y2, InterfaceC2839y interfaceC2839y, boolean z) {
        this.f1029b = abstractC3151y2;
        this.f1030c = interfaceC2839y;
        this.f1031d = null;
        this.f1028a = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3039f4(AbstractC3151y2 abstractC3151y2, InterfaceC2853s interfaceC2853s, boolean z) {
        this.f1029b = abstractC3151y2;
        this.f1030c = null;
        this.f1031d = interfaceC2853s;
        this.f1028a = z;
    }

    /* renamed from: f */
    private boolean m399f() {
        boolean mo113b;
        while (this.f1035h.count() == 0) {
            if (!this.f1032e.mo296o()) {
                C3010b c3010b = (C3010b) this.f1033f;
                switch (c3010b.f964a) {
                    case 4:
                        C3093o4 c3093o4 = (C3093o4) c3010b.f965b;
                        mo113b = c3093o4.f1031d.mo113b(c3093o4.f1032e);
                        break;
                    case 5:
                        C3105q4 c3105q4 = (C3105q4) c3010b.f965b;
                        mo113b = c3105q4.f1031d.mo113b(c3105q4.f1032e);
                        break;
                    case 6:
                        C3117s4 c3117s4 = (C3117s4) c3010b.f965b;
                        mo113b = c3117s4.f1031d.mo113b(c3117s4.f1032e);
                        break;
                    default:
                        C2928L4 c2928l4 = (C2928L4) c3010b.f965b;
                        mo113b = c2928l4.f1031d.mo113b(c2928l4.f1032e);
                        break;
                }
                if (mo113b) {
                    continue;
                }
            }
            if (this.f1036i) {
                return false;
            }
            this.f1032e.mo321m();
            this.f1036i = true;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final boolean m400a() {
        AbstractC3028e abstractC3028e = this.f1035h;
        if (abstractC3028e == null) {
            if (this.f1036i) {
                return false;
            }
            m398h();
            mo325j();
            this.f1034g = 0L;
            this.f1032e.mo297n(this.f1031d.getExactSizeIfKnown());
            return m399f();
        }
        long j = this.f1034g + 1;
        this.f1034g = j;
        boolean z = j < abstractC3028e.count();
        if (z) {
            return z;
        }
        this.f1034g = 0L;
        this.f1035h.clear();
        return m399f();
    }

    @Override // p033j$.util.InterfaceC2853s
    public final int characteristics() {
        m398h();
        int m417g = EnumC3027d4.m417g(this.f1029b.mo290s0()) & EnumC3027d4.f991f;
        return (m417g & 64) != 0 ? (m417g & (-16449)) | (this.f1031d.characteristics() & 16448) : m417g;
    }

    @Override // p033j$.util.InterfaceC2853s
    public final long estimateSize() {
        m398h();
        return this.f1031d.estimateSize();
    }

    @Override // p033j$.util.InterfaceC2853s
    public Comparator getComparator() {
        if (AbstractC2780a.m605f(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }

    @Override // p033j$.util.InterfaceC2853s
    public final long getExactSizeIfKnown() {
        m398h();
        if (EnumC3027d4.SIZED.m420d(this.f1029b.mo290s0())) {
            return this.f1031d.getExactSizeIfKnown();
        }
        return -1L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public final void m398h() {
        if (this.f1031d == null) {
            this.f1031d = (InterfaceC2853s) this.f1030c.get();
            this.f1030c = null;
        }
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2780a.m605f(this, i);
    }

    /* renamed from: j */
    abstract void mo325j();

    /* renamed from: l */
    abstract AbstractC3039f4 mo324l(InterfaceC2853s interfaceC2853s);

    public final String toString() {
        return String.format("%s[%s]", getClass().getName(), this.f1031d);
    }

    @Override // p033j$.util.InterfaceC2853s
    public InterfaceC2853s trySplit() {
        if (!this.f1028a || this.f1036i) {
            return null;
        }
        m398h();
        InterfaceC2853s trySplit = this.f1031d.trySplit();
        if (trySplit == null) {
            return null;
        }
        return mo324l(trySplit);
    }
}
