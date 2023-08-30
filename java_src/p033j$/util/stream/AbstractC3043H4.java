package p033j$.util.stream;

import java.util.Comparator;
import java.util.Objects;
import p033j$.util.AbstractC2919a;
import p033j$.util.InterfaceC3299t;
/* renamed from: j$.util.stream.H4 */
/* loaded from: classes2.dex */
abstract class AbstractC3043H4 extends AbstractC3055J4 implements InterfaceC3299t {
    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3043H4(InterfaceC3299t interfaceC3299t, long j, long j2) {
        super(interfaceC3299t, j, j2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC3043H4(InterfaceC3299t interfaceC3299t, AbstractC3043H4 abstractC3043H4) {
        super(interfaceC3299t, abstractC3043H4);
    }

    @Override // p033j$.util.InterfaceC3299t
    /* renamed from: forEachRemaining */
    public void m524e(Object obj) {
        Objects.requireNonNull(obj);
        AbstractC3202j4 abstractC3202j4 = null;
        while (true) {
            int m516r = m516r();
            if (m516r == 1) {
                return;
            }
            if (m516r != 2) {
                ((InterfaceC3299t) this.f866a).forEachRemaining(obj);
                return;
            }
            if (abstractC3202j4 == null) {
                abstractC3202j4 = mo519t(128);
            } else {
                abstractC3202j4.f1070b = 0;
            }
            long j = 0;
            while (((InterfaceC3299t) this.f866a).tryAdvance(abstractC3202j4)) {
                j++;
                if (j >= 128) {
                    break;
                }
            }
            if (j == 0) {
                return;
            }
            abstractC3202j4.mo403b(obj, m518p(j));
        }
    }

    @Override // p033j$.util.InterfaceC2992s
    public Comparator getComparator() {
        throw new IllegalStateException();
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* synthetic */ long getExactSizeIfKnown() {
        return AbstractC2919a.m624e(this);
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* synthetic */ boolean hasCharacteristics(int i) {
        return AbstractC2919a.m623f(this, i);
    }

    /* renamed from: s */
    protected abstract void mo520s(Object obj);

    /* renamed from: t */
    protected abstract AbstractC3202j4 mo519t(int i);

    @Override // p033j$.util.InterfaceC3299t
    /* renamed from: tryAdvance */
    public boolean m521k(Object obj) {
        Objects.requireNonNull(obj);
        while (m516r() != 1 && ((InterfaceC3299t) this.f866a).tryAdvance(this)) {
            if (m518p(1L) == 1) {
                mo520s(obj);
                return true;
            }
        }
        return false;
    }
}
