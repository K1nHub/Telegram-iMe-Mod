package p034j$.util.stream;

import java.util.Comparator;
import p034j$.util.AbstractC2414a;
import p034j$.util.InterfaceC2487s;
import p034j$.util.function.InterfaceC2451c;
import p034j$.util.function.InterfaceC2473y;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.f4 */
/* loaded from: classes2.dex */
public abstract class AbstractC2673f4 implements InterfaceC2487s {

    /* renamed from: a */
    final boolean f937a;

    /* renamed from: b */
    final AbstractC2785y2 f938b;

    /* renamed from: c */
    private InterfaceC2473y f939c;

    /* renamed from: d */
    InterfaceC2487s f940d;

    /* renamed from: e */
    InterfaceC2714m3 f941e;

    /* renamed from: f */
    InterfaceC2451c f942f;

    /* renamed from: g */
    long f943g;

    /* renamed from: h */
    AbstractC2662e f944h;

    /* renamed from: i */
    boolean f945i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2673f4(AbstractC2785y2 abstractC2785y2, InterfaceC2473y interfaceC2473y, boolean z) {
        this.f938b = abstractC2785y2;
        this.f939c = interfaceC2473y;
        this.f940d = null;
        this.f937a = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2673f4(AbstractC2785y2 abstractC2785y2, InterfaceC2487s interfaceC2487s, boolean z) {
        this.f938b = abstractC2785y2;
        this.f939c = null;
        this.f940d = interfaceC2487s;
        this.f937a = z;
    }

    /* renamed from: f */
    private boolean m414f() {
        boolean mo128b;
        while (this.f944h.count() == 0) {
            if (!this.f941e.mo311o()) {
                C2644b c2644b = (C2644b) this.f942f;
                switch (c2644b.f873a) {
                    case 4:
                        C2727o4 c2727o4 = (C2727o4) c2644b.f874b;
                        mo128b = c2727o4.f940d.mo128b(c2727o4.f941e);
                        break;
                    case 5:
                        C2739q4 c2739q4 = (C2739q4) c2644b.f874b;
                        mo128b = c2739q4.f940d.mo128b(c2739q4.f941e);
                        break;
                    case 6:
                        C2751s4 c2751s4 = (C2751s4) c2644b.f874b;
                        mo128b = c2751s4.f940d.mo128b(c2751s4.f941e);
                        break;
                    default:
                        C2562L4 c2562l4 = (C2562L4) c2644b.f874b;
                        mo128b = c2562l4.f940d.mo128b(c2562l4.f941e);
                        break;
                }
                if (mo128b) {
                    continue;
                }
            }
            if (this.f945i) {
                return false;
            }
            this.f941e.mo336m();
            this.f945i = true;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final boolean m415a() {
        AbstractC2662e abstractC2662e = this.f944h;
        if (abstractC2662e == null) {
            if (this.f945i) {
                return false;
            }
            m413h();
            mo340j();
            this.f943g = 0L;
            this.f941e.mo312n(this.f940d.getExactSizeIfKnown());
            return m414f();
        }
        long j = this.f943g + 1;
        this.f943g = j;
        boolean z = j < abstractC2662e.count();
        if (z) {
            return z;
        }
        this.f943g = 0L;
        this.f944h.clear();
        return m414f();
    }

    @Override // p034j$.util.InterfaceC2487s
    public final int characteristics() {
        m413h();
        int m432g = EnumC2661d4.m432g(this.f938b.mo305s0()) & EnumC2661d4.f900f;
        return (m432g & 64) != 0 ? (m432g & (-16449)) | (this.f940d.characteristics() & 16448) : m432g;
    }

    @Override // p034j$.util.InterfaceC2487s
    public final long estimateSize() {
        m413h();
        return this.f940d.estimateSize();
    }

    @Override // p034j$.util.InterfaceC2487s
    public Comparator getComparator() {
        if (AbstractC2414a.m621f(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }

    @Override // p034j$.util.InterfaceC2487s
    public final long getExactSizeIfKnown() {
        m413h();
        if (EnumC2661d4.SIZED.m435d(this.f938b.mo305s0())) {
            return this.f940d.getExactSizeIfKnown();
        }
        return -1L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public final void m413h() {
        if (this.f940d == null) {
            this.f940d = (InterfaceC2487s) this.f939c.get();
            this.f939c = null;
        }
    }

    @Override // p034j$.util.InterfaceC2487s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2414a.m621f(this, i);
    }

    /* renamed from: j */
    abstract void mo340j();

    /* renamed from: l */
    abstract AbstractC2673f4 mo339l(InterfaceC2487s interfaceC2487s);

    public final String toString() {
        return String.format("%s[%s]", getClass().getName(), this.f940d);
    }

    @Override // p034j$.util.InterfaceC2487s
    public InterfaceC2487s trySplit() {
        if (!this.f937a || this.f945i) {
            return null;
        }
        m413h();
        InterfaceC2487s trySplit = this.f940d.trySplit();
        if (trySplit == null) {
            return null;
        }
        return mo339l(trySplit);
    }
}
