package p033j$.util.stream;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.AbstractC2780a;
import p033j$.util.InterfaceC3160t;
/* renamed from: j$.util.stream.H4 */
/* loaded from: classes2.dex */
abstract class AbstractC2904H4 extends AbstractC2916J4 implements InterfaceC3160t {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2904H4(InterfaceC3160t interfaceC3160t, long j, long j2) {
        super(interfaceC3160t, j, j2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2904H4(InterfaceC3160t interfaceC3160t, AbstractC2904H4 abstractC2904H4) {
        super(interfaceC3160t, abstractC2904H4);
    }

    @Override // p033j$.util.InterfaceC3160t
    /* renamed from: forEachRemaining */
    public void m524e(Object obj) {
        Objects.requireNonNull(obj);
        AbstractC3063j4 abstractC3063j4 = null;
        while (true) {
            int m516r = m516r();
            if (m516r == 1) {
                return;
            }
            if (m516r != 2) {
                ((InterfaceC3160t) this.f856a).forEachRemaining(obj);
                return;
            }
            if (abstractC3063j4 == null) {
                abstractC3063j4 = mo519t(128);
            } else {
                abstractC3063j4.f1060b = 0;
            }
            long j = 0;
            while (((InterfaceC3160t) this.f856a).tryAdvance(abstractC3063j4)) {
                j++;
                if (j >= 128) {
                    break;
                }
            }
            if (j == 0) {
                return;
            }
            abstractC3063j4.mo403b(obj, m518p(j));
        }
    }

    @Override // p033j$.util.InterfaceC2853s
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2780a.m624e(this);
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2780a.m623f(this, i);
    }

    /* renamed from: s */
    protected abstract void mo520s(Object obj);

    /* renamed from: t */
    protected abstract AbstractC3063j4 mo519t(int i);

    @Override // p033j$.util.InterfaceC3160t
    /* renamed from: tryAdvance */
    public boolean m521k(Object obj) {
        Objects.requireNonNull(obj);
        while (m516r() != 1 && ((InterfaceC3160t) this.f856a).tryAdvance(this)) {
            if (m518p(1L) == 1) {
                mo520s(obj);
                return true;
            }
        }
        return false;
    }
}
