package p033j$.util.stream;

import java.util.Comparator;
import p033j$.util.AbstractC2919a;
import p033j$.util.InterfaceC2992s;
import p033j$.util.function.InterfaceC2956c;
import p033j$.util.function.InterfaceC2978y;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.f4 */
/* loaded from: classes2.dex */
public abstract class AbstractC3178f4 implements InterfaceC2992s {

    /* renamed from: a */
    final boolean f1041a;

    /* renamed from: b */
    final AbstractC3290y2 f1042b;

    /* renamed from: c */
    private InterfaceC2978y f1043c;

    /* renamed from: d */
    InterfaceC2992s f1044d;

    /* renamed from: e */
    InterfaceC3219m3 f1045e;

    /* renamed from: f */
    InterfaceC2956c f1046f;

    /* renamed from: g */
    long f1047g;

    /* renamed from: h */
    AbstractC3167e f1048h;

    /* renamed from: i */
    boolean f1049i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3178f4(AbstractC3290y2 abstractC3290y2, InterfaceC2978y interfaceC2978y, boolean z) {
        this.f1042b = abstractC3290y2;
        this.f1043c = interfaceC2978y;
        this.f1044d = null;
        this.f1041a = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3178f4(AbstractC3290y2 abstractC3290y2, InterfaceC2992s interfaceC2992s, boolean z) {
        this.f1042b = abstractC3290y2;
        this.f1043c = null;
        this.f1044d = interfaceC2992s;
        this.f1041a = z;
    }

    /* renamed from: f */
    private boolean m417f() {
        boolean mo131b;
        while (this.f1048h.count() == 0) {
            if (!this.f1045e.mo314o()) {
                C3149b c3149b = (C3149b) this.f1046f;
                switch (c3149b.f977a) {
                    case 4:
                        C3232o4 c3232o4 = (C3232o4) c3149b.f978b;
                        mo131b = c3232o4.f1044d.mo131b(c3232o4.f1045e);
                        break;
                    case 5:
                        C3244q4 c3244q4 = (C3244q4) c3149b.f978b;
                        mo131b = c3244q4.f1044d.mo131b(c3244q4.f1045e);
                        break;
                    case 6:
                        C3256s4 c3256s4 = (C3256s4) c3149b.f978b;
                        mo131b = c3256s4.f1044d.mo131b(c3256s4.f1045e);
                        break;
                    default:
                        C3067L4 c3067l4 = (C3067L4) c3149b.f978b;
                        mo131b = c3067l4.f1044d.mo131b(c3067l4.f1045e);
                        break;
                }
                if (mo131b) {
                    continue;
                }
            }
            if (this.f1049i) {
                return false;
            }
            this.f1045e.mo339m();
            this.f1049i = true;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final boolean m418a() {
        AbstractC3167e abstractC3167e = this.f1048h;
        if (abstractC3167e == null) {
            if (this.f1049i) {
                return false;
            }
            m416h();
            mo343j();
            this.f1047g = 0L;
            this.f1045e.mo315n(this.f1044d.getExactSizeIfKnown());
            return m417f();
        }
        long j = this.f1047g + 1;
        this.f1047g = j;
        boolean z = j < abstractC3167e.count();
        if (z) {
            return z;
        }
        this.f1047g = 0L;
        this.f1048h.clear();
        return m417f();
    }

    @Override // p033j$.util.InterfaceC2992s
    public final int characteristics() {
        m416h();
        int m435g = EnumC3166d4.m435g(this.f1042b.mo308s0()) & EnumC3166d4.f1004f;
        return (m435g & 64) != 0 ? (m435g & (-16449)) | (this.f1044d.characteristics() & 16448) : m435g;
    }

    @Override // p033j$.util.InterfaceC2992s
    public final long estimateSize() {
        m416h();
        return this.f1044d.estimateSize();
    }

    @Override // p033j$.util.InterfaceC2992s
    public Comparator getComparator() {
        if (AbstractC2919a.m623f(this, 4)) {
            return null;
        }
        throw new IllegalStateException();
    }

    @Override // p033j$.util.InterfaceC2992s
    public final long getExactSizeIfKnown() {
        m416h();
        if (EnumC3166d4.SIZED.m438d(this.f1042b.mo308s0())) {
            return this.f1044d.getExactSizeIfKnown();
        }
        return -1L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public final void m416h() {
        if (this.f1044d == null) {
            this.f1044d = (InterfaceC2992s) this.f1043c.get();
            this.f1043c = null;
        }
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2919a.m623f(this, i);
    }

    /* renamed from: j */
    abstract void mo343j();

    /* renamed from: l */
    abstract AbstractC3178f4 mo342l(InterfaceC2992s interfaceC2992s);

    public final String toString() {
        return String.format("%s[%s]", getClass().getName(), this.f1044d);
    }

    @Override // p033j$.util.InterfaceC2992s
    public InterfaceC2992s trySplit() {
        if (!this.f1041a || this.f1049i) {
            return null;
        }
        m416h();
        InterfaceC2992s trySplit = this.f1044d.trySplit();
        if (trySplit == null) {
            return null;
        }
        return mo342l(trySplit);
    }
}
